if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_Purchase_Do]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_Purchase_Do]
GO

CREATE PROCEDURE sp_Purchase_Do
	(
	@IDPurchase	int,
	@Date 		DateTime,
	@TaxInCost	Bit
	)
AS

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SUMARIO
		
		- Deleto os InventoryMov
		- Incluo no Inventario os barcodes que ainda nao existam
		- Altero o Category no Model quando diferente
		- Incluo o InventoryMov se necessario
		- Se necessario crio os lancamentos no contas a pagar
		- Deleto as Qty do Pur_PurchaseQtyPreSale ##Rodrigo
		- Incluo as Qty do Pur_PurchaseQtyPreSale ##Rodrigo
		- Incluo os serial Numbers no inventory
		- Crio os lancamentos de retorno no contas a pagar, se necessario

	TABELA DE ERROS PARA RETURN_VALUE

		 000  Ok
		-201  Erro em Deleto as Qty do Pur_PurchaseQtyPreSale
		-202  Erro em Deleto as Qty do Pur_PurchaseQtyOrder
		-203  Erro em Deleto os PreInventoryMov
		-204  Erro em Deleto os InventoryMov
		-205  Erro em Incluo no Inventario os barcodes que ainda nao exitam
		-206  Erro em Atualizo a informa??o de category
		-207  Erro em Atualizar a TBL de Model com os valores se for Final
		-208  Erro em Incluo o InventoryMov se necessario
		-209  Erro em Insiro as Qty do Pur_PurchaseQtyPrePurchase se for PreReceiving para atualizar o qtyOnPreReceive na TBL Inventory
		-210  Erro em Insiro as Qty do Pur_PurchaseQtyOrder - Atualizar as qty no PO
		-211  Erro em Atualiza o total do PO
		-212  Erro em Crio os Serial Numbers no inventory se for final
		-213  Erro em Delete os Serail Numbers do Purchase
		-214  Erro em Deleto o Term do Fin >>> Os termos so serao deletados se o Purchase Type for do typo Invoice
		-215  Erro em Crio os lancamentos no contas a pagar, se necessario
		-216  Erro em Incluio novamente o Term do Fin >>> Os termos so serao incluidos se o Purchase Type for do typo Invoice
		-217  Erro em Deletetar o InventoryMovTax
		-218  Erro em atualizar o PO
		-219  Erro em Crio os lancamentos de retorno no contas a pagar, se necessario

	LOG DE MODIFICA??ES

	Data			Programador		Modifica??o
	--------------------------------------- --------------------------------------- -----------------------------------------------------------------------------------------------------
	04 dezembro 	2000	Eduardo Costa		Cria??o;
	18 dezembro 	2000	Rodrigo Costa		Complemento;
	06 junho        	2001	Davi Gouveia		Variavel @ErrorLevel/Lista de Return_Values
	07 junho        	2001	Rodrigo Costa		Insert no Fin_LancamentoTerm
	07 dezembro 	2001	Rodrigo Costa		Nao pode deletar p PreInventoryMov, pois os item nao sao salvos la.
	13 May	        	2002	Rodrigo Costa		Criacao Lancamento Termo para os Disbursements 
	29 Oct		2003	Rodrigo Costa		Criado Cuersor para InvMov, Pur_PurchaseQtyPrePurchase, Pur_PurchaseQtyOrder_Cursor;
							Chamado da sp_GetNextCode;
	13 Feb		2004	Rodrigo Costa		Deletar o InventoryMovTax da Compra
	18 Aug		2004	Rodrigo Costa		Gravar error log
	14 Dez		2004	Rodrigo Costa		Cricao do campo @TaxInCost para incluir o preco do item; Retirado o update NewSalePrice
	11 Mar		2005	Carlos Lima		Tratamento das quantidades devolvidas
	11 Mar		2005	Rodrigo Costa		Atualizacao das quantidades no PO
	14 Mar		2005	Carlos Lima		Cria��o da Devolu��o no Contas a Pagar
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */

DECLARE @IDPO 			int
DECLARE @ErrorLevel 			int
DECLARE @SysError			int

--Declara??o de vari?veis para o Cursor de InventoryMov
DECLARE @StoreID 			int 
DECLARE @IDPessoa 			int 
DECLARE @InventMovTypeID 		int 
DECLARE @DocumentID 		int 
DECLARE @ModelID 			int 
DECLARE @Qty 			int 
DECLARE @CostPrice 			money 
DECLARE @SalePrice 			money 
DECLARE @BarCodeID 			char(20)
DECLARE @MovDate 			smalldatetime 
DECLARE @IDUser 			int 

DECLARE @IDInventoryMov		int

--Declara??o de vari?veis para o Cursor de Pur_PurchaseQtyPrePurchase
DECLARE @IDModel 			int 
DECLARE @IDStore 			int 
DECLARE @IDPurchaseQtyPreSale	int

--Declara??o de vari?veis para o Cursor de Pur_PurchaseQtyOrder
DECLARE @IDPOItem 			int 
DECLARE @IDPurchaseQtyOrder	int

BEGIN TRAN


-----------------------------------------------------------
-- Deleto as Qty do Pur_PurchaseQtyPreSale
DELETE
	PQP
FROM
	Pur_PurchaseQtyPrePurchase PQP
WHERE
	PQP.IDPurchase = @IDPurchase

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -201
	GOTO ERRO
END

-----------------------------------------------------------
-- Deleto as Qty do Pur_PurchaseQtyOrder
DELETE
	PQP
FROM
	Pur_PurchaseQtyOrder PQP
WHERE
	PQP.IDPurchase = @IDPurchase

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -202
	GOTO ERRO
END



------------------------------------------------------------------------------
-- Deleto os PreInventoryMov
/*
DELETE
	PIM
FROM
	PreInventoryMov PIM
WHERE
	PIM.DocumentID = @IDPurchase
	AND
	PIM.InventMovTypeID = 2

IF @@ERROR <> 0
BEGIN
	SET @ErrorLevel = -203
	GOTO ERRO
END
*/

------------------------------------------------------------------------------
-- Deleto os InventoryMovTax

DELETE
	IMT
FROM
	InventoryMovTax IMT
WHERE
	IMT.IDInventoryMov IN (	SELECT IDInventoryMov
			       	FROM InventoryMov IM
				WHERE IM.DocumentID = @IDPurchase AND
				IM.InventMovTypeID = 2
				)

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -217
	GOTO ERRO
END

------------------------------------------------------------------------------
-- Deleto os InventoryMov

DELETE
	IM
FROM
	InventoryMov IM
WHERE
	IM.DocumentID = @IDPurchase
	AND
	IM.InventMovTypeID = 2

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -204
	GOTO ERRO
END

------------------------------------------------------------------------------
-- Incluo no Inventario os barcodes que ainda nao exitam

INSERT
	BarCode (IDBarCode, IDModel, Data)
SELECT

	PPI.BarCode,
	PPI.IDModel,
	@Date
FROM
	Pur_PurchaseItem PPI
	LEFT OUTER JOIN BarCode BC ON (PPI.BarCode = BC.IDBarCode)
WHERE
	BC.IDModel IS Null
	AND
	PPI.BarCode IS NOT NULL
	AND
	PPI.IDPurchase = @IDPurchase

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -205
	GOTO ERRO
END



------------------------------------------------------------------------------
-- Atualizo a informa??o de category

UPDATE
	M
SET
	M.GroupID = PPI.IDGroup
FROM
	Model M
	JOIN Pur_PurchaseItem PPI ON (M.IDModel = PPI.IDModel)
WHERE
	M.GroupID <> PPI.IDGroup

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -206
	GOTO ERRO
END


--------------------------------------------------------------------------------------------------
---Atualizar a TBL de Model com os valores se for Final
---Imposto nao esta incluido no Custo do produto
IF (@TaxInCost=1)
BEGIN
	UPDATE
		Model
	SET
		Model.Desativado     	= 0,
		Model.LastCost       	= IsNull(Model.VendorCost,0),
		Model.VendorCost     	= IsNull(PUI.NewCostPrice,0),
		Model.DateLastCost   	= @Date,
		Model.OtherCost		= 0, --OtherCost ja esta incluido no custo
		Model.FreightCost    	= 0, --Freight ja esta incluido no custo
		Model.AvgCost  		= ROUND(IsNull(	(
	
						SELECT 	(
								CASE WHEN	(PUI.Qty - IsNull(PUI.QtyRet, 0)) + SUM(IsNull(Inv.QtyOnHand,0)) = 0 THEN 0
								ELSE		(
											(
											(PUI.NewCostPrice * (PUI.Qty - IsNull(PUI.QtyRet, 0))) + 
											( IsNull(Model.FinalCost,0) * SUM(IsNull(Inv.QtyOnHand,0)))
											)
											/
						       			               	(
											(PUI.Qty - IsNull(PUI.QtyRet, 0)) + SUM(IsNull(Inv.QtyOnHand,0))
											)
										)
								END
							)
	
						FROM	
							Inventory Inv
							JOIN Model ON (Inv.ModelId = Model.IDModel)
						WHERE
							Inv.ModelID = PUI.IDModel
						GROUP BY  
							Model.FinalCost 
	
						), PUI.NewCostPrice ),2)
	FROM
		Pur_Purchase PU
		JOIN Pur_PurchaseItem PUI ON (PU.IDPurchase = PUI.IDPurchase)
		JOIN Pur_PurchaseTotal PUT ON (PU.IDPurchase = PUT.IDPurchase)
	WHERE
		PU.IDPurchase = @IDPurchase
		AND
		DateFinalReceiving IS NOT NULL
		AND
		Model.IDModel = PUI.IDModel
END
ELSE
BEGIN

	UPDATE
		Model
	SET
		Model.Desativado	= 0,
		Model.SellingPrice 	= IsNull(PUI.NewSalePrice,0),
		Model.SuggRetail 	= IsNull(PUI.NewSuggRetail,0),
		Model.LastCost		= IsNull(Model.VendorCost,0),
		Model.VendorCost	= IsNull(PUI.NewCostPrice,0),
		Model.DateLastCost	= @Date,
	
		Model.OtherCost 	= ROUND(
					CASE	WHEN 	PUT.SubTotal = 0 THEN 0
						ELSE	( IsNull((PU.OtherCharges / PUT.SubTotal)  * (PUI.NewCostPrice)  , 0 ) )
					END
	
				      	,2),
	
	
		Model.FreightCost 	= ROUND(
					  CASE	WHEN 	PUT.SubTotal = 0 THEN 0
						ELSE	( IsNull(	(PU.Freight / PUT.SubTotal)  * (PUI.NewCostPrice) , 0 ) )
					  END
				      	,2),
	
		Model.AvgCost  		= ROUND(IsNull(	(
	
						SELECT 	(
								CASE WHEN	PUI.Qty + SUM(IsNull(Inv.QtyOnHand,0)) = 0 THEN 0
								ELSE		(
											(
											(PUI.NewCostPrice * PUI.Qty) + 
											( IsNull(Model.FinalCost,0) * SUM(IsNull(Inv.QtyOnHand,0)))
											)
											/
						       			               	(
											PUI.Qty + SUM(IsNull(Inv.QtyOnHand,0))
											)
										)
								END
							)
	
						FROM	
							Inventory Inv
							JOIN Model ON (Inv.ModelId = Model.IDModel)
						WHERE
							Inv.ModelID = PUI.IDModel
						GROUP BY  
							Model.FinalCost 
	
						), PUI.NewCostPrice ),2)
	FROM
		Pur_Purchase PU
		JOIN Pur_PurchaseItem PUI ON (PU.IDPurchase = PUI.IDPurchase)
		JOIN Pur_PurchaseTotal PUT ON (PU.IDPurchase = PUT.IDPurchase)
	WHERE
		PU.IDPurchase = @IDPurchase
		AND
		DateFinalReceiving IS NOT NULL
		AND
		Model.IDModel = PUI.IDModel

END


SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -207
	GOTO ERRO
END


------------------------------------------------------------------------------
-- Incluo o InventoryMov se necessario
--Declara??o do Cursor de InventoryMov
DECLARE InventoryMov_Cursor CURSOR FOR

SELECT
	PP.IDStore,
	PP.IDFornecedor,
	2, -- Compra
	PP.IDPurchase,
	PPI.IDModel,
	PPI.Qty - IsNull(PPI.QtyRet, 0) AS Qty,
	PPI.NewCostPrice,
	PPI.NewSalePrice,
	PPI.BarCode,
	PP.DateFinalReceiving,
	PP.IDUserFinalReceiving
FROM
	Pur_Purchase PP
	JOIN Pur_PurchaseItem PPI ON (PP.IDPurchase = PPI.IDPurchase)
WHERE
	PP.IDPurchase = @IDPurchase
	AND
	DateFinalReceiving IS NOT NULL

OPEN InventoryMov_Cursor

--Inicializacao de InventoryMov_Cursor
FETCH NEXT FROM InventoryMov_Cursor INTO
	@StoreID,
	@IDPessoa,
	@InventMovTypeID,
	@DocumentID,
	@ModelID,
	@Qty,
	@CostPrice,
	@SalePrice,
	@BarCodeID,
	@MovDate,
	@IDUser
--Enquanto tem registros
WHILE
@@FETCH_STATUS = 0
BEGIN
	EXEC sp_Sis_GetNextCode'InventoryMov.IDInventoryMov', @IDInventoryMov OUTPUT

	INSERT InventoryMov
		(
		IDInventoryMov,
		StoreID,
		IDPessoa,
		InventMovTypeID,
		DocumentID,
		ModelID,
		Qty,
		CostPrice,
		SalePrice,
		BarCodeID,
		MovDate,
		IDUser
		)
	VALUES
		(
		@IDInventoryMov,
		@StoreID,
		@IDPessoa,
		@InventMovTypeID,
		@DocumentID,
		@ModelID,
		@Qty,
		@CostPrice,
		@SalePrice,
		@BarCodeID,
		@MovDate,
		@IDUser
		)

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		CLOSE InventoryMov_Cursor
		DEALLOCATE InventoryMov_Cursor
		SET @ErrorLevel = -208
		GOTO ERRO
	END

	FETCH NEXT FROM InventoryMov_Cursor INTO
		@StoreID,
		@IDPessoa,
		@InventMovTypeID,
		@DocumentID,
		@ModelID,
		@Qty,
		@CostPrice,
		@SalePrice,
		@BarCodeID,
		@MovDate,
		@IDUser
END
--fechamento do cursor
CLOSE InventoryMov_Cursor
--Destrui??o do cursor
DEALLOCATE InventoryMov_Cursor

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -208
	GOTO ERRO
END


-----------------------------------------------------------
-- Insiro as Qty do Pur_PurchaseQtyPrePurchase se for PreReceiving para atualizar o qtyOnPreReceive na TBL Inventory
--Declara??o do Cursor de Pur_PurchaseQtyPrePurchase
DECLARE Pur_PurchaseQtyPrePurchase_Cursor CURSOR FOR


SELECT
	PUI.IDModel,
	PU.IDStore,
	SUM(PUI.Qty - IsNull(PUI.QtyRet, 0))
FROM
	Pur_Purchase PU
	JOIN Pur_PurchaseItem PUI ON (PU.IDPurchase = PUI.IDPurchase)
WHERE
	PU.IDPurchase = @IDPurchase
	AND
	PU.DateFinalReceiving IS NULL
GROUP BY
	PUI.IDModel,
	PU.IDStore,
	PUI.IDPOItem


OPEN Pur_PurchaseQtyPrePurchase_Cursor

--Inicializa??o de Pur_PurchaseQtyPrePurchase_Cursor
FETCH NEXT FROM Pur_PurchaseQtyPrePurchase_Cursor INTO
	@IDModel,
	@IDStore,
	@Qty
--Enquanto tem registros
WHILE
@@FETCH_STATUS = 0
BEGIN
	EXEC sp_Sis_GetNextCode'Pur_PurchaseQtyPrePurchase.IDPurchaseQtyPreSale', @IDPurchaseQtyPreSale OUTPUT
	INSERT Pur_PurchaseQtyPrePurchase
		(
		IDPurchaseQtyPreSale,
		IDPurchase,
		IDModel,
		IDStore,
		Qty
		)
	VALUES
		(
		@IDPurchaseQtyPreSale,
		@IDPurchase,
		@IDModel,
		@IDStore,
		@Qty
		)

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		CLOSE Pur_PurchaseQtyPrePurchase_Cursor
		DEALLOCATE Pur_PurchaseQtyPrePurchase_Cursor
		SET @ErrorLevel = -209
		GOTO ERRO
	END

	FETCH NEXT FROM Pur_PurchaseQtyPrePurchase_Cursor INTO
		@IDModel,
		@IDStore,
		@Qty
END
--fechamento do cursor
CLOSE Pur_PurchaseQtyPrePurchase_Cursor
--Destrui??o do cursor
DEALLOCATE Pur_PurchaseQtyPrePurchase_Cursor


SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -209
	GOTO ERRO
END


-----------------------------------------------------------
-- Insiro as Qty do Pur_PurchaseQtyOrder - Atualizar as qty no PO
--Declara??o do Cursor de Pur_PurchaseQtyOrder

DECLARE Pur_PurchaseQtyOrder_Cursor CURSOR FOR

SELECT
	PUI.IDModel,
	PU.IDStore,
	PUI.IDPOItem,
	SUM(PUI.Qty - IsNull(PUI.QtyRet, 0))
FROM
	Pur_Purchase PU
	JOIN Pur_PurchaseItem PUI ON (PU.IDPurchase = PUI.IDPurchase)
WHERE
	PU.IDPurchase = @IDPurchase
GROUP BY
	PUI.IDModel,
	PU.IDStore,
	PUI.IDPOItem

OPEN Pur_PurchaseQtyOrder_Cursor

--Inicializa??o de Pur_PurchaseQtyOrder_Cursor
FETCH NEXT FROM Pur_PurchaseQtyOrder_Cursor INTO
	@IDModel,
	@IDStore,
	@IDPOItem,
	@Qty
--Enquanto tem registros
WHILE
@@FETCH_STATUS = 0
BEGIN
	EXEC sp_Sis_GetNextCode'Pur_PurchaseQtyOrder.IDPurchaseQtyOrder', @IDPurchaseQtyOrder OUTPUT
	INSERT Pur_PurchaseQtyOrder
		(
		IDPurchaseQtyOrder,
		IDPurchase,
		IDModel,
		IDStore,
		IDPOItem,
		Qty
		)
	VALUES
		(
		@IDPurchaseQtyOrder,
		@IDPurchase,
		@IDModel,
		@IDStore,
		@IDPOItem,
		@Qty
		)

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		CLOSE Pur_PurchaseQtyOrder_Cursor
		DEALLOCATE Pur_PurchaseQtyOrder_Cursor
		SET @ErrorLevel = -210
		GOTO ERRO
	END

	FETCH NEXT FROM Pur_PurchaseQtyOrder_Cursor INTO
		@IDModel,
		@IDStore,
		@IDPOItem,
		@Qty
END
--fechamento do cursor
CLOSE Pur_PurchaseQtyOrder_Cursor
--Destrui??o do cursor
DEALLOCATE Pur_PurchaseQtyOrder_Cursor


SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -210
	GOTO ERRO
END

------------------------------------------------------------------------------
-- Atualiza o total do PO

SELECT
	@IDPO = PIM.DocumentID
FROM
	PreInventoryMov PIM
	JOIN Pur_PurchaseQtyOrder PQO ON (PIM.IDPreInventoryMov = PQO.IDPOItem)

EXEC sp_PO_AtuPOTotal @IDPO

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -211
	GOTO ERRO
END

------------------------------------------------------------------------------
-- Atualizo os totais da PO, se necessario

SELECT
	@IDPO = P.IDPO
FROM
	Pur_Purchase P
WHERE
	IDPurchase = @IDPurchase

EXEC sp_PO_CalcTotalQty @IDPO

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -218
	GOTO ERRO
END


------------------------------------------------------------------------------
-- Crio os Serial Numbers no inventory se for final
INSERT
	InventorySerial
	(
	StoreID,
	ModelID,
	Serial
	)
SELECT
	PU.IDStore,
	PUI.IDModel,
	PIS.SerialNumber
FROM
	Pur_Purchase PU
	JOIN Pur_PurchaseItemSerial PIS ON (PU.IDPurchase = PIS.IDPurchase)
	JOIN Pur_PurchaseItem PUI ON (PU.IDPurchase = PUI.IDPurchase)
WHERE
	PIS.IDPurchase = @IDPurchase
	AND
	PU.DateFinalReceiving IS NOT NULL

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -212
	GOTO ERRO
END


------------------------------------------------------------------------------
-- Delete os Serail Numbers do Purchase
DELETE
	PIS
FROM
	Pur_PurchaseItemSerial PIS
	JOIN Pur_Purchase PU ON (PU.IDPurchase = PIS.IDPurchase)
WHERE
	PIS.IDPurchase = @IDPurchase
	AND
	PU.DateFinalReceiving IS NOT NULL

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -213
	GOTO ERRO
END


------------------------------------------------------------------------------
-- Deleto o Term do Fin >>> Os termos so serao deletados se o Purchase Type for do typo Invoice


DELETE
	Fin_LancamentoTerm
WHERE
	IDLancamento IN (SELECT L.IDLancamento FROM Fin_Lancamento L WHERE L.IDPurchase = @IDPurchase)

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -214
	GOTO ERRO
END


------------------------------------------------------------------------------
-- Crio os lancamentos no contas a pagar, se necessario
IF (@TaxInCost=1)
	EXEC sp_Purchase_CriaPagamentoComImposto @IDPurchase
ELSE
	EXEC sp_Purchase_CriaPagamento @IDPurchase


SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -215
	GOTO ERRO
END


------------------------------------------------------------------------------
-- Crio os lancamentos de retorno no contas a pagar, se necessario
IF (@TaxInCost=1)
	EXEC sp_Purchase_CriaPagamentoComImpostoRet @IDPurchase

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -219
	GOTO ERRO
END

------------------------------------------------------------------------------
-- Incluio novamente o Term do Fin >>> Os termos so serao incluidos se o Purchase Type for do typo Invoice

INSERT
	Fin_LancamentoTerm (IDLancamento, DueDateShift, Discount)
SELECT
	L.IDLancamento, PT.DueDateShift, PT.Discount
FROM
	Pur_PurchaseTerm PT
	JOIN Fin_Lancamento L ON (L.IDPurchase = PT.IDPurchase)
WHERE
	L.IDPurchase = @IDPurchase

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -216
	GOTO ERRO
END


OK:
	COMMIT TRAN
	RETURN 0
ERRO:
	ROLLBACK TRAN

	DECLARE @ErrorLevelStr varchar(10)
	SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR)
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_Purchase_Do', @ErrorLevelStr

	RETURN @ErrorLevel
GO