џ
 TFCHPURCHASEITEMNEWBARCODE 0л  TPF0ёTFchPurchaseItemNewBarCodeFchPurchaseItemNewBarCodeLeft­ TopwBorderStylebsDialogCaptionBarcode not FoundClientHeightNClientWidthFont.CharsetANSI_CHARSET	Font.NameTahomaOldCreateOrder	OnClose	FormClosePixelsPerInch`
TextHeight ђ TLabelLabel7LeftCTop?Width0Height!AutoSizeCaptionOSearch for the Model below, select model to associate it with this new barcode.WordWrap	  ђTLabelLabel6LeftATopiWidthHeightCaptionKIf you did not find this model, press Alt-N to create a new inventory item.WordWrap	  ђTImage
InformacaoLeft
TopWidth.Height.Center	Picture.Data
<  TIcon           ш  &        (    (       @                                               РРР   џ  џ   џџ џ   џ џ џџ  џџџ          p              wp              p             p             џp           џp          wwџww        wp џwww       џџџ wwp      џџџџџј ww     џџџџџџџјwp   џџџџџџџџџ№ww   џџџџџџџџџџџwp џџџќЬЬЬЬџџџ№wpџџџџќЬЬџџџџјwџџџџџќЬЬџџџџџwxџџџџџќЬЬџџџџџwџџџџџќЬЬџџџџџ№wџџџџџќЬЬџџџџџ№wџџџџџќЬЬџџџџџ№wџџџџџќЬЬџџџџџ№wџџџџќЬЬЬџџџџџ№pxџџџџџџџџџџџџџpџџџџџџџџџџџџџ џџџџЬШџџџџј   џџџџЬЬЬџџџџ№   џџџџЬЬЬџџџџ     џџџЬШџџџ№     џџџџџџџјp      wџџџџџјw        wxџџџw          wwwp      џџчџџџЧџџџџџџџџўџџјџџР џџ  ?ў  ќ  ј  №  р  Р                                      Р  р  №  ?ј  ќ  џџ џџрџ(                Р                                       РРР   џ  џ   џџ џ   џ џ џџ  џџџ                џ     џp   џџ w  xџџџјpџџџџџ№pџџЬЬџ№wџџќЯџџџџќЯџџџџЬЯџџџџџџџџ џџќЯџ№ џјџ№  wџџїp   wwwp  џ  ў  ј  №  р  Р                          Р  №    ђTLabelTituloLeftATopWidthAHeight/AutoSizeCaption'The Barcode you entered does not exist.Font.CharsetANSI_CHARSET
Font.ColorclBlackFont.Heightэ	Font.NameVerdana
Font.StylefsBold 
ParentFontWordWrap	  ђTLabelLabel1LeftTopЌ Width(Height	AlignmenttaRightJustifyCaptionSearch :  ђTLabel	lbBarcodeLeftTop Width.Height	AlignmenttaRightJustifyCaption	Barcode :  ђTPanelPanel1Left Top!WidthHeight-AlignalBottom
BevelOuterbvNoneTabOrder TPanelPanel9Left Top WidthHeightAlignalTop
BevelOuterbvNoneTabOrder  TPanelPanel3Left TopWidthHeightAlignalBottom
BevelOuter	bvLoweredTabOrder    TButtonbtOKLeftTopWidthBHeightCaption&SaveDefault	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Heightѕ	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnClick	btOKClick  TButtonbtCancelLeftITopWidthBHeightCancel	Caption&CloseFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Heightѕ	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnClickbtCancelClick   ђTSuperComboADOscModelLeftATopЉ WidthFHeightTabOrderTextscModel
CodeLengthц LookUpSourceDM.dsLookUpModelDropDownRowsShowEditCode	EditCodePostaEditCodeRight
IDLanguage OnSelectItemscModelSelectItem  ђ	TSMDBGrid
grdHistoryLeftATopФ WidthEHeightXColorфто 
DataSource	dsBarCodeOptionsdgTitles
dgRowLinesdgRowSelectdgConfirmDeletedgCancelOnExit TabOrderTitleFont.CharsetANSI_CHARSETTitleFont.ColorclWindowTextTitleFont.HeightѕTitleFont.NameTahomaTitleFont.Style Flat		Groupings GridStyle.StylegsCustomGridStyle.OddColorфто GridStyle.EvenColorфто FooterColor	clBtnFace	ExOptionseoAutoWidtheoKeepSelection RegistryKeySoftware\ScalabiumRegistrySectionSMDBGridWidthOfIndicatorDefaultRowHeight
ScrollBars
ssVerticalColCountRowCountColumnsExpanded	FieldName	IDBarcodeWidthЯ Visible	
FooterTypeftCustom Expanded	FieldNameDataWidthaVisible	
FooterTypeftCustom    ђ	TmrBarCodeEdit
edtBarCodeLeftBTop Width HeightColorџџ TabOrder OnEnteredtBarCodeEnterOnExitedtBarCodeExit
ConnectionDM.ADODBConnectSQL.StringsSELECT      B.IDModelFROM      Barcode BWHERE      B.IDBarcode = :IDBarcode SecondSQL.StringsSELECT      M.IDModelFROM      Model MWHERE      M.Model = :Model KeyField	IDBarcodeSecondKeyFieldModel
DisplayQtyRunSecondSQLCheckBarcodeDigit AfterSearchBarcodeedtBarCodeAfterSearchBarcode  ё	TsiLangRTsiLangStorageFile MR_FchPurchaseItemNewBarCode.sil  	TADOQuery	quBarCode
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameIDModel
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT        IDModel,        IDBarcode,        DataFROM        Barcode BarcodeWHERE        IDModel = :IDModel  LeftTopf TIntegerFieldquBarCodeIDModel	FieldNameIDModelOriginBarcode.IDModel  TStringFieldquBarCodeIDBarcodeDisplayLabel#Current barcodes for selected model	FieldName	IDBarcodeOriginBarcode.IDBarcode  TDateTimeFieldquBarCodeDataDisplayLabelDate	FieldNameDataOriginBarcode.Data   TDataSource	dsBarCodeDataSet	quBarCodeLeftTop<   