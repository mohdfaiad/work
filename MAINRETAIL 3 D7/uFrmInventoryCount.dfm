�
 TFRMINVENTORYCOUNT 0��  TPF0�TFrmInventoryCountFrmInventoryCountLeft� Top� Width�HeightVertScrollBar.Range BorderIconsbiSystemMenu BorderStylebsDialogCaptionFrmInventoryCountFont.Height�OnClose	FormClose	OnDestroyFormDestroyPixelsPerInch`
TextHeight �TPanelPanel2Width� �TImageImage1Width�  �TLabellblMenuLeft�  �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�    �TPanelPanel1Top�Width� �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft�Width�  � TSpeedButtonspHelpTagLeftTopWidthGHeightCaption&HelpFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
Glyph.Data
    BM      6   (               �  �  �          � �� �� �� �� �� ���������������������������ƭ��� �� �� �� �� �� �  � �� �� �� �������������������־�־���������������ƭ��� �� �� �� �  � �� �� �������������֢��yR�e9�]1�Y)�]1�mJƖ���������ֵ��� �� �� �  � �� �����������í�}R�m9�mB�mB�}c�yc�]1�Y)�U!�a9Φ�������ƾ�� �� �  � �����������í�}J�R�R�yJΞ������ֵ�s�])�a1�Y)�U)Ζ{������ƶ�� �  � �����������R�Z�c�Z�}R޶������絎{�]1�a1�a1�]1�U)Φ�������� �  �����������s�Z�c�c�c�ZކZ΢�����mB�e9�a1�a1�a1�Y)�a9���������  �������ӽ��Z��c��c�c�Z�Rޒk֮�Ɩ��qJ�e9�e9�a1�a1�a1�U!Ζ�������  �����������c��c��c�c�Z�R箜�����޽}c�e1�e9�a1�a1�a1�Y)�qJ������  ��������s��k��c��c�c�Z�Rު������ֽ�s�a1�e9�a1�a1�a1�]1�a1������  ��������s��k��c��c�c�Z�Rގk��������Ƶ�c�a1�a1�a1�a1�]1�a1�ǽ���  ��������{��k��c��c�c�Z�R�yJ֞���������ε�k�]1�a1�a1�]1�a1�ǽ���  �����������k��k��c�Z�R�}J�}J�mBΆc��������ƵmJ�a1�a1�]1�e9������  �������Ü��k��k��c碄綥֢��}R�uJ�e1֒s�����޵�s�Y)�a1�Y)�yR������  �����������s��k��c纥������ƒ{�m9�e1Άc�����筊{�Y)�a1�U)΢���罺�  ��������������k��k���������ƞ�Ɩ��ý�����έqZ�])�Y)�mB������� �  � ������������{��s��k羭�����������������ޭ���]1�])�])ֶ���罾�� �  � �� ���������������s��k箔��������ֽ����{�a9�Y)�]1֮�������� �� �  � �� ��������������Ü��s��c�Z΂c�yR�i9�Y)�])�yR־�������� �� �� �  � �� �� �����������������ǭ��{�c�}R�}ZΒsֶ����������� �� �� �� �  � �� �� �� �� ���������������������������������ֽ��� �� �� �� �� �  � �� �� �� �� �� ������������������������Ƶ��� �� �� �� �� �� �� �  Margin
ParentFontVisibleOnClickspHelpClick  �TButtonbtAdjustLeftLTopWidthGHeightCaption&SaveDefault	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrderVisibleOnClickbtAdjustClick  �TButtonbtnNextLeftLTopWidthGHeightCaption&NextDefault	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrderOnClickbtnNextClick  �TButtonbtCloseLeft� WidthGCancel	CaptionCloseOnClickbtCloseClick    �TPanelEspacamentoEsquerdoHeight�  �TPanelEspacamentoDireitoLeft�Height�  �TPageControl	pcBarcodeLeftTop(Width�Height�
ActivePagetsManualAlignalClientFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrderOnChangepcBarcodeChange 	TTabSheettsSelectionCaption  Selection  
ImageIndex TRadioGrouprgdCountTypeLeft� TopLWidth-Height� Caption
Count Type	ItemIndex Items.StringsManual countImport fileHand Held count TabOrder    	TTabSheettsManualCaption
  Manual  OnShowtsManualShow TTabControltcManualCountLeft Top Width�Height|AlignalClientFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder Tabs.StringsManualCheck Inventory TabIndex OnChangetcManualCountChange
DesignSize�|  TLabelLabel1Left.TopWidth8Height	AlignmenttaRightJustifyCaption	Barcode :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TmrBarCodeEdit
edtBarcodeLeftqTopWidth� HeightColor��� TabOrder 
ConnectionDM.ADODBConnectSQL.StringsSELECT      B.IDModelFROM      Barcode BWHERE      B.IDBarcode = :IDBarcode SecondSQL.StringsSELECT      M.IDModelFROM      Model MWHERE      M.Model = :Model KeyField	IDBarcodeSecondKeyFieldModel
DisplayQtyRunSecondSQLCheckBarcodeDigit MinimalDigits AfterSearchBarcodeedtBarcodeAfterSearchBarcode  TBitBtnbtnSearchDescLeft.TopWidth� HeightCaption(F2) Search ...TabOrderTabStopOnClickbtnSearchDescClick  TPanelPanel14LeftTop3Width�Height[AnchorsakTopakRight 
BevelOuterbvNoneColor��� TabOrder TLabel
lbLastItemLeftTop'WidthHeight  TLabellbSalePriceLeft�TopAWidthjHeight	AlignmenttaRightJustifyCaptionSale Price :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TLabellbPriceResultLeftTopBWidth.HeightCaption0.00Font.CharsetANSI_CHARSET
Font.ColorclBlueFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabellbHandLeft�TopWidthFHeight	AlignmenttaRightJustifyCaptionQty On Hand :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TLabellbCountScanLeft�Top$Width0Height	AlignmenttaRightJustifyCaption	Scanned :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TLabellbOnHandLeftTopWidthHeightCaption0Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TLabel	lbScannedLeftTop$WidthHeightCaption0Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TLabel	lbBarcodeLeftTopWidthHeight  TSpeedButtonbtPrintTagLeftTop=WidthZHeightCaption&PrintFlat	MarginParentShowHintShowHint	SpacingOnClickbtPrintClick  TLabel	lbNewHandLeft�Top4WidthIHeight	AlignmenttaRightJustifyCaptionNew On Hand :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TLabellbNewOnHandLeftTop4WidthHeightCaption0Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TPanelpnlLastScanLeft Top Width�HeightAlignalTop
BevelOuterbvNoneCaptionLast Item ScannedColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder    TPanelpnlModelLeft Top� Width�Height� 
BevelOuterbvNoneColor��� TabOrder TLabelLabel10Left7TopWidth*Height	AlignmenttaRightJustifyCaptionModel :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel11Left$TopBWidth>Height	AlignmenttaRightJustifyCaption
Category :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel14Left Top Width�HeightAlignalTop	AlignmenttaCenterAutoSizeCaptionModel being CountedColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold ParentColor
ParentFont  TLabelLabel3Left=TopgWidth$Height	AlignmenttaRightJustifyCaptionStore:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel9Left=Top� Width$Height	AlignmenttaRightJustifyCaptionDate :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel6LeftTop� WidthQHeight	AlignmenttaRightJustifyCaptionQty Counted :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TSuperComboADOscModelLefthTopWidthHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder 
CodeLength^LookUpSourceDM.dsLookUpModelKitDropDownRowsShowBtnAddNewShowBtnUpdateShowEditCode	EditCodePostaEditCodeRight
IDLanguage OnSelectItemRefreshCombo  TDBEditDBEdit1LefthTop?Width=HeightColor	clBtnFace	DataFieldCategory
DataSourcedsModelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontReadOnly	TabOrder  TSuperComboADOscStoreLefthTopcWidth� HeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderTextcmbBasicFilter
CodeLength#LookUpSourceDM.dsLookUpStoreDropDownRowsShowBtnAddNewShowBtnUpdateEditCodePostaEditCodeRight
IDLanguage OnSelectItemRefreshCombo  TDateBoxeditDateLefthTop� WidthfHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderLanguage
Portuguese  	TGroupBox	GroupBox1Left�Top8Width� Height� CaptionCurrent QuantitiesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrder TLabelLabel4Left!TopWidth&Height	AlignmenttaRightJustifyCaptionHand :FocusControlDBEdit3Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel5Left%Top:Width"Height	AlignmenttaRightJustifyCaptionHold :FocusControlDBEdit4Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel7LeftTop]Width*Height	AlignmenttaRightJustifyCaptionOrder :FocusControlDBEdit5Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel8LeftTop� Width.Height	AlignmenttaRightJustifyCaptionRepair :FocusControlDBEdit6Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TDBEditDBEdit3LeftKTopWidthGHeightTabStopColor	clBtnFace	DataField	QtyOnHand
DataSourcedsModelEnabledFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontReadOnly	TabOrder   TDBEditDBEdit4LeftKTop5WidthGHeightTabStopColor	clBtnFace	DataFieldQtyOnPreSale
DataSourcedsModelEnabledFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontReadOnly	TabOrder  TDBEditDBEdit5LeftKTopYWidthGHeightTabStopColor	clBtnFace	DataField
QtyOnOrder
DataSourcedsModelEnabledFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontReadOnly	TabOrder  TDBEditDBEdit6LeftKTop� WidthGHeightTabStopColor	clBtnFace	DataFieldQtyOnRepair
DataSourcedsModelEnabledFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontReadOnly	TabOrder   TEditeditQtyLefthTop� WidtheHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderTexteditQty
OnKeyPresseditQtyKeyPress  TRadioGrouprgTypeLeftgTop� Width� Height$CaptionActionColumnsFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 	ItemIndex Items.StringsADDReplace 
ParentFontTabOrder     	TTabSheettsImportCaption  Import File  
ImageIndex TPanelPanel4LeftTopWidth}HeightxColor��� TabOrder  TSpeedButtonspOpenLeftTopYWidthiHeightCaptionOpen Qty FileFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
Glyph.Data
F  B  BMB      B   (                                  |  �     |||||||||||||||||||||||||||||||||||                          ||`N`N`N`N`N`N`N`N`N`N`N`N    ||`N�3�3�3333,g`N    |`N���3�3�333,g  `N  |`N������3�33`N  `N  `N�����3��3�,g  ,g,g  `N�������3�3,g  ,g,g  `N`N`N`N`N`N`N`N`N`N`N`N,g�,g  |`N������������,g  |`N������������,g  |`N�������`N`N`N`N`N`N|||`N�����`N||||||||||`N`N`N`N`N||||||||||||||||||||||||
ParentFontOnClickspOpenClick  TLabellbTextFieldLeftTop@WidthkHeightCaptionText Fields Order :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabellbSeparetorLeftTopAWidthBHeightCaptionSeparator :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabellbFieldsLeftTopWidth@HeightCaptionFile Fields :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TEditedSeparatorLeftNTop?WidthHeightFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 	MaxLength
ParentFontTabOrder  TMemomFieldsLeftTopNWidthvHeight� Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontReadOnly	TabOrder  TBitBtnbtAddLeftTop)WidthqHeightCaption	Add FieldFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrderOnClick
btAddClick  	TComboBoxcbFieldsLeftTopWidthvHeightStylecsDropDownListColor��� 
ItemHeightTabOrder Items.StringsBarcodeDateTimeQtyModel    TPageControlpgBarcodeOptionLeft� TopWidthHeightu
ActivePage	tsBarcodeFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrder 	TTabSheet	tsBarcodeCaptionBarcode list TRadioGrouprgTypeImportLeft� TopWidth� Height CaptionActionColumnsFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 	ItemIndex Items.StringsADDReplace 
ParentFontTabOrder   TcxGridgridBarcodesLeft TopDWidth�HeightAlignalBottomFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrder TcxGridDBTableViewgridBarcodesDBDataController.DataSourcedsBarcodeListDataController.Filter.Criteria
	   ����     DataController.KeyFieldNames	IDBarcode/DataController.Summary.DefaultGroupSummaryItems )DataController.Summary.FooterSummaryItemsFormat#.##KindskSum	FieldNameCountedColumngridBarcodesDBCounted Format#.##KindskSum	FieldNameDifferColumngridBarcodesDBDiffer Format#.##KindskSum	FieldName	QtyOnHandColumngridBarcodesDBQtyOnHand  $DataController.Summary.SummaryGroups  OptionsCustomize.ColumnFilteringOptionsData.DeletingOptionsData.EditingOptionsData.InsertingOptionsSelection.CellSelectOptionsView.ColumnAutoWidth	OptionsView.Footer	OptionsView.GroupByBoxOptionsView.Indicator	 TcxGridDBColumngridBarcodesDBIDBarcodeCaptionBarcodeDataBinding.FieldName	IDBarcodeWidthP  TcxGridDBColumngridBarcodesDBModelDataBinding.FieldNameModelWidth]  TcxGridDBColumngridBarcodesDBCountedDataBinding.FieldNameCountedWidthF  TcxGridDBColumngridBarcodesDBQtyOnHandCaptionOnHandDataBinding.FieldName	QtyOnHandWidthB  TcxGridDBColumngridBarcodesDBDifferDataBinding.FieldNameDifferWidthK  TcxGridDBColumngridBarcodesDBCountDateCaptionDateDataBinding.FieldName	CountDateWidtho   TcxGridLevelgridBarcodesLevel1GridViewgridBarcodesDB   	TComboBoxcbFilterLeftTop
