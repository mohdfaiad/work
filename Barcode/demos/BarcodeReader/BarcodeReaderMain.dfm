�
 TFORM2 0  TPF0TForm2Form2Left=Top� WidthHeight�CaptionForm2Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OnCreate
FormCreatePixelsPerInch`
TextHeight TLabelLabel1Left8TopWidth� Height9AutoSizeCaptionATimeout-time between last char read and OnBarcodeReady event (ms)WordWrap	  TLabelLabel2LeftTopWidth!HeightAAutoSizeCaptionzPlease connect your barcode reader and try read some printed barcode.
For latest version please visit http://www.psoft.skColorclScrollBarParentColorWordWrap	  TEanEanLeftTopPWidth)Height� AutoIncAutoIncFrom 	AutoIncTo BackgroundColorclWhiteTransparent
ShowLabels	StartStopLines	
TypBarCodebcEan13
LinesColorclBlack
Ean13AddUp	FontAutoSize	SecurityFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style BarCode9771210107001Caption.Visible	Caption.Font.CharsetDEFAULT_CHARSETCaption.Font.ColorclWindowTextCaption.Font.Height�Caption.Font.NameArialCaption.Font.Style Caption.AlignmenttaLeftJustifyCaptionBottom.Visible	CaptionBottom.Font.CharsetDEFAULT_CHARSETCaptionBottom.Font.ColorclWindowTextCaptionBottom.Font.Height�CaptionBottom.Font.NameArialCaptionBottom.Font.Style CaptionBottom.AlignmenttaLeftJustifyHorzLines.LinesCount AutoCheckDigit	PDF417.ModepsPDF417AlphanumericPDF417.SecurityLevelpsPDF417AutoECPDF417.TruncatedPDF417.PaintIfSmall	  TMemoBarcodesLeftTop� Width)Height� Lines.StringsBarcodes TabOrder  TRadioGroupE_PORTLeft�TopPWidthaHeightiCaptionPort	ItemIndexItems.StringsCom1Com2Com3Com4 TabOrderOnClickE_PORTClick  TRadioGroupE_SPEEDLeft�Top� WidthaHeight� CaptionSpeed	ItemIndexItems.Strings300600120024004800960014400192003840057600115200 TabOrderOnClickE_SPEEDClick  TRadioGroupE_PARITYLeft8Top� WidthiHeightiCaptionParity	ItemIndexItems.StringsNoneOddSpaceEvenMark TabOrderOnClickE_PARITYClick  TRadioGroup
E_DATABITSLeft8TopWidthiHeightACaption	Data bits	ItemIndexItems.Strings78 TabOrderOnClickE_DATABITSClick  TRadioGroup
E_STOPBITSLeft8TopPWidthiHeightACaption	Stop bits	ItemIndex Items.Strings11.52 TabOrderOnClickE_STOPBITSClick  TEdit	E_TIMEOUTLeft�TopWidth!HeightTabOrderText100OnChangeE_TIMEOUTChange  	TCheckBox
E_REMOVECRLeft8TophWidthaHeightCaption	Remove CRState	cbCheckedTabOrderOnClickE_REMOVECRClick  	TCheckBox
E_REMOVELFLeft8Top� WidthaHeightCaption	Remove LFState	cbCheckedTabOrder	OnClickE_REMOVELFClick  	TComboBoxCB_TYPELeftTop8Width)HeightStylecsDropDownList
ItemHeightTabOrder
OnChangeCB_TYPEChange  TBarcodeReaderBarcodeReaderActivePortpsCom2BitRatebr9600Parity
parityEvenDataBitsdb8BitsStopBitssbStop1OnBarcodeReadyBarcodeReaderBarcodeReadyOptions
boRemoveCR
boRemoveLF Handle LeftpTop    