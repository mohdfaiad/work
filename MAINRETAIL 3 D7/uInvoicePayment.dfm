�
 TINVOICEPAYMENT 0�  TPF0�TInvoicePaymentInvoicePaymentLeftTop� HorzScrollBar.Range VertScrollBar.Range BorderStylebsDialogCaptionPayments for this InvoiceClientHeightsClientWidth�OnClose	FormClosePixelsPerInch`
TextHeight �TPanelPanel1TopJWidth� �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft�  �TSpeedButtonsbHelpVisible  �TButtonbtCloseOnClickbtCloseClick    �TPanelEspacamentoEsquerdoTopDHeight  �TPanelEspacamentoDireitoLeft�TopDHeight  �TPanelEspacamentoSuperiorWidth�  �TPanel
pnlInvoiceLeft TopWidth�Height>AlignalTop
BevelOuterbvNoneTabOrder TLabelLabel1LeftTopWidth!Height	AlignmenttaRightJustifyCaptionPaid :FocusControlDBEdit1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel2Left� TopWidth4Height	AlignmenttaRightJustifyCaption	on date :FocusControlDBEdit2Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel3LeftTop'Width5Height	AlignmenttaRightJustifyCaption	Cashier :FocusControlDBEdit3Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TBevelBevel1Left Top<Width�HeightAlignalBottomShape	bsTopLine  TDBEditDBEdit1Left<Top
WidthjHeight	DataFieldCashRegister
DataSourcedsCashRegDetailFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style ParentColor	
ParentFontTabOrder   TDBEditDBEdit2Left Top
Width{Height	DataFieldOpenTime
DataSourcedsCashRegDetailFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style ParentColor	
ParentFontTabOrder  TDBEditDBEdit3Left<Top#Width?Height	DataFieldOpenUser
DataSourcedsCashRegDetailFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style ParentColor	
ParentFontTabOrder   �TSubListPanelSubPaymentTypeLeftTopDWidthHeightAlignalClient
BevelOuterbvNoneColorclBtnShadowTabOrderSubListClassNameTSubHoldPayments  �	TsiLangRTsiLangStorageFileMR_InvoicePayment.sil  	TADOQuery	quPayment
ConnectionDM.ADODBConnect
CursorTypectStatic	AfterOpenquPaymentAfterOpen
Parameters SQL.StringsSELECT        MP.IDMeioPag,        MP.MeioPag,        L.ValorNominal,        L.DataVencimento,"        L.IDQuitacaoMeioPrevisto ,        L.IDLancamentoTipo,        L.IDDocumentoTipo,        L.IDPreSale,        L.CheckNumber,        L.IDBankCheck,        L.CustomerDocument,        L.CustomerName,        L.CustomerPhone,        L.HistoricoFROM"        Fin_Lancamento L (NOLOCK) O        Join MeioPag MP (NOLOCK) on ( L.IDQuitacaoMeioPrevisto = MP.IDMeioPag )ORDER BY        MP.IDMeioPag   LeftTope TIntegerFieldquPaymentIDMeioPag	FieldName	IDMeioPagOriginRETAIL.MeioPag.IDMeioPag  TStringFieldquPaymentMeioPagDisplayLabelPayment Type	FieldNameMeioPagOriginRETAIL.MeioPag.MeioPagSize2  TFloatFieldquPaymentValorNominalDisplayLabelAmount	FieldNameValorNominalOrigin"RETAIL.Fin_Lancamento.ValorNominalDisplayFormat#,##0.00  TDateTimeFieldquPaymentDataVencimentoDisplayLabelDue Date	FieldNameDataVencimentoOrigin$RETAIL.Fin_Lancamento.DataVencimento  TIntegerFieldquPaymentIDQuitacaoMeioPrevisto	FieldNameIDQuitacaoMeioPrevistoOrigin,RETAIL.Fin_Lancamento.IDQuitacaoMeioPrevisto  TIntegerFieldquPaymentIDLancamentoTipo	FieldNameIDLancamentoTipoOrigin&RETAIL.Fin_Lancamento.IDLancamentoTipo  TIntegerFieldquPaymentIDDocumentoTipo	FieldNameIDDocumentoTipoOrigin%RETAIL.Fin_Lancamento.IDDocumentoTipo  TIntegerFieldquPaymentIDPreSale	FieldName	IDPreSaleOriginRETAIL.Fin_Lancamento.IDPreSale  TStringFieldquPaymentCheckNumber	FieldNameCheckNumber  TIntegerFieldquPaymentIDBankCheck	FieldNameIDBankCheck  TStringFieldquPaymentCustomerDocument	FieldNameCustomerDocument  TStringFieldquPaymentCustomerName	FieldNameCustomerNameSizeP  TStringFieldquPaymentCustomerPhone	FieldNameCustomerPhone  
TMemoFieldquPaymentHistorico	FieldName	HistoricoBlobTypeftMemo   TDataSource	dsPaymentDataSet	quPaymentLeftDTop�   	TADOQueryquCashRegDetail
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersName	IDPreSale
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT"        SU.SystemUser as OpenUser,!        CRM.OpenTime as OpenTime,        CR.Name as CashRegisterFROM!        CashRegister CR (NOLOCK) P        Join CashRegMov CRM (NOLOCK) on (CRM.IDCashRegister = CR.IDCashRegister)C        Join SystemUser SU (NOLOCK) on (CRM.IDOpenUser = SU.IDUser)F        Join Invoice I (NOLOCK) on (I.CashRegMovID = CRM.IDCashRegMov)WHERE         I.IDPreSale = :IDPreSale   Left� Top�  TStringFieldquCashRegDetailOpenUser	FieldNameOpenUserSize2  TDateTimeFieldquCashRegDetailOpenTime	FieldNameOpenTime  TStringFieldquCashRegDetailCashRegister	FieldNameCashRegisterSize   TDataSourcedsCashRegDetailDataSetquCashRegDetailLeft� Top�    