Width� Height
ItemHeightTabOrderTextNoneOnChangecbFilterChangeItems.StringsNoneCounted  > 0Counted  < 0Counted  = 0OnHand  > 0OnHand  < 0OnHand  = 0Differ  > 0Differ  < 0Differ <> 0   TPanelPanel6Left Top(Width�HeightAlignalBottom
BevelOuterbvNoneTabOrder TSpeedButtonbtnPreviewBarcodeFileLeftTopWidthVHeightCaptionPreviewFlat	MarginOnClickbtnPreviewBarcodeFileClick  TSpeedButtonbtExportBarcodeFileTagLeftXTopWidthWHeightCaption&ExportFlat	MarginOnClickbtExportBarcodeFileClick    	TTabSheet
tsNotFoundCaption	Not found
ImageIndex TMemoMemo1Left Top Width�HeightYAlignalClientLines.Strings  TabOrder      	TTabSheet
tsHandHeldCaption  Hand Held Count  Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ImageIndex
ParentFontOnShowtsHandHeldShow TPanelpnlPOLeft Top Width� Height{AlignalLeft
BevelOuter	bvLoweredCaptionpnlPOTabOrder  TPanelpnlPODetailLeftTop3Width� HeightGAlignalBottom
BevelOuterbvNoneColorclBtnShadowTabOrder  TLabellbCountUserLeftTop4WidthHeight	AlignmenttaRightJustifyCaptionUser :ColorclGrayFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.Style ParentColor
ParentFontTransparent	  TLabellbCountInfoLeft Top Width� HeightAlignalTop	AlignmenttaCenterAutoSizeCaption
Count infoColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold ParentColor
ParentFontLayouttlCenter  TLabellbCountDateLeftTop#Width8Height	AlignmenttaRightJustifyCaptionStart date :ColorclGrayFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.Style ParentColor
ParentFontTransparent	  TLabellbCountStoreLeftTopWidth!Height	AlignmenttaRightJustifyCaptionStore :ColorclGrayFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.Style ParentColor
ParentFontTransparent	  TDBEditDBEdit7Left?Top4Width]HeightAutoSizeBorderStylebsNoneColor	clBtnFace	DataField
SystemUser
DataSource
dsInvCountFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontReadOnly	TabOrder   TDBEditDBEdit10Left?Top#Width\HeightAutoSizeBorderStylebsNoneColorclWhite	DataField	StartDate
DataSource
dsInvCountFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontReadOnly	TabOrder  TDBEditDBEdit11Left?TopWidth\HeightAutoSizeBorderStylebsNoneColor	clBtnFace	DataFieldStore
DataSource
dsInvCountFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontReadOnly	TabOrder   TPanelpnlPOToolBarLeftTopWidth� HeightFAlignalTop
BevelOuterbvNoneTabOrder 	TcxButtonbtNewInvCountLeftTopWidth� HeightCaptionChoose inventory countTabOrder DropDownMenupopCountOptionKindcxbkDropDownButtonLookAndFeel.Kind
lfStandardLookAndFeel.NativeStyle	  	TcxButtonbtCloseInvCountLeftTopWidth� HeightCaptionClose inventory countTabOrderOnClickbtCloseInvCountClickLookAndFeel.Kind
lfStandardLookAndFeel.NativeStyle	  	TcxButtonbtDeleteInvCountLeftTop/Width� HeightCaptionRemove inventory countTabOrderOnClickbtDeleteInvCountClickLookAndFeel.Kind
lfStandardLookAndFeel.NativeStyle	   TcxGridgrdInvCountLeftTopGWidth� Height� AlignalClientTabOrderLookAndFeel.KindlfFlat TcxGridDBTableViewgrdInvCountDBDataController.DataSource
dsInvCountDataController.Filter.Criteria
	   ����     DataController.KeyFieldNamesIDCountDataController.OptionsdcoCaseInsensitivedcoAssignGroupingValuesdcoAssignMasterDetailKeysdcoSaveExpanding /DataController.Summary.DefaultGroupSummaryItems )DataController.Summary.FooterSummaryItemsFormat#,##0.00KindskSum	FieldNameTotal  $DataController.Summary.SummaryGroupsLinks                                   SummaryItems   Filtering.CustomizeDialogFiltering.MaxDropDownCount�OptionsBehavior.DragOpeningOptionsBehavior.ImmediateEditorOptionsBehavior.IncSearch	OptionsData.EditingOptionsData.InsertingOptionsSelection.CellSelectOptionsSelection.HideFocusRectOptionsView.CellEndEllipsis	OptionsView.ColumnAutoWidth	OptionsView.Footer	OptionsView.GridLinesglHorizontalOptionsView.GroupByBoxOptionsView.HeaderAutoHeight	OptionsView.HeaderEndEllipsis	Preview.AutoHeightPreview.MaxLineCount TcxGridDBColumngrdInvCountDBCountTypeNameCaptionCount Type ListDataBinding.FieldNameCountTypeNameOptions.Filtering   TcxGridLevelgrdInvCountLevelGridViewgrdInvCountDB    TPanel	pnlEspacoLeft� Top WidthHeight{AlignalLeft
BevelOuterbvNoneTabOrder  TPanel	pnlPOItemLeft� Top Width�Height{AlignalClient
BevelOuter	bvLoweredCaption	pnlPOItemTabOrder TLabellbCountDetailLeftTopWidth�HeightAlignalTop	AlignmenttaCenterAutoSizeCaptionCount DetailColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold ParentColor
ParentFont  TPanelPanel5LeftTopWidth�HeightAlignalTopTabOrder  TSpeedButtonbtInvCountItemRemoveLeftTopWidth_HeightCaption&Remove itemEnabledFlat	MarginOnClickbtInvCountItemRemoveClick  TSpeedButtonbtInvCountItemPreviewLeftaTopWidthGHeightCaptionPreviewEnabledFlat	MarginOnClickbtInvCountItemPreviewClick  TSpeedButtonbtCustomizeColumnsTagLeft� TopWidthFHeight
AllowAllUp	CaptionColumnsFlat	MarginOnClickbtCustomizeColumnsClick  TSpeedButtonbtGroupItemTagLeft� TopWidthKHeightCaption	&GroupingFlat	MarginOnClickbtGroupItemClick  TSpeedButton	btnExportTagLeft9TopWidthKHeightCaption&ExportFlat	MarginOnClickbtnExportClick  TSpeedButtonbtnRefreshItemTagLeft�TopWidth]HeightCaption&RefreshFlat	MarginOnClickbtnRefreshItemClick   TcxGridgrdInvCountItemLeftTop/Width�HeightKAlignalClientTabOrderLookAndFeel.KindlfFlat TcxGridDBTableViewgrdInvCountItemDB.DataController.DataModeController.SmartRefresh	DataController.DataSourcedsInvCountItemDataController.Filter.Criteria
	   ����     DataController.KeyFieldNamesIDCountItemDataController.OptionsdcoCaseInsensitivedcoAssignGroupingValuesdcoAssignMasterDetailKeysdcoSaveExpanding /DataController.Summary.DefaultGroupSummaryItems )DataController.Summary.FooterSummaryItemsFormat#,##0.00KindskSum	FieldNameSubTotal  $DataController.Summary.SummaryGroups Filtering.CustomizeDialogFiltering.MaxDropDownCount�OptionsBehavior.DragOpeningOptionsBehavior.ImmediateEditorOptionsBehavior.IncSearch	 OptionsCustomize.ColumnFilteringOptionsData.EditingOptionsData.InsertingOptionsSelection.CellSelectOptionsSelection.HideFocusRectOptionsView.CellEndEllipsis	OptionsView.ColumnAutoWidth	OptionsView.GridLinesglHorizontalOptionsView.GroupByBoxOptionsView.HeaderAutoHeight	OptionsView.HeaderEndEllipsis	Preview.AutoHeightPreview.MaxLineCount TcxGridDBColumngrdInvCountItemDBBarcodeDataBinding.FieldNameBarcodeWidthH  TcxGridDBColumngrdInvCountItemDBSalePriceDataBinding.FieldName	SalePriceVisible  TcxGridDBColumngrdInvCountItemDBCountDateDataBinding.FieldName	CountDateWidth_  TcxGridDBColumngrdInvCountItemDBModelDataBinding.FieldNameModelWidthm  TcxGridDBColumngrdInvCountItemDBDescriptionDataBinding.FieldNameDescriptionVisible  TcxGridDBColumngrdInvCountItemDBQtyDataBinding.FieldNameQtyWidthA  TcxGridDBColumngrdInvCountItemDBQtyFrozenDataBinding.FieldName	QtyFrozenWidthT  TcxGridDBColumngrdInvCountItemDBDifferenceDataBinding.FieldName
DifferenceWidth>   TcxGridLevelgrdInvCountItemLevelGridViewgrdInvCountItemDB      �TDataSourcedsModelDataSetquModelLeft� Top�   �TADOStoredProcspAdjust
ConnectionDM.ADODBConnectProcedureNamesp_Inventory_Count;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@IDModel
Attributes
paNullable DataType	ftInteger	Precision
Value  Name@IDStore
Attributes
paNullable DataType	ftInteger	Precision
Value  Name
@CountType
Attributes
paNullable DataType	ftInteger	Precision
Value  Name@CountedQty
Attributes
paNullable DataTypeftFloat	PrecisionValue  Name
@CountDate
Attributes
paNullable DataType
ftDateTimeValue  Name@IDUser
Attributes
paNullable DataType	ftInteger	Precision
Value   Left� Top TStringFieldspAdjustNameDisplayLabelStore	FieldNameNameSize  TIntegerFieldspAdjustStoreID	FieldNameStoreID   �	TADOQueryquModel
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameIDModel
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDStore
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT        I.QtyOnPreSale,        I.QtyOnHand,        I.QtyOnOrder,        I.QtyOnRepair,        I.DataContagem,        TG.Name as Category,        M.SellingPriceFROM        Inventory I (NOLOCK) 8        JOIN Model M (NOLOCK) ON (M.IDModel = I.ModelID)=        JOIN TabGroup TG (NOLOCK) ON (TG.IDGroup = M.GroupID)WHERE        IDModel = :IDModel        AND        StoreID = :IDStore  Left� Top�  TDateTimeFieldquModelDataContagem	FieldNameDataContagemOriginInventory.DataContagem  TStringFieldquModelCategory	FieldNameCategoryOriginTabGroup.NameSize  TFloatFieldquModelQtyOnPreSale	FieldNameQtyOnPreSaleDisplayFormat0.#####  TFloatFieldquModelQtyOnHand	FieldName	QtyOnHandDisplayFormat0.#####  TFloatFieldquModelQtyOnOrder	FieldName
QtyOnOrderDisplayFormat0.#####  TFloatFieldquModelQtyOnRepair	FieldNameQtyOnRepairDisplayFormat0.#####  	TBCDFieldquModelSellingPrice	FieldNameSellingPrice	Precision   �TOpenDialogAbrirLeft�Top  �	TADODataSetquBarcodeList
ConnectionDM.ADODBConnect
CursorTypectStaticCommandTextr  SELECT
	INV.QtyOnHand,
	Barcode.IDBarcode,
	0.00000 as Counted,
	0.00000 as Differ,
	Barcode.Data as CountDate,
                Barcode.IDModel,
	M.Model
FROM
	Barcode (NOLOCK) 
	JOIN Model M (NOLOCK) ON (M.IDModel=Barcode.IDModel)
	LEFT OUTER JOIN Inventory INV (NOLOCK) ON (INV.ModelID=Barcode.IDModel AND StoreID = :StoreID)
WHERE
	IDBarcode = :IDBarcode
ParametersNameStoreID
AttributespaSigned DataType	ftInteger	Precision
SizeValue  Name	IDBarcodeDataTypeftStringNumericScale� 	Precision� SizeValue   Left�Top�  TStringFieldquBarcodeListIDBarcode	FieldName	IDBarcode	FixedChar	  TDateTimeFieldquBarcodeListCountDate	FieldName	CountDate  TIntegerFieldquBarcodeListIDModel	FieldNameIDModel  TFloatFieldquBarcodeListQtyOnHand	FieldName	QtyOnHandDisplayFormat0.#####  	TBCDFieldquBarcodeListCounted	FieldNameCountedDisplayFormat0.#####	PrecisionSize
  	TBCDFieldquBarcodeListDiffer	FieldNameDifferDisplayFormat0.#####	PrecisionSize
  TStringFieldquBarcodeListModel	FieldNameModelSize   �
TClientDataSetcdsBarcodeList
Aggregates AutoCalcFieldsParams ProviderNamedspBarcodeListLeft�Top�  TStringFieldcdsBarcodeListIDBarcode	FieldName	IDBarcode	FixedChar	  TDateTimeFieldcdsBarcodeListCountDate	FieldName	CountDate  TIntegerFieldcdsBarcodeListIDModel	FieldNameIDModel  TFloatFieldcdsBarcodeListQtyOnHand	FieldName	QtyOnHandDisplayFormat0.#####  	TBCDFieldcdsBarcodeListCounted	FieldNameCountedDisplayFormat0.#####	PrecisionSize
  	TBCDFieldcdsBarcodeListDiffer	FieldNameDifferDisplayFormat0.#####	PrecisionSize
  TStringFieldcdsBarcodeListModel	FieldNameModelSize   �TDataSourcedsBarcodeListDataSetcdsBarcodeListLeft�Top�   �TDataSetProviderdspBarcodeListDataSetquBarcodeListLeft�Top  �	TADOQueryquFindBarcode
ConnectionDM.ADODBConnect
CursorTypectStatic
Parameters SQL.StringsSELECT	INV.QtyOnHand,#                Barcode.IDBarcode,	                StoreID,                Barcode.IDModelFROM	Barcode (NOLOCK) X	LEFT OUTER JOIN Inventory INV (NOLOCK) ON (INV.ModelID=Barcode.IDModel AND StoreID = 1)  LeftTTop�  TStringFieldquFindBarcodeIDBarcode	FieldName	IDBarcode	FixedChar	  TIntegerFieldquFindBarcodeStoreID	FieldNameStoreID  TIntegerFieldquFindBarcodeIDModel	FieldNameIDModel  TFloatFieldquFindBarcodeQtyOnHand	FieldName	QtyOnHandDisplayFormat0.#####   �
TPopupMenupopCountOptionLeft� Top�  	TMenuItemmenCyclecountTagCaptionCreate Cycle countOnClickOnInvCountClick  	TMenuItemmenPhysicalcountTagCaptionCreate Physical countOnClickOnInvCountClick  	TMenuItemmenLiveCountTagCaptionCreate Live countOnClickOnInvCountClick  	TMenuItemmenStartupStoreTagCaptionCreate Start up countOnClickOnInvCountClick   �TDataSource
dsInvCountDataSet
quInvCountLeftkTop  �TDataSourcedsInvCountItemDataSetquInvCountItemLeftTop  �TADODataSet
quInvCount
ConnectionDM.ADODBConnect	AfterOpenquInvCountAfterOpenAfterScrollquInvCountAfterScrollOnCalcFieldsquInvCountCalcFieldsCommandText  SELECT
	IC.IDCount,
	IC.IDStore,
	IC.IDUser,
	SU.SystemUser,
	S.Name as Store,
	IC.StartDate,
	IC.CountType
FROM
	Inv_Count IC (NOLOCK)
	JOIN SystemUser SU (NOLOCK) ON (SU.IDUser = IC.IDUser)
	JOIN Store S (NOLOCK) ON (S.IDStore = IC.IDStore)
WHERE
	EndDate IS NULL

Parameters LeftkTop�  TIntegerFieldquInvCountIDCount	FieldNameIDCount  TIntegerFieldquInvCountIDStore	FieldNameIDStore  TIntegerFieldquInvCountIDUser	FieldNameIDUser  TStringFieldquInvCountSystemUser	FieldName
SystemUserSize2  TStringFieldquInvCountStore	FieldNameStoreSize  TDateTimeFieldquInvCountStartDate	FieldName	StartDate  TIntegerFieldquInvCountCountType	FieldName	CountType  TStringFieldquInvCountCountTypeName	FieldKindfkCalculated	FieldNameCountTypeNameSize
Calculated	   �TADODataSetquInvCountItem
ConnectionDM.ADODBConnect
CursorTypectStatic	AfterOpenquInvCountItemAfterOpenOnCalcFieldsquInvCountItemCalcFieldsCommandText�  SELECT
	ICI.IDCountItem,
	ICI.Barcode,
	ICI.Qty,
	ICI.SalePrice,
	ICI.CountDate,
	M.Model,
	M.Description,
	FC.Qty as QtyFrozen
FROM
	Inv_CountItem ICI (NOLOCK) 
	LEFT JOIN Barcode B (NOLOCK) ON (B.IDBarcode = ICI.Barcode)
	LEFT JOIN Model M (NOLOCK) ON (M.IDModel = B.IDModel)
	LEFT JOIN Inv_FrozeCount FC (NOLOCK) ON (ICI.IDCount = FC.IDCount and FC.IDModel = M.IDModel)
WHERE
	ICI.IDCount = :IDCount

ParametersNameIDCount
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left{Top5 TIntegerFieldquInvCountItemIDCountItem	FieldNameIDCountItem  TStringFieldquInvCountItemBarcode	FieldNameBarcode  	TBCDFieldquInvCountItemSalePrice	FieldName	SalePrice	Precision  TFloatFieldquInvCountItemQty	FieldNameQtyDisplayFormat0.####  TDateTimeFieldquInvCountItemCountDate	FieldName	CountDateDisplayFormatddddd  TStringFieldquInvCountItemModel	FieldNameModelSize  TStringFieldquInvCountItemDescription	FieldNameDescriptionSize2  TFloatFieldquInvCountItemQtyFrozen	FieldName	QtyFrozenDisplayFormat0.#####  TFloatFieldquInvCountItemDifference	FieldKindfkCalculated	FieldName
DifferenceDisplayFormat0.#####
Calculated	   �TADOCommandquInsInvCountCommandText�insert into Inv_Count (IDCount, StartDate, CountType, IDUser, IDStore)
values (:IDCount, :StartDate, :CountType, :IDUser, :IDStore)
ConnectionDM.ADODBConnect
ParametersNameIDCount
AttributespaSigned DataType	ftInteger	Precision
SizeValue  Name	StartDateDataType
ftDateTimeNumericScale	PrecisionSizeValue  Name	CountType
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDUser
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDStore
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTop�   �TADOCommandquInsFrozeCountCommandText�insert into Inv_FrozeCount (IDCount, IDModel, Qty)
(select :IDCount, ModelID, QtyOnHand from Inventory join model on (model.idmodel = inventory.modelid) where StoreID = :IDStore)
ConnectionDM.ADODBConnect
ParametersNameIDCount
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDStore
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTop  �TdxComponentPrintergridPrinterCurrentLinkgridPrinterLinkPreviewOptions.WindowStatewsMaximizedVersion LeftTop+ TdxGridReportLinkgridPrinterLinkCaption
New Report	ComponentgrdInvCountItemDesignerHelpContext PrinterPage.Footer� PrinterPage.HeaderjPrinterPage.Margins.Bottom�PrinterPage.Margins.Left�PrinterPage.Margins.Right�PrinterPage.Margins.Top�PrinterPage.MinMargins.Bottom PrinterPage.MinMargins.Left PrinterPage.MinMargins.Right PrinterPage.MinMargins.Top #PrinterPage.PageFooter.Font.CharsetDEFAULT_CHARSET!PrinterPage.PageFooter.Font.ColorclWindowText"PrinterPage.PageFooter.Font.Height� PrinterPage.PageFooter.Font.NameTahoma!PrinterPage.PageFooter.Font.Style #PrinterPage.PageHeader.Font.CharsetDEFAULT_CHARSET!PrinterPage.PageHeader.Font.ColorclWindowText"PrinterPage.PageHeader.Font.Height� PrinterPage.PageHeader.Font.NameTahoma!PrinterPage.PageHeader.Font.Style PrinterPage.PageSize.X4!PrinterPage.PageSize.Y�* PrinterPage._dxMeasurementUnits_ PrinterPage._dxLastMU_ReportTitle.Font.CharsetDEFAULT_CHARSETReportTitle.Font.ColorclWindowTextReportTitle.Font.Height�ReportTitle.Font.NameTimes New RomanReportTitle.Font.StylefsBold Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTimes New Roman
Font.Style OptionsCards.Shadow.ColorclBlackBuiltInReportLink	  TdxGridReportLinkgridPrinterLinkBarcodeFileCaption
New Report	ComponentgridBarcodesDesignerHelpContext PrinterPage.Footer� PrinterPage.HeaderjPrinterPage.Margins.Bottom�PrinterPage.Margins.Left�PrinterPage.Margins.Right�PrinterPage.Margins.Top�PrinterPage.MinMargins.Bottom PrinterPage.MinMargins.Left PrinterPage.MinMargins.Right PrinterPage.MinMargins.Top #PrinterPage.PageFooter.Font.CharsetDEFAULT_CHARSET!PrinterPage.PageFooter.Font.ColorclWindowText"PrinterPage.PageFooter.Font.Height� PrinterPage.PageFooter.Font.NameTahoma!PrinterPage.PageFooter.Font.Style #PrinterPage.PageHeader.Font.CharsetDEFAULT_CHARSET!PrinterPage.PageHeader.Font.ColorclWindowText"PrinterPage.PageHeader.Font.Height� PrinterPage.PageHeader.Font.NameTahoma!PrinterPage.PageHeader.Font.Style PrinterPage.PageSize.X4!PrinterPage.PageSize.Y�* PrinterPage._dxMeasurementUnits_ PrinterPage._dxLastMU_ReportTitle.Font.CharsetDEFAULT_CHARSETReportTitle.Font.ColorclWindowTextReportTitle.Font.Height�ReportTitle.Font.NameTimes New RomanReportTitle.Font.StylefsBold Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTimes New Roman
Font.Style OptionsCards.Shadow.ColorclBlackBuiltInReportLink	   �	TsiLangRTsiLangStorageFileMR_FrmInventoryCount.silLeft Top@   