�
 TFINMEIOQUITACAOFCH 0�  TPF0�TFinMeioQuitacaoFchFinMeioQuitacaoFchLeft� Top� CaptionFinMeioQuitacaoFchClientHeightClientWidth�PixelsPerInch`
TextHeight � TLabelLabel1LeftjTopDWidth(Height	AlignmenttaRightJustifyCaptionC�digo :FocusControlDBEdit1  �TLabelLabel2Left]ToplWidth5Height	AlignmenttaRightJustifyCaptionDescri��o :FocusControlDBEdit2  �TPanelEspacamentoEsquerdoHeight�   �TPanelEspacamentoDireitoLeft�Height�   �TPanelEspacamentoSuperiorWidth�  �TPanelpnlEspacamentoInferirorTop� Width�  �TPanel	pnlPBarraTop� Width� �TPanelpnlPBarraRightAlignLeft�   �TPanel	pnlPLinhaWidth�   �TPanel
pnlPTituloWidth� �TLabellblPTituloShadowWidth� CaptionMeio de Quita��o  �TLabel
lblPTituloWidth� CaptionMeio de Quita��o  �TPanel
pnlAutoIncLeft�   �TDBEditDBEdit1Left� TopAWidth� Height	DataFieldCodigoQuitacaoMeio
DataSourcedsFormTabOrder  �	TDBEditDBEdit2Left� TopiWidth� Height	DataFieldQuitacaoMeio
DataSourcedsFormTabOrder  �
TPanelPanel1Left� Top� Width� HeightV
BevelInnerbvRaised
BevelOuter	bvLoweredTabOrder TLabelLabel4LeftDTop5Width]Height	AlignmenttaRightJustifyCaptionTaxa de desconto :FocusControlTaxaDesconto  TLabelLabel3LeftITopWidthXHeight	AlignmenttaRightJustifyCaptionDias de reten��o :FocusControlDiasRetencao  TDBEditTaxaDescontoLeft� Top2WidthJHeight	DataFieldTaxaDesconto
DataSourcedsFormTabOrder   TDBEditDiasRetencaoLeft� TopWidthJHeight	DataFieldDiasRetencao
DataSourcedsFormTabOrder   �TDBCheckBoxrbVendaLeft� Top� Width� HeightCaptionDispon�vel para Venda	DataFieldVenda
DataSourcedsFormTabOrder	ValueCheckedTrueValueUncheckedFalseOnClickrbVendaClick  �	TsiLangRTsiLangStorageFileOM_FinMeioQuitacaoFch.sil  �TDataSourcedsFormLeftTop3  �TPowerADOQueryquForm	AfterOpenquFormAfterOpenCommandText�SELECT 
	QM.IDQuitacaoMeio,
	QM.CodigoQuitacaoMeio, 
	QM.QuitacaoMeio,
	QM.DiasRetencao, 
	QM.TaxaDesconto,
	QM.Venda,
	QM.Desativado,
	QM.Hidden, 
	QM.System
FROM 
	Fin_QuitacaoMeio QM
WHERE 
	( QM.IDQuitacaoMeio = :IDQuitacaoMeio )
ParametersNameIDQuitacaoMeioDataType	ftIntegerSize�Value   LeftTopk TIntegerFieldquFormIDQuitacaoMeio	FieldNameIDQuitacaoMeioOriginFin_QuitacaoMeio.IDQuitacaoMeio  TStringFieldquFormCodigoQuitacaoMeio	FieldNameCodigoQuitacaoMeioOrigin#Fin_QuitacaoMeio.CodigoQuitacaoMeio  TStringFieldquFormQuitacaoMeio	FieldNameQuitacaoMeioOriginFin_QuitacaoMeio.QuitacaoMeioSize#  TIntegerFieldquFormDiasRetencao	FieldNameDiasRetencaoOriginFin_QuitacaoMeio.DiasRetencao  TFloatFieldquFormTaxaDesconto	FieldNameTaxaDescontoOriginFin_QuitacaoMeio.TaxaDesconto  TBooleanFieldquFormVenda	FieldNameVendaOriginFin_QuitacaoMeio.Venda  TBooleanFieldquFormDesativado	FieldName
DesativadoOriginFin_QuitacaoMeio.Desativado  TBooleanFieldquFormHidden	FieldNameHiddenOriginFin_QuitacaoMeio.Hidden  TBooleanFieldquFormSystem	FieldNameSystemOriginFin_QuitacaoMeio.System   �TFormConfig
FormConfigLeftTop�   �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 DockControlHeights        