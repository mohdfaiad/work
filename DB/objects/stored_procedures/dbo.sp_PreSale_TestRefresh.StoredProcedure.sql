SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_PreSale_TestRefresh]
			(
			@IDPreSale int,
			@RefreshInvoice int output
			)
AS
 /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 	SUMARIO
		
		-

	TABELA DE ERROS PARA RETURN_VALUE

		 000  Ok
		-201  Erro no Select


	LOG DE MODIFICAÇÕES

	Data			Programador		Modificação
	--------------------------------------- --------------------------------------- -----------------------------------------------------------------------------------------------------
	15 May  2000		Eduardo Costa		Criacao;
	27 June 2001		Davi Gouveia		Log de Return Values
	18 Aug 2004		Rodrigo Costa		Gravar error log
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */

DECLARE @ErrorLevel	int
DECLARE @SysError	int

SET @ErrorLevel = 0

SELECT
	@RefreshInvoice =   CONVERT(int,
			   (
 		 	   SELECT 	RefreshInvoice
 	 		   FROM 	dbo.Invoice (NOLOCK) 
			   WHERE 	dbo.Invoice.IDPreSale = @IDPreSale
 			   ))

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -201
	GOTO ERRO
END

OK:
	RETURN 0
ERRO:
	PRINT CAST(@ErrorLevel AS VARCHAR)

	DECLARE @ErrorLevelStr varchar(10)
	SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR)
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_PreSale_TestRefresh', @ErrorLevelStr

	RETURN @ErrorLevel
GO
