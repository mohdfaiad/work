�
 TSISMOEDAFCH 0t  TPF0�TSisMoedaFchSisMoedaFchLefteTop� CaptionSisMoedaFchClientHeight�ClientWidth�PixelsPerInch`
TextHeight � TLabelLabel1LeftGTop5WidthHeight	AlignmenttaRightJustifyCaptionCod :FocusControlDBEdit1  �TLabelLabel2Left.TopXWidth3Height	AlignmenttaRightJustifyCaption
Currency :FocusControlDBEdit2  �TLabelLabel3Left0Top{Width1Height	AlignmenttaRightJustifyCaption	Acronym :FocusControlDBEdit3  �TLabelLabel25Left� Top3WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel4Left^TopVWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel5Left� TopyWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TPanelEspacamentoEsquerdoHeight� TabOrder  �TPanelEspacamentoDireitoLeftHeight� TabOrder  �TPanelEspacamentoSuperiorWidth�TabOrder  �TPanelpnlEspacamentoInferirorTopmWidth�TabOrder  �TPanel	pnlPBarraToprWidth�TabOrder	 �TPanelpnlPBarraRightAlignLeftu  �TPanel	pnlPLinhaWidth�   �TPanel
pnlPTituloWidth�TabOrder
 �TLabellblPTituloShadowWidthhCaptionCurrency  �TLabel
lblPTituloWidthhCaptionCurrency  �TPanel
pnlAutoIncLeft`   �TDBEditDBEdit1LeftdTop2Width� Height	DataFieldCodigoMoeda
DataSourcedsFormTabOrder   �TDBEditDBEdit2LeftdTopUWidth� Height	DataFieldMoeda
DataSourcedsFormTabOrder  �TDBEditDBEdit3LeftdTopxWidth� Height	DataFieldSigla
DataSourcedsFormTabOrder  �TPanelpnlBottomAlignTop� Width�Height�  �TPanelpnlRightSpaceLeft~Height�   �TPanelpnlLeftSpaceHeight�   �TPageControlPPageControlWidthzHeight�  �	TTabSheettsBrowse �TPanelpnlBrwWidthrHeight�  �TPanel	pnlBrwCmdLeftHeight~ �TImageImgTrashTop8  �TImage	imgFolderTop[   �TPanelpnlBrwTitleTopWidthr  �TPanelpnlBrwTitleWidthrCaption  Quotation  �	TdxDBGrid	grbFchBrwWidthHeight~KeyFieldIDMoedaCotacaoFilter.Criteria
        TdxDBGridDateColumngrbFchBrwDataCotacaoCaptionDateWidth� 	BandIndex RowIndex 	FieldNameDataCotacao  TdxDBGridMaskColumngrbFchBrwValorMoedaPadraoWidth� 	BandIndex RowIndex 	FieldNameValorMoedaPadrao   �TPanelpnlBrwTitleBottonTop� Widthr  �TPanelpnlBrwEspacoEsquerdoHeight~      �TDBCheckBoxcbPadraoLeftdTop� Width� HeightCaptionMoeda de Refer�ncia	DataFieldMoedaPadrao
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalseOnClickcbPadraoClick  �	TsiLangRTsiLangStorageFileOM_SisMoedaFch.sil  �TDataSourcedsFormLeft�Top)  �TPowerADOQueryquFormOnNewRecordquFormNewRecordCommandText�SELECT 
	M.IDMoeda,
	M.CodigoMoeda,
	M.Moeda,
	M.MoedaPadrao, 
	M.Sigla,
	M.ValorMoedaPadrao,
	M.DataCotacao
FROM 
	Sis_Moeda M
WHERE 
	( M.IDMoeda = :IDMoeda )

ParametersNameIDMoeda
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTop* TIntegerFieldquFormIDMoeda	FieldNameIDMoedaOriginSis_Moeda.IDMoeda  TStringFieldquFormCodigoMoeda	FieldNameCodigoMoedaOriginSis_Moeda.CodigoMoeda  TStringFieldquFormMoeda	FieldNameMoedaOriginSis_Moeda.MoedaSize#  TStringFieldquFormSigla	FieldNameSiglaOriginSis_Moeda.Sigla  TFloatFieldquFormValorMoedaPadrao	FieldNameValorMoedaPadraoOriginSis_Moeda.ValorMoedaPadrao  TDateTimeFieldquFormDataCotacao	FieldNameDataCotacaoOriginSis_Moeda.DataCotacao  TBooleanFieldquFormMoedaPadrao	FieldNameMoedaPadraoOriginSis_Moeda.IDMoeda   �TFormConfig
FormConfigAutoIncFieldIDMoedaLeft�Top,  �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 Left+TopdDockControlHeights       �TPrintDialogPrintFchLeft�Topd  �TBrowseConfigFormBrwConfigMostraDesativadoSTD_AMBOSDESATIVADOMostraHiddenSTD_AMBOSHIDDENCheckSystemOnDeleteRealDeletion	LeftTop�   �TPowerADOQueryquFchBrwCommandText�SELECT
      MC.IDMoedaCotacao ,
      MC.IDMoeda ,
      MC.DataCotacao ,
      MC.ValorMoedaPadrao
FROM
      Sis_MoedaCotacao MC
WHERE
      IDMoeda = :IDMoeda
ORDER BY
      DataCotacao desc

ParametersNameIDMoeda
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTopZ TIntegerFieldquFchBrwIDMoedaCotacao	FieldNameIDMoedaCotacaoOriginSis_MoedaCotacao.IDMoedaCotacao  TIntegerFieldquFchBrwIDMoeda	FieldNameIDMoedaOriginSis_MoedaCotacao.IDMoeda  TDateTimeFieldquFchBrwDataCotacaoDisplayLabelData	FieldNameDataCotacaoOriginSis_MoedaCotacao.DataCotacao  TFloatFieldquFchBrwValorMoedaPadraoDisplayLabelRUN TIME	FieldNameValorMoedaPadraoOrigin!Sis_MoedaCotacao.ValorMoedaPadrao   �TDataSourcedsFchBrwLeft+Top#   