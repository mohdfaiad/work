�
 TFRMPO 0~  TPF0�TFrmPOFrmPOLeft� BorderStylebsDialogCaptionNew POClientHeight?ClientWidthTOldCreateOrder	PixelsPerInch`
TextHeight � TLabelLabel1LeftTop6Width(Height	AlignmenttaRightJustifyCaptionVendor :  �TLabelLabel2Left)TopTWidthHeight	AlignmenttaRightJustifyCaptionDate :  �TLabelLabel3Left� TopTWidth0Height	AlignmenttaRightJustifyCaptionEst Arriv. :  �TLabelLabel4Left'TopWidthHeight	AlignmenttaRightJustifyCaptionStore :  �TLabelLabel5Left)ToprWidthHeight	AlignmenttaRightJustifyCaptionPay in  �TLabelLabel6Left� ToprWidthHeightCaptionday(s)  �TLabelLabel7Left+Top� WidthHeight	AlignmenttaRightJustifyCaptionOBS :  �TPanelPanel1Left TopWidthTHeight)AlignalBottom
BevelOuterbvNoneTabOrder 
DesignSizeT)  TPanelPanel9Left Top WidthTHeightAlignalTop
BevelOuterbvNoneTabOrder  TPanelPanel3Left TopWidthTHeightAlignalBottom
BevelOuter	bvLoweredTabOrder    TButtonbtOKLeft� Top	WidthBHeightAnchorsakTopakRight CaptionOKDefault	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style ModalResult
ParentFontTabOrderTabStopOnClick	btOKClick  TButtonbtCancelLeftTop	WidthBHeightAnchorsakTopakRight Cancel	CaptionCancelFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style ModalResult
ParentFontTabOrderTabStop   �TSuperComboADOscVendorLeftJTop1Width� HeightTabOrderLookUpSourceDM.dsLookUpFornecedorDropDownRows
IDLanguage OnSelectItemscVendorSelectItem  �	TDateBox	OrderDateLeftJTopOWidthVHeightTabOrder	InputTimeLanguage
Portuguese  �
TDateBox
dtEstArrivLeft� TopOWidthVHeightTabOrder	InputTimeLanguage
Portuguese  �TSuperComboADOscStoreLeftJTopWidth� HeightTabOrderLookUpSourceDM.dsLookUpStoreDropDownRows
IDLanguage   �TEdit
edtPayDaysLeftKTopnWidthTHeightTabOrder
OnKeyPressedtPayDaysKeyPress  �TMemomemOBSLeftKTop� Width� Heighty	MaxLength�TabOrder  �	TADOQuery
quInsertPO
ConnectionDM.ADODBConnect
ParametersNameIDPO
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDStore
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue  NameIDFornecedor
AttributespaSigned DataType	ftInteger	Precision
SizeValue  Name
DataPedidoDataType
ftDateTime	PrecisionSizeValue  NameEstArriv
Attributes
paNullable DataType
ftDateTimeNumericScale	PrecisionSizeValue  NameAberto
Attributes
paNullable DataType	ftBooleanNumericScale� 	Precision� SizeValue  NamePayDays
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue  NameOBS
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� Size� Value   SQL.StringsZINSERT INTO PO (IDPO, IDStore, IDFornecedor, DataPedido, EstArrival, Aberto, PayDays, OBS)XVALUES (:IDPO, :IDStore, :IDFornecedor, :DataPedido, :EstArriv, :Aberto, :PayDays, :OBS)    Left� Top�   �	TsiLangRTsiLangStorageFileMR_NewPO.sil  TADOCommandcmdUpdatePOCommandText�UPDATE
	PO
SET
	DataPedido = :DataPedido,
	EstArrival = :EstArrival,
	PayDays = :PayDays,
	OBS = :OBS
WHERE
	IDPO = :IDPO

ConnectionDM.ADODBConnect
ParametersName
DataPedidoDataType
ftDateTime	PrecisionSizeValue  Name
EstArrival
Attributes
paNullable DataType
ftDateTimeNumericScale	PrecisionSizeValue  NamePayDays
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue  NameOBS
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� Size�Value  NameIDPO
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Top�    