�
 TFINDESDOBRAMENTOTIPOFCH 0�  TPF0�TFinDesdobramentoTipoFchFinDesdobramentoTipoFchLeft� Top� CaptionFinDesdobramentoTipoFchClientHeight ClientWidth�PixelsPerInch`
TextHeight � TLabelLabel1LeftRTop{Width<Height	AlignmenttaRightJustifyCaptionDescription :FocusControlDBEdit1Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  �TLabelLabel2Left|TopXWidthHeight	AlignmenttaRightJustifyCaptionID :FocusControlDBEdit2Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  �TLabelLabel3Left[Top� Width3Height	AlignmenttaRightJustifyCaptionIdentifier :FocusControlDBEdit3  �TLabelLabel4Left<Top5WidthRHeight	AlignmenttaRightJustifyCaptionDocument Type :FocusControlDBEdit2  �TLabelLabel6Left� Top� Width� HeightAutoSizeCaptionLeave blank if not known.Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontWordWrap	  �TLabelLabel5LefthTop3WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel7LeftTopVWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel8LefthTopyWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TPanelEspacamentoEsquerdoHeight� TabOrder  �TPanelEspacamentoDireitoLeft�Height� TabOrder  �TPanelEspacamentoSuperiorWidth�TabOrder  �TPanelpnlEspacamentoInferirorTop� Width�TabOrder  �TPanel	pnlPBarraTop� Width�TabOrder �TPanelpnlPBarraRightAlignLeft�   �TPanel	pnlPLinhaWidth�   �TPanel
pnlPTituloWidth�TabOrder	 �TLabellblPTituloShadowWidth� CaptionType of Disbursement  �TLabel
lblPTituloWidth� CaptionType of Disbursement  �TPanel
pnlAutoIncLeft�   �TDBEditDBEdit1Left� TopxWidth� Height	DataFieldDesdobramentoTipo
DataSourcedsFormFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder  �TDBEditDBEdit2Left� TopUWidth|Height	DataFieldCodigoDesdobramentoTipo
DataSourcedsFormFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder  �TDBEditDBEdit3Left� Top� Width|Height	DataFieldIdentificadorDesdobramento
DataSourcedsFormTabOrder  �TDBSuperComboADODBSuperCombo1Left� Top2Width� HeightTabOrder TextDBSuperCombo1LookUpSourceDM.dsLUDocumentoTipoDropDownRows	DataFieldIDDocumentoTipo
DataSourcedsForm  �	TsiLangRTsiLangStorageFileOM_FinDesdobramentoTipoFch.sil  �TDataSourcedsFormLeft�Top`  �TPowerADOQueryquForm
BeforePostquFormBeforePostOnNewRecordquFormNewRecordCommandText  SELECT 
	DT.IDDesdobramentoTipo,
	DT.IDDocumentoTipo, 
	DT.DesdobramentoTipo, 
	DT.CodigoDesdobramentoTipo, 
	DT.IdentificadorDesdobramento,
	DT.Hidden, 
	DT.System,
	DT.Desativado
FROM 
	Fin_DesdobramentoTipo DT
WHERE 
	( DT.IDDesdobramentoTipo = :IDDesdobramentoTipo )
ParametersNameIDDesdobramentoTipo
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left�Top�  TIntegerFieldquFormIDDesdobramentoTipo	FieldNameIDDesdobramentoTipoOrigin)Fin_DesdobramentoTipo.IDDesdobramentoTipo  TIntegerFieldquFormIDDocumentoTipoDisplayLabelDocument Type	FieldNameIDDocumentoTipoOrigin%Fin_DesdobramentoTipo.IDDocumentoTipoRequired	  TStringFieldquFormCodigoDesdobramentoTipoDisplayLabelID	FieldNameCodigoDesdobramentoTipoOrigin-Fin_DesdobramentoTipo.CodigoDesdobramentoTipoRequired	  TStringFieldquFormDesdobramentoTipoDisplayLabelDescription	FieldNameDesdobramentoTipoOrigin'Fin_DesdobramentoTipo.DesdobramentoTipoRequired	Size#  TStringField quFormIdentificadorDesdobramentoDisplayLabel
Identifier	FieldNameIdentificadorDesdobramentoOrigin0Fin_DesdobramentoTipo.IdentificadorDesdobramento  TBooleanFieldquFormHidden	FieldNameHiddenOriginFin_DesdobramentoTipo.Hidden  TBooleanFieldquFormSystem	FieldNameSystemOriginFin_DesdobramentoTipo.System  TBooleanFieldquFormDesativado	FieldName
DesativadoOrigin Fin_DesdobramentoTipo.Desativado   �TFormConfig
FormConfigEntidadeNomeType of DisbursementAutoIncFieldIDDesdobramentoTipoLeft�Top,  �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 LeftTop� DockControlHeights       �
TImageListilSmallButtonsLeft�Top�   �TPrintDialogPrintFchLeftTop_   