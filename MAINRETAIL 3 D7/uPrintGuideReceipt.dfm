�
 TPRINTGUIDERECEIPT 0z  TPF0�TPrintGuideReceiptPrintGuideReceiptLeftdTop� BorderStylebsDialogCaptionPrinting ReceiptClientHeight� ClientWidthaOldCreateOrder	OnClose	FormClosePixelsPerInch`
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
ParentFontTabOrder   �TAnimateAniPrintLeft*TopWidthHeight<	CommonAVIaviCopyFile	StopFrame  �TButtonbtOkLeftlTopxWidth� HeightCaption&OKFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrderOnClick	btOkClick  �	TsiLangRTsiLangStorageFileMR_PrintGuideReceipt.sil  	TADOQueryquTourGroup
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameIDLancamento
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT EnterDate ,Max(NumTourist) as NumTourist, Count(IDInvoice) as NumInvoices FROM%dbo.TouristGroup TourGroup (NOLOCK) ,"dbo.Invoice      Invoice (NOLOCK)  WHERE+( TourGroup.IDLancPagGuia = :IDLancamento )AND5( Invoice.IDTouristGroup = TourGroup.IDTouristGroup )AND!( Invoice.IDInvoice is not null ) GROUP BY TourGroup.EnterDate  ORDER BY TourGroup.EnterDate ASC   LeftnTop TDateTimeFieldquTourGroupEnterDate	FieldName	EnterDateOriginTouristGroup.EnterDate  TIntegerFieldquTourGroupNumTourist	FieldName
NumTouristOriginTouristGroup.NumTourist  TIntegerFieldquTourGroupNumInvoices	FieldNameNumInvoicesOriginInvoice.IDInvoice   	TADOQueryquLancamento
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameIDLancamento
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.Strings*SELECT L.DataLancamento , L.TotalQuitado , L.IDLancamento , ( G.Pessoa )  as Guide ,& ( G.PessoaLastName) as GuideLastName, ( A.Pessoa )  as Agency FROM TouristGroup TG (NOLOCK)GJoin Fin_Lancamento L (NOLOCK) on ( TG.IDLancPagGuia = L.IDLancamento )5Join Pessoa G (NOLOCK) on ( G.IDPessoa = TG.IDGuide )6Join Pessoa A (NOLOCK) on ( A.IDPessoa = TG.IDAgency ) $WHERE L.IDLancamento = :IDLancamento   Left� Top TIntegerFieldquLancamentoIDLancamento	FieldNameIDLancamento  TDateTimeFieldquLancamentoDataLancamento	FieldNameDataLancamento  TFloatFieldquLancamentoTotalQuitado	FieldNameTotalQuitado  TStringFieldquLancamentoGuide	FieldNameGuideSize2  TStringFieldquLancamentoAgency	FieldNameAgencySize2  TStringFieldquLancamentoGuideLastName	FieldNameGuideLastNameSize    