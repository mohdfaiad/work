�
 TBRWINVENTORYMOV 0I  TPF0�TbrwInventoryMovbrwInventoryMovLeft+TopIWidth�Height�HelpContext�CaptionbrwInventoryMovPixelsPerInch`
TextHeight �TPanelPanel2Width� �TImageImage1Width�  �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�    �TPanelPanel1Top�Width� �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft.   �TPanelEspacamentoEsquerdoHeighti  �TPanelEspacamentoDireitoLeft�Heighti  �TPanelpnlMainWidth�Heighti �TPanelpnlBasicFilterWidth�Visible	 � TLabelLabel3Left� TopWidth(Height	AlignmenttaRightJustifyCaptionModel :Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  �TLabelLabel4LeftTopWidth%Height	AlignmenttaRightJustifyCaptionStore :Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  �TPanelpblGOLeftdWidth^TabOrderVisible	 �TPanelpnlAvisoLeft �TSpeedButtonbtnExecOnClickbtnExecClick    TSuperComboADOcmbModelLeft(TopWidthTHeightFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderText<ALL>
CodeLength� LookUpSourceDM.dsLookUpModelPackDropDownRowsShowBtnAddNewShowBtnUpdateShowEditCode	EditCodePostaEditCodeRight
IDLanguage OnSelectItemcmbModelSelectItem  TButtonButton1Left� TopWidth%HeightCaptionAllTabOrderOnClickButton1Click  TSuperComboADOcmbStoreLeft-TopWidth� HeightFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder Text<-->LookUpSourceDM.dsLookUpStoreDropDownRowsShowBtnAddNewShowBtnUpdate
IDLanguage OnSelectItemcmbModelSelectItem   �TPanelRights	pnlButtonLeftQHeightECommandsbtIncbtAltbtPosbtFltbtImpbtExp  �TImage	imgFolderTop�   �TImageImgTrashTop"   �TPanelpnlMainBrowseWidthQHeightE �TPanelpnlPageTopWidthQHeight �TPanel
pnlDivisorWidthQ   �TPanelpnlGenFilterWidthQ �TLabellblGenFilterWidthQ   �TcxGrid	grdBrowseWidthQHeight� TabOrder �TcxGridDBTableViewgrdBrowseDBDataController.Filter.Criteria
	   ����     DataController.KeyFieldNamesIDInventoryMovOptionsView.Footer TcxGridDBColumngrdBrowseDBIDInventoryMovCaptionIDDataBinding.FieldNameIDInventoryMovVisible  TcxGridDBColumngrdBrowseDBMovDateDataBinding.FieldNameMovDateWidthJ  TcxGridDBColumngrdBrowseDBNameCaptionMovement TypeDataBinding.FieldNameNameWidth  TcxGridDBColumngrdBrowseDBDocumentIDCaptionDoc. IDDataBinding.FieldName
DocumentIDWidthP  TcxGridDBColumngrdBrowseDBQtyDataBinding.FieldNameQtyWidth&  TcxGridDBColumngrdBrowseDBSalePriceCaption
Sold PriceDataBinding.FieldName	SalePriceWidthI  TcxGridDBColumngrdBrowseDBSystemDataBinding.FieldNameSystemVisibleWidth?  TcxGridDBColumngrdBrowseDBCostPriceDataBinding.FieldName	CostPriceWidthF  TcxGridDBColumngrdBrowseDBSystemUserCaptionSystem UserDataBinding.FieldName
SystemUserWidth�     TPanelPanel6Left Top+WidthQHeightAlignalBottom
BevelOuterbvNoneColor��� TabOrder TLabelLabel5Left Top	WidthdHeight	AlignmenttaRightJustifyCaptionQuantity On Hand  TLabelLabel6Left� Top	WidthhHeight	AlignmenttaRightJustifyCaptionQuantity On Order  TLabelLabel7Left�Top	Width`Height	AlignmenttaRightJustifyCaptionQuantity On Hold  TEditEditHandLeftiTopWidthGHeightColorclSilverReadOnly	TabOrder   TEdit	EditOrderLeft3TopWidthGHeightColorclSilverReadOnly	TabOrder  TEditEditPreSaleLeftTopWidthGHeightColorclSilverReadOnly	TabOrder  TPanelPanel10Left Top WidthQHeightAlignalTop
BevelOuter	bvLoweredTabOrder     �	TsiLangRTsiLangStorageFileMR_brwInventoryMov.silTopGTranslationData
�  stCaptions
stHints
stDisplayLabels
stFonts
stMultiLines
stDlgsCaptions
WarningWarning
ErrorError
InformationInformation
ConfirmConfirm
Yes&Yes
No&No
OKOK
CancelCancel
Abort&Abort
Retry&Retry
Ignore&Ignore
All&All
No To AllN&o to All
Yes To AllYes to &All
Help&Help
stStrings
stOtherStrings
grdBrowse.IniFileName
grdBrowse.IniSectionName
grdBrowse.KeyField
grdBrowse.PreviewFieldName
grdBrowse.RegistryPath
grdBrowse.SummarySeparator, 
quBrowse.CommandText
quBrowse.ConnectionString
quBrowse.Filter
quBrowse.IndexFieldNames
quBrowse.KeyFields
BrowseConfig.DefaultButtonbtDetail
BrowseConfig.FchClassName
BrowseConfig.ViewDeleteTable
SD.FilterMicrosoft Excel|*.xls
SD.Title
stLocales
Currency String$
Thousand Separator,
Decimal Separator.
Date Separator/
Short Date FormatM/d/yyyy
Long Date Formatdddd, MMMM dd, yyyy
Time Separator:
Time AM StringAM
Time PM StringPM
Short Time Formath:mm AMPM
Long Time Formath:mm:ss AMPM
Short Month NamesJan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec
Long Month NamesJanuary,February,March,April,May,June,July,August,September,October,November,December
Short Day NamesSun,Mon,Tue,Wed,Thu,Fri,Sat
Long Day NamesSunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday
stCollections
stCharSets
  �TPowerADOQueryquBrowseCommandText  SELECT 
	MH.Name,
	MH.DocumentID,
	MH.MovDate,
	MH.Qty,
	MH.SalePrice,
	MH.IDInventoryMov,
 	MH.System,
	MH.CostPrice,
	MH.Freight,
	MH.OtherCost,
	MH.SystemUser,
	MH.ModelID,
	MH.StoreID

FROM
	vwModelHistoryMov MH (NOLOCK)
ORDER BY
	MH.MovDate DESC

Left,Top�  TIntegerFieldquBrowseIDInventoryMovDisplayWidth
	FieldNameIDInventoryMov  TDateTimeFieldquBrowseMovDateDisplayWidth
	FieldNameMovDateDisplayFormatddddd  TStringFieldquBrowseNameDisplayLabelMovement TypeDisplayWidth	FieldNameNameSize  TIntegerFieldquBrowseDocumentIDDisplayWidth
	FieldName
DocumentID  TFloatFieldquBrowseSalePriceDisplayWidth
	FieldName	SalePriceDisplayFormat#,##0.00  TBooleanFieldquBrowseSystemDisplayWidth	FieldNameSystem  TFloatFieldquBrowseCostPriceDisplayWidth
	FieldName	CostPriceOriginInventoryMovType.NameDisplayFormat#,##0.00currency	  TStringFieldquBrowseSystemUserDisplayWidth2	FieldName
SystemUserSize2  TFloatFieldquBrowseQty	FieldNameQtyReadOnly	DisplayFormat0.#####   �TDataSourcedsBrowseLeftbTop�   �TBrowseConfigBrowseConfignOrderByInicialOrderByStateInicialSTD_ORDER_DESCMostraDesativadoSTD_AMBOSDESATIVADOMostraHiddenSTD_AMBOSHIDDENAutoOpenLeft� Top�   �TSaveDialogSDTop�   �TTimer	TimeAvisoLeftTop�   �TdxComponentPrintergridPrinter PreviewOptions.PreviewBoundsRect
              X   �TdxGridReportLinkgridPrinterLinkDateTime p�
ů:�@PrinterPage.Footer$PrinterPage.Header�PrinterPage.Margins.Bottom� PrinterPage.Margins.Left� PrinterPage.Margins.Right� PrinterPage.Margins.Top� PrinterPage.PageSize.X�dQ PrinterPage.PageSize.Y+s  PrinterPage._dxMeasurementUnits_ PrinterPage._dxLastMU_BuiltInReportLink	   TADOStoredProc
spQuantity
ConnectionDM.ADODBConnectProcedureNamesp_Model_quQtyOnStore;1
ParametersNameRETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@ModelID
Attributes
paNullable DataType	ftInteger	Precision
Value  Name@StoreID
Attributes
paNullable DataType	ftInteger	Precision
Value   LeftTop�  TFloatFieldspQuantityQtyOnPreSale	FieldNameQtyOnPreSaleDisplayFormat0.#  TFloatFieldspQuantityQtyOnHand	FieldName	QtyOnHandDisplayFormat0.#  TFloatFieldspQuantityQtyOnOrder	FieldName
QtyOnOrderDisplayFormat0.#  TFloatFieldspQuantityQtyOnPrePurchase	FieldNameQtyOnPrePurchaseDisplayFormat0.#    