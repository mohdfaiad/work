�
 TMOVEPRESALE 05  TPF0�TMovePreSaleMovePreSaleLeft5TopWidth�Height'VertScrollBar.Range BorderStylebsDialogCaptionMovePreSaleOnClose	FormClosePixelsPerInch`
TextHeight � TLabelLabel1Left
Top7Width2Height)CaptionTo:Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameArial Black
Font.Style 
ParentFont  �TLabelLabel2LeftTopWidthZHeight)CaptionFrom:Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameArial Black
Font.Style 
ParentFont  �TPanelPanel2Width� �TImageImage1Width�  �TLabellblMenuLeft  �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�    �TPanelPanel1Top�Width� �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft�Width�  �TButtonbtCloseLeft� Cancel	CaptionDoneOnClickbtCloseClick    �TPanelEspacamentoEsquerdoHeight�TabOrder  �TPanelEspacamentoDireitoLeft�Height�TabOrder  �TEditEditCustomerLeftxTopCWidthHeightColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontReadOnly	TabOrderTextEditCustomer  �TSuperComboADOscOrigemLeftdTopWidth7HeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderTextscOrigem
CodeLengthLookUpSourceDM.dsLookUpPreSaleDropDownRowsShowBtnAddNewShowBtnUpdateShowEditCode	
IDLanguage OnSelectItemscOrigemSelectItem  �TEditEditIDPreSaleLeftATopCWidth4HeightColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontReadOnly	TabOrder  �	TBitBtnbtMoveLeft�TopWidth� HeightCaptionMove marked itemsTabOrderOnClickbtMoveClick
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 333 333333w333333	333333333333	333333333333	333333333333	333333333333	33333���330 	  3337wsww�330����3337?3373333	��3333333333	��3333s�3s33330��333337�7�33330��333337?7333333	333333333333	333333ss333333033333337�3333330333333373333	NumGlyphs  �
TBitBtn	btMoveAllLeft:TopWidthVHeightCaptionMove all itemsTabOrderOnClickbtMoveAllClick	NumGlyphs  �TDBGrid
grdDestinoLeftTop`Width�Height� 
DataSource	dsDestinoOptionsdgTitles
dgRowLinesdgRowSelectdgConfirmDeletedgCancelOnExit TabOrder	TitleFont.CharsetANSI_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style ColumnsExpanded	FieldNameQtyVisible	 Expanded	FieldNameMovDateWidthGVisible	 Expanded	FieldNameModelWidthiVisible	 Expanded	FieldNameDescriptionWidthvVisible	 Expanded	FieldNameSalesPersonWidthVisible	 Expanded	FieldNameTotalVisible	    �TDBGrid	grdOrigemLeftTop7Width�Height� 
DataSourcedsOrigemOptionsdgTitles
dgRowLinesdgRowSelectdgConfirmDeletedgCancelOnExit TabOrder
TitleFont.CharsetANSI_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style ColumnsExpanded	FieldNameMarkedWidthVisible	 Expanded	FieldNameQtyWidth8Visible	 Expanded	FieldNameMovDateWidth8Visible	 Expanded	FieldNameModelWidth]Visible	 Expanded	FieldNameDescriptionWidth� Visible	 Expanded	FieldNameSalesPersonWidth� Visible	 Expanded	FieldNameTotalVisible	    �	TsiLangRTsiLangStorageFileMR_MovePreSale.sil  TDataSourcedsOrigemDataSetquOrigemOnDataChangedsOrigemDataChangeLeftmTop�  	TADOQueryquOrigem
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersName
DocumentID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT      Marked ,       Model ,      SalesPerson ,      MovDate ,      Discount ,      Qty ,      Total ,      IDPreInventoryMov ,       Description ,      DocumentID 5FROM dbo.vwSplit_ListItems vwSplit_ListItems (NOLOCK) "WHERE ( DocumentID = :DocumentID )  Left'Top� TBooleanFieldquOrigemMarkedDisplayLabel 	FieldNameMarkedOriginvwSplit_ListItems.Marked  TStringFieldquOrigemModel	FieldNameModelOriginvwSplit_ListItems.ModelSize  TStringFieldquOrigemSalesPerson	FieldNameSalesPersonOriginvwSplit_ListItems.SalesPersonSize2  TDateTimeFieldquOrigemMovDateDisplayLabelDate	FieldNameMovDateOriginvwSplit_ListItems.MovDate  TFloatFieldquOrigemDiscount	FieldNameDiscountOriginvwSplit_ListItems.Discount  TFloatFieldquOrigemTotal	FieldNameTotalOriginvwSplit_ListItems.Total  TIntegerFieldquOrigemIDPreInventoryMov	FieldNameIDPreInventoryMovOrigin#vwSplit_ListItems.IDPreInventoryMov  TStringFieldquOrigemDescription	FieldNameDescriptionOriginvwSplit_ListItems.DescriptionSize2  TIntegerFieldquOrigemDocumentID	FieldName
DocumentIDOriginvwSplit_ListItems.DocumentID  TFloatFieldquOrigemQty	FieldNameQtyReadOnly	DisplayFormat0.#####   TADOStoredProcspMove
ConnectionDM.ADODBConnectProcedureNamesp_PreSale_Move;1
ParametersNameRETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@IDPreSaleOrigem
Attributes
paNullable DataType	ftInteger	Precision
Value  Name@IDPreSaleDestino
Attributes
paNullable DataType	ftInteger	Precision
Value   Left� Top�   	TADOQuery	quMarkAll
ConnectionDM.ADODBConnect
ParametersNameValue
Attributes
paNullable DataType	ftBooleanNumericScale� 	Precision� SizeValue  Name
DocumentID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsaUPDATE PreInventoryMov SET Marked = :Value WHERE DocumentID = :DocumentID AND InventMovTypeID = 1  Left�Topr  	TADOQuery	quDestino
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersName
DocumentID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT      Marked ,       Model ,      SalesPerson ,      MovDate ,      Discount ,      Qty ,      Total ,      IDPreInventoryMov ,       Description ,      DocumentIDFROM 1	dbo.vwSplit_ListItems vwSplit_ListItems (NOLOCK)WHERE 	( DocumentID = :DocumentID )   Left"Top�  TBooleanFieldquDestinoMarkedDisplayLabel 	FieldNameMarkedOriginvwSplit_ListItems.Marked  TStringFieldquDestinoModel	FieldNameModelOriginvwSplit_ListItems.ModelSize  TStringFieldquDestinoSalesPerson	FieldNameSalesPersonOriginvwSplit_ListItems.SalesPersonSize2  TDateTimeFieldquDestinoMovDateDisplayLabelDate	FieldNameMovDateOriginvwSplit_ListItems.MovDate  TFloatFieldquDestinoDiscount	FieldNameDiscountOriginvwSplit_ListItems.Discount  TFloatFieldquDestinoTotal	FieldNameTotalOriginvwSplit_ListItems.Total  TIntegerFieldquDestinoIDPreInventoryMov	FieldNameIDPreInventoryMovOrigin#vwSplit_ListItems.IDPreInventoryMov  TStringFieldquDestinoDescription	FieldNameDescriptionOriginvwSplit_ListItems.DescriptionSize2  TIntegerFieldquDestinoDocumentID	FieldName
DocumentIDOriginvwSplit_ListItems.DocumentID  TFloatFieldquDestinoQty	FieldNameQtyReadOnly	DisplayFormat0.#####   TDataSource	dsDestinoDataSet	quDestinoOnDataChangedsDestinoDataChangeLefthTop�    