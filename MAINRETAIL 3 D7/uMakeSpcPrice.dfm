�
 TFRMMAKESPCPRICE 0v  TPF0�TFrmMakeSpcPriceFrmMakeSpcPriceLeft@Top� BorderStylebsDialogCaptionMake Special PricesClientHeight� ClientWidthOldCreateOrder	OnClose	FormClosePixelsPerInch`
TextHeight � TLabelLabel3LeftTopAWidthCHeightCaptionSpecial Prices  �TPanelPanel1Left Top� WidthHeight+AlignalBottom
BevelOuterbvNoneTabOrder  TPanelPanel9Left Top WidthHeightAlignalTop
BevelOuterbvNoneTabOrder  TPanelPanel3Left TopWidthHeightAlignalBottom
BevelOuter	bvLoweredTabOrder    TButtonbtOKLeft� Top
WidthBHeightCaptionOKDefault	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnClick	btOKClick  TButtonbtCancelLeft� Top
WidthBHeightCancel	CaptionCancelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnClickbtCancelClick   �TPanelPanel6LeftTopWidth� Height8
BevelOuterbvNoneCaptionPanel6Color��� TabOrder TLabelLabel1LeftTopWidth� Height0AutoSizeCaptionlAfter you make a Special Price,  you  can not give more discounts and any previous dicounts will be removed.WordWrap	   �TListBox	ListPriceLeft
TopPWidth� HeightaColumns
ItemHeightItems.Strings<none> TabOrder
OnDblClick	btOKClick  �	TsiLangRTsiLangStorageFileMR_FrmMakeSpcPrice.sil  	TADOQueryquSpecialPrice
ConnectionDM.ADODBConnect
CursorTypectStatic
Parameters SQL.Strings$SELECT IDSpecialPrice , SpecialPrice,FROM dbo.SpecialPrice SpecialPrice (NOLOCK) WHERE Desativado = 0   Left_TopX TIntegerFieldquSpecialPriceIDSpecialPrice	FieldNameIDSpecialPrice  TStringFieldquSpecialPriceSpecialPrice	FieldNameSpecialPriceSize   TDataSourcedsSpecialPriceDataSetquSpecialPriceLeft� TopV   