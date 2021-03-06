if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_Inventory_AddSize]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_Inventory_AddSize]
GO

CREATE PROCEDURE sp_Inventory_AddSize
	(
	@IDModel	int,
	@IDSize	int
	)
 AS

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	SUMARIO

		- Testa qual das sub's devo rodar
		- Atualizo o model


	TABELA DE ERROS PARA RETURN_VALUE

	 000  Ok
	-204  Size exist
	-201  Erro em Atualizo o model
	-202  Erro em Insiro submodel
	-203  Erro em EXEC @ErrorLevel = sp_Inventory_Sub_AtuModelName @IDModel

	LOG DE MODIFICA��ES

	Data			Programador		Modifica��o
	--------------------------------------- --------------------------------------- -----------------------------------------------------------------------------------------------------
	29 Nov  2000		Eduardo Costa		Cria��o;
	25 June 2001		Davi Gouveia		Log de Return Values
	12 August 2003		Rodrigo Costa		Size exist test
	27 Oct	2003		Andr� Bogado		Chamada a sp_Sis_GetNextCode
							Declara�ao do cursor Model_Cursor
	18 Aug 2004		Rodrigo Costa		Gravar error log
	15 Aug 2005		Rodrigo Costa		Update Model Values
	21 Nov	2005		Rodrigo Costa		Update Group e SubGroup
	01 Fev	2006		Max			Removido a atualizacao de precos
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */

DECLARE @ErrorLevel			int
DECLARE @SysError			int
DECLARE @CurrentNumberOfSize 	int

--Declara��o de vari�veis para o Cursor de Model
DECLARE @Model 			varchar(30)
DECLARE @IDColor 			int 
DECLARE @GroupID 			int 
DECLARE @FreightCost 		money 
DECLARE @OtherCost 			money 
DECLARE @VendorCost 		money 
DECLARE @DateLastCost		smalldatetime 
DECLARE @MarkUp 			money 
DECLARE @SellingPrice 		money 
DECLARE @DateLastSellingPrice 	smalldatetime 
DECLARE @IDFabricante 		int 
DECLARE @Avaiable 			money 
DECLARE @LastCost 			money 
DECLARE @SuggRetail 			money 
DECLARE @AutomaticRequest 		bit 
DECLARE @ModelType 		char(1)
DECLARE @IDModelParent 		int 
DECLARE @CustomSalePrice 		bit 
DECLARE @CustomCostPrice 		bit 
DECLARE @CustomSpecialPrice		bit 
DECLARE @CustomPromotion 		bit 
DECLARE @Desativado 		int 
DECLARE @Hidden 			int
DECLARE @System 			bit 
DECLARE @Description 		varchar (50)
DECLARE @ModelID 			int 
DECLARE @IDModelGroup		int
DECLARE @IDModelSubGroup		int

BEGIN TRAN

-- Testa se a cor j� existe
IF EXISTS (SELECT IDModel FROM Model WHERE IDModelParent = @IDModel AND IDSize = @IDSize)
BEGIN
	PRINT 'ERROR: Model already contains this size !'
	SET @ErrorLevel = -204
	GOTO ERRO
END


-- Testa qual das sub's devo rodar
SELECT
	@CurrentNumberOfSize = COUNT(IDSize)
FROM
	Model
WHERE
	IDModelParent = @IDModel
	AND
	IDSize IS NOT NULL



IF EXISTS(SELECT IDModel FROM Model WHERE IDModelParent = @IDModel AND IDSize IS NULL)
BEGIN
	-- Atualizo o model
	UPDATE
		M
	SET
		M.IDSize = @IDSize
	FROM
		Model M
	WHERE
		M.IDModelParent = @IDModel

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		SET @ErrorLevel = -201
		GOTO   ERRO
	END
END
ELSE
BEGIN
	-- Insiro submodel
--Declara��o do Cursor de Model

