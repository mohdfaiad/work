�
 TSISDEPARTAMENTOFCH 0�  TPF0�TSisDepartamentoFchSisDepartamentoFchLeftkCaptionSisDepartamentoFchClientHeight� ClientWidthsPixelsPerInch`
TextHeight � TLabelLabel1Left?Top:WidthHeight	AlignmenttaRightJustifyCaptionCod :FocusControlDBEdit1  �TLabelLabel2LeftTopbWidth<Height	AlignmenttaRightJustifyCaptionDescription :FocusControlDBEdit2  �TLabelLabel3Left%Top� Width4Height	AlignmenttaRightJustifyCaption	Company :FocusControlDBEdit2  �TLabelLabel24Left� Top8WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel4Left5Top`WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel5Left5Top� WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TPanelEspacamentoEsquerdoHeight� TabOrder  �TPanelEspacamentoDireitoLeftpHeight� TabOrder  �TPanelEspacamentoSuperiorWidthsTabOrder  �TPanelpnlEspacamentoInferirorTop� WidthsTabOrder  �TPanel	pnlPBarraTop� WidthsTabOrder �TPanelpnlPBarraRightAlignLeftf �TBitBtnbtCancelLeft� WidthJ  �TBitBtnbtOKLeftmWidthM  �TBitBtnbtHelpLeftWidthM   �TPanel	pnlPLinhaWidths   �TPanel
pnlPTituloWidthsTabOrder �TLabellblPTituloShadowWidth� Caption
Department  �TLabel
lblPTituloWidth� Caption
Department  �TPanel
pnlAutoIncLeftQ   �TDBEditDBEdit1Left_Top7Width|Height	DataFieldCodigoDepartamento
DataSourcedsFormTabOrder   �TDBEditDBEdit2Left_Top_Width� Height	DataFieldDepartamento
DataSourcedsFormTabOrder  �TDBSuperComboADO	scEmpresaLeft_Top� Width� HeightTabOrderText	scEmpresaLookUpSourceDM.dsLookUpEmpresaDropDownRows	DataField	IDEmpresa
DataSourcedsForm  �	TsiLangRTsiLangStorageFileOM_SisDepartamentoFch.sil  �TPowerADOQueryquFormCommandText�SELECT 
	D.IDDepartamento,
	D.IDEmpresa, 
	D.CodigoDepartamento,
	D.Departamento
FROM 
	dbo.Sis_Departamento D
WHERE 
	( D.IDDepartamento = :IDDepartamento )
ParametersNameIDDepartamento
AttributespaSigned DataType	ftInteger	Precision
SizeValue    TIntegerFieldquFormIDDepartamento	FieldNameIDDepartamentoOriginSis_Departamento.IDDepartamento  TIntegerFieldquFormIDEmpresa	FieldName	IDEmpresaOriginSis_Departamento.IDEmpresa  TStringFieldquFormCodigoDepartamento	FieldNameCodigoDepartamentoOrigin#Sis_Departamento.CodigoDepartamento  TStringFieldquFormDepartamento	FieldNameDepartamentoOriginSis_Departamento.DepartamentoSize#   �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 Left�TopiDockControlHeights       �
TImageListilSmallButtonsLeft�Top-  �TPrintDialogPrintFchLeft�Top�    