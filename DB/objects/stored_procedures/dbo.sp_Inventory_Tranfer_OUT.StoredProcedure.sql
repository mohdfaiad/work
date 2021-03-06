SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[sp_Inventory_Tranfer_OUT]
	(
	@IDModelTransf	int
	)
 AS

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SUMARIO

		- Exclus�o do InventoryMov
		- Salvar custo medio no detalhe da transferencia
		- Inser��o do InventoryMov


	TABELA DE ERROS PARA RETURN_VALUE

		 000  Ok
		-201  Erro em Exclus�o do InventoryMov
		-202  Erro em Inser��o do InventoryMov
		-203  Erro em Salvar custo medio no detalhe da transferencia

	LOG DE MODIFICA��ES

	Data			Programador		Modifica��o
	--------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------
	16 Jul 2005		Rodrigo Costa		Cria��o;
	05 Jun 2006		Carlos Lima		Adicionado Custo m�dio na inser��o de InventoryMov
        22 Jan 2007             Maic Nogueira           Adicionado Kit na transfer�ncia de itens.
	01 Abr 2009		Rodrigo Costa		Atualizar Lote
        ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */

DECLARE @ErrorLevel		int
DECLARE @SysError		int

--Declara��o de vari�veis para o Cursor de InventoryMov
DECLARE @DocumentID		int
DECLARE @ModelID		int
DECLARE @Qty			float
DECLARE @TrasfDate		datetime
DECLARE @CostPrice		money
DECLARE @IDUser			int
DECLARE @PreInventoryMovID	int
DECLARE @IDInventoryMov		int
DECLARE @StoreIDOrigem		int
DECLARE @StoreIDDestino		int
DECLARE @AvgCost		money
DECLARE @IDLote			int

DECLARE @IDInventory		int

BEGIN TRAN


/*--------------------------------------------------------------*/
/*		Parte da Delecao do InventoryMov        	*/
/*--------------------------------------------------------------*/
DECLARE InventoryMov_Cursor CURSOR FOR

SELECT
	IDInventoryMov
FROM
	InventoryMov (NOLOCK) 
WHERE	
	InventoryMov.InventMovTypeID = 7
	AND
	InventoryMov.DocumentID = @IDModelTransf



OPEN InventoryMov_Cursor


FETCH NEXT FROM InventoryMov_Cursor INTO
	@IDInventoryMov

WHILE @@FETCH_STATUS = 0
BEGIN

	EXEC sp_Inventory_Del_Moviment @IDInventoryMov


	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		CLOSE InventoryMov_Cursor
		DEALLOCATE InventoryMov_Cursor
		SET @ErrorLevel = -201
		GOTO ERRO
	END

	FETCH NEXT FROM InventoryMov_Cursor INTO
		@IDInventoryMov
END

CLOSE InventoryMov_Cursor
DEALLOCATE InventoryMov_Cursor

--------------------------------------------------------------------
--  Atualiza  Custo m�dio de transferencia  --
--------------------------------------------------------------------
UPDATE	ModelTransfDet
SET		AvgCost = IsNull(StoreAvgPrice, 0)
FROM
	ModelTransf (NOLOCK) , Inventory (NOLOCK) 
WHERE
	ModelTransfDet.IDModelTransf = ModelTransf.IDModelTransf
	AND
	ModelTransf.IDLojaOrigem = Inventory.StoreID
	AND
	ModelTransfDet.IDModel = Inventory.ModelID
	AND
	ModelTransfDet.IDModelTransf = @IDModelTransf

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -203
	GOTO   ERRO
END



/*--------------------------------------------------------------*/
/*		Parte da Insercao do InventoryMov        	*/
/*--------------------------------------------------------------*/

--Declara��o do Cursor de InventoryMov
DECLARE TransferOUT_Cursor CURSOR FOR
	SELECT
		MTD.IDModelTransf,
		MT.IDLojaOrigem,
		MT.IDLojaDestino,
		MTD.IDModel,
		MTD.Qty,
		MT.Data,
		MT.IDUser,
		MTD.IDModelTransfDet, /* guarda a linha correspondente a inserida */
		MTD.CostPrice,
		Case WHEN (Inv.QtyOnHand - MTD.Qty) = 0 THEN 0 ELSE  Inv.StoreAvgPrice END,
		IsNull(MTD.IDLote, 0) as IDLote
	FROM
		ModelTransfDet MTD (NOLOCK) 
		INNER JOIN ModelTransf MT (NOLOCK) ON  (MTD.IDModelTransf = MT.IDModelTransf)
		LEFT JOIN Inventory Inv (NOLOCK) ON (MTD.IDModel = Inv.ModelID AND MT.IDLojaOrigem = Inv.StoreID)
	WHERE		
		MT.IDModelTransf = @IDModelTransf

OPEN TransferOUT_Cursor

