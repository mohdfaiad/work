�
 TBRWFRMMIDIA 0O  TPF0�TbrwFrmMidiabrwFrmMidiaLeft� Top� CaptionMediasClientHeightUClientWidth�PixelsPerInch`
TextHeight �TPanelPanel2Width�TabOrder  �TImageImage1Width�   �TLabellblMenuLeft  �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�   �TPanel
pnlAutoIncLeft�   �TPanelPanel1Top,Width�TabOrder �TLabellblUserNameLeftsTopWidthh  �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft� Width�  �TSpeedButtonspHelpLeft  �TSpeedButtonbtnVideoLeft  �TButtonbtCancelLeft� Width5  �TButtonbtCloseLeftEWidth9Caption&OK   �TPanelpnlNavigationWidtht   �TPanelpnlKeyWidth�TabOrder � TLabelIDMidiaLeft&TopWidth7Height	AlignmenttaRightJustifyCaption	IDMedia :FocusControlDBEdit1  �TPanelPanel4Width�  TDBEditDBEdit1LeftaTop
Width@HeightTabStop	DataFieldIDMedia
DataSourcedsFormTabOrder   �TPanel	pnlDetailWidth�Height� TabOrder TPanelPanel5Left Top Width�Height� 
BevelOuterbvNoneColor��� TabOrder  TLabelLabel19Left Top Width�HeightAlignalTop	AlignmenttaCenterAutoSizeCaption
Media InfoColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold ParentColor
ParentFont  TLabelLabel2Left-TopWidth+Height	AlignmenttaRightJustifyCaptionMedia :FocusControlDBEdit2  TLabelLabel1Left5Top� WidthrHeightCaptionOther Commission :FocusControlDBEdit2  TLabelLabel21LeftZTopWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TDBEditDBEdit2Left^TopWidth� Height	DataFieldMedia
DataSourcedsFormTabOrder   TDBRadioGroupDBRadioGroup1Left^Top?Width� HeightGCaptionTax Exempt Mode 	DataFieldTaxMode
DataSourcedsFormItems.StringsOnly manager can exemptSales Person can exemptAlways exempt TabOrderValues.Strings123   TDBCheckBoxDBCheckBox1Left^Top� Width8HeightCaption0Sales Person receives commission with this Media	DataFieldPayComission
DataSourcedsFormTabOrderValueChecked1ValueUnchecked0  TDBSuperComboADODBSuperCombo1Left^Top� Width� HeightTabOrderTextDBSuperCombo1FilterSugest	LookUpSourceDM.dsLookUpOtherDropDownRows
IDLanguage 	DataFieldIDOtherCommission
DataSourcedsForm    �TPanelEspacamentoEsquerdoHeight� TabOrder  �TPanelEspacamentoDireitoLeft�Height� TabOrder  �	TsiLangRTsiLangStorageFileMR_BrwFrmMidia.sil  �TDataSourcedsFormLeft� Top'  �TPowerADOQueryquFormOnNewRecordquFormNewRecordCommandText�SELECT 
	M.IDMedia, 
	M.Media, 
	M.TaxMode,
	M.PayComission, 
	M.IDOtherCommission
FROM 
	Media M
WHERE 
	M.IDMedia = :IDMedia
ParametersNameIDMedia
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTop' TIntegerFieldquFormIDMedia	FieldNameIDMedia  TStringFieldquFormMedia	FieldNameMediaRequired	Size�   TIntegerFieldquFormTaxMode	FieldNameTaxModeOriginMedia.IDMedia  TIntegerFieldquFormPayComission	FieldNamePayComissionOriginMedia.IDMedia  TIntegerFieldquFormIDOtherCommission	FieldNameIDOtherCommissionOriginMedia.IDMedia   �TFormConfig
FormConfigAutoIncFieldIDMediaLeft� Top(   