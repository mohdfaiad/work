�
 TPRINTRECEIPT 0�-  TPF0�TPrintReceiptPrintReceiptLeft� Top� BorderStylebsDialogCaptionPrinting ReceiptClientHeight� ClientWidthfOnClose	FormCloseOnShowFormShowPixelsPerInch`
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
ParentFontTabOrder   �TAnimateAniPrintLeft4TopWidthHeight<	CommonAVIaviCopyFiles	StopFrame"  �TButtonbtOkLeftlTopxWidth� HeightCaption&OKDefault	Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrderOnClick	btOkClick  �	TsiLangRTsiLangLeft Top   	TADOQuery	quBarCode
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameModelIDDataType	ftIntegerSize�Value  NameModelIDDataType	ftIntegerSize�Value   SQL.Strings select max(idbarcode) as BarCode from barcode  where data = 	(	select max(data) 	from barcode 	where IDmodel =  :ModelID	) 	AND 	IDmodel = :ModelID  Left� Top TStringFieldquBarCodeBarCode	FieldNameBarCode   TADOStoredProcquPreSaleValue
ConnectionDM.ADODBConnectProcedureNamesp_PreSale_quPreSaleValue;1
ParametersNameRETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name
@PreSaleID
Attributes
paNullable DataType	ftInteger	Precision
Value   Left/Top TBooleanFieldquPreSaleValueTaxIsent	FieldNameTaxIsent  TFloatFieldquPreSaleValueSubTotal	FieldNameSubTotalDisplayFormat
$ #,##0.00  TFloatFieldquPreSaleValueItemDiscount	FieldNameItemDiscountDisplayFormat
$ #,##0.00  TFloatFieldquPreSaleValueTax	FieldNameTaxDisplayFormat
$ #,##0.00  TFloatFieldquPreSaleValueTaxPrc	FieldKindfkCalculated	FieldNameTaxPrcDisplayFormat
#,##0.00 %
Calculated	  TFloatFieldquPreSaleValueDiscountPrc	FieldKindfkCalculated	FieldNameDiscountPrcDisplayFormat
#,##0.00 %
Calculated	  TFloatFieldquPreSaleValueTotalInvoice	FieldKindfkCalculated	FieldNameTotalInvoiceDisplayFormat
$ #,##0.00
Calculated	  TIntegerFieldquPreSaleValueSpecialPriceID	FieldNameSpecialPriceID  TStringFieldquPreSaleValueSpecialPrice	FieldNameSpecialPriceSize  TIntegerFieldquPreSaleValuenOpenUser	FieldName	nOpenUser  TIntegerFieldquPreSaleValueShowOpenUser	AlignmenttaCenter	FieldKindfkCalculated	FieldNameShowOpenUser
Calculated	  TFloatFieldquPreSaleValueTaxIsemptValue	FieldNameTaxIsemptValue  TFloatFieldquPreSaleValueSubTotalTaxable	FieldKindfkCalculated	FieldNameSubTotalTaxable
Calculated	  TFloatField#quPreSaleValueTaxIsemptItemDiscount	FieldNameTaxIsemptItemDiscount  TCurrencyFieldquPreSaleValueTotalDiscount	FieldKindfkCalculated	FieldNameTotalDiscount
Calculated	   	TADOQueryquPreSaleInfo
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersName	IDPreSale
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT 	I.IDPreSale, 	I.IDMeioPag, 	I.IDTouristGroup,	I.PreSaleDate,	I.OtherComissionID,	I.IDCustomer,	I.DeliverTypeID, 	I.DeliverDate,	I.DeliverAddress,	I.PassportDate,	I.AirLine,	I.CompanyName,	I.CompanyCGC,	I.DepositDate,	I.Note,	I.PrintNotes,	I.InvoiceDate,	I.IDInvoice,	I.Passport,	I.Printed,	I.Ticket, 	I.MediaID, 	I.CashReceived, 	I.CashRegMovID, 	I.TaxIsent, 	I.CardNumber,	I.Address, 	I.FirstName, 	I.LastName,	M.MediaFROM 
	Invoice I3	LEFT OUTER JOIN Media M ON (M.IDMEdia = I.MediaID)WHERE 	IDPreSale = :IDPreSale Left8Topa TIntegerFieldquPreSaleInfoIDPreSale	FieldName	IDPreSaleOriginInvoice.IDPreSale  TIntegerFieldquPreSaleInfoIDMeioPag	FieldName	IDMeioPagOriginInvoice.IDMeioPag  TIntegerFieldquPreSaleInfoIDTouristGroup	FieldNameIDTouristGroupOriginInvoice.IDTouristGroup  TDateTimeFieldquPreSaleInfoPreSaleDate	FieldNamePreSaleDateOriginInvoice.PreSaleDateEditMask!99/99/00;1;_  TIntegerFieldquPreSaleInfoOtherComissionID	FieldNameOtherComissionIDOriginInvoice.OtherComissionID  TIntegerFieldquPreSaleInfoIDCustomer	FieldName
IDCustomerOriginInvoice.IDCustomer  TIntegerFieldquPreSaleInfoDeliverTypeID	FieldNameDeliverTypeIDOriginInvoice.DeliverTypeID  TDateTimeFieldquPreSaleInfoDeliverDate	FieldNameDeliverDateOriginInvoice.DeliverDateEditMask!99/99/00;1;_  TStringFieldquPreSaleInfoDeliverAddress	FieldNameDeliverAddressOriginInvoice.DeliverAddressSized  TDateTimeFieldquPreSaleInfoPassportDate	FieldNamePassportDateOriginInvoice.PassportDateEditMask!99/99/00;1;_  TStringFieldquPreSaleInfoAirLine	FieldNameAirLineOriginInvoice.AirLineSize(  TStringFieldquPreSaleInfoCompanyName	FieldNameCompanyNameOriginInvoice.CompanyNameSize(  TStringFieldquPreSaleInfoCompanyCGC	FieldName
CompanyCGCOriginInvoice.CompanyCGC  TDateTimeFieldquPreSaleInfoDepositDate	FieldNameDepositDateOriginInvoice.DepositDateEditMask!99/99/00;1;_  TStringFieldquPreSaleInfoNote	FieldNameNoteOriginInvoice.NoteSize�   TDateTimeFieldquPreSaleInfoInvoiceDate	FieldNameInvoiceDateOriginInvoice.InvoiceDateEditMask!99/99/00;1;_  TIntegerFieldquPreSaleInfoIDInvoice	FieldName	IDInvoiceOriginInvoice.IDInvoice  TStringFieldquPreSaleInfoPassport	FieldNamePassportOriginInvoice.Passport  TStringFieldquPreSaleInfoTicket	FieldNameTicketOriginInvoice.Ticket  TIntegerFieldquPreSaleInfoMediaID	FieldNameMediaIDOriginInvoice.IDPreSale  TFloatFieldquPreSaleInfoCashReceived	FieldNameCashReceivedOriginInvoice.IDPreSale  TIntegerFieldquPreSaleInfoCashRegMovID	FieldNameCashRegMovIDOriginInvoice.IDPreSale  TBooleanFieldquPreSaleInfoPrinted	FieldNamePrintedOriginInvoice.IDPreSale  TBooleanFieldquPreSaleInfoTaxIsent	FieldNameTaxIsentOriginInvoice.IDPreSale  TStringFieldquPreSaleInfoCardNumber	FieldName
CardNumberOriginInvoice.IDPreSaleSize  TStringFieldquPreSaleInfoAddress	FieldNameAddressOriginInvoice.IDPreSaleSize�   TStringFieldquPreSaleInfoFirstName	FieldName	FirstNameOriginRETAIL.Invoice.FirstName  TStringFieldquPreSaleInfoLastName	FieldNameLastNameOriginRETAIL.Invoice.LastName  TBooleanFieldquPreSaleInfoPrintNotes	FieldName
PrintNotes  TStringFieldquPreSaleInfoMedia	FieldNameMediaSize�    TADOStoredProcquPreSaleItem
ConnectionDM.ADODBConnectProcedureNamesp_PreSale_quPreSaleItem;1
ParametersNameRETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@DocumentID
Attributes
paNullable DataType	ftInteger	Precision
Value  Name
@IsPreSale
Attributes
paNullable DataType	ftBooleanValue  Name@Date
Attributes
paNullable DataType
ftDateTimeValue   LeftjTop TIntegerFieldquPreSaleItemModelID	FieldNameModelID  TStringFieldquPreSaleItemModel	FieldNameModelSize  TStringFieldquPreSaleItemDescription	FieldNameDescriptionSize2  TFloatFieldquPreSaleItemSalePrice	FieldName	SalePriceDisplayFormat0.00  TFloatFieldquPreSaleItemDiscount	FieldNameDiscountDisplayFormat0.00  TIntegerFieldquPreSaleItemIDInventoryMov	FieldNameIDInventoryMov  TFloatFieldquPreSaleItemTotalItem	FieldKindfkCalculated	FieldName	TotalItemDisplayFormat
$ #,##0.00
Calculated	  TStringFieldquPreSaleItemSalesPerson	FieldNameSalesPersonSize2  TIntegerFieldquPreSaleItemIDComission	FieldNameIDComission  TFloatFieldquPreSaleItemCostPrice	FieldName	CostPrice  TIntegerFieldquPreSaleItemIDUser	FieldNameIDUser  TIntegerFieldquPreSaleItemExchangeInvoice	FieldNameExchangeInvoice  TFloatFieldquPreSaleItemQty	FieldNameQtyDisplayFormat0.#####   	TADOQueryquDescCashier
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameIDCashRegMov
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT SystemUser:FROM dbo.CashRegMov CashRegMov , dbo.SystemUser SystemUser3WHERE ( CashRegMov.IDOpenUser = SystemUser.IDUser )  AND (! ( IDCashRegMov = :IDCashRegMov ) )  Left#Top TStringFieldquDescCashierSystemUser	FieldName
SystemUserOriginSystemUser.SystemUserSize2   	TADOQueryquSerial
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersName	IDInvoice
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.Strings%SELECT DocumentID , InventoryMovID ,  SerialNumber<FROM dbo.InventoryMov InventoryMov , dbo.SerialMov SerialMov@WHERE ( SerialMov.InventoryMovID = InventoryMov.IDInventoryMov )  AND (" ( ( DocumentID = :IDInvoice ) AND  ( InventMovTypeID = 1 ) ) )  LeftTop9 TIntegerFieldquSerialDocumentID	FieldName
DocumentIDOriginInventoryMov.DocumentID  TStringFieldquSerialSerialNumber	FieldNameSerialNumberOriginSerialMov.SerialNumberSize  TIntegerFieldquSerialInventoryMovID	FieldNameInventoryMovIDOriginInventoryMov.DocumentID   	TADOQueryquPreSaleParc
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersName	IDPreSale
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT    L.IDDocumentoTipo,    L.NumDocumento ,    L.DataVencimento ,    L.ValorNominal ,    MP.MeioPag ,    MP.IDMeioPag FROM    Fin_Lancamento L@    JOIN MeioPag MP ON (L.IDQuitacaoMeioPrevisto = MP.IDMeioPag) WHERE    L.IDPreSale = :IDPreSale  Left� Top TIntegerFieldquPreSaleParcIDDocumentoTipo	FieldNameIDDocumentoTipoOrigin%RETAIL.Fin_Lancamento.IDDocumentoTipo  TStringFieldquPreSaleParcNumDocumento	FieldNameNumDocumentoOrigin"RETAIL.Fin_Lancamento.NumDocumento  TDateTimeFieldquPreSaleParcDataVencimento	FieldNameDataVencimentoOrigin$RETAIL.Fin_Lancamento.DataVencimento  TFloatFieldquPreSaleParcValorNominal	FieldNameValorNominalOrigin"RETAIL.Fin_Lancamento.ValorNominal  TStringFieldquPreSaleParcMeioPag	FieldNameMeioPagOriginRETAIL.MeioPag.MeioPagSize2  TIntegerFieldquPreSaleParcIDMeioPag	FieldName	IDMeioPagOriginRETAIL.MeioPag.IDMeioPag   	TADOQueryquStore
ConnectionDM.ADODBConnect
ParametersNameIDStore
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT	S.TicketHeader,	S.TicketLayawayFooter,	S.TicketTaxIsemptFooter,	S.TicketFooter,	S.TicketDetail,	S.TicketTotals,	S.PrintTicketHeader,	S.PrintLayawayFooter,	S.PrintTaxInsemptFooter,	S.PrintTicketFooterFROM	Store S WHERE	S.IDStore = :IDStore   LeftDTopM 
TMemoFieldquStoreTicketHeader	FieldNameTicketHeaderOriginRETAIL.Store.TicketHeaderBlobTypeftMemo  
TMemoFieldquStoreTicketLayawayFooter	FieldNameTicketLayawayFooterOrigin RETAIL.Store.TicketLayawayFooterBlobTypeftMemo  
TMemoFieldquStoreTicketTaxIsemptFooter	FieldNameTicketTaxIsemptFooterBlobTypeftMemo  
TMemoFieldquStoreTicketFooter	FieldNameTicketFooterBlobTypeftMemo  TBooleanFieldquStorePrintTicketHeader	FieldNamePrintTicketHeader  TBooleanFieldquStorePrintLayawayFooter	FieldNamePrintLayawayFooter  TBooleanFieldquStorePrintTaxInsemptFooter	FieldNamePrintTaxInsemptFooter  TBooleanFieldquStorePrintTicketFooter	FieldNamePrintTicketFooter  
TMemoFieldquStoreTicketDetail	FieldNameTicketDetailBlobTypeftMemo  
TMemoFieldquStoreTicketTotals	FieldNameTicketTotalsBlobTypeftMemo   TTimertmrTimerOnTimertmrTimerTimerLeftTopl   