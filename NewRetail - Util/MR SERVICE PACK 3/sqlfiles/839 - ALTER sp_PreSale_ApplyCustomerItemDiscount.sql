if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_PreSale_ApplyCustomerItemDiscount]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_PreSale_ApplyCustomerItemDiscount]
GO

CREATE PROCEDURE sp_PreSale_ApplyCustomerItemDiscount
		(
		@IDPreSale		int,
		@IDCustomer		int,
		@IDPreInventoryMov	int,
		@Date			DateTime
		)
AS

/* ---------------------------------------------------------------------------------------------------------------
	SUMARIO

		- Insere desconto em apenas um item espcifico, baseado no tipo de cliente

	TABELA DE ERROS PARA RETURN_VALUE

		 000  Ok
		-201  Erro ao selecionar um item.
		-202  Erro ao atualizar o item.
		-203  Erro em exec sp_PreSale_SubCalcTotal @PreSaleID, @Date.

	LOG DE MODIFICAÇÕES

	Data			Programador		Modificação
	------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------
	05 Jan 2007		Maic Nogueira		Criação;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

DECLARE @Discount		money
DECLARE @OldDiscount		money
DECLARE @ErrorLevel		int 
DECLARE @SysError		int

SET @ErrorLevel = 0

/*--------------------------------------------------------------------------------------*/
/*				Calcula desconto do cliente				*/
/*--------------------------------------------------------------------------------------*/

	SELECT
		@Discount = (PIM.SalePrice * (CD.Discount / 100)) * PIM.Qty,
		@OldDiscount = PIM.Discount
	FROM
		Ent_CustomerDiscount CD (NOLOCK) 
		JOIN Model M (NOLOCK) ON (CD.IDGroup = M.GroupID)
		JOIN PreInventoryMov PIM (NOLOCK) ON (M.IDModel = PIM.ModelID)
		JOIN Pessoa P (NOLOCK) ON (CD.IDTipoPessoa = P.IDTipoPessoa)
	WHERE
		P.IDPessoa = @IDCustomer
		AND
		PIM.IDPreInventoryMov = @IDPreInventoryMov
		AND
		PIM.InventMovTypeID = 1

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		SET @ErrorLevel = -201
		GOTO ERRO
	END

	IF (@Discount > 0) AND (@Discount > @OldDiscount)
	BEGIN	
		UPDATE
			PreInventoryMov
		SET
			Discount = @Discount
		WHERE
			IDPreInventoryMov = @IDPreInventoryMov
	
		SET @SysError = @@ERROR
		IF @SysError <> 0
		BEGIN
			SET @ErrorLevel = -202
			GOTO ERRO
		END
	
		exec sp_PreSale_SubCalcTotal @IDPreSale, @Date
	
		SET @SysError = @@ERROR
		IF @SysError <> 0
		BEGIN
			SET @ErrorLevel = -203
			GOTO ERRO
		END
	END

OK:
	RETURN 0
ERRO:
	PRINT CAST(@ErrorLevel AS VARCHAR)

	DECLARE @ErrorLevelStr varchar(10)
	SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR)
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_PreSale_ApplyCustomerItemDiscount', @ErrorLevelStr

	RETURN @ErrorLevel
GO
