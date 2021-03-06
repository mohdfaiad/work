SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_Inventory_AddColor]
	(
	@IDModel	int,
	@IDColor	int,
	@BarcodeCreate	bit = 0
	)
AS

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        SUMARIO

		- Testa se a cor j� existe
		- Atualizo a cor do model

	TABELA DE ERROS PARA RETURN_VALUE

	 000  Ok
	-201  Cor j� existe
	-202  Erro em Atualizo a cor do model
	-203  Erro em Insiro em model
	-204  Erro na cria��o de barcode
	-205  Erro em EXEC @ErrorLevel = sp_Inventory_Sub_AtuModelName @IDModel

	LOG DE MODIFICA��ES

	Data			Programador		Modifica��o
	--------------------------------------- --------------------------------------- -----------------------------------------------------------------------------------------------------
	29 Nov  2000		Eduardo Costa		Cria��o;
	25 June 2001		Davi Gouveia		Log de Return Values
	27 Oct	2003		Andr� Bogado		Chamada a sp_Sis_GetNextCode
							Declara�ao do cursor Model_Cursor
	18 Aug 2004		Rodrigo Costa		Gravar error log
	15 Aug 2005		Rodrigo Costa		Update Model Values
	21 Nov	2005		Rodrigo Costa		Update ModelGroup e SubGroup
	01 Fev	2006		Max			Removido a atualizacao de precos
	16 Aug	2006		Max e Maic		Cria��o autom�tica de barcode
	28 Abr	2007		Rodrigo Costa		Removido as transacoes da SP
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  */

DECLARE @ErrorLevel			int
DECLARE @SysError			int

--Declara��o de vari�veis para o Cursor de Model
DECLARE @Model 			varchar(30)
DECLARE @IDSize 			int 
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
DECLARE @Barcode		varchar(20)

-- Testa se a cor j� existe
IF EXISTS (SELECT IDModel FROM Model (NOLOCK)  WHERE IDModelParent = @IDModel AND IDColor = @IDColor)
BEGIN
	PRINT 'ERROR: Model already contains this color !'
	SET @ErrorLevel = -201
	GOTO ERRO
END

IF EXISTS(SELECT IDModel FROM Model (NOLOCK) WHERE IDModelParent = @IDModel AND IDColor IS NULL)
BEGIN
	-- Atualizo a cor do model
	UPDATE
		M
	SET
		M.IDColor = @IDColor
	FROM
		Model M (NOLOCK) 
	WHERE
		M.IDModelParent = @IDModel

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		SET @ErrorLevel = -202
		GOTO ERRO
	END
END
ELSE
BEGIN
	-- Insiro em model
	--Declara��o do Cursor de Model
	DECLARE Model_Cursor CURSOR FOR

	SELECT
		M.Model,
		@IDColor,
		MS.IDSize,
		M.GroupID,
		M.[Description],
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
		'S',                            -- SUBMODEL
		M.IDModel,
		0,
		0,
		0,
		0,
		M.[System],
		M.Desativado,
		M.Hidden,
		M.IDModelGroup,
		M.IDModelSubGroup
	FROM
		Model M (NOLOCK) 
		LEFT OUTER JOIN (SELECT IDModelParent, IDSize FROM Model (NOLOCK)  WHERE IDModelParent = @IDModel GROUP BY IDModelParent, IDSize) MS ON (M.IDModel = MS.IDModelParent)
	WHERE
		M.IDModel = @IDModel

	OPEN Model_Cursor

	--Inicializa��o de Model_Cursor
	FETCH NEXT FROM Model_Cursor INTO
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
			SET @ErrorLevel = -203
			GOTO ERRO
		END

		IF @BarcodeCreate = 1
		BEGIN
			SET @Barcode = IsNull(Cast(@GroupID as varchar(15)), '') + IsNull(Cast(@ModelID as varchar(15)), '') + IsNull(Cast(@IDFabricante as varchar(15)), '') + IsNull(Cast(@IDSize as varchar(15)), '') + IsNull(Cast(@IDColor as varchar(15)), '')

			INSERT INTO Barcode (IDBarcode, IDModel, Data, BarcodeOrder)
			VALUES (@Barcode, @ModelID, GetDate(), 1)

			SET @SysError = @@ERROR
			IF @SysError <> 0
			BEGIN
				CLOSE Model_Cursor
				DEALLOCATE Model_Cursor
				SET @ErrorLevel = -205
				GOTO ERRO
			END
		END

		FETCH NEXT FROM Model_Cursor INTO
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
	END

	--fechamento do cursor
	CLOSE Model_Cursor
	--Destrui��o do cursor
	DEALLOCATE Model_Cursor

	SET @SysError = @@ERROR
	IF @SysError <> 0
	BEGIN
		SET @ErrorLevel = -203
		GOTO ERRO
	END
END

EXEC @ErrorLevel = sp_Inventory_Sub_AtuModelName @IDModel

IF @ErrorLevel <> 0
BEGIN
	SET @ErrorLevel = -205
	GOTO ERRO
END

OK:
	RETURN 0

ERRO:
	PRINT CAST(@ErrorLevel AS VARCHAR)

	DECLARE @ErrorLevelStr varchar(10)
	SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR)
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_Inventory_AddColor', @ErrorLevelStr

	RETURN @ErrorLevel
GO