--Inicializa��o de TransferOUT_Cursor
FETCH NEXT FROM TransferOUT_Cursor INTO
	@DocumentID,
	@StoreIDOrigem,
	@StoreIDDestino,
	@ModelID,
	@Qty,
	@TrasfDate,
	@IDUser,
	@PreInventoryMovID,
	@CostPrice,
	@AvgCost,
	@IDLote
--Enquanto tem registros
WHILE
@@FETCH_STATUS = 0
BEGIN
--Inclusao da loja original

	--Atualizo o Lote
	IF @IDLote <> 0
		EXEC sp_Inventory_Lot_Adjust @ModelID, @StoreIDOrigem, @IDLote, @Qty, 3


	EXEC sp_Sis_GetNextCode'InventoryMov.IDInventoryMov', @IDInventoryMov OUTPUT

	INSERT InventoryMov
		(
		IDInventoryMov,
		InventMovTypeID,
		DocumentID,
		StoreID,
		ModelID,
		IDPessoa,
		MovDate,
		Qty,
		IDUser,
		PreInventoryMovID,
		CostPrice,
		AvgCost
		)
	VALUES
		(
		@IDInventoryMov,
		7,   /* saida da loja original */
		@DocumentID,
		@StoreIDOrigem,
		@ModelID,
		0,
		@TrasfDate,
		@Qty,
		@IDUser,
		@PreInventoryMovID, /* guarda a linha correspondente a inserida */
		@CostPrice,
		@AvgCost
		)


	DECLARE TransferITEMS_Cursor CURSOR FOR
	SELECT
		P.IDModel,
		P.Qty * @Qty,
		M.VendorCost,
		M.AvgCost
	FROM
		PackModel P (NOLOCK) 
		JOIN Model M (NOLOCK) ON (P.IDModel = M.IDModel) 
	WHERE
		IDPackModel = @ModelID
	
	OPEN TransferITEMS_Cursor
	
	--Inicializa��o de TransferITEMS_Cursor
	FETCH NEXT FROM TransferITEMS_Cursor INTO
		@ModelID,
		@Qty,
		@CostPrice,
		@AvgCost
	
	--Enquanto tem registros
	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF NOT EXISTS(SELECT ModelID FROM Inventory WHERE ModelID = @ModelID AND StoreID = @StoreIDDestino)
		BEGIN
			EXEC sp_Sis_GetNextCode'Inventory.IDInventory', @IDInventory OUTPUT
		
			INSERT Inventory
				(
				IDInventory,
				StoreID,
				ModelID
				)
			VALUES
				(
				@IDInventory,
				@StoreIDDestino,
				@ModelID
				)
		END

		--Inclusao da loja original
		EXEC sp_Sis_GetNextCode 'InventoryMov.IDInventoryMov', @IDInventoryMov OUTPUT
	
		INSERT InventoryMov
			(
			IDInventoryMov,
			InventMovTypeID,
			DocumentID,
			StoreID,
			ModelID,
			IDPessoa,
			MovDate,
			Qty,
			IDUser,
			PreInventoryMovID,
			CostPrice,
			AvgCost
			)
		VALUES
			(
			@IDInventoryMov,
			7,   /* saida da loja original */
			@DocumentID,
			@StoreIDOrigem,
			@ModelID,
			0,
			@TrasfDate,
			@Qty,
			@IDUser,
			@PreInventoryMovID, /* guarda a linha correspondente a inserida */
			@CostPrice,
			@AvgCost
			)

		SET @SysError = @@ERROR
		IF @SysError <> 0
		BEGIN
			CLOSE TransferITEMS_Cursor
			DEALLOCATE TransferITEMS_Cursor
			CLOSE TransferIN_Cursor
			DEALLOCATE TransferIN_Cursor
			SET @ErrorLevel = -204
			GOTO ERRO
		END

		FETCH NEXT FROM TransferITEMS_Cursor INTO
			@ModelID,
			@Qty,
			@CostPrice,
			@AvgCost
	END

	--fechamento do cursor
	CLOSE TransferITEMS_Cursor
	--Destrui��o do cursor
	DEALLOCATE TransferITEMS_Cursor

	FETCH NEXT FROM TransferOUT_Cursor INTO
		@DocumentID,
		@StoreIDOrigem,
		@StoreIDDestino,
		@ModelID,
		@Qty,
		@TrasfDate,
		@IDUser,
		@PreInventoryMovID,
		@CostPrice,
		@AvgCost,
		@IDLote
END

--fechamento do cursor
CLOSE TransferOUT_Cursor
--Destrui��o do cursor
DEALLOCATE TransferOUT_Cursor

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -202
	GOTO   ERRO
END

OK:
	COMMIT TRAN
	RETURN 0
ERRO:
	ROLLBACK TRAN
	PRINT CAST(@ErrorLevel AS VARCHAR)

	DECLARE @ErrorLevelStr varchar(10)
	SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR)
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_Inventory_Tranfer_OUT', @ErrorLevelStr

	RETURN @ErrorLevel
GO
