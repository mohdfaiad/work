�
 TBRWFRMREQUEST 0B  TPF0�TbrwFrmRequestbrwFrmRequestLeft	TopCaptionSystem User'sClientHeight�ClientWidthPixelsPerInch`
TextHeight �TPanelPanel2Width �TImageImage1Width�  �TLabellblMenuLeft�  �TPanelEspacamentoSuperiorWidth �TPanelEEEWidth   �TPanel
pnlAutoIncLeft�   �TPanelPanel1Top�Width �TLabellblUserNameWidth�   �TPanelEspacamentoInferiorWidth �TPanelPanel3Width   �TPanelhhhLeft* �TSpeedButtonspHelpOnClickspHelpClick    �TPanelpnlKeyTop� WidthHeight Visible � TLabelLabel1LeftTop
Width3HeightCaption	IDRequestFocusControlDBEdit1  �TPanelPanel4Top�Width  TDBEditDBEdit1LeftZTopWidth@Height	DataField	IDRequest
DataSourcedsFormTabOrder   �TPanel	pnlDetailLeft Top(WidthHeight� AlignalTop TLabelLabel6Left;TopvWidthOHeight	AlignmenttaRightJustifyCaptionQty Request :FocusControlDBEdit2Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel3LeftMTopXWidth<Height	AlignmenttaRightJustifyCaptionDescription :FocusControlebDate  TLabelLabel4LeftfTop:Width#Height	AlignmenttaRightJustifyCaptionModel :FocusControlebDate  TLabelLabel2LeftkTop	WidthHeight	AlignmenttaRightJustifyCaptionDate :FocusControlebDate  TLabelLabel5LeftLTopWidth#Height	AlignmenttaRightJustifyCaptionUser :FocusControlebDateFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel11Left4TopCWidthHeightHintField can not be emptyCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	  TLabelLabel12Left� TopqWidthHeightHintField can not be emptyCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	  TPanelPanel5LeftTTopWidth� HeightW
BevelOuterbvNoneColor��� TabOrderVisible TLabelLabel19Left Top Width� HeightAlignalTop	AlignmenttaCenterAutoSizeCaptionLast Purchase InfoColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold ParentColor
ParentFont  TLabelLabel7Left"TopWidth$Height	AlignmenttaRightJustifyCaptionDate :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFont  TLabelLabel8Left-Top<WidthHeight	AlignmenttaRightJustifyCaptionQty :FocusControlDBEdit3  TDBEditEditPurcDateLeftJTopWidth\HeightTabStop	DataFieldMovDateFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style ParentColor	
ParentFontTabOrder   TDBEditDBEdit3LeftJTop:Width\HeightTabStop	DataFieldQtyEnabledParentColor	TabOrder   TDBEditDBEdit2Left� TopsWidth@Height	DataFieldQtyReq
DataSourcedsFormFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder  TDBEditebDescLeft� TopUWidth�Height	DataFieldDescription
DataSourcedsFormTabOrder  TDBSuperComboADOscModelLeft� Top7Width�HeightFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder TextscModel
CodeLength� LookUpSourceDM.dsLookUpModelKitDropDownRowsShowBtnAddNewShowBtnUpdateShowEditCode	EditCodePostaEditCodeRight
IDLanguage OnSelectItemscModelSelectItem	DataFieldModelID
DataSourcedsForm  TDBEditebDateLeft� TopWidthjHeightTabStop	DataFieldDateRequest
DataSourcedsFormEnabledParentColor	ReadOnly	TabOrder  TDBSuperComboADODBSuperCombo1LeftuTopWidth� HeightTabStopParentColor	ReadOnly	TabOrderTextDBSuperCombo1LookUpSourceDM.dsLookUpUserDropDownRowsShowBtnSelecao
IDLanguage 	DataFieldUserID
DataSourcedsForm  TmrBarCodeEdit
edtBarcodeLeft� TopWidth� HeightColor��� TabOrderOnEnteredtBarcodeEnterOnExitedtBarcodeExit
ConnectionDM.ADODBConnectSQL.StringsSELECT      B.IDModelFROM      Barcode BWHERE      B.IDBarcode = :IDBarcode SecondSQL.StringsSELECT      M.IDModelFROM      Model MWHERE      M.Model = :Model KeyField	IDBarcodeSecondKeyFieldModel
DisplayQtyRunSecondSQLCheckBarcodeDigit AfterSearchBarcodeedtBarcodeAfterSearchBarcode   �TPanelEspacamentoEsquerdoTop� Height�   �TPanelEspacamentoDireitoLeftTop� Height�   �TSubListPanelSubListModelDetailLeftTop� WidthHeight� AlignalClient
BevelOuterbvNoneCaptionTSubModelDetailColorclBtnShadowTabOrderSubListClassNameTSubModelDetail  �TDataSourcedsFormLeft�Top�   �TPowerADOQueryquForm
CursorTypectStaticOnNewRecordquFormNewRecordCommandText�SELECT
        IDRequest,
        ModelID,
        UserID,
        Type,
        QtyReq,
        DateRequest,
        StoreID,
        Description
FROM
        Request Request
WHERE
        (IDRequest = :IDRequest)
 

ParametersName	IDRequest
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left�Top�  TIntegerFieldquFormIDRequest	FieldName	IDRequestOriginRequest.IDRequest  TIntegerFieldquFormModelID	FieldNameModelIDOriginRequest.ModelID  TIntegerFieldquFormUserID	FieldNameUserIDOriginRequest.UserID  TStringField
quFormType	FieldNameTypeOriginRequest.TypeSize  TDateTimeFieldquFormDateRequest	FieldNameDateRequestOriginRequest.DateRequestDisplayFormatddddd  TIntegerFieldquFormStoreID	FieldNameStoreIDOriginRequest.StoreID  TStringFieldquFormDescription	FieldNameDescriptionOriginRequest.DescriptionSize2  TFloatFieldquFormQtyReq	FieldNameQtyReqDisplayFormat0.#####   �		TsiLangRTsiLangStorageFileMR_brwFrmRequest.sil  �TFormConfig
FormConfigSystemReadOnlyConfirmPostConfirmCancelAutoIncField	IDRequestLeftTop?   