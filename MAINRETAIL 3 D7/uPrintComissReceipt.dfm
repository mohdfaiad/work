�
 TPRINTCOMISSRECEIPT 0z  TPF0�TPrintComissReceiptPrintComissReceiptLeft� Top� BorderStylebsDialogCaptionPrinting ReceiptClientHeight� ClientWidthaOldCreateOrder	OnClose	FormClosePixelsPerInch`
TextHeight � TLabellblPrintLeft
Top@WidthLHeightAutoSizeCaptionPrinting Receipt, Please WaitFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial Black
Font.StylefsBold 
ParentFont  �TPanel
pnlPrinterLeft
Top`WidthKHeight
BevelOuterbvNoneCaption5If printer does not start, check the "On Line" ButtonColorclBlackFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder   �TAnimateAniPrintLeft,TopWidthHeight<	CommonAVIaviCopyFile	StopFrame  �TButtonbtOkLeftlTopxWidth� HeightCaption&OKFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrderOnClick	btOkClick  �	TsiLangRTsiLangStorageFileMR_PrintComissReceipt.sil  	TADOQueryquLancamento
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameIDLancamento
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT L.DataLancamento , L.TotalQuitado ,L.IDLancamento , P.Pessoa as Pessoa,L.ValorNominal,P.PessoaLastName FROM Fin_Lancamento L (NOLOCK) 5Join Pessoa P (NOLOCK) on ( P.IDPessoa = L.IDPessoa ) $WHERE L.IDLancamento = :IDLancamento   Left� Top TDateTimeFieldquLancamentoDataLancamento	FieldNameDataLancamentoOrigin$RETAIL.Fin_Lancamento.DataLancamento  TFloatFieldquLancamentoTotalQuitado	FieldNameTotalQuitadoOrigin"RETAIL.Fin_Lancamento.TotalQuitado  TIntegerFieldquLancamentoIDLancamento	FieldNameIDLancamentoOrigin"RETAIL.Fin_Lancamento.IDLancamento  TStringFieldquLancamentoPessoa	FieldNamePessoaOriginRETAIL.Pessoa.PessoaSize2  TFloatFieldquLancamentoValorNominal	FieldNameValorNominalOrigin"RETAIL.Fin_Lancamento.ValorNominalDisplayFormat#,##0.00  TStringFieldquLancamentoPessoaLastName	FieldNamePessoaLastNameOriginRETAIL.Pessoa.PessoaLastNameSize    