�
 TFCHTRAJETO 0�  TPF0�TFchTrajeto
FchTrajetoLeft� Top� Caption
FchTrajetoClientHeight	ClientWidth�PixelsPerInch`
TextHeight � TLabelLabel7Left� Top� Width"HeightCaptionMinPax  �TPanelPanel2Width�TabOrder �TImageImage1Width�  �TLabellblMenuLeft  �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�   �TPanel
pnlAutoIncLeft�   �TPanelPanel1Top� Width�TabOrder �TLabellblUserNameWidth�   �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft� Width�    �TPanelpnlKeyWidth�Height# � TLabelLabel1LeftVTop
Width2Height	AlignmenttaRightJustifyCaption
ID Route :FocusControlDBEdit1  �TPanelPanel4Top!Width�  TDBEditDBEdit1Left� TopWidth@HeightTabStop	DataField	IDTrajeto
DataSourcedsFormTabOrder   �TPanel	pnlDetailTopPWidth�Height� TabOrder TPanelPanel5Left TopWidth�Height� AlignalBottom
BevelOuterbvNoneColor��� TabOrder  TLabelLabel19Left Top Width�HeightAlignalTop	AlignmenttaCenterAutoSizeCaption
Route InfoColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold ParentColor
ParentFont  TLabelLabel2LeftaTopWidth$Height	AlignmenttaRightJustifyCaptionRoute :FocusControlDBEdit2  TLabelLabel18LeftsTopWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel3LeftHTop7Width=Height	AlignmenttaRightJustifyCaptionDriver Cost :FocusControlDBEdit3  TLabelLabel5Left� Top3WidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel4LeftSTopQWidth2Height	AlignmenttaRightJustifyCaption
Gas Cost :FocusControlDBEdit4  TLabelLabel6Left� TopNWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel8Left@TopiWidthDHeight	AlignmenttaRightJustifyCaptionMinimum Pax :FocusControlDBEdit4  TDBEditDBEdit2Left� TopWidth� Height	DataFieldTrajeto
DataSourcedsFormTabOrder   TDBEditDBEdit3Left� Top2Width@Height	DataFieldCustoMotorista
DataSourcedsFormTabOrder  TDBEditDBEdit4Left� TopMWidth@Height	DataFieldCustoGasolina
DataSourcedsFormTabOrder  TDBEditDBEdit5Left� TopeWidth@Height	DataFieldMinPax
DataSourcedsFormTabOrder    �TPanelEspacamentoEsquerdoTopPHeight� TabOrder  �TPanelEspacamentoDireitoLeft�TopPHeight� TabOrder  �	TsiLangRTsiLangStorageFileMR_FchTrajeto.sil  �TDataSourcedsFormLeftTop�   �TPowerADOQueryquForm
CursorTypectStaticCommandText�SELECT
        IDTrajeto,
        Trajeto,
        CustoMotorista,
        CustoGasolina,
        MinPax
FROM
        Trajeto Trajeto
WHERE
        IDTrajeto = :IDTrajeto
 

ParametersName	IDTrajeto
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTop\ TIntegerFieldquFormIDTrajeto	FieldName	IDTrajetoOriginTrajeto.IDTrajeto  TStringFieldquFormTrajetoDisplayLabelRoute	FieldNameTrajetoOriginTrajeto.TrajetoRequired	Size2  TFloatFieldquFormCustoMotoristaDisplayLabelDriver Cost	FieldNameCustoMotoristaOriginTrajeto.CustoMotoristaRequired	DisplayFormat#,##0.00currency	  TFloatFieldquFormCustoGasolinaDisplayLabelGas Cost	FieldNameCustoGasolinaOriginTrajeto.IDTrajetoRequired	DisplayFormat#,##0.00currency	  TIntegerFieldquFormMinPax	FieldNameMinPaxOrigin"dbo.Trajeto".IDTrajeto   �TFormConfig
FormConfigAutoIncField	IDTrajetoLeftTop.   