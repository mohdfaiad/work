�
 TPRINTREPAIRCLIRECEIPT 0n  TPF0�TPrintRepairCliReceiptPrintRepairCliReceiptLeftsTop� BorderStylebsDialogCaptionPrinting ReceiptClientHeight� ClientWidthaOnClose	FormClosePixelsPerInch`
TextHeight � TLabellblPrintLeft
Top@WidthLHeightAutoSizeCaptionPrinting Receipt, Please WaitFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial Black
Font.StylefsBold 
ParentFont  �TPanel
pnlPrinterLeft
Top]WidthKHeight
BevelOuterbvNoneCaption5If printer does not start, check the "On Line" ButtonColorclBlackFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder   �TAnimateAniPrintLeft(TopWidthHeight<	CommonAVIaviCopyFile	StopFrame  �TButtonbtOkLeftlTopxWidth� HeightCaption&OKFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrderOnClick	btOkClick  �	TsiLangRTsiLangStorageFileMR_PrintRepairCliReceipt.sil  	TADOQueryquRepair
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameIDRepairCli
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT      S.TicketHeader,      C.Customer ,      C.Endereco Address,      R.ReceiveDate ,      M.Model ,      M.Description ,      R.Qty ,      R.OBSReceive ,      R.IDRepair ,      U.SystemUser SysUser,      R.SerialNumber ,-      SUBSTRING(R.OBSReceive, 1,26) OBSLine1,.      SUBSTRING(R.OBSReceive, 27,26) OBSLine2,.      SUBSTRING(R.OBSReceive, 54,26) OBSLine3,-      SUBSTRING(R.OBSReceive, 80,26) OBSLine4 FROM  dbo.Repair R (NOLOCK) ?	JOIN dbo.vwCliente C (NOLOCK) ON ( R.IDCliente = C.IDCliente )6      JOIN Store S (NOLOCK) ON (S.IDStore = R.IDStore)<      JOIN dbo.Model M (NOLOCK) ON ( R.IDModel = M.IDModel )G      LEFT JOIN SystemUser U (NOLOCK) ON ( R.IDUserReceive = U.IDUser ) WHERE ( R.IDRepair = :IDRepairCli )     Left� Top TStringFieldquRepairCustomer	FieldNameCustomerSize2  TStringFieldquRepairAddress	FieldNameAddressSizeP  TDateTimeFieldquRepairReceiveDate	FieldNameReceiveDate  TStringFieldquRepairModel	FieldNameModelSize  TStringFieldquRepairDescription	FieldNameDescriptionSize2  TStringFieldquRepairOBSReceive	FieldName
OBSReceiveSize�   TIntegerFieldquRepairIDRepair	FieldNameIDRepair  TStringFieldquRepairSysUser	FieldNameSysUserSize2  TStringFieldquRepairSerialNumber	FieldNameSerialNumber  TStringFieldquRepairOBSLine1	FieldNameOBSLine1Size  TStringFieldquRepairOBSLine2	FieldNameOBSLine2Size  TStringFieldquRepairOBSLine3	FieldNameOBSLine3Size  TStringFieldquRepairOBSLine4	FieldNameOBSLine4Size  
TMemoFieldquRepairTicketHeader	FieldNameTicketHeaderBlobTypeftMemo  TFloatFieldquRepairQty	FieldNameQtyDisplayFormat0.#####    