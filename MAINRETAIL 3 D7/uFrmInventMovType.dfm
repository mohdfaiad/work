�
 TBRWFRMINVENTMOVTYPE 0�  TPF0�TbrwFrmInventMovTypebrwFrmInventMovTypeLeft� Top� CaptionSystem User'sClientHeighthClientWidth�PixelsPerInch`
TextHeight �TPanelPanel2Width� �TImageImage1Widths  �TLabellblMenuLeft�  �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�   �TPanel
pnlAutoIncLeftV   �TPanelPanel1Top?Width� �TLabellblUserNameLeftaTop  �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft� Width�  �TSpeedButtonspHelpLeftWidth;  �TSpeedButtonbtnVideoLeftWidth;  �TButtonbtCancelLeftsWidth4  �TButtonbtCloseLeft=Width4Caption&OK   �TPanelpnlNavigationWidth] �TSpeedButton
btFirstRecLeftTopWidthHeight  �TSpeedButton
btPriorRecLeftTopWidthHeight  �TSpeedButton	btNextRecLeft0TopWidthHeight  �TSpeedButton	btLastRecLeftFTopWidthHeight    �TPanelpnlKeyWidth�Height' � TLabelLabel1Left"TopWidthHeight	AlignmenttaRightJustifyCaptionID :FocusControlDBEdit1WordWrap	  �TPanelPanel4Top%Width�TabOrder  TDBEditDBEdit1Left9Top
Width@Height	DataFieldIDInventMovType
DataSourcedsFormTabOrder    �TPanel	pnlDetailTopOWidthHeight�  TLabelLabel2LeftTopWidth"Height	AlignmenttaRightJustifyCaptionName :FocusControlDBEdit2  TLabelLabel21Left3TopWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TDBEditDBEdit2Left6TopWidth� Height	DataFieldName
DataSourcedsFormTabOrder   TPageControl	pgInvTypeLeft Top&WidthHeight� 
ActivePagetsPreInventoryAlignalBottomTabOrder 	TTabSheettsPreInventoryCaptionTemporary Inventory
ImageIndex TPanelPanel5Left Top WidthwHeight� AlignalClient
BevelOuterbvNoneColor��� TabOrder  TLabelLabel9Left Top WidthwHeightAlignalTop	AlignmenttaCenterAutoSizeCaptionUpdateColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold ParentColor
ParentFont  TLabelLabel10LeftXTopWidth@Height	AlignmenttaRightJustifyCaptionQtyOnHand :  TLabelLabel11LeftRTop8WidthFHeight	AlignmenttaRightJustifyCaptionQtyOnRepair :  TLabelLabel12LeftUTopRWidthCHeight	AlignmenttaRightJustifyCaptionQtyOnOrder :  TLabelLabel13Left\ToplWidth<Height	AlignmenttaRightJustifyCaptionQtyOnHold :  TLabelLabel14LeftGTop� WidthQHeight	AlignmenttaRightJustifyCaptionQtyInReceiving :  	TComboBoxcbxPreQtyOnHandLeft� TopWidth� Height
ItemHeightTabOrder OnChangeSetEditModeItems.StringsDebit InventoryCredit Inventory	No Change   	TComboBoxcbxPreQtyOnRepairLeft� Top5Width� Height
ItemHeightTabOrderOnChangeSetEditModeItems.StringsDebit InventoryCredit Inventory	No Change   	TComboBoxcbxPreQtyOnOrderLeft� TopOWidth� Height
ItemHeightTabOrderOnChangeSetEditModeItems.StringsDebit InventoryCredit Inventory	No Change   	TComboBoxcbxPreQtyOnPreSaleLeft� TopiWidth� Height
ItemHeightTabOrderOnChangeSetEditModeItems.StringsDebit InventoryCredit Inventory	No Change   	TComboBoxcbxPreQtyOnPurchaseLeft� Top� Width� Height
ItemHeightTabOrderOnChangeSetEditModeItems.StringsDebit InventoryCredit Inventory	No Change     	TTabSheettsInventoryCaptionPermanent Inventory TPanelpnlModelLeft Top WidthwHeight� AlignalClient
BevelOuterbvNoneColor��� TabOrder  TLabelLabel7Left Top WidthwHeightAlignalTop	AlignmenttaCenterAutoSizeCaptionUpdateColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold ParentColor
ParentFont  TLabelLabel3LeftXTopWidth@Height	AlignmenttaRightJustifyCaptionQtyOnHand :  TLabelLabel4LeftRTop8WidthFHeight	AlignmenttaRightJustifyCaptionQtyOnRepair :  TLabelLabel5LeftUTopRWidthCHeight	AlignmenttaRightJustifyCaptionQtyOnOrder :  TLabelLabel6Left\ToplWidth<Height	AlignmenttaRightJustifyCaptionQtyOnHold :  TLabelLabel8LeftGTop� WidthQHeight	AlignmenttaRightJustifyCaptionQtyInReceiving :  	TComboBoxcbxQtyOnHandLeft� TopWidth� Height
ItemHeightTabOrder OnChangeSetEditModeItems.StringsDebit InventoryCredit Inventory	No Change   	TComboBoxcbxQtyOnRepairLeft� Top5Width� Height
ItemHeightTabOrderOnChangeSetEditModeItems.StringsDebit InventoryCredit Inventory	No Change   	TComboBoxcbxQtyOnOrderLeft� TopOWidth� Height
ItemHeightTabOrderOnChangeSetEditModeItems.StringsDebit InventoryCredit Inventory	No Change   	TComboBoxcbxQtyOnPreSaleLeft� TopiWidth� Height
ItemHeightTabOrderOnChangeSetEditModeItems.StringsDebit InventoryCredit Inventory	No Change   	TComboBoxcbxQtyOnPrePurchaseLeft� Top� Width� Height
ItemHeightTabOrderOnChangeSetEditModeItems.StringsDebit InventoryCredit Inventory	No Change       �TPanelEspacamentoEsquerdoTopOHeight�   �TPanelEspacamentoDireitoLeft�TopOHeight�   �	TsiLangRTsiLangStorageFileMR_brwFrmInventMovType.sil  �TDataSourcedsFormLeft� Top3  �TPowerADOQueryquForm
BeforePostquFormBeforePostOnNewRecordquFormNewRecordCommandText�  SELECT
        IDInventMovType,
        Name,
        Entrando,
        System,
        UpdateOnHand,
        UpdateOnOrder,
        UpdateOnRepair,
        UpdateOnPrePurchase,
        UpdateOnPreSale,
        UpdatePreOnHand,
        UpdatePreOnOrder,
        UpdatePreOnRepair,
        UpdatePreOnPrePurchase,
        UpdatePreOnPreSale
FROM
        InventoryMovType InventoryMovType
WHERE
        (IDInventMovType = :IDInventMovType)
 

ParametersNameIDInventMovType
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Topu TIntegerFieldquFormIDInventMovType	FieldNameIDInventMovType  TStringField
quFormName	FieldNameNameRequired	Size  TBooleanFieldquFormSystem	FieldNameSystem  TBooleanFieldquFormEntrando	FieldNameEntrandoOrigin InventoryMovType.IDInventMovType  TBooleanFieldquFormUpdateOnHand	FieldNameUpdateOnHand  TBooleanFieldquFormUpdateOnOrder	FieldNameUpdateOnOrder  TBooleanFieldquFormUpdateOnRepair	FieldNameUpdateOnRepair  TBooleanFieldquFormUpdateOnPrePurchase	FieldNameUpdateOnPrePurchase  TBooleanFieldquFormUpdateOnPreSale	FieldNameUpdateOnPreSale  TBooleanFieldquFormUpdatePreOnHand	FieldNameUpdatePreOnHand  TBooleanFieldquFormUpdatePreOnOrder	FieldNameUpdatePreOnOrder  TBooleanFieldquFormUpdatePreOnRepair	FieldNameUpdatePreOnRepair  TBooleanFieldquFormUpdatePreOnPrePurchase	FieldNameUpdatePreOnPrePurchase  TBooleanFieldquFormUpdatePreOnPreSale	FieldNameUpdatePreOnPreSale   �TFormConfig
FormConfigAutoIncFieldIDInventMovTypeLeft� TopK   