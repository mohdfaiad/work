�
 TSPLITPRESALE 0�!  TPF0�TSplitPreSaleSplitPreSaleLeft-Top2WidthJHeightjVertScrollBar.Range BorderIconsbiSystemMenu
biMaximize BorderStylebsSingleCaptionSplitPreSaleOnClose	FormClosePixelsPerInch`
TextHeight �TPanelPanel2WidthB �TImageImage1Width_  �TLabellblMenuLeftTop  �TPanelEspacamentoSuperiorWidthB �TPanelEEEWidthB    �TPanelPanel1Top&WidthB �TPanelEspacamentoInferiorWidthB �TPanelPanel3WidthB   �TPanelhhhLeft�Width�  �TButtonbtCloseLeftICancel	OnClickbtCloseClick  TButtonbtSplitLeftTopWidthBHeightCaption&SplitDefault	TabOrderOnClickbtSplitClick    �TPanelEspacamentoEsquerdoTopGHeight�  �TPanelEspacamentoDireitoLeft?TopGHeight�  �TPanelPanel4LeftTopGWidth<Height�AlignalClient
BevelOuterbvNoneTabOrder
DesignSize<�  TPanel
pnlDeliverLeft=Top Width� Height�AlignalRight
BevelOuterbvNoneTabOrder 
DesignSize� �  TPanelPanel9LeftTop Width� Height�AnchorsakLeftakTopakBottom 
BevelOuterbvNoneColor��� TabOrder  TLabelLabel2LeftTop,WidthHeight	AlignmenttaRightJustifyCaptionType:  TLabelLabel3LeftTopKWidthHeight	AlignmenttaRightJustifyCaptionDate:  TLabelLabel4LeftTopkWidth+Height	AlignmenttaRightJustifyCaptionAddress:  TLabelLabel5Left!Top� WidthHeight	AlignmenttaRightJustifyCaptionOBS:  TLabelLabel34Left� Top(WidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel6Left� TopGWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel7Left� TophWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TPanel	pnlTitle6Left Top Width� HeightAlignalTop
BevelOuterbvNoneCaptionDeliver InfoColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder   TSuperComboADOscoDeliverTypeLeft=Top(Width� HeightTabOrderOnChangescoDeliverTypeChangeFilterFields.StringsCanConfirmDeliver FilterValues.Strings1 LookUpSourceDM.dsLookUpDeliverTypeShowBtnAddNewShowBtnUpdate
IDLanguage OnSelectItemscoDeliverTypeSelectItem  TDateBoxedtDateLeft=TopGWidthYHeightTabOrderOnChangeedtDateChange  TEdit
edtAddressLeft=TopgWidth� Height	MaxLengthdTabOrderOnChangeedtAddressChange  TMemomemOBSLeft=Top� Width� Height� 	MaxLength� TabOrder    TcxGridgrdPreSaleItemLeft Top Width;Height�AnchorsakLeftakTopakRightakBottom TabOrderOnExitgrdPreSaleItemExit TcxGridDBTableViewgrdPreSaleItemDBTableView1DataController.DataSourcedsPreSaleItemDataController.Filter.Criteria
	   ����     /DataController.Summary.DefaultGroupSummaryItems )DataController.Summary.FooterSummaryItems $DataController.Summary.SummaryGroups OnFocusedItemChanged,grdPreSaleItemDBTableView1FocusedItemChanged OptionsCustomize.ColumnFilteringOptionsData.CancelOnExitOptionsData.Deleting OptionsData.DeletingConfirmationOptionsData.InsertingOptionsView.ColumnAutoWidth	OptionsView.GridLinesglHorizontalOptionsView.GroupByBox TcxGridDBColumn grdPreSaleItemDBTableView1MarkedCaptionMDataBinding.FieldNameMarkedPropertiesClassNameTcxCheckBoxPropertiesProperties.DisplayUncheckedFalseProperties.ReadOnly	Properties.OnChange0grdPreSaleItemDBTableView1MarkedPropertiesChangeOptions.EditingWidth  TcxGridDBColumngrdPreSaleItemDBTableView1QtyDataBinding.FieldNameQtyPropertiesClassNameTcxCalcEditPropertiesOptions.EditingWidth  TcxGridDBColumn$grdPreSaleItemDBTableView1QtyRealMovDataBinding.FieldName
QtyRealMovPropertiesClassNameTcxCalcEditPropertiesProperties.ImmediatePost	Properties.ReadOnlyProperties.QuickClose	Width4  TcxGridDBColumngrdPreSaleItemDBTableView1ModelDataBinding.FieldNameModelOptions.EditingWidthA  TcxGridDBColumn%grdPreSaleItemDBTableView1DescriptionDataBinding.FieldNameDescriptionOptions.EditingWidth�   TcxGridDBColumn#grdPreSaleItemDBTableView1DBColumn1CaptionDepart.DataBinding.FieldName
DepartmentWidtha  TcxGridDBColumngrdPreSaleItemDBTableView1TotalDataBinding.FieldNameTotalOptions.EditingWidthy   TcxGridLevelgrdPreSaleItemLevel1GridViewgrdPreSaleItemDBTableView1    �TPanelPanel5Left Top(WidthBHeightAlignalTop
BevelOuterbvNoneTabOrder
DesignSizeB  TLabelLabel1LeftTopWidth5Height	AlignmenttaRightJustifyCaption
Customer :  TEditEditCustomerLeftZTopWidth�HeightAnchorsakLeftakTopakRight ColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontReadOnly	TabOrder TextEditCustomer   �	TsiLangRTsiLangStorageFileMR_SplitPreSale.sil  TDataSourcedsPreSaleItemDataSetquPreSaleItemOnStateChangedsPreSaleItemStateChangeOnDataChangedsPreSaleItemDataChangeLeft,Top�   	TADOQueryquPreSaleItem
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersName
DocumentID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT	IDPreInventoryMov,	DocumentID,	Marked,	Model,	Description,F	(SELECT dbo.SalesPersonPreInvMov(IDPreInventoryMov)) AS SalesPerson ,		MovDate,
	Discount,	Qty,	Total,	QtyRealMov,		IDModel,	NotVerifyQty,	DepartmentFROM 	vwSplit_ListItemsWHERE 	DocumentID = :DocumentID	GROUP BY 	IDPreInventoryMov,	DocumentID,	Marked,	Model,	Description,		movDate,
	Discount,	Qty,	Total,	QtyRealMov,		IDModel,	NotVerifyQty,	Department Left,Top�  TBooleanFieldquPreSaleItemMarked	FieldNameMarked  TIntegerFieldquPreSaleItemIDPreInventoryMov	FieldNameIDPreInventoryMovOrigin#vwSplit_ListItems.IDPreInventoryMovReadOnly	  TIntegerFieldquPreSaleItemDocumentID	FieldName
DocumentIDOriginvwSplit_ListItems.DocumentIDReadOnly	  TStringFieldquPreSaleItemModel	FieldNameModelOriginvwSplit_ListItems.ModelReadOnly	Size  TStringFieldquPreSaleItemDescription	FieldNameDescriptionOriginvwSplit_ListItems.DescriptionReadOnly	Size2  TStringFieldquPreSaleItemSalesPersonDisplayLabelSales Person	FieldNameSalesPersonOriginvwSplit_ListItems.SalesPersonReadOnly	Size2  TDateTimeFieldquPreSaleItemMovDateDisplayLabelDate	FieldNameMovDateOriginvwSplit_ListItems.MovDateReadOnly	  TFloatFieldquPreSaleItemDiscount	FieldNameDiscountOriginvwSplit_ListItems.DiscountReadOnly	  TFloatFieldquPreSaleItemTotal	FieldNameTotalOrigin#vwSplit_ListItems.IDPreInventoryMovReadOnly	  TIntegerFieldquPreSaleItemIDModel	FieldNameIDModel  TBooleanFieldquPreSaleItemNotVerifyQty	FieldNameNotVerifyQtyReadOnly	  TFloatFieldquPreSaleItemQty	FieldNameQtyDisplayFormat0.######  TFloatFieldquPreSaleItemQtyRealMov	FieldName
QtyRealMovOnChangequPreSaleItemQtyRealMovChangeDisplayFormat0.######  TStringFieldquPreSaleItemDepartment	FieldName
DepartmentSize2   TADOStoredProcspSplit
ConnectionDM.ADODBConnectLockType
ltReadOnlyProcedureNamesp_PreSale_Split;1
ParametersNameRETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name
@IDPreSale
Attributes
paNullable DataType	ftInteger	Precision
Value  Name@NewIDPreSale
Attributes
paNullable DataType	ftInteger	DirectionpdInputOutput	Precision
Value   Left� Top�   	TADOQueryquUnMarkAll
ConnectionDM.ADODBConnectLockType
ltReadOnly
ParametersName
DocumentID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.Strings5UPDATE PreInventoryMov SET Marked = 0, QtyRealMov = 0WHERE DocumentID = :DocumentID   AND InventMovTypeID = 1  Left� Top�   	TADOQueryquTotalToDivide
ConnectionDM.ADODBConnect
CursorTypectStaticLockType
ltReadOnly
ParametersName
DocumentID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT2  SUM(ABS(ISNULL(QtyRealMov, 0))) AS TotalRealMov,&  SUM(ABS(ISNULL(Qty, 0))) AS TotalQtyFROM  PreInventoryMov (NOLOCK) WHERE  DocumentID = :DocumentID  AND InventMovTypeID = 1   Left�Top�  TFloatFieldquTotalToDivideTotalRealMov	FieldNameTotalRealMovDisplayFormat0.#####  TFloatFieldquTotalToDivideTotalQty	FieldNameTotalQtyDisplayFormat0.#####    