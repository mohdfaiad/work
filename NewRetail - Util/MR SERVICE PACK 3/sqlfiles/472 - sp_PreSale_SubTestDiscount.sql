if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_PreSale_SubTestDiscount]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_PreSale_SubTestDiscount]
GO

CREATE PROCEDURE sp_PreSale_SubTestDiscount
	(
	@PreSaleID	int,
	@ModelID	int,
	@UserID		int,
	@Discount	money,
	@Value		money,
	@OP		char(1),
	@PreInventMovID	int = 0
	)
AS

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SUMARIO

		- Find the value of Invoice
		- Find the discount on invoice items
		- Find the Percentual for discount
		- Calcula os novos valores para Invoice e Discount
		- Find the Maximum Discount for invoice Range
		- Test and Return

	TABELA DE ERROS PARA RETURN_VALUE

		 000  Ok
		-201  Erro em Find the value of Invoice
		-202  Erro em Find the discount on invoice items
		-203  Erro em Find the Percentual for discount
		-204  Erro em if @OP = 'I'
		-205  Erro em else if @OP = 'E'
		-206  Erro em else if @OP = 'A'
		-207  Erro em Find the Maximum Discount for invoice Range


	LOG DE MODIFICA��ES

	Data			Programador		Modifica��o
	--------------------------------------- --------------------------------------- -----------------------------------------------------------------------------------------------------
	15 May  2000		Eduardo Costa		Criacao;
	26 June 2001		Davi Gouveia		Log de Return Values
	18 Aug 2004		Rodrigo Costa		Gravar error log
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */


DECLARE @MaxDiscount   	money
DECLARE @MaxVendaMin   	money
DECLARE @ValInvoice    	money
DECLARE @NewValInvoice  	money
DECLARE @NewDiscount    	money
DECLARE @ItemDiscount  	money
DECLARE @OldValMov		money
DECLARE @FatParcDisc	money
DECLARE @ErrorLevel		int
DECLARE @SysError		int

SET @ErrorLevel = 0

/*-------------------------------------------------------*/
/*	             Find the value of Invoice           */
/*-------------------------------------------------------*/
SELECT @ValInvoice =
	(
	SELECT  IsNull(sum(IsNull(PIM.Qty,0) * IsNull(PIM.SalePrice,0) * (IsNull(TG.PrcPartDiscount,0))/100), 0)
		FROM 	dbo.PreInventoryMov PIM,
			dbo.Model	    MO,
			dbo.TabGroup	    TG
	WHERE	PIM.DocumentID = @PreSaleID     AND
		PIM.InventMovTypeID = 1      AND
		PIM.ModelID = MO.IDModel     AND
		MO.GroupID = TG.IDGroup
	)

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -201
	GOTO ERRO
END

/*-------------------------------------------------------*/
/*          Find the discount on invoice items           */
/*-------------------------------------------------------*/
SELECT @ItemDiscount =
	(
	SELECT 	IsNull( Sum( IsNull(PIM.Discount,0) ), 0)
	FROM 	dbo.PreInventoryMov PIM
	WHERE 	PIM.DocumentID = @PreSaleID     AND
		PIM.InventMovTypeID = 1
	)

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -202
	GOTO ERRO
END

/*-------------------------------------------------------*/
/*	      Find the Percentual for discount           */
/*-------------------------------------------------------*/
SELECT @FatParcDisc =
	(
	SELECT  (IsNull( TG.PrcPartDiscount,0 ) / 100)

	FROM 	dbo.Model	 MO,
		dbo.TabGroup	 TG
	WHERE	MO.IDModel = @ModelID     AND
		MO.GroupID = TG.IDGroup
	)

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -203
	GOTO ERRO
END

/*-------------------------------------------------------*/
/*    Calcula os novos valores para Invoice e Discount   */
/*-------------------------------------------------------*/
if @OP = 'I'
   begin
	SELECT @NewValInvoice = IsNull(@ValInvoice, 0) + IsNull(@Value * @FatParcDisc, 0)
	SELECT @NewDiscount = IsNull(@Discount, 0) + IsNull(@ItemDiscount, 0)

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		SET @ErrorLevel = -204
		GOTO ERRO
	END
   end
else if @OP = 'E'
   begin
	SELECT @NewValInvoice = IsNull(@ValInvoice, 0) - IsNull(@Value * @FatParcDisc, 0)
	SELECT @NewDiscount = IsNull(@ItemDiscount, 0) - IsNull(@Discount, 0)

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		SET @ErrorLevel = -205
		GOTO ERRO
	END
   end

else if @OP = 'A'
   begin
	SELECT @NewValInvoice = IsNull(@ValInvoice, 0) + IsNull(@Value * @FatParcDisc, 0) -
					IsNull(
					(
					SELECT 	IsNull( (PIM.SalePrice * PIM.Qty), 0 )
					FROM 	dbo.PreInventoryMov PIM
					WHERE	PIM.IDPreInventoryMov = @PreInventMovID
					) * @FatParcDisc, 0)
	SELECT @NewDiscount = IsNull(@Discount, 0) + IsNull(@ItemDiscount, 0) -
					IsNull(
					(
					SELECT 	IsNull( PIM.Discount, 0 )
					FROM 	dbo.PreInventoryMov PIM
					WHERE	PIM.IDPreInventoryMov = @PreInventMovID
					), 0)

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		SET @ErrorLevel = -206
		GOTO ERRO
	END
   end
/*-------------------------------------------------------*/
/*      Find the Maximum Discount for invoice Range      */
/*-------------------------------------------------------*/
SELECT @MaxVendaMin = IsNull(
	(
	SELECT  MAX(DRMax.TotVendaMin)
	FROM    dbo.DiscRange DRMax, dbo.vwComissionado CO,
	        dbo.SystemUser SU
	WHERE	SU.IDUser = @UserID AND
		CO.IDComissionado = SU.ComissionID AND
		DRMax.IDTipoComissionado = CO.IDTipoComissionado 	AND
   		DRMax.TotVendaMin <= IsNull(@NewValInvoice, 0)
	), 0)
SELECT @MaxDiscount = IsNull(
	(
		(
		SELECT 	IsNull(DR.PercDiscMax, 0)

		FROM 	dbo.DiscRange    DR,
			dbo.SystemUser   SU,
			dbo.vwComissionado  CO
		WHERE 	SU.IDUser = @UserID 		AND
			DR.IDTipoComissionado = CO.IDTipoComissionado 	AND 
			CO.IDComissionado = SU.ComissionID AND
			DR.TotVendaMin = @MaxVendaMin
		) /100
	) * @NewValInvoice,0)

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -207
	GOTO ERRO
END

/*-------------------------------------------------------*/
/*                     Test and Return                   */
/*-------------------------------------------------------*/
-- Sempre � possivel incluir um novo item sem desconto
IF (IsNull(@Discount,0) = 0) and (@OP = 'I')
	RETURN 0

IF (IsNull(@NewDiscount, 0) > IsNull(@MaxDiscount, 0))
BEGIN
	IF (IsNull(@MaxDiscount, 0) = 0) AND (IsNull(@NewDiscount, 0) <= (IsNull(@Value, 0) * IsNull(@FatParcDisc, 0))) AND (@OP = 'I')
		RETURN 0
	ELSE IF (IsNull(@Discount, 0) > IsNull(@MaxDiscount, 0)) and (@OP <> 'E')
		RETURN -2
	ELSE
		RETURN -1
END
ELSE
	RETURN 0

ERRO:
	PRINT CAST(@ErrorLevel AS VARCHAR)

	DECLARE @ErrorLevelStr varchar(10)
	SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR)
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_PreSale_SubTestDiscount', @ErrorLevelStr

	RETURN @ErrorLevel
GO
