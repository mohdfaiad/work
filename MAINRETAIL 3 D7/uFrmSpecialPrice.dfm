�
 TBRWFRMSPECIALPRICE 01%  TPF0�TbrwFrmSpecialPricebrwFrmSpecialPriceLeftTop-Caption
User TypesClientHeight�ClientWidth�PixelsPerInch`
TextHeight �TPanelPanel2Width� �TImageImage1Width�   �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�   �TPanel
pnlAutoIncLeft�   �TPanelPanel1Top�Width� �TLabellblUserNameWidth�   �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft   �TPanelpnlKeyWidth� � TLabelLabel1LeftTopWidthJHeight	AlignmenttaRightJustifyCaptionIDSpecialPrice :FocusControlDBEdit1  �TPanelPanel4Width�  TDBEditDBEdit1LefthTop
Width@Height	DataFieldIDSpecialPrice
DataSourcedsFormTabOrder   �TPanel	pnlDetailWidth�HeightO TLabelLabel2LeftTop	WidthBHeight	AlignmenttaRightJustifyCaptionSpecial Price :FocusControlDBEdit2  TLabelLabel21LeftuTopWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TDBEditDBEdit2LeftcTopWidthHeight	DataFieldSpecialPrice
DataSourcedsFormTabOrder   TPanelPanel6LeftTop� Width� Heightv
BevelOuterbvNoneColor��� TabOrder TLabelLabel4Left
Top Width<Height	AlignmenttaRightJustifyCaption	Maximun :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TDBTextDBText1LeftOTopWidthVHeight	DataField	MaxMarkUp
DataSourcedsMarkupFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel5LeftTop9Width8Height	AlignmenttaRightJustifyCaption	Minimun :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TDBTextDBText2LeftOTop8WidthVHeight	DataField	MinMarkUp
DataSourcedsMarkupFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel6LeftTopRWidth9Height	AlignmenttaRightJustifyCaption	Average :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TDBTextDBText3LeftOTopQWidthVHeight	DataField	AvgMarkUp
DataSourcedsMarkupFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TPanelPanel7Left Top Width� HeightAlignalTop
BevelOuterbvNoneCaptionActual Inventory Mark-UpsColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder    	TSMDBGridgrdSpecialPriceLeftTopWidth�Height� 
DataSourcedsSpecialPriceToGroup
FixedColor��� Options	dgEditingdgTitlesdgColumnResize
dgRowLinesdgConfirmDeletedgCancelOnExit TabOrderTitleFont.CharsetANSI_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style Flat		Groupings GridStyle.StylegsCustomGridStyle.OddColorclWindowGridStyle.EvenColorclWindowFooterColor	clBtnFace	ExOptionseoAutoWidtheoKeepSelection 	FixedColsRegistryKeySoftware\ScalabiumRegistrySectionSMDBGridWidthOfIndicatorDefaultRowHeight
ScrollBars
ssVerticalColCountRowCountColumnsExpanded	FieldNameCategoryWidth_Visible	
FooterTypeftCustom Expanded	FieldNameSpecialMarkUpWidth� Visible	
FooterTypeftCustom    	TSMDBGridgrdSaleHistoryLeft� Top� WidthHeightuBorderStylebsNoneColorclMenu
DataSourcedsSaleHistroy
FixedColor��� OptionsdgTitles
dgRowLinesdgRowSelectdgConfirmDeletedgCancelOnExit TabOrderTitleFont.CharsetANSI_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style Flat		Groupings GridStyle.StylegsCustomGridStyle.OddColor	clBtnFaceGridStyle.EvenColor	clBtnFaceFooterColor	clBtnFace	ExOptionseoAutoWidtheoKeepSelection RegistryKeySoftware\ScalabiumRegistrySectionSMDBGridWidthOfIndicatorDefaultRowHeight
ScrollBars
ssVerticalColCountRowCountColumnsExpanded	FieldNameYearWidthIVisible	
FooterTypeftCustom Expanded	FieldName	MonthNameWidthsVisible	
FooterTypeftCustom Expanded	FieldNameMarkUpWidth^Visible	
FooterTypeftCustom     �TPanelEspacamentoEsquerdoHeightO  �TPanelEspacamentoDireitoLeft�HeightO  �	TsiLangRTsiLangStorageFileMR_brwFrmSpecialPrice.sil  �TDataSourcedsFormLeftTop~  �TPowerADOQueryquFormBeforeClosequFormBeforeCloseCommandText�SELECT
        IDSpecialPrice,
        SpecialPrice
FROM
        SpecialPrice SpecialPrice
WHERE
        IDSpecialPrice = :IDSpecialPrice 
 

ParametersNameIDSpecialPrice
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTop�  TIntegerFieldquFormIDSpecialPrice	FieldNameIDSpecialPrice  TStringFieldquFormSpecialPrice	FieldNameSpecialPriceRequired	Size   �TFormConfig
FormConfigPostOnInsert	AutoIncFieldIDSpecialPriceRequiredFields.StringsSpecialPrice DependentTables.StringsSpecialPriceByGroup DependentTableKeys.StringsSpecialPriceID Left�Top3  	TADOQueryquSpecialPriceToGroup
ConnectionDM.ADODBConnect
CursorTypectStaticAfterInsert quSpecialPriceToGroupAfterInsert	AfterEditquSpecialPriceToGroupAfterEdit
ParametersNameSpecialPriceID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT'	SPG.SpecialPriceID as IDSpecialPrice, 	TG.Name as Category, 	SPG.SpecialMarkUp, 	TG.IDGroupFROM !	SpecialPriceByGroup SPG (NOLOCK)8	JOIN TabGroup TG (NOLOCK) ON (SPG.GroupID = TG.IDGroup)WHERE%	SPG.SpecialPriceID = :SpecialPriceID	AND	TG.Desativado = 0	AND	TG.Hidden = 0ORDER BY        TG.Name LeftcTop�  TIntegerField#quSpecialPriceToGroupIDSpecialPrice	FieldNameIDSpecialPrice  TStringFieldquSpecialPriceToGroupCategory	FieldNameCategoryReadOnly	Size  	TBCDField"quSpecialPriceToGroupSpecialMarkUp	FieldNameSpecialMarkUpDisplayFormat
#,##0.00 %	Precision  TAutoIncFieldquSpecialPriceToGroupIDGroup	FieldNameIDGroupReadOnly	   TDataSourcedsSpecialPriceToGroupDataSetquSpecialPriceToGroupLeftcTop�   	TADOQueryquSaleHistory
ConnectionDM.ADODBConnect
CursorType	ctDynamicOnCalcFieldsquSaleHistoryCalcFields
DataSourcedsSpecialPriceToGroup
ParametersNameStoreIDDataType	ftIntegerSize�Value  NameIDGroupDataType	ftIntegerSize�Value  NameDate1DataType
ftDateTimeSize�Value  NameDate2DataType
ftDateTimeSize�Value   SQL.StringsSELECT        Year,        Month,        SUM(TotCost) TotCost,        SUM(TotSale) TotSaleFROM4        InventoryMovTotal InventoryMovTotal (NOLOCK)4        JOIN Model (NOLOCK) ON ( ModelID = IDModel )WHERE        StoreID = :StoreID        AND        GroupID = :IDGroup        AND        InventMovTypeID = 1        AND[        ( Year * 12 + Month ) >= ( ( DatePart(yy, :Date1)*12 + DatePart(mm, :Date2) ) - 2 )GROUP BY        Year,        MonthORDER BY        Year DESC,        Month DESC      Left|Topt TIntegerFieldquSaleHistoryYear	FieldNameYear  TIntegerFieldquSaleHistoryMonth	FieldNameMonth  TStringFieldquSaleHistoryMonthNameDisplayLabelMonth	FieldKindfkCalculated	FieldName	MonthName
Calculated	  TFloatFieldquSaleHistoryTotCost	FieldNameTotCostDisplayFormat#,##0.00  TFloatFieldquSaleHistoryTotSale	FieldNameTotSaleDisplayFormat#,##0.00  TFloatFieldquSaleHistoryMarkUpDisplayLabelSales MarkUp	FieldKindfkCalculated	FieldNameMarkUpDisplayFormat0.00 %
Calculated	   TDataSourcedsSaleHistroyDataSetquSaleHistoryLeftzTop<  TPowerADOQueryquMarkUp
ConnectionDM.ADODBConnect
CursorTypectStaticCommandTextG  SELECT
        MAX(
	   CASE WHEN (IsNull(M.VendorCost,0) + IsNull(M.OtherCost,0) + IsNull(M.FreightCost, 0)) = 0 THEN 0
	   ELSE (IsNull(M.SellingPrice,0) - (IsNull(M.VendorCost,0) + IsNull(M.OtherCost,0) + IsNull(M.FreightCost, 0)) ) / (IsNull(M.VendorCost,0) + IsNull(M.OtherCost,0) + IsNull(M.FreightCost, 0))
	   END
	  )*100 as MaxMarkUp,

	MIN(
	   CASE WHEN (IsNull(M.VendorCost,0) + IsNull(M.OtherCost,0) + IsNull(M.FreightCost, 0)) = 0 THEN 0
	   ELSE (IsNull(M.SellingPrice,0) - (IsNull(M.VendorCost,0) + IsNull(M.OtherCost,0) + IsNull(M.FreightCost, 0)) ) / (IsNull(M.VendorCost,0) + IsNull(M.OtherCost,0) + IsNull(M.FreightCost, 0))
	   END
	  )*100 as MinMarkUp,

	AVG(
	   CASE WHEN (IsNull(M.VendorCost,0) + IsNull(M.OtherCost,0) + IsNull(M.FreightCost, 0)) = 0 THEN 0
	   ELSE (IsNull(M.SellingPrice,0) - (IsNull(M.VendorCost,0) + IsNull(M.OtherCost,0) + IsNull(M.FreightCost, 0)) ) / (IsNull(M.VendorCost,0) + IsNull(M.OtherCost,0) + IsNull(M.FreightCost, 0))
	   END
	  )*100 as AvgMarkUp

FROM
        Model M (NOLOCK)
WHERE
        M.GroupID = :IDGroupCommandTimeout� 
DataSourcedsSpecialPriceToGroup
ParametersNameIDGroup
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Topp 	TBCDFieldquMarkUpMaxMarkUp	FieldName	MaxMarkUpReadOnly	DisplayFormat
#,##0.00 %	Precision  	TBCDFieldquMarkUpMinMarkUp	FieldName	MinMarkUpReadOnly	DisplayFormat
#,##0.00 %	Precision  	TBCDFieldquMarkUpAvgMarkUp	FieldName	AvgMarkUpReadOnly	DisplayFormat
#,##0.00 %	Precision   TDataSourcedsMarkupDataSetquMarkUpLeft� Top:   