�
 TFCHCOSTTYPE 0�	  TPF0�TFchCostTypeFchCostTypeLeft� Top� CaptionFchCostTypeClientHeight� ClientWidth�PixelsPerInch`
TextHeight �TPanelPanel2Width� �TImageImage1Width�   �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�   �TPanel
pnlAutoIncLeft�   �TPanelPanel1Top� Width� �TLabellblUserNameWidthc  �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft� Width�  �TButtonbtCancelLeft� WidthE  �TButtonbtCloseWidthECaption&OK    �TPanelpnlKeyWidth�Height � TLabelLabel1Left)TopWidthFHeight	AlignmenttaRightJustifyCaptionID Cost Type :FocusControlDBEdit1  �TPanelPanel4TopWidth�  TDBEditDBEdit1LefttTop	Width@Height	DataField
IDCostType
DataSourcedsFormTabOrder   �TPanel	pnlDetailTopFWidth�Height} TLabelLabel2Left3TopWidth8Height	AlignmenttaRightJustifyCaptionCost Type :FocusControlDBEdit2  TLabelLabel3Left$TopNWidthGHeight	AlignmenttaRightJustifyCaptionDefault Value :FocusControlDBEdit3  TLabelLabel5LeftiTopWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel4Left� TopKWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TDBEditDBEdit2LeftpTopWidth� Height	DataFieldCostType
DataSourcedsFormTabOrder   TDBEditDBEdit3LeftpTopIWidth@Height	DataFieldDefaultValue
DataSourcedsFormTabOrder   �TPanelEspacamentoEsquerdoTopFHeight}  �TPanelEspacamentoDireitoLeft�TopFHeight}  �	TsiLangRTsiLangStorageFileMR_FchCostType.sil  �TDataSourcedsFormLeft� Top3  �TPowerADOQueryquForm
CursorTypectStaticCommandText�SELECT
        IDCostType,
        CostType,
        DefaultValue
FROM
        CostType CostType
WHERE
        IDCostType = :IDCostType
 

ParametersName
IDCostType
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Top4 TIntegerFieldquFormIDCostType	FieldName
IDCostTypeOriginCostType.IDCostType  TStringFieldquFormCostTypeDisplayLabel	Cost Type	FieldNameCostTypeOriginCostType.CostTypeRequired	Size2  TFloatFieldquFormDefaultValueDisplayLabelDefault Value	FieldNameDefaultValueOriginCostType.IDCostTypeRequired	DisplayFormat#,##0.00currency	   �TFormConfig
FormConfigAutoIncField
IDCostTypeLeft	Topt   