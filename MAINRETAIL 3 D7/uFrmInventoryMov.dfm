�
 TBRWFRMINVENTORYMOV 0�  TPF0�TbrwFrmInventoryMovbrwFrmInventoryMovLeftTop� CaptionSystem User'sClientHeight�ClientWidth�PixelsPerInch`
TextHeight �TPanelPanel2Width�TabOrder �TImageImage1Width�   �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�   �TPanel
pnlAutoIncLeft�   �TPanelPanel1TopmWidth�TabOrder �TLabellblUserNameLeft{Width�   �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft� Width�    �TPanelpnlKeyWidth�Height! � TLabelLabel1LeftTTopWidthHeight	AlignmenttaRightJustifyCaptionIDFocusControledIDWordWrap	  �TPanelPanel4TopWidth�TabOrder  TDBEditedIDLefthTopWidth@Height	DataFieldIDInventoryMov
DataSourcedsFormTabOrder    �TPanel	pnlDetailTopIWidth�Height$TabOrder TLabelLabel2Left�TopWidthHeightCaptionName  TLabelLabel3Left,Top� Width1Height	AlignmenttaRightJustifyCaption
Quantity :FocusControledQty  TLabelLabel4Left<TopXWidth!Height	AlignmenttaRightJustifyCaptionStore :  TLabelLabel5LeftTopWidthBHeight	AlignmenttaRightJustifyCaptionDocument # :FocusControl
edDocument  TLabelLabel6Left
Top� WidthSHeight	AlignmenttaRightJustifyCaptionMovement Date :  TLabelLabel8Left:ToptWidth#Height	AlignmenttaRightJustifyCaptionModel :  TLabelLabel7Left>Top<WidthHeight	AlignmenttaRightJustifyCaptionType :  TLabelLabel9Left:Top� Width#Height	AlignmenttaRightJustifyCaptionNotes :  TLabelLabel21Left� TopWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel10Left Top<WidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel11Left TopXWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel12LefttToptWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel13Left� Top� WidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel14Left� Top� WidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabelLabel16Left@Top WidthHeight	AlignmenttaRightJustifyCaptionUser :  TLabelLabel17Left Top WidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TLabel	lblReasonLeft2Top� Width+Height	AlignmenttaRightJustifyCaptionReason :  TLabellblRequiredReasonLeftTop� WidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TDBEditedQtyLeftdTop� WidthcHeight	DataFieldQty
DataSourcedsFormTabOrder  TDBEdit
edDocumentLeftdTop Width?Height	DataField
DocumentID
DataSourcedsFormTabOrder   TDBSuperComboADOscStoreLeftdTopTWidth� HeightTabOrderTextscStoreLookUpSourceDM.dsLookUpStoreDropDownRows
IDLanguage 	DataFieldStoreID
DataSourcedsForm  TDBSuperComboADOscModelLeftdToppWidthHeightTabOrderTextscModel
CodeLength� SpcWhereClauseModelType IN ('R', 'S', 'K')LookUpSourceDM.dsLookUpNewModelDropDownRowsShowEditCode	EditCodePostaEditCodeRight
IDLanguage 	DataFieldModelID
DataSourcedsForm  
TDBDateBox	edMovDateLeftdTop� WidtheHeightReadOnlyTabOrderText	edMovDateLanguage
Portuguese	DataFieldMovDate
DataSourcedsForm  TDBSuperComboADOscTypeLeftdTop8Width� HeightTabOrderTextscTypeLookUpSourceDM.dsLookUpIMTDropDownRows
IDLanguage 	DataFieldInventMovTypeID
DataSourcedsForm  TDBMemommNotesLeftdTop� WidthHeight=	DataFieldNotes
DataSourcedsMovComplementTabOrderOnChangemmNotesChange  TDBSuperComboADOscUserLeftdTopWidth� HeightTabStopColor	cl3DLightReadOnly	TabOrderTextscUserLookUpSourceDM.dsLookUpUserDropDownRows
IDLanguage 	DataFieldIDUser
DataSourcedsForm  TDBSuperComboADOscReasonLeftdTop� Width� HeightTabOrderTextscReasonLookUpSourceDM.dsLookUpInvReasonEditCodePostaEditCodeRight
IDLanguage 	DataFieldIDMovReason
DataSourcedsMovComplement   �TPanelEspacamentoEsquerdoTopIHeight$  �TPanelEspacamentoDireitoLeft�TopIHeight$  �	TsiLangRTsiLangStorageFileMR_brwFrmInventoryMov.sil  �TDataSourcedsFormLeft� Top4  �TPowerADOQueryquForm
CursorTypectStatic
AfterClosequFormAfterClose
BeforePostquFormBeforePost	AfterPostquFormAfterPostOnNewRecordquFormNewRecordCommandText  SELECT
        IM.IDInventoryMov,
        IM.InventMovTypeID,
        IM.DocumentID,
        IM.StoreID,
        IM.ModelID,
        IM.MovDate,
        IM.Qty,
        IM.IDUser        
FROM
        InventoryMov IM	
WHERE
        (IM.IDInventoryMov = :IDInventoryMov)
  
ParametersNameIDInventoryMov
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Top TIntegerFieldquFormIDInventoryMov	FieldNameIDInventoryMov  TIntegerFieldquFormDocumentIDDisplayLabel
Document #	FieldName
DocumentIDRequired	  TIntegerFieldquFormInventMovTypeIDDisplayLabelType	FieldNameInventMovTypeIDRequired	  TIntegerFieldquFormStoreIDDisplayLabelStore	FieldNameStoreIDRequired	  TIntegerFieldquFormModelIDDisplayLabelModel	FieldNameModelIDRequired	  TDateTimeFieldquFormMovDateDisplayLabelMovement Date	FieldNameMovDateRequired	  TIntegerFieldquFormIDUser	FieldNameIDUserRequired	  TFloatField	quFormQty	FieldNameQtyDisplayFormat0.#####   �TFormConfig
FormConfigSystemReadOnlyAutoIncFieldIDInventoryMovLeft� Top  TADODataSetquMovComplement
ConnectionDM.ADODBConnect	AfterOpenquMovComplementAfterOpenCommandText�SELECT
	IMC.IDInventoryMov,
	IMC.IDMovReason,
	IMC.Notes
FROM
	Inv_MovComplement IMC
WHERE
        (IMC.IDInventoryMov = :IDInventoryMov)
ParametersNameIDInventoryMov
AttributespaSigned DataType	ftInteger	Precision
Value   Left<Top TIntegerFieldquMovComplementIDInventoryMov	FieldNameIDInventoryMov  TIntegerFieldquMovComplementIDMovReason	FieldNameIDMovReason  TStringFieldquMovComplementNotes	FieldNameNotesSize�    TDataSourcedsMovComplementDataSetquMovComplementOnStateChangedsMovComplementStateChangeLeft<Top4   