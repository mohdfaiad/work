�
 TFCHACERTATOURGROUP 0�  TPF0�TFchAcertaTourGroupFchAcertaTourGroupLeft� Top� CaptionFchAcertaTourGroupClientHeight	ClientWidth�PixelsPerInch`
TextHeight �TPanelPanel2Width� �TImageImage1Width�   �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�   �TPanel
pnlAutoIncLeft�   �TPanelPanel1Top� Width� �TLabellblUserNameLeftuWidth�   �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft� Width�  �TSpeedButtonspHelpLeft  �TSpeedButtonbtnVideoLeft  �TButtonbtCancelLeft� WidthJCaption&Cancel  �TButtonbtCloseLeftPWidthJCaptionAdjust    �TPanelpnlKeyWidth�Height �TPanelPanel4Top�Width�   �TPanel	pnlDetailTop)Width�Height�  TLabelLabel1Left>TopNWidth"Height	AlignmenttaRightJustifyCaptionGuide :  TLabelLabel2Left5ToplWidth+Height	AlignmenttaRightJustifyCaptionAgency :  TLabelLabel3LeftTop*WidthPHeight	AlignmenttaRightJustifyCaptionTour Group TIP :  TLabelLabel4Left
Top� WidthVHeight	AlignmenttaRightJustifyCaption% Coordenation :  TLabelLabel18LeftJTopNWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel5LeftJToplWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel6Left� Top� WidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel7LeftCTop
WidthHeight	AlignmenttaRightJustifyCaptionUser :  TDBSuperComboADOscGuideLeftdTopKWidth� HeightTabOrder TextscGuideFilterSugest	LookUpSourceDM.dsLookUpGuideDropDownRows
IDLanguage OnSelectItemscGuideSelectItem	DataFieldIDGuide
DataSourcedsForm  TDBSuperComboADOscAgencyLeftdTopiWidth� HeightTabOrderTextscAgencyFilterSugest	LookUpSourceDM.dsLookUpAgencyDropDownRows
IDLanguage OnSelectItemscAgencySelectItem	DataFieldIDAgency
DataSourcedsForm  TDBRichEditDBRichEdit1LeftdTop(Width� Height	DataFieldTipTouristGroup
DataSourcedsFormParentColor	ReadOnly	TabOrder  TDBCheckBox
cbDescontaLeft� Top� Width� HeightCaptionDiscount Coordenation	DataFieldDescontaCoordenacao
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalse  TDBEditeditCoordenacaoLeftdTop� Width@Height	DataFieldComissaoSobreGuia
DataSourcedsFormTabOrder  TDBSuperComboADODBSuperCombo3LeftdTopWidth� HeightParentColor	ReadOnly	TabOrderTextDBSuperCombo3LookUpSourceDM.dsLookUpUserDropDownRowsShowBtnSelecao
IDLanguage 	DataFieldIDUser
DataSourcedsForm   �TPanelEspacamentoEsquerdoTop)Height�   �TPanelEspacamentoDireitoLeft�Top)Height�   �	TsiLangRTsiLangStorageFileMR_FchAcertaTourGroup.sil  �TDataSourcedsFormLeft}Topj  �TPowerADOQueryquForm
CursorTypectStaticCommandText  SELECT
        IDTouristGroup,
        TipTouristGroup,
        IDGuide,
        IDAgency,
        DescontaCoordenacao,
        ComissaoSobreGuia,
        IDUser
FROM
        TouristGroup TouristGroup
WHERE
        IDTouristGroup = :IDTouristGroup

ParametersNameIDTouristGroup
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left}Top�  TIntegerFieldquFormIDTouristGroup	FieldNameIDTouristGroupOriginTouristGroup.IDTouristGroup  TStringFieldquFormTipTouristGroup	FieldNameTipTouristGroupOriginTouristGroup.TipTouristGroupSize2  TIntegerFieldquFormIDGuide	FieldNameIDGuideOriginTouristGroup.IDGuide  TIntegerFieldquFormIDAgency	FieldNameIDAgencyOriginTouristGroup.IDAgency  TBooleanFieldquFormDescontaCoordenacao	FieldNameDescontaCoordenacaoOrigin TouristGroup.DescontaCoordenacao  TFloatFieldquFormComissaoSobreGuia	FieldNameComissaoSobreGuiaOriginTouristGroup.ComissaoSobreGuia  TIntegerFieldquFormIDUser	FieldNameIDUserOriginTouristGroup.IDTouristGroup   �TFormConfig
FormConfigSystemReadOnlyAutoIncFieldIDTouristGroupLeft}Top@   