if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_PreSale_Import_Estimated]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_PreSale_Import_Estimated]
GO

CREATE PROCEDURE sp_PreSale_Import_Estimated
			(
			@IDEstimated		int,
			@TaxIsent		bit,
			@MediaID		int,
			@IDStore		int,
			@IDUser		int,
			@UpdateSalePrice	bit,
			@NewIDPreSale	int   Output 			
			)
AS

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SUMARIO

		- Cria um novo cabe�alho para o PreSale
		- Inclui os items do orcamento

	TABELA DE ERROS PARA RETURN_VALUE

		 000  Ok
		-201  Erro em Cria um novo cabe�alho para o PreSale
		-202  Erro em Atualizar o Orcamento
		-203  Erro ao importas os items do orcamento
		-204  Erro em exec sp_PreSale_SubCalcTotal
		-206  Erro em inserir comissao
		-207  Erro em Atualizar a sugestao de pgto


	LOG DE MODIFICA��ES

	Data			Programador		Modifica��o
	-----------------------	-----------------------	-----------------------------------------------------------------
	19 Aug  2005		Rodrigo Costa		Criacao;
	09 Dec	2005		Rodrigo Costa		Inclusao da comissao;
	24 Feb	2006		Maximiliano Muniz	Ordena��o dos itens por c�digo;
	25 Jul	2007		Maximiliano Muniz	Teste do tipo de tela de venda, para o valor do campo LAYAWAY;
	30 Jul	2007		Maximiliano Muniz	Corrigigo tamanho do OBS a ser importado (150 caracteres);
	08 Aug	2007		Maximiliano Muniz	Inclus�o do campo IDDepartment na importa��o dos dados;
	20 Aug	2007		Rodrigo Costa		Removido a opcao de atualizar Cliente Para Prospect
	09 Jun	2008		Rodrigo Costa		Adicionado o campo de IDTourGroup na importacao
	16 Jun	2008		Rodrigo Costa		Importar DeliveryInfo e Atualizar Sugetao de Pagamentos
	----------------------------------------------------------------------------------------------------------------- */

DECLARE @ErrorLevel		int
DECLARE @SysError		int
--Declara��o de vari�veis para o Cursor de PreInventoryMov
DECLARE @InventMovTypeID 	int 
DECLARE @StoreID		int
DECLARE @DocumentID 		int 
DECLARE @ModelID 		int 
DECLARE @MovDate 		smalldatetime 
DECLARE @Qty 			float
DECLARE @CostPrice 		money 
DECLARE @SalePrice 		money 
DECLARE @IDPessoa 		int 
DECLARE @DateEstimatedMov 	smalldatetime 
DECLARE @DateRealMov 		smalldatetime 
DECLARE @ComissionID 		int 
DECLARE @IDPreInventoryMov	int
DECLARE @DesiredMarkup		money
DECLARE @Date			DateTime
DECLARE @IDSaleItemCommission	int
DECLARE @Layaway		bit
DECLARE @IDDepartment		int

SET @ErrorLevel = 0

SELECT @Layaway = CAST((CASE WHEN CAST(SrvValue AS INT) = 2 THEN 1 ELSE 0 END) AS BIT) FROM Param WHERE IDParam = 63

BEGIN TRAN
 
/*---------------------------------------------------------------------*/
/*                  Cria um novo cabe�alho para o PreSale              */
/*---------------------------------------------------------------------*/ 

EXEC sp_Sis_GetNextCode 'Invoice.IDPreSale', @NewIDPreSale OUTPUT
INSERT Invoice	(
		IDPreSale,
		IDStore,
 		PreSaleDate,
		IDCustomer,
		IDTouristGroup,
		TaxIsent,
		MediaID,
		FirstName,
		LastName,
		Layaway,
		Note,
		DeliverTypeID,
		DeliverDate,
		DeliverAddress,
		DeliverOBS
		)
		SELECT
			@NewIDPreSale,
			E.IDStore,
 			GetDate(),
			IsNull(E.IDPessoa,0),
			IDTouristGroup,
 			@TaxIsent,
			@MediaID,
			SUBSTRING(P.PessoaFirstName, 1, 20),
			SUBSTRING(P.PessoaLastName, 1, 20),
			@Layaway,
			CAST((isNull(E.OBS, '') + char(13) + char(10) + isNull(E.OBS2, '')) AS VARCHAR(150)) as OBS,
			IDDeliverType,
			DeliverDate,
			DeliverAddress,
			DeliverOBS
		FROM
			Estimated E (NOLOCK) 
			LEFT OUTER JOIN Pessoa P (NOLOCK) ON (P.IDPessoa = E.IDPessoa)
		WHERE
			E.IDEstimated = @IDEstimated

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -201
	GOTO ERRO
END

-- Atualizo o orcamento
UPDATE
	Estimated
SET
	IDPreSale = @NewIDPreSale
WHERE
	IDEstimated = @IDEstimated


SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -202
	GOTO ERRO
END

/*---------------------------------------------------------------------*/
/*           Inclui os items marcados para o novo PreSale              */
/*---------------------------------------------------------------------*/
--Declara��o do Cursor de PreInventoryMov
DECLARE PreInventoryMov_Cursor CURSOR FOR

		SELECT
			1,
			@NewIDPreSale,
			@IDStore,
			EI.IDModel,
			GetDate(),
			EI.Qty,
			IsNull(M.VendorCost, M.VendorCost),
			CASE @UpdateSalePrice WHEN 1 THEN M.SellingPrice ELSE EI.SalePrice END,
			IsNull(E.IDPessoa,0),
			E.EstimatedDate,
			GetDate(),
			SU.ComissionID,
			TG.DesiredMarkup,
			EI.IDDepartment
		FROM
			EstimatedItem EI (NOLOCK) 
			JOIN Model M (NOLOCK) ON (M.IDModel = EI.IDModel) 
			JOIN TabGroup TG (NOLOCK) ON (M.GroupID = TG.IDGroup) 
			JOIN Estimated E (NOLOCK) ON (E.IDEstimated = EI.IDEstimated)
			JOIN SystemUser SU (NOLOCK) ON (SU.IDUser = E.IDUser)
		WHERE
			EI.IDEstimated = @IDEstimated
		ORDER BY
			EI.Code

OPEN PreInventoryMov_Cursor

--Inicializa��o de PreInventoryMov_Cursor
FETCH NEXT FROM PreInventoryMov_Cursor INTO
	@InventMovTypeID,
	@DocumentID,
	@StoreID,
	@ModelID,
	@MovDate,
	@Qty,
	@CostPrice,
	@SalePrice,
	@IDPessoa,
	@DateEstimatedMov,
	@DateRealMov,
	@ComissionID,
	@DesiredMarkup,
	@IDDepartment

--Enquanto tem registros
WHILE
@@FETCH_STATUS = 0
BEGIN
	EXEC sp_Sis_GetNextCode'PreInventoryMov.IDPreInventoryMov', @IDPreInventoryMov OUTPUT

	INSERT PreInventoryMov
		(
		IDPreInventoryMov,
		InventMovTypeID,
		UserID,
		DocumentID,
		StoreID,
		ModelID,
		MovDate,
		Qty,
		CostPrice,
		SalePrice,
		IDPessoa,
		DateEstimatedMov,
		DateRealMov,
		DesiredMarkup,
		IDDepartment
		)
	VALUES
		(
		@IDPreInventoryMov,
		@InventMovTypeID,
		@IDUser,
		@DocumentID,
		@StoreID,
		@ModelID,
		@MovDate,
		@Qty,
		@CostPrice,
		@SalePrice,
		@IDPessoa,
		@DateEstimatedMov,
		@DateRealMov,
		@DesiredMarkup,
		@IDDepartment
		)

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		CLOSE PreInventoryMov_Cursor
		DEALLOCATE PreInventoryMov_Cursor
		SET @ErrorLevel = -203
		GOTO ERRO
	END

	
	/*****************************************************************************************
		Inclus�o do Comissionado na tabela de SaleItemCommission
	******************************************************************************************/
	EXEC sp_Sis_GetNextCode'SaleItemCommission.IDSaleItemCommission', @IDSaleItemCommission OUTPUT
	INSERT INTO dbo.SaleItemCommission
		(
		 IDSaleItemCommission,
		 IDPreInventoryMov,
		 IDCommission,
		 CommissionPercent
		)
		VALUES
		(
		 @IDSaleItemCommission,
		 @IDPreInventoryMov,
		 @ComissionID,
		 100
		)
	
	SET @SysError = @@ERROR
	IF @SysError <> 0 
	BEGIN
		SET @ErrorLevel = -206
		GOTO ERRO
	END


	FETCH NEXT FROM PreInventoryMov_Cursor INTO
		@InventMovTypeID,
		@DocumentID,
		@StoreID,
		@ModelID,
		@MovDate,
		@Qty,
		@CostPrice,
		@SalePrice,
		@IDPessoa,
		@DateEstimatedMov,
		@DateRealMov,
		@ComissionID,
		@DesiredMarkup,
		@IDDepartment
END
--fechamento do cursor
CLOSE PreInventoryMov_Cursor
--Destrui��o do cursor
DEALLOCATE PreInventoryMov_Cursor

/*---------------------------------------------------------------------*/
/*           Atualiza a sugetao de Pgto para o novo PreSale            */
/*---------------------------------------------------------------------*/
UPDATE
	Sal_PaymentCondition
SET
	IDPreSale = @NewIDPreSale
WHERE
	IDEstimated = @IDEstimated

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -207
	GOTO ERRO 
END 

/*---------------------------------------------------------------------*/
/*           Recalcular os totais                                      */
/*---------------------------------------------------------------------*/
SET @Date = GetDate()
EXEC sp_PreSale_SubCalcTotal @NewIDPreSale, @Date

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -204

	GOTO ERRO 
END 

OK:
	COMMIT TRAN
	RETURN 0
ERRO:
	ROLLBACK TRAN
	PRINT CAST(@ErrorLevel AS VARCHAR)

	DECLARE @ErrorLevelStr varchar(10)
	SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR)
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_PreSale_Import_Estimated', @ErrorLevelStr

	RETURN @ErrorLevel
GO