DECLARE Model_Cursor CURSOR FOR
	SELECT
		M.Model,
		MS.IDColor,
		M.GroupID,
		M.Description,
		M.FreightCost,
		M.OtherCost,
		M.VendorCost,
		M.DateLastCost,
		M.MarkUp,
		M.SellingPrice,
		M.DateLastSellingPrice,
		M.IDFabricante,
		M.Avaiable,
		M.LastCost,
		M.SuggRetail,
		M.AutomaticRequest,
		'S',  -- SUBMODEL
		M.IDModel,
		0,
		0,
		0,
		0,
		M.System,
		M.Desativado,
		M.Hidden,
		M.IDModelGroup,
		M.IDModelSubGroup
	FROM
		Model M
		LEFT OUTER JOIN 
		(SELECT 
			IDModelParent, 
			IDColor 
		FROM 
			Model 
		WHERE 
			IDModelParent = @IDModel 
		GROUP BY 
			IDModelParent, IDColor) MS ON (M.IDModel = MS.IDModelParent)
	WHERE
		M.IDModel = @IDModel



OPEN Model_Cursor

--Inicializa��o de Model_Cursor
FETCH NEXT FROM Model_Cursor INTO
	@Model,
	@IDColor,
	@GroupID,
	@Description,
	@FreightCost,
	@OtherCost,
	@VendorCost,
	@DateLastCost,
	@MarkUp,
	@SellingPrice,
	@DateLastSellingPrice,
	@IDFabricante,
	@Avaiable,
	@LastCost,
	@SuggRetail,
	@AutomaticRequest,
	@ModelType,
	@IDModelParent,
	@CustomSalePrice,
	@CustomCostPrice,
	@CustomSpecialPrice,
	@CustomPromotion,
	@System,
	@Desativado,
	@Hidden,
	@IDModelGroup,
	@IDModelSubGroup
--Enquanto tem registros
WHILE @@FETCH_STATUS = 0
BEGIN
	Exec sp_Sis_GetNextCode 'Model.IDModel', @ModelID OUTPUT

	INSERT Model
		(
		IDModel,
		Model,
		IDColor,
		IDSize,
		GroupID,
		Description,
		FreightCost,
		OtherCost,
		VendorCost,
		DateLastCost,
		MarkUp,
		SellingPrice,
		DateLastSellingPrice,
		IDFabricante,
		Avaiable,
		LastCost,
		SuggRetail,
		AutomaticRequest,
		ModelType,
		IDModelParent,
		CustomSalePrice,
		CustomCostPrice,
		CustomSpecialPrice,
		CustomPromotion,
		System,
		Desativado,
		Hidden,
		IDModelGroup,
		IDModelSubGroup
		)
	VALUES 
		(
		@ModelID,
		@Model,
		@IDColor,
		@IDSize,
		@GroupID,
		@Description,
		@FreightCost,
		@OtherCost,
		@VendorCost,
		@DateLastCost,
		@MarkUp,
		@SellingPrice,
		@DateLastSellingPrice,
		@IDFabricante,
		@Avaiable,
		@LastCost,
		@SuggRetail,
		@AutomaticRequest,
		@ModelType,
		@IDModelParent,
		@CustomSalePrice,
		@CustomCostPrice,
		@CustomSpecialPrice,
		@CustomPromotion,
		@System,
		@Desativado,
		@Hidden,
		@IDModelGroup,
		@IDModelSubGroup
		)

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		CLOSE Model_Cursor
		DEALLOCATE Model_Cursor
		SET @ErrorLevel = -202
		GOTO ERRO
	END
	FETCH NEXT FROM Model_Cursor INTO
		@Model,
		@IDColor,
		@GroupID,
		@Description,
		@FreightCost,
		@OtherCost,
		@VendorCost,
		@DateLastCost,
		@MarkUp,
		@SellingPrice,
		@DateLastSellingPrice,
		@IDFabricante,
		@Avaiable,
		@LastCost,
		@SuggRetail,
		@AutomaticRequest,
		@ModelType,
		@IDModelParent,
		@CustomSalePrice,
		@CustomCostPrice,
		@CustomSpecialPrice,
		@CustomPromotion,
		@System,
		@Desativado,
		@Hidden,
		@IDModelGroup,
		@IDModelSubGroup
END
--fechamento do cursor
CLOSE Model_Cursor
--Destrui��o do cursor
DEALLOCATE Model_Cursor

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		SET @ErrorLevel = -202
		GOTO   ERRO
	END
END


EXEC @ErrorLevel = sp_Inventory_Sub_AtuModelName @IDModel

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -203
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
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_Inventory_AddSize', @ErrorLevelStr

	RETURN @ErrorLevel

GO
