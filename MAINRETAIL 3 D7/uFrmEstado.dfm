�
 TBRWFRMESTADO 0  TPF0�TbrwFrmEstadobrwFrmEstadoLeft[Top� CaptionSystem User'sClientHeight� ClientWidth�PixelsPerInch`
TextHeight �TPanelPanel2Width�Height% �TImageImage1Width�   �TLabellblMenuLeft�  �TPanelEspacamentoSuperiorWidth�Height �TPanelEEEWidth�   �TPanel
pnlAutoIncLefts   �TPanelPanel1Top� Width� �TLabellblUserNameWidthm  �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft� Width�  �TSpeedButtonspHelpLeftWidth?  �TSpeedButtonbtnVideoLeftWidth?  �TButtonbtCancelLeft� Width<  �TButtonbtCloseLeftDWidth<    �TPanelpnlKeyTop%Width�Height �TPanelPanel4Top�Width�   �TPanel	pnlDetailTop&Width�Height�  TLabelLabel2Left7TopcWidth!Height	AlignmenttaRightJustifyCaptionState :FocusControlDBEdit2  TLabelLabel1LefteTopaWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelIDEstadoLeft,TopWidth,Height	AlignmenttaRightJustifyCaption	IDState :FocusControlDBEdit1  TLabelLabel21Left� TopWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabel
lblTaxPercLeft1Top� Width'Height	AlignmenttaRightJustifyCaption% Tax :  TLabellbCodeLeft8Top?Width Height	AlignmenttaRightJustifyCaptionCode :FocusControlDBEdit3  TLabel
lbTaxPerc2Left� Top� Width0Height	AlignmenttaRightJustifyCaption	% Tax 2 :  TDBEditDBEdit2Left]Top_WidthHeight	DataFieldEstado
DataSourcedsFormTabOrder  TDBEditDBEdit1TagLeft]TopWidth@Height	DataFieldIDEstado
DataSourcedsFormTabOrder   TDBEdit
edtTaxPercLeft]Top� WidthAHeight	DataFieldTaxPerc
DataSourcedsFormTabOrder
OnKeyPressedtTaxPercKeyPress  TDBEditDBEdit3Left]Top;WidthHeight	DataFieldCodigo
DataSourcedsFormTabOrder  TDBEditDBEdit4Left!Top� WidthAHeight	DataFieldTaxPerc2
DataSourcedsFormTabOrder
OnKeyPressedtTaxPercKeyPress   �TPanelEspacamentoEsquerdoTop&Height�   �TPanelEspacamentoDireitoLeft�Top&Height�   �	TsiLangRTsiLangStorageFileMR_brwFrmEstado.sil  �TDataSourcedsFormLeft� Top;  �TPowerADOQueryquForm
CursorTypectStaticCommandText}SELECT 
	E.IDEstado, 
	E.Estado,
	E.TaxPerc,
	E.TaxPerc2,
	E.Codigo
FROM 
	Estado E
WHERE 
	E.IDEstado = :IDEstado

ParametersNameIDEstadoDataTypeftStringNumericScale� 	Precision� SizeValue   LeftTop< TStringFieldquFormIDEstado	FieldNameIDEstadoOriginEstado.IDEstadoRequired	Size  TStringFieldquFormEstado	FieldNameEstadoOriginEstado.EstadoRequired	Size2  	TBCDFieldquFormTaxPerc	FieldNameTaxPerc	Precision  TStringFieldquFormCodigo	FieldNameCodigo  	TBCDFieldquFormTaxPerc2	FieldNameTaxPerc2	Precision   �TFormConfig
FormConfigSystemReadOnlyConfirmPostAutoIncFieldIDEstadoLeft� Top8   