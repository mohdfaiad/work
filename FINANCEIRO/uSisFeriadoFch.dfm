�
 TSISFERIADOFCH 0�  TPF0�TSisFeriadoFchSisFeriadoFchLeft� Top� HelpContext*CaptionSisFeriadoFchClientHeight� ClientWidthiPixelsPerInch`
TextHeight � TLabelLabel1Left5Top7Width<Height	AlignmenttaRightJustifyCaptionDescription :FocusControlDBEdit1  �TLabelLabel2LeftSTopUWidthHeight	AlignmenttaRightJustifyCaptionDate :FocusControlDBEdit1  �TPanelEspacamentoEsquerdoHeightRTabOrder  �TPanelEspacamentoDireitoLeftfHeightRTabOrder  �TPanelEspacamentoSuperiorWidthiTabOrder  �TPanelpnlEspacamentoInferirorToptWidthiTabOrder  �TPanel	pnlPBarraTopzWidthiTabOrder �TPanelpnlPBarraRightAlignLeft� Width�  �TBitBtnbtCancelLeft� WidthJ  �TBitBtnbtOKLeftNWidthJ  �TBitBtnbtHelpLeftWidthJ   �TPanel	pnlPLinhaWidthi   �TPanel
pnlPTituloWidthiTabOrder �TLabellblPTituloShadowWidthWCaptionHoliday  �TLabel
lblPTituloWidthWCaptionHoliday  �TPanel
pnlAutoIncLeftG   �TDBEditDBEdit1LeftuTop4Width� Height	DataFieldFeriado
DataSourcedsFormTabOrder   �	
TDBDateBoxdxDBDateEdit1LeftuTopPWidth� HeightReadOnlyTabOrder	DataFieldData
DataSourcedsForm  �	TsiLangRTsiLangStorageFileOM_SisFeriadoFch.sil  �TDataSourcedsFormLeft3Topy  �TPowerADOQueryquForm
BeforePostquFormBeforePostOnNewRecordquFormNewRecordCommandText�SELECT 
	F.IDFeriado,
	F.Feriado,
	F.Data,
	F.Hidden, 
	F.Desativado,
	F.System
FROM 
	Sis_Feriado F
WHERE 
	( F.IDFeriado = :IDFeriado )

ParametersName	IDFeriado
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTop�  TIntegerFieldquFormIDFeriado	FieldName	IDFeriadoOriginSis_Feriado.IDFeriado  TStringFieldquFormFeriado	FieldNameFeriadoOriginSis_Feriado.FeriadoSize#  TDateTimeField
quFormData	FieldNameDataOriginSis_Feriado.Data  TBooleanFieldquFormHidden	FieldNameHiddenOriginSis_Feriado.Hidden  TBooleanFieldquFormDesativado	FieldName
DesativadoOriginSis_Feriado.Desativado  TBooleanFieldquFormSystem	FieldNameSystemOriginSis_Feriado.System   �TFormConfig
FormConfigAutoIncField	IDFeriadoLeftTop:  �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 DockControlHeights        