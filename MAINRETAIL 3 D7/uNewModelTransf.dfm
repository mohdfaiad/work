�
 TFRMNEWMODELTRANSF 0�  TPF0�TFrmNewModelTransfFrmNewModelTransfLeft� Top� HorzScrollBar.Range VertScrollBar.Range BorderIconsbiSystemMenu BorderStylebsDialogCaptionNew TransferenceClientHeight� ClientWidthEFont.CharsetANSI_CHARSETFont.Height�	Font.NameVerdanaOnClose	FormClosePixelsPerInch`
TextHeight � TLabelLabel1Left&TopoWidth#Height	AlignmenttaRightJustifyCaptionFrom :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  �TLabelLabel2Left2Top� WidthHeight	AlignmenttaRightJustifyCaptionTo :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  �TLabelLabel3LeftTopLWidth3Height	AlignmenttaRightJustifyCaptionNumber :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  �TPanelPanel1Top� WidthETabOrder �TPanelEspacamentoInferiorWidthE �TPanelPanel3WidthE   �TPanelhhhLeftTWidth�  �TButtonbtCloseWidthYCaptionBegin TransferDefault	OnClickbtCloseClick  TButton	btnCancelLeft� TopWidthBHeightCancel	CaptionCloseFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTabOrderTabStopOnClickbtnCancelClick    �TPanelEspacamentoEsquerdoHeight� TabOrder  �TPanelEspacamentoDireitoLeftBHeight� TabOrder  �TPanelEspacamentoSuperiorWidthETabOrder  �TSuperComboADOcmbLojaOrigemLeftQToplWidth� HeightEnabledTabOrderLookUpSourceDM.dsLookUpStoreShowBtnAddNew
IDLanguage   �TSuperComboADOcmbLojaDestinoLeftQTop� Width� HeightTabOrderLookUpSourceDM.dsLookUpStoreDropDownRows
ShowBtnAddNew
IDLanguage   �	TEditedtTranferNumberLeftRTopIWidth� HeightTabOrder  �
TRadioGrouprgTranferTypeLeftQTopWidth� Height)CaptionTransfer TypeColumns	ItemIndex Items.StringsOUTIN TabOrder   �	TsiLangRTsiLangStorageFileMR_FrmNewModelTransf.sil  	TADOQueryquNewTransf
ConnectionDM.ADODBConnect
ParametersNameIDModelTransf
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDLojaOrigem
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDLojaDestino
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDUser
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameDataDataType
ftDateTime	PrecisionSizeValue  NameNumber
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� SizeValue  NameTransferType
Attributes
paNullable DataType	ftBooleanNumericScale� 	Precision� SizeValue   SQL.StringscINSERT ModelTransf (IDModelTransf, IDLojaOrigem, IDLojaDestino, IDUser, Data, Number, TransferType)^VALUES (:IDModelTransf, :IDLojaOrigem, :IDLojaDestino, :IDUser, :Data, :Number, :TransferType)   LeftTopS   