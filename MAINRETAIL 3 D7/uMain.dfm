�
 TMAIN 0�  TPF0TMainMainLeft� Top� Width�Height�CaptionCommision Plus CalcFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style PixelsPerInch`
TextHeight TPanelPanel1Left Top WidthxHeight$AlignalTop
BevelOuterbvNoneColorclBtnShadowTabOrder  TLabelLabel1LeftTopWidthDHeight	AlignmenttaRightJustifyCaptionSales from :Font.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel2Left� TopWidthHeight	AlignmenttaRightJustifyCaptionto Font.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TdxDateEditdbInicioLeftPTopWidtheHeightTabOrder   TdxDateEditdbFimLeft� TopWidtheHeightTabOrder  TButtonButton1LeftTTopWidthKHeightCaptionCalc !Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrderOnClickButton1Click   	TdxDBGrid	dxDBGrid1Left Top$WidthxHeight�ShowSummaryFooter	AlignalClientTabOrderHeaderFont.CharsetANSI_CHARSETHeaderFont.ColorclWindowTextHeaderFont.Height�HeaderFont.NameTahomaHeaderFont.Style 
DataSourcedsComTotOptionsegoColumnSizingegoColumnMoving
egoEditingegoTabThroughegoCanDeleteegoConfirmDeleteegoCanNavigationegoCancelOnExitegoImmediateEditoregoCanInsertegoAutoWidth PreviewFont.CharsetDEFAULT_CHARSETPreviewFont.ColorclBluePreviewFont.Height�PreviewFont.NameTahomaPreviewFont.Style LookAndFeellfFlat TdxDBGridMaskColumndxDBGrid1SalesPerson	FieldNameSalesPersonVisible	Width�  TdxDBGridMaskColumndxDBGrid1Commission	FieldName
CommissionVisible	Width� SummaryFooterTypecstSumSummaryFooterField
CommissionSummaryFooterFormat#,##0.00   	TDatabaseDatabase	AliasName	SonriaSQL	Connected	DatabaseNameRETAILLoginPromptParams.StringsMAX ROWS=-1PASSWORD=fudeuUSERNAME=saDATABASE NAME=RETAILDB SessionNameDefaultLeftTopK  	TDatabase	DataCombo	AliasName	SonriaSQLDatabaseNameRETAILCOMBOLoginPromptParams.StringsMAX ROWS=200PASSWORD=fudeuUSERNAME=saDATABASE NAME=RETAILDB SessionNameDefaultLeftTop�  TQueryquComTotDatabaseNameRETAILSQL.StringsSELECT	P.Pessoa as SalesPerson,'	(SUM(IM.Discount) * -.3) as CommissionFROM*	InventoryMov IM (INDEX=PI_MovInvent_Date)	JOIN Pessoa P"		ON (IM.ComissionID = P.IDPessoa)WHERE	IM.MovDate >= :Inicio	AND	IM.MovDate < :Fim        AND	IM.Discount < 0	AND	P.IDTipoPessoa = 4	AND	IM.InventMovTypeID = 1	GROUP BY 		P.Pessoa	ORDER BY 	SalesPerson Params.Data
+     Inicio    ,�]@�B Fim    ,�]@�B Left}TopO TStringFieldquComTotSalesPerson	FieldNameSalesPersonOriginPessoa.PessoaSize2  TFloatFieldquComTotCommission	FieldName
CommissionOriginInventoryMov.DiscountDisplayFormat#,##0.00   TDataSourcedsComTotDataSetquComTotLeft}Top�   