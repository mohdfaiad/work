�
 TBRWFRMDELIVERTYPE 0�  TPF0�TbrwFrmDeliverTypebrwFrmDeliverTypeLeft� Top� CaptionSystem User'sClientHeightUClientWidth�PixelsPerInch`
TextHeight �TPanelPanel2Width�TabOrder �TImageImage1Width�   �TLabellblMenuLeft,  �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�   �TPanel
pnlAutoIncLeft�   �TPanelPanel1Top,Width�TabOrder �TLabellblUserNameLeftoWidthl  �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft<Width�  �TSpeedButtonspHelpLeft Width;  �TSpeedButtonbtnVideoLeft Width;  �TButtonbtCancelLeftvWidth8TabStop  �TButtonbtCloseLeft=Width5Caption&OK   �TPanelpnlNavigationWidthl �TSpeedButton
btFirstRecLeft  �TSpeedButton
btPriorRecLeft  �TSpeedButton	btNextRecLeft5  �TSpeedButton	btLastRecLeftN    �TPanelpnlKeyWidth�Height# � TLabelLabel1LeftaTop
WidthKHeight	AlignmenttaRightJustifyCaptionIDDeliverType :FocusControlDBEdit1  �TPanelPanel4Top!Width�  TDBEditDBEdit1Left� TopWidth@HeightTabStop	DataFieldIDDeliverType
DataSourcedsFormTabOrder   �TPanel	pnlDetailTopKWidth�Height� TabOrder TPanelPanel5Left Top Width�Height� AlignalClient
BevelOuterbvNoneColor��� TabOrder  TLabelLabel19Left Top Width�HeightAlignalTop	AlignmenttaCenterAutoSizeCaptionDelivery Type InfoColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold ParentColor
ParentFont  TLabelLabel2Left� Top6Width"Height	AlignmenttaRightJustifyCaptionName :FocusControlDBEdit2  TLabelLabel43LefthTop3WidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel3Left(TopWWidth� Height	AlignmenttaRightJustifyCaptionMax Deliver Delay (Days) :FocusControlDBEdit3  TLabelLabel4Left� TopzWidthHeight	AlignmenttaRightJustifyCaptionWeb :FocusControlDBEdit4  TDBEditDBEdit2Left� Top2Width� Height	DataFieldName
DataSourcedsFormTabOrder   TDBCheckBoxchkConfirmDeliveryLeft� Top� Width� HeightCaptionCan Confirm Deliver	DataFieldCanConfirmDeliver
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalse  TDBEditDBEdit3Left� TopTWidth� Height	DataFieldMaxDeliverDelay
DataSourcedsFormTabOrder  TDBCheckBoxchkCanExchangeLeft� Top� Width� HeightCaptionCan Exchange Hold Item	DataFieldCanExchangeItem
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalse  TDBEditDBEdit4Left� TopwWidth� Height	DataFieldWebsite
DataSourcedsFormTabOrder    �TPanelEspacamentoEsquerdoTopKHeight� TabOrder  �TPanelEspacamentoDireitoLeft�TopKHeight� TabOrder  �	TsiLangRTsiLangStorageFileMR_brwFrmDeliverType.sil  �TDataSourcedsFormLeft� TopV  �TPowerADOQueryquFormCommandText�SELECT 
	DT.IDDeliverType, 
	DT.Name,
	DT.CanConfirmDeliver,
	DT.MaxDeliverDelay,
	DT.CanExchangeItem,
	DT.Website
FROM 
	DeliverType DT
WHERE 
	DT.IDDeliverType = :IDDeliverType


ParametersNameIDDeliverType
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Top( TIntegerFieldquFormIDDeliverType	FieldNameIDDeliverType  TStringField
quFormName	FieldNameNameRequired	Size  TBooleanFieldquFormCanConfirmDeliver	FieldNameCanConfirmDeliver  TIntegerFieldquFormMaxDeliverDelay	FieldNameMaxDeliverDelay  TBooleanFieldquFormCanExchangeItem	FieldNameCanExchangeItem  TStringFieldquFormWebsite	FieldNameWebsiteSized   �TFormConfig
FormConfigAutoIncFieldIDDeliverTypeLeft� Top,   