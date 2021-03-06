if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_PreSale_DivideHold]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_PreSale_DivideHold]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_PreSale_Split]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_PreSale_Split]
GO

CREATE PROCEDURE sp_PreSale_DivideHold
	(
	@IDPreSale   int,
	@DeliverTypeID  int,
	@DeliverDate  dateTime,
	@DeliverAddress varchar(100),
	@DeliverOBS  varchar(255),
	@NewIDPreSale  int  output
	)
AS
 
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	 SUMARIO
	 
	  - Cria um novo cabeçalho para o PreSale
	  - Inclui as quantidades dos items marcados para o novo PreSale
	  - Atualiza as quantiades do Antigo PreSale
	  - Remove os items marcados do Antigo PreSale
	  - Recalcula o total do novo PreSale
	  - Recalcula o total do antigo PreSale
	 
	 TABELA DE ERROS PARA RETURN_VALUE
	 
	   000  Ok
	  -201  Erro em Cria um novo cabeçalho para o PreSale
	  -202  Erro em Inclui as quantidades dos items marcados para o novo PreSale
	  -203  Erro em Atualiza as quantiades do Antigo PreSale
	  -204  Erro em Remove os items marcados do Antigo PreSale
	  -205  Erro em exec sp_PreSale_SubCalcTotal
	  -206  Erro em Recalcula o total do antigo PreSale
	 
	
	 LOG DE MODIFICAÇÕES
	 
	Data			Programador			Modificação
	-------------------------------------	--------------------------------------- 	-----------------------------------------------------------------------------------------------------
	22 Oct 	2004  		Carlos Lima  			Criação;
	29 Oct 	2004  		Rodrigo Costa  			Correcao;  Nao pode colocar a data do invoice, ainda nao e um invoice
	20 Jan	2005		Rodrigo Costa			Correcao; Removido o Discount + SalePrice do insert
	03 Fev  2005		Rodrigo Costa			Atualizao das garantias quando marcar entrega
	05 May	2005		Rodrigo Costa			Novo campo de desired markup
	-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */
 
DECLARE @ErrorLevel			int
DECLARE @SysError			int
 

--Declaração de variáveis para o Cursor de PreInventoryMov
DECLARE @IDPreInventoryMov		int
DECLARE @IDPreInvMovOld		int
DECLARE @InventMovTypeID		int
DECLARE @StoreID    			int
DECLARE @ModelID    			int
DECLARE @IDPessoa     		int
DECLARE @ComissionID   		int
DECLARE @UserID     			int
DECLARE @IDCotacao    		int
DECLARE @IDPreInventoryMovParent  	int
DECLARE @BarCodeID    		TBarCode
DECLARE @DocumentID    		int
DECLARE @MovDate    		smalldatetime
DECLARE @Qty    			int
DECLARE @CostPrice    		money
DECLARE @SalePrice    		money
DECLARE @Discount     		money
DECLARE @DateEstimatedMov   	smalldatetime
DECLARE @DateRealMov   		smalldatetime
DECLARE @QtyRealMov    		int
DECLARE @Marked     			bit
DECLARE @ExchangeInvoice   		int
DECLARE @SuggRetail    		money
DECLARE @IDParentPack    		int
DECLARE @IDModelService    		int
DECLARE @DesiredMarkup		money
 
DECLARE @Date    			DateTime
DECLARE @SaleCode 			varchar(20)
DECLARE @IDStore 			int
 
SET @ErrorLevel = 0
 
BEGIN TRAN
 
/*------------------------------------------------------------------------------------------------------*/
/*      Cria um novo cabeçalho para o PreSale   */
/*-----------------------------------------------------------------------------------------------------*/ 
EXEC sp_Sis_GetNextCode'Invoice.IDPreSale', @NewIDPreSale OUTPUT

SELECT	
	@IDStore = IDStore
FROM
	Invoice
WHERE
	IDPreSale = @IDPreSale

EXEC SP_PreSale_GetNewSaleCode @IDPreSale, @IDStore, @SaleCode output
 
INSERT Invoice 
	(
	IDPreSale,
	CashRegMovID,
	SpecialPriceID,
	IDMeioPag,
	IDTouristGroup,
	DeliverTypeID,
	MediaID,
	IDCustomer,
	IDStore,
	IDInvoice,
	OtherComissionID,
	IDLancPagOtherCom,
	PreSaleDate,
	--InvoiceDate,  -Nao pode colocar a data do invoice, ainda nao e um invoice
	DeliverDate,
	DeliverAddress,
	Passport,
	PassportDate,
	Ticket,
	AirLine,
	CompanyName,
	CompanyCGC,
	DepositDate,
	Tax,
	SubTotal,
	Note,
	ItemDiscount,
	TaxIsent,
	--nOpenUser,
	--RefreshInvoice,
	Printed,
	CashReceived,
	EstimatedPay,
	CardNumber,
	OtherExpences,
	Address,
	TaxIsemptValue,
	TaxIsemptItemDiscount,
	Layaway,
	FirstName,
	LastName,
	ZIP,
	--nOpenHoldCaixa,
	PrintNotes,
	DeliverOBS,
	DeliverConfirmation,
	IDFormOfPayment,
	AditionalExpenses,
	Canceled,
	IDPreSaleParent,
	SaleCode
	)
	SELECT
		@NewIDPreSale,
		CashRegMovID,
		SpecialPriceID,
		IDMeioPag,
		IDTouristGroup,
		@DeliverTypeID,
		MediaID,
		IDCustomer,
		IDStore,
		IDInvoice,
		OtherComissionID,
		IDLancPagOtherCom,
		PreSaleDate,
		--GetDate(), -Nao pode colocar a data do invoice, ainda nao e um invoice
		@DeliverDate,
		@DeliverAddress,
		Passport,
		PassportDate,
		Ticket,
		AirLine,
		CompanyName,
		CompanyCGC,
		DepositDate,
		Tax,
		SubTotal,
		Note,
		ItemDiscount,
		TaxIsent,
		--nOpenUser,
		--RefreshInvoice,
		Printed,
		CashReceived,
		EstimatedPay,
		CardNumber,
		OtherExpences,
		Address,
		TaxIsemptValue,
		TaxIsemptItemDiscount,
		Layaway,
		FirstName,
		LastName,
		ZIP,
		--nOpenHoldCaixa,
		PrintNotes,
		@DeliverOBS,
		1,--O PreSale deve ser  criado com a entrega já confirmada, pois sua criação parte de uma confirmação de entrega
		IDFormOfPayment,
		AditionalExpenses,
		Canceled,
		@IDPreSale,
		@SaleCode
 
	FROM
		Invoice
	WHERE
		Invoice.IDPreSale = @IDPreSale
 
SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -201
	GOTO ERRO
END
 

/*---------------------------------------------------------------------------------------------------*/
/*           Inclui os items marcados para o novo PreSale              */
/*---------------------------------------------------------------------------------------------------*/
--Declaração do Cursor de PreInventoryMov
DECLARE PreInventoryMov_Cursor CURSOR FOR
 
SELECT
	InventMovTypeID,
	StoreID,
	ModelID,
	IDPessoa,
	ComissionID,
	UserID,
	IDCotacao,
	IDPreInventoryMovParent,
	BarCodeID,
	@NewIDPreSale,
	MovDate,
	Qty,
	CostPrice,
	SalePrice,
	Discount,
	DateEstimatedMov,
	DateRealMov,
	QtyRealMov,
	Marked,
	ExchangeInvoice,
	SuggRetail,
	IDParentPack,
	IDModelService,
 	IDPreInventoryMov,
	DesiredMarkup
FROM
	dbo.PreInventoryMov
WHERE
	DocumentID = @IDPreSale
   	AND
   	Marked = 1
	AND
   	InventMovTypeID = 1
 

OPEN PreInventoryMov_Cursor
 
--Inicialização de PreInventoryMov_Cursor
FETCH NEXT FROM PreInventoryMov_Cursor INTO
	@InventMovTypeID,
	@StoreID,
	@ModelID,
	@IDPessoa,
	@ComissionID,
	@UserID,
	@IDCotacao,
	@IDPreInventoryMovParent,
	@BarCodeID,
	@DocumentID,
	@MovDate,
	@Qty,
	@CostPrice,
	@SalePrice,
	@Discount,
	@DateEstimatedMov,
	@DateRealMov,
	@QtyRealMov,
	@Marked,
	@ExchangeInvoice,
	@SuggRetail,
	@IDParentPack,
	@IDModelService,
	@IDPreInvMovOld,
	@DesiredMarkup
--Enquanto tem registros
WHILE @@FETCH_STATUS = 0
BEGIN
	EXEC sp_Sis_GetNextCode'PreInventoryMov.IDPreInventoryMov', @IDPreInventoryMov OUTPUT
 
	--Inclui as quantidades dos items marcados para o novo PreSale
	INSERT PreInventoryMov
		(
		IDPreInventoryMov,
		InventMovTypeID,
		StoreID,
		ModelID,
		IDPessoa,
		ComissionID,
		UserID,
		IDCotacao,
		IDPreInventoryMovParent,
		BarCodeID,
		DocumentID,
		MovDate,
		Qty,
		CostPrice,
		SalePrice,
		Discount,
		DateEstimatedMov,
		DateRealMov,
		QtyRealMov,
		Marked,
		ExchangeInvoice,
		SuggRetail,
		IDParentPack,
		IDModelService,
		DesiredMarkup
		)
	VALUES
		(
		@IDPreInventoryMov,
		@InventMovTypeID,
		@StoreID,
		@ModelID,
		@IDPessoa,
		@ComissionID,
		@UserID,
		@IDCotacao,
		@IDPreInventoryMovParent,
		@BarCodeID,
		@DocumentID,
		@MovDate,
		@QtyRealMov,
		@CostPrice,
		@SalePrice,
		((@Discount / @Qty) * @QtyRealMov), --Desconto tem que ser dividido nos invoices
		@DateEstimatedMov,
		@DateRealMov,
		0,
		0,
		@ExchangeInvoice,
		@SuggRetail,
		@IDParentPack,
		@IDModelService,
		@DesiredMarkup
		)
 
	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		CLOSE PreInventoryMov_Cursor
		DEALLOCATE PreInventoryMov_Cursor
		SET @ErrorLevel = -202
		GOTO ERRO
	END


	--Atualizar os IDPreInvParent
	UPDATE
		PreInventoryMov
	SET
		IDPreInventoryMovParent = @IDPreInventoryMov
	WHERE
		DocumentID = @IDPreSale
   		AND
   		InventMovTypeID = 1
		AND
		IDPreInventoryMovParent = @IDPreInvMovOld

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		CLOSE PreInventoryMov_Cursor
		DEALLOCATE PreInventoryMov_Cursor
		SET @ErrorLevel = -202
		GOTO ERRO
	END

 
	FETCH NEXT FROM PreInventoryMov_Cursor INTO
		@InventMovTypeID,
		@StoreID,
		@ModelID,
		@IDPessoa,
		@ComissionID,
		@UserID,
		@IDCotacao,
		@IDPreInventoryMovParent,
		@BarCodeID,
		@DocumentID,
		@MovDate,
		@Qty,
		@CostPrice,
		@SalePrice,
		@Discount,
		@DateEstimatedMov,
		@DateRealMov,
		@QtyRealMov,
		@Marked,
		@ExchangeInvoice,
		@SuggRetail,
		@IDParentPack,
		@IDModelService,
		@IDPreInvMovOld,
		@DesiredMarkup
END
--fechamento do cursor
CLOSE PreInventoryMov_Cursor
--Destruição do cursor
DEALLOCATE PreInventoryMov_Cursor
 

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -202
	GOTO ERRO
END
 
/*---------------------------------------------------------------------------------------------------------*/
/*           Atualiza as quantiades do Antigo PreSale  e o Desconto      */
/*---------------------------------------------------------------------------------------------------------*/
UPDATE PreInventoryMov
SET	Qty = Qty - QtyRealMov,
	Discount = Discount - ((Discount / Qty) * QtyRealMov), --Desconto tem que ser dividido nos invoices
 	Marked = 0,
	QtyRealMov = 0
WHERE
	DocumentID = @IDPreSale
	AND
	Marked = 1
	AND
	InventMovTypeID = 1
 
SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -203
	GOTO ERRO
END
 
/*---------------------------------------------------------------------------------------------------------*/
/*           Remove os items marcados do Antigo PreSale   */
/*---------------------------------------------------------------------------------------------------------*/
 
DELETE PreInventoryMov
WHERE
	DocumentID = @IDPreSale
	AND
	Qty = 0
	AND 
	InventMovTypeID = 1
 
SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -204
	GOTO ERRO
END
 
/*---------------------------------------------------------------------------------------------------------*/
/*            Recalcula o total do novo PreSale                */
/*---------------------------------------------------------------------------------------------------------*/
SET @Date = getDate()
 
EXEC sp_PreSale_SubCalcTotal @NewIDPreSale , @Date
 
SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -205
	GOTO ERRO 
END
 
/*---------------------------------------------------------------------------------------------------------*/
/*            Recalcula o total do antigo PreSale                */
/*---------------------------------------------------------------------------------------------------------*/
SET @Date = getDate()
 
EXEC sp_PreSale_SubCalcTotal @IDPreSale , @Date
 
SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -206
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
	 EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_PreSale_DivideHold', @ErrorLevelStr
 
 	RETURN @ErrorLevel
GO

CREATE PROCEDURE sp_PreSale_Split
			(
			@IDPreSale 		int,
			@NewIDPreSale	int   Output 			
			)
AS

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SUMARIO

		- Cria um novo cabeçalho para o PreSale
		- Inclui os items marcados para o novo PreSale
		- Remove os items marcados para o novo PreSale

	TABELA DE ERROS PARA RETURN_VALUE

		 000  Ok
		-201  Erro em Cria um novo cabeçalho para o PreSale
		-202  Erro em Inclui os items marcados para o novo PreSale
		-203  Erro em Remove os items marcados para o novo PreSale
		-204  Erro em exec sp_PreSale_SubCalcTotal
		-205  Erro em exec sp_PreSale_SubCalcTotal


	LOG DE MODIFICAÇÕES

	Data			Programador		Modificação
	--------------------------------------- --------------------------------------- -----------------------------------------------------------------------------------------------------
	15 May  2000		Eduardo Costa		Criacao;
	26 June 2001		Davi Gouveia		Log de Return Values
	29 Oct 	2003		Rodrigo Costa		Removido SELECT @NewIDPreSale = @@IDENTITY;
							Chama sp_GetNextCode para IDPreSale
	18 Aug 2004		Rodrigo Costa		Gravar error log
	05 May	2005		Rodrigo Costa			Novo campo de desired markup
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */

DECLARE @ErrorLevel		int
DECLARE @SysError		int
--Declaração de variáveis para o Cursor de PreInventoryMov
DECLARE @InventMovTypeID 	int 
DECLARE @DocumentID 	int 
DECLARE @StoreID 		int 
DECLARE @ModelID 		int 
DECLARE @BarCodeID 		char(20)
DECLARE @MovDate 		smalldatetime 
DECLARE @Qty 		int 
DECLARE @CostPrice 		money 
DECLARE @SalePrice 		money 
DECLARE @Discount 		money 
DECLARE @IDPessoa 		int 
DECLARE @DateEstimatedMov 	smalldatetime 
DECLARE @DateRealMov 	smalldatetime 
DECLARE @QtyRealMov 	int 
DECLARE @ComissionID 	int 
DECLARE @IDPreInventoryMov	int
DECLARE @DesiredMarkup		money

SET @ErrorLevel = 0

BEGIN TRAN
 
/*---------------------------------------------------------------------*/
/*                  Cria um novo cabeçalho para o PreSale              */
/*---------------------------------------------------------------------*/ 
EXEC sp_Sis_GetNextCode'Invoice.IDPreSale', @NewIDPreSale OUTPUT
INSERT Invoice	(
		IDPreSale,
		IDInvoice,
		IDMeioPag,
		SpecialPriceID,
 		IDTouristGroup,
 		PreSaleDate,
 		InvoiceDate,
		OtherComissionID,
		IDCustomer,
		DeliverTypeID,
		DeliverDate,
		DeliverAddress,
		Passport,
		PassportDate,
 		Ticket,
		AirLine,
		CompanyName,
		CompanyCGC,
		DepositDate,
		Note,
		TaxIsent,
		MediaID
		)
		SELECT
			@NewIDPreSale,
			IDInvoice,
			IDMeioPag,
			SpecialPriceID,
			IDTouristGroup,
 			PreSaleDate,
			InvoiceDate,
			OtherComissionID,
			IDCustomer,
			DeliverTypeID,
			DeliverDate,
			DeliverAddress,
			Passport,
			PassportDate,
			Ticket,
 			AirLine,
			CompanyName,
			CompanyCGC,
			DepositDate,
			Note,
 			TaxIsent,
			MediaID
		FROM
			Invoice
		WHERE
			Invoice.IDPreSale = @IDPreSale

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -201
	GOTO ERRO
END


/*---------------------------------------------------------------------*/
/*           Inclui os items marcados para o novo PreSale              */
/*---------------------------------------------------------------------*/
--Declaração do Cursor de PreInventoryMov
DECLARE PreInventoryMov_Cursor CURSOR FOR

		SELECT
			InventMovTypeID,
			@NewIDPreSale,
			StoreID,
			ModelID,
			BarCodeID,
			MovDate,
			Qty,
			CostPrice,
			SalePrice,
			Discount,
			IDPessoa,
			DateEstimatedMov,
			DateRealMov,
			QtyRealMov,
			ComissionID,
			DesiredMarkup
		FROM
			dbo.PreInventoryMov
		WHERE
			DocumentID = @IDPreSale
			AND
			Marked = 1
			AND
			InventMovTypeID = 1


OPEN PreInventoryMov_Cursor

--Inicialização de PreInventoryMov_Cursor
FETCH NEXT FROM PreInventoryMov_Cursor INTO
	@InventMovTypeID,
	@DocumentID,
	@StoreID,
	@ModelID,
	@BarCodeID,
	@MovDate,
	@Qty,
	@CostPrice,
	@SalePrice,
	@Discount,
	@IDPessoa,
	@DateEstimatedMov,
	@DateRealMov,
	@QtyRealMov,
	@ComissionID,
	@DesiredMarkup
--Enquanto tem registros
WHILE
@@FETCH_STATUS = 0
BEGIN
	EXEC sp_Sis_GetNextCode'PreInventoryMov.IDPreInventoryMov', @IDPreInventoryMov OUTPUT

	INSERT PreInventoryMov
		(
		IDPreInventoryMov,
		InventMovTypeID,
		DocumentID,
		StoreID,
		ModelID,
		BarCodeID,
		MovDate,
		Qty,
		CostPrice,
		SalePrice,
		Discount,
		IDPessoa,
		DateEstimatedMov,
		DateRealMov,
		QtyRealMov,
		ComissionID,
		DesiredMarkup
		)
	VALUES
		(
		@IDPreInventoryMov,
		@InventMovTypeID,
		@DocumentID,
		@StoreID,
		@ModelID,
		@BarCodeID,
		@MovDate,
		@Qty,
		@CostPrice,
		@SalePrice,
		@Discount,
		@IDPessoa,
		@DateEstimatedMov,
		@DateRealMov,
		@QtyRealMov,
		@ComissionID,
		@DesiredMarkup
		)

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		CLOSE PreInventoryMov_Cursor
		DEALLOCATE PreInventoryMov_Cursor
		SET @ErrorLevel = -202
		GOTO ERRO
	END

	FETCH NEXT FROM PreInventoryMov_Cursor INTO
		@InventMovTypeID,
		@DocumentID,
		@StoreID,
		@ModelID,
		@BarCodeID,
		@MovDate,
		@Qty,
		@CostPrice,
		@SalePrice,
		@Discount,
		@IDPessoa,
		@DateEstimatedMov,
		@DateRealMov,
		@QtyRealMov,
		@ComissionID,
		@DesiredMarkup
END
--fechamento do cursor
CLOSE PreInventoryMov_Cursor
--Destruição do cursor
DEALLOCATE PreInventoryMov_Cursor


SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -202
	GOTO ERRO
END

/*---------------------------------------------------------------------*/
/*           Remove os items marcados para o novo PreSale              */
/*---------------------------------------------------------------------*/
 DELETE
	PreInventoryMov
WHERE
	DocumentID = @IDPreSale
	AND
	Marked = 1
	AND
	InventMovTypeID = 1

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -203
	GOTO ERRO
END

exec sp_PreSale_SubCalcTotal @IDPreSale

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -204
	GOTO ERRO
END

EXEC sp_PreSale_SubCalcTotal @NewIDPreSale  

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -205
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
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_PreSale_Split', @ErrorLevelStr

	RETURN @ErrorLevel
GO
