�
 TFINBANCOFCH 0j  TPF0�TFinBancoFchFinBancoFchLeft� Top� HelpContextCaptionFinBancoFchClientHeight|ClientWidth�PixelsPerInch`
TextHeight � TLabelLabel1LeftWTop0WidthHeight	AlignmenttaRightJustifyCaptionID :FocusControlDBEdit1  �TLabelLabel2Left-TopSWidth<Height	AlignmenttaRightJustifyCaptionDescription :FocusControlDBEdit2  �TLabelLabel7Left� Top.WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel3LeftgTopQWidthHeightHintCampo obrigat�rio	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel4LeftiTopTWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TPanelEspacamentoEsquerdoHeightFTabOrder  �TPanelEspacamentoDireitoLeft�HeightFTabOrder  �TPanelEspacamentoSuperiorWidth�TabOrder  �TPanelpnlEspacamentoInferirorTopRWidth�TabOrder  �TPanel	pnlPBarraTopWWidth�TabOrder �TPanelpnlPBarraRightAlignLeft�   �TPanel	pnlPLinhaWidth�   �TPanel
pnlPTituloWidth�TabOrder �TLabellblPTituloShadowWidth;CaptionBank  �TLabel
lblPTituloWidth;CaptionBank  �TPanel
pnlAutoIncLeftv   �TPanelpnlBottomAlignTophWidth� �TPanelpnlRightSpaceLeft�  �TPageControlPPageControlWidth� �	TTabSheettsBrowseCaptionAgency �TPanelpnlBrwWidth� �TPanel	pnlBrwCmdLeft5  �TPanelpnlBrwTitleTopWidth�  �TPanelpnlBrwTitleWidth�Caption
  Branches  �	TdxDBGrid	grbFchBrwWidth1KeyFieldIDBancoAgenciaFilter.Criteria
        TdxDBGridMaskColumngrbFchBrwCodigoBancoAgenciaCaptionIDWidthi	BandIndex RowIndex 	FieldNameCodigoBancoAgencia  TdxDBGridMaskColumngrbFchBrwBancoAgenciaCaptionDescriptionWidth� 	BandIndex RowIndex 	FieldNameBancoAgencia   �TPanelpnlBrwTitleBottonWidth�      �TDBEditDBEdit1LeftnTop-Width� Height	DataFieldCodigoBanco
DataSourcedsFormTabOrder   �TDBEditDBEdit2LeftnTopPWidth� Height	DataFieldBanco
DataSourcedsFormTabOrder  �	TsiLangRTsiLangStorageFileOM_FinBancoFch.sil  �TPowerADOQueryquFormOnNewRecordquFormNewRecordCommandText�SELECT 
	B.IDBanco,
	B.CodigoBanco,
	B.Banco,
	B.System,
	B.Hidden, 
	B.Desativado
FROM 
	Fin_Banco B
WHERE 
	( B.IDBanco = :IDBanco )
ParametersNameIDBanco
AttributespaSigned DataType	ftInteger	Precision
SizeValue    TIntegerFieldquFormIDBanco	FieldNameIDBancoOriginFin_Banco.IDBanco  TStringFieldquFormCodigoBancoDisplayLabelID	FieldNameCodigoBancoOriginFin_Banco.CodigoBancoRequired	  TStringFieldquFormBancoDisplayLabelDescription	FieldNameBancoOriginFin_Banco.BancoRequired	Size#  TBooleanFieldquFormSystem	FieldNameSystemOriginFin_Banco.System  TBooleanFieldquFormHidden	FieldNameHiddenOriginFin_Banco.Hidden  TBooleanFieldquFormDesativado	FieldName
DesativadoOriginFin_Banco.Desativado   �TFormConfig
FormConfigPostOnInsert	AutoIncFieldIDBancoRequiredFields.StringsCodigoBancoBanco LeftTop�   �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 Left;Top-DockControlHeights       �TPrintDialogPrintFchLeft� Top�   �TBrowseConfigFormBrwConfigLeftdTop�   �TPowerADOQueryquFchBrwCommandText�SELECT 
	BA.IDBancoAgencia,
	BA.CodigoBancoAgencia, 
	BA.BancoAgencia,
	BA.IDBanco
FROM 
	dbo.Fin_BancoAgencia BA
WHERE 
	( BA.IDBanco = :IDBanco )
ParametersNameIDBanco
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Top�  TIntegerFieldquFchBrwIDBancoAgencia	FieldNameIDBancoAgenciaOriginFin_BancoAgencia.IDBancoAgencia  TStringFieldquFchBrwCodigoBancoAgenciaDisplayLabelC�digo	FieldNameCodigoBancoAgenciaOrigin#Fin_BancoAgencia.CodigoBancoAgencia  TStringFieldquFchBrwBancoAgenciaDisplayLabel	Descri��o	FieldNameBancoAgenciaOriginFin_BancoAgencia.BancoAgenciaSize#  TIntegerFieldquFchBrwIDBanco	FieldNameIDBancoOriginFin_BancoAgencia.IDBanco    