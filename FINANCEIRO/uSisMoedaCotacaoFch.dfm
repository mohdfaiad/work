�
 TSISMOEDACOTACAOFCH 0�
  TPF0�TSisMoedaCotacaoFchSisMoedaCotacaoFchLeft�TopCaptionSisMoedaCotacaoFchClientHeight� ClientWidthBPixelsPerInch`
TextHeight � TLabelLabel1Left`TopDWidthHeightCaptionDate :Color	clBtnFaceParentColor  �TLabellblValorMoedaPadraoLeftGTopgWidth7Height	AlignmenttaRightJustifyCaption
RUN TIME :Color	clBtnFaceFocusControlDBEdit2ParentColor  �TLabelLabel25Left� TopBWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel2Left� TopeWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TPanelEspacamentoEsquerdoHeightqTabOrder  �TPanelEspacamentoDireitoLeft?HeightqTabOrder  �TPanelEspacamentoSuperiorWidthBTabOrder  �TPanelpnlEspacamentoInferirorTop� WidthBTabOrder  �TPanel	pnlPBarraTop� WidthBTabOrder �TPanelpnlPBarraRightAlignLeftxWidth�  �TBitBtnbtCancelLeft� Width;  �TBitBtnbtOKLeftGWidth>  �TBitBtnbtHelpWidth>   �TPanel	pnlPLinhaWidthB   �TPanel
pnlPTituloWidthBTabOrder �TLabellblPTituloShadowWidthuCaption	Quotation  �TLabel
lblPTituloWidthuCaption	Quotation  �TPanel
pnlAutoIncLeft    �
TDBEditDBEdit2Left� TopdWidthUHeight	DataFieldValorMoedaPadrao
DataSourcedsFormTabOrder  �TdxDBDateEdit
DBDateBox1Left� TopAWidthUTabOrder 	DataFieldDataCotacao
DataSourcedsForm  �	TsiLangRTsiLangStorageFileOM_SisMoedaCotacaoFch.sil  �TDataSourcedsFormLeftTop)  �TPowerADOQueryquFormOnNewRecordquFormNewRecordCommandText�SELECT 
	MC.IDMoedaCotacao,
	MC.IDMoeda,
	MC.DataCotacao, 
	MC.ValorMoedaPadrao
FROM 
	Sis_MoedaCotacao MC
WHERE 
	( MC.IDMoedaCotacao = :IDMoedaCotacao )
ParametersNameIDMoedaCotacao
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTop* TIntegerFieldquFormIDMoedaCotacao	FieldNameIDMoedaCotacaoOriginSis_MoedaCotacao.IDMoedaCotacao  TIntegerFieldquFormIDMoeda	FieldNameIDMoedaOriginSis_MoedaCotacao.IDMoeda  TDateTimeFieldquFormDataCotacao	FieldNameDataCotacaoOriginSis_MoedaCotacao.DataCotacao  TFloatFieldquFormValorMoedaPadrao	FieldNameValorMoedaPadraoOrigin!Sis_MoedaCotacao.ValorMoedaPadrao   �TFormConfig
FormConfigSystemReadOnlyAutoIncFieldIDMoedaCotacaoLeft Toph  �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 DockControlHeights        