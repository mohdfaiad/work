�
 TFINDOCUMENTODESDOBRAMENTOFCH 02"  TPF0�TFinDocumentoDesdobramentoFchFinDocumentoDesdobramentoFchLeft� Top� CaptionFinDocumentoDesdobramentoFchClientHeight� ClientWidth\
ParentFont	PixelsPerInch`
TextHeight � TLabelLabel1LeftHTop:Width4Height	AlignmenttaRightJustifyCaption
Due Date :  �TLabelLabel2LeftPTop]Width,Height	AlignmenttaRightJustifyCaptionAmount :FocusControlDBEdit2  �TLabelLabel3LeftPTop� Width,Height	AlignmenttaRightJustifyCaptionNumber :FocusControleditNumDesdobramento  �TLabelLabel7Left� Top8WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel4Left� Top[WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel5LeftTop~WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TPanelEspacamentoEsquerdoHeight� TabOrder  �TPanelEspacamentoDireitoLeftYHeight� TabOrder  �TPanelEspacamentoSuperiorWidth\TabOrder  �TPanelpnlEspacamentoInferirorTop� Width\TabOrder  �TPanel	pnlPBarraTop� Width\TabOrder �TPanelpnlPBarraRightAlignLeftO �TBitBtnbtCancelLeft� Width>  �TBitBtnbtOKLeft� WidthA  �TBitBtnbtHelpLeft<WidthA   �TPanel	pnlPLinhaWidth\   �TPanel
pnlPTituloWidth\TabOrder �TLabellblPTituloShadowWidthnCaption	Duplicata  �TLabel
lblPTituloWidthnCaption	Duplicata  �TPanel
pnlAutoIncLeft:   �TDBEditDBEdit2Left� TopZWidth[Height	DataFieldValorNominal
DataSourcedsFormTabOrder  �TDBEditeditNumDesdobramentoLeft� Top}Width� Height	DataFieldNumDesdobramento
DataSourcedsFormTabOrder  �TdxDBDateEdit
DBDateBox1Left� Top7Width[TabOrder 	DataFieldDataVencimento
DataSourcedsForm  �	TsiLangRTsiLangStorageFile#OM_FinDocumentoDesdobramentoFch.sil  �TDataSourcedsFormLeft-Top.  �TPowerADOQueryquFormOnNewRecordquFormNewRecordCommandText�  SELECT IDLancamento , Previsao , 
 IDBancoAgenciaQuitPrev , IDEmpresa , 
 IDBancoQuitPrev , IDDesdobramentoTipo , 
 IDMoedaCotacao , IDMoeda , 
 IDUsuarioAprovacao , DataAprovacao , 
 IDCentroCusto , IDPessoaTipo , Situacao , 
 IDPessoa , DataLancamento , 
 IDLancamentoTipo , DataVencimento , 
 DataInicioQuitacao , DataFimQuitacao , 
 DataProtesto , Pagando , ValorNominal , 
 TotalQuitado , TotalJuros ,  
 NumDocumento , NumDesdobramento , 
 NumMeioQuitPrevisto , 
 IDQuitacaoMeioPrevisto , 
 IDContaCorrentePrevista , Desativado , 
 Hidden , System , IDUsuarioLancamento , 
 IDUsuarioProtesto , NumeroDuplicata , 
 MoedaSigla , IDLancamentoOriginal , 
 NumeroRepeticoes , 
 PeriodicidadeRepeticoes , 
 DiaRepeticoes , DataPrimeiraRepeticao , 
 DataEmissao , DataFaturamento , 
 DataVencimentoOriginal , 
 Historico , FavorecidoPrevisto , 
 IDDocumentoTipo
FROM 
	Fin_Lancamento Fin_Lancamento
WHERE 
	( IDLancamento = :IDLancamento )

ParametersNameIDLancamento
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left Top% TIntegerFieldquFormIDLancamento	FieldNameIDLancamentoOriginFin_Lancamento.IDLancamento  TBooleanFieldquFormPrevisao	FieldNamePrevisaoOriginFin_Lancamento.Previsao  TIntegerFieldquFormIDBancoAgenciaQuitPrev	FieldNameIDBancoAgenciaQuitPrevOrigin%Fin_Lancamento.IDBancoAgenciaQuitPrev  TIntegerFieldquFormIDEmpresa	FieldName	IDEmpresaOriginFin_Lancamento.IDEmpresa  TIntegerFieldquFormIDBancoQuitPrev	FieldNameIDBancoQuitPrevOriginFin_Lancamento.IDBancoQuitPrev  TIntegerFieldquFormIDDesdobramentoTipo	FieldNameIDDesdobramentoTipoOrigin"Fin_Lancamento.IDDesdobramentoTipo  TIntegerFieldquFormIDMoedaCotacao	FieldNameIDMoedaCotacaoOriginFin_Lancamento.IDMoedaCotacao  TIntegerFieldquFormIDMoeda	FieldNameIDMoedaOriginFin_Lancamento.IDMoeda  TIntegerFieldquFormIDUsuarioAprovacao	FieldNameIDUsuarioAprovacaoOrigin!Fin_Lancamento.IDUsuarioAprovacao  TDateTimeFieldquFormDataAprovacao	FieldNameDataAprovacaoOriginFin_Lancamento.DataAprovacao  TIntegerFieldquFormIDCentroCusto	FieldNameIDCentroCustoOriginFin_Lancamento.IDCentroCusto  TIntegerFieldquFormIDPessoaTipo	FieldNameIDPessoaTipoOriginFin_Lancamento.IDPessoaTipo  TIntegerFieldquFormSituacao	FieldNameSituacaoOriginFin_Lancamento.Situacao  TIntegerFieldquFormIDPessoa	FieldNameIDPessoaOriginFin_Lancamento.IDPessoa  TDateTimeFieldquFormDataLancamento	FieldNameDataLancamentoOriginFin_Lancamento.DataLancamento  TIntegerFieldquFormIDLancamentoTipo	FieldNameIDLancamentoTipoOriginFin_Lancamento.IDLancamentoTipo  TDateTimeFieldquFormDataVencimento	FieldNameDataVencimentoOriginFin_Lancamento.DataVencimento  TDateTimeFieldquFormDataInicioQuitacao	FieldNameDataInicioQuitacaoOrigin!Fin_Lancamento.DataInicioQuitacao  TDateTimeFieldquFormDataFimQuitacao	FieldNameDataFimQuitacaoOriginFin_Lancamento.DataFimQuitacao  TDateTimeFieldquFormDataProtesto	FieldNameDataProtestoOriginFin_Lancamento.DataProtesto  TBooleanFieldquFormPagando	FieldNamePagandoOriginFin_Lancamento.Pagando  TFloatFieldquFormValorNominal	FieldNameValorNominalOriginFin_Lancamento.ValorNominal  TFloatFieldquFormTotalQuitado	FieldNameTotalQuitadoOriginFin_Lancamento.TotalQuitado  TFloatFieldquFormTotalJuros	FieldName
TotalJurosOriginFin_Lancamento.TotalJuros  TStringFieldquFormNumDocumento	FieldNameNumDocumentoOriginFin_Lancamento.NumDocumento  TStringFieldquFormNumDesdobramento	FieldNameNumDesdobramentoOriginFin_Lancamento.NumDesdobramento  TStringFieldquFormNumMeioQuitPrevisto	FieldNameNumMeioQuitPrevistoOrigin"Fin_Lancamento.NumMeioQuitPrevisto  TIntegerFieldquFormIDQuitacaoMeioPrevisto	FieldNameIDQuitacaoMeioPrevistoOrigin%Fin_Lancamento.IDQuitacaoMeioPrevisto  TIntegerFieldquFormIDContaCorrentePrevista	FieldNameIDContaCorrentePrevistaOrigin&Fin_Lancamento.IDContaCorrentePrevista  TBooleanFieldquFormDesativado	FieldName
DesativadoOriginFin_Lancamento.Desativado  TBooleanFieldquFormHidden	FieldNameHiddenOriginFin_Lancamento.Hidden  TBooleanFieldquFormSystem	FieldNameSystemOriginFin_Lancamento.System  TIntegerFieldquFormIDUsuarioLancamento	FieldNameIDUsuarioLancamentoOrigin"Fin_Lancamento.IDUsuarioLancamento  TIntegerFieldquFormIDUsuarioProtesto	FieldNameIDUsuarioProtestoOrigin Fin_Lancamento.IDUsuarioProtesto  TStringFieldquFormNumeroDuplicata	FieldNameNumeroDuplicataOriginFin_Lancamento.NumeroDuplicata  TStringFieldquFormMoedaSigla	FieldName
MoedaSiglaOriginFin_Lancamento.MoedaSiglaSize#  TIntegerFieldquFormIDLancamentoOriginal	FieldNameIDLancamentoOriginalOrigin#Fin_Lancamento.IDLancamentoOriginal  TIntegerFieldquFormNumeroRepeticoes	FieldNameNumeroRepeticoesOriginFin_Lancamento.NumeroRepeticoes  TIntegerFieldquFormPeriodicidadeRepeticoes	FieldNamePeriodicidadeRepeticoesOrigin&Fin_Lancamento.PeriodicidadeRepeticoes  TIntegerFieldquFormDiaRepeticoes	FieldNameDiaRepeticoesOriginFin_Lancamento.DiaRepeticoes  TDateTimeFieldquFormDataPrimeiraRepeticao	FieldNameDataPrimeiraRepeticaoOrigin$Fin_Lancamento.DataPrimeiraRepeticao  TDateTimeFieldquFormDataEmissao	FieldNameDataEmissaoOriginFin_Lancamento.DataEmissao  TDateTimeFieldquFormDataFaturamento	FieldNameDataFaturamentoOriginFin_Lancamento.DataFaturamento  TDateTimeFieldquFormDataVencimentoOriginal	FieldNameDataVencimentoOriginalOrigin%Fin_Lancamento.DataVencimentoOriginal  TIntegerFieldquFormIDNotaFiscalServico	FieldNameIDNotaFiscalServicoOrigin"Fin_Lancamento.IDNotaFiscalServico  TStringFieldquFormFavorecidoPrevisto	FieldNameFavorecidoPrevistoOrigin!Fin_Lancamento.FavorecidoPrevistoSizeA  TIntegerFieldquFormIDDocumentoTipo	FieldNameIDDocumentoTipoOriginFin_Lancamento.IDDocumentoTipo  TIntegerFieldquFormIDCompra	FieldNameIDCompraOriginFin_Lancamento.IDCompra  
TMemoFieldquFormHistorico	FieldName	HistoricoOriginFin_Lancamento.HistoricoBlobTypeftMemoSize   �TFormConfig
FormConfigAutoCodeGenSystemReadOnlyAutoIncFieldIDLancamentoLeftTopY  �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 Left
Top#DockControlHeights       �
TImageListilSmallButtonsTopi  �TPrintDialogPrintFchLeft   