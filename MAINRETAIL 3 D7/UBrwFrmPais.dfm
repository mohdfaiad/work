�
 TBRWFRMPAIS 0x  TPF0�TbrwFrmPais
brwFrmPaisLeft� Top� Caption
brwFrmPaisClientHeight� ClientWidth�PixelsPerInch`
TextHeight �TPanelPanel2Width� �TImageImage1Width�  �TLabellblMenuLeft�  �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�   �TPanel
pnlAutoIncLeft�   �TPanelPanel1Top� Width� �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft   �TPanelpnlKeyWidth�Height � TLabelLabel3Left� Top-Width&HeightCaptionCodPaisFocusControlDBEdit4  �TLabelLabel4Left� TopUWidthHeightCaptionPaisFocusControlDBEdit5  �TPanelPanel4TopWidth�  TDBEditDBEdit4Left� Top<WidthHeight	DataFieldCodPais
DataSourcedsFormTabOrder  TDBEditDBEdit5Left� TopdWidth0Height	DataFieldPais
DataSourcedsFormTabOrder  TDBCheckBoxDBCheckBox1Left� Top}WidthaHeightCaption
Desativado	DataField
Desativado
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalse  TDBCheckBoxDBCheckBox2Left� Top� WidthaHeightCaptionhidden	DataFieldhidden
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalse  TDBCheckBoxDBCheckBox3Left� Top� WidthaHeightCaptionsystem	DataFieldsystem
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalse   �TPanel	pnlDetailTop?Width�Heightp TLabelLabel2LeftTopWidthJHeight	AlignmenttaRightJustifyCaptionCountry Code :FocusControlDBEdit1  TLabelLabel5Left+TopAWidth.Height	AlignmenttaRightJustifyCaption	Country :FocusControlDBEdit2  TLabelLabel1Left� TopWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel6Left�Top=WidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TDBEditDBEdit1Left]TopWidth/HeightCharCaseecUpperCase	DataFieldCodPais
DataSourcedsFormTabOrder   TDBEditDBEdit2Left\Top<Width0Height	DataFieldPais
DataSourcedsFormTabOrder   �TPanelEspacamentoEsquerdoTop?Heightp  �TPanelEspacamentoDireitoLeft�Top?Heightp  �	TsiLangRTsiLangStorageFileMR_brwFrmPais.sil  �TDataSourcedsFormLeft� Top3  �TPowerADOQueryquFormCommandText�SELECT 
	P.IDPais, 
	P.CodPais, 
	P.Pais, 
	P.Desativado, 
	P.Hidden, 
	P.System
FROM 
	Pais P
WHERE 
	P.IDPais = :IDPais

ParametersNameIDPais
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Top3 TIntegerFieldquFormIDPais	FieldNameIDPaisOriginPais.IDPais  TStringFieldquFormCodPaisDisplayLabelCountry Code	FieldNameCodPaisOriginPais.CodPaisRequired	Size  TStringField
quFormPaisDisplayLabelCountry	FieldNamePaisOrigin	Pais.PaisRequired	Size2  TBooleanFieldquFormDesativado	FieldName
DesativadoOriginPais.Desativado  TBooleanFieldquFormhidden	FieldNamehiddenOriginPais.hidden  TBooleanFieldquFormsystem	FieldNamesystemOriginPais.system   �TFormConfig
FormConfigAutoIncFieldIDPaisLeft!Top3   