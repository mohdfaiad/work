�
 TFINCENTROCUSTOFCH 0�  TPF0�TFinCentroCustoFchFinCentroCustoFchLeft� Top� HelpContext CaptionFinCentroCustoFchClientHeight� ClientWidth�PixelsPerInch`
TextHeight � TLabelLabel1Left6Top>Width Height	AlignmenttaRightJustifyCaptionCode :FocusControlDBEdit1  �TLabelLabel2LeftTopfWidth<Height	AlignmenttaRightJustifyCaptionDescription :FocusControlDBEdit2  �TLabelLabel7Left� Top=WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel5LeftSTopeWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TPanelEspacamentoEsquerdoHeight� TabOrder  �TPanelEspacamentoDireitoLeft�Height� TabOrder  �TPanelEspacamentoSuperiorWidth�TabOrder  �TPanelpnlEspacamentoInferirorTop� Width�TabOrder  �TPanel	pnlPBarraTop� Width�TabOrder �TPanelpnlPBarraRightAlignLeft�   �TPanel	pnlPLinhaWidth�   �TPanel
pnlPTituloWidth�TabOrder �TLabellblPTituloShadowWidth� CaptionCost Center  �TLabel
lblPTituloWidth� CaptionCost Center  �TPanel
pnlAutoIncLeft�   �
TDBEditDBEdit1LeftZTop<Width� Height	DataFieldCodigoCentroCusto
DataSourcedsFormTabOrder   �TDBEditDBEdit2LeftZTopdWidth� Height	DataFieldCentroCusto
DataSourcedsFormTabOrder  �	TsiLangRTsiLangStorageFileOM_FinCentroCustoFch.sil  �TPowerADOQueryquFormOnNewRecordquFormNewRecordCommandText�SELECT 
	CC.IDCentroCusto,
	CC.CodigoCentroCusto, 
	CC.CentroCusto,
	CC.Desativado, 
	CC.Hidden,
	CC.System, 
	CC.IDCentroCustoParent
FROM 
	Fin_CentroCusto CC
WHERE 
	( CC.IDCentroCusto = :IDCentroCusto )
ParametersNameIDCentroCusto
AttributespaSigned DataType	ftInteger	Precision
SizeValue    TIntegerFieldquFormIDCentroCusto	FieldNameIDCentroCustoOriginFin_CentroCusto.IDCentroCusto  TStringFieldquFormCodigoCentroCustoDisplayLabelCode	FieldNameCodigoCentroCustoOrigin!Fin_CentroCusto.CodigoCentroCustoRequired	  TStringFieldquFormCentroCustoDisplayLabelDescription	FieldNameCentroCustoOriginFin_CentroCusto.CentroCustoRequired	Size#  TBooleanFieldquFormDesativado	FieldName
DesativadoOriginFin_CentroCusto.Desativado  TBooleanFieldquFormHidden	FieldNameHiddenOriginFin_CentroCusto.Hidden  TBooleanFieldquFormSystem	FieldNameSystemOriginFin_CentroCusto.System  TIntegerFieldquFormIDCentroCustoParent	FieldNameIDCentroCustoParentOrigin,RETAILDB.Fin_CentroCusto.IDCentroCustoParent   �TFormConfig
FormConfigAutoIncFieldIDCentroCustoUniqueFields.StringsCodigoCentroCustoCentroCusto   �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 DockControlHeights        