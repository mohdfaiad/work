�
 TFRMNEWPOTRANSFERCONSULT 0�  TPF0�TFrmNewPOTransferConsultFrmNewPOTransferConsultLeftcTopCHorzScrollBar.Range VertScrollBar.Range BorderIconsbiSystemMenu BorderStylebsSingleCaptionFrmNewPOTransferConsultClientHeight�ClientWidth#PixelsPerInch`
TextHeight �TPanelPanel2Width# �TImageImage1Width@  �TLabellblMenuLeftK  �TPanelEspacamentoSuperiorWidth# �TPanelEEEWidth#    �TPanelPanel1Top�Width# �TPanelEspacamentoInferiorWidth# �TPanelPanel3Width#   �TPanelhhhLeft�Width�  �TButtonbtCloseLeftNOnClickbtCloseClick  TButtonbtSaveLeft	TopWidthBHeightCaption&SaveFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style ModalResult
ParentFontTabOrderTabStop    �TPanelEspacamentoEsquerdoHeight\  �TPanelEspacamentoDireitoLeft Height\  �TcxGridcxTransferMasterLeftTopCWidthHeightuTabOrder TcxGridDBTableViewcxTransferMasterDBTableView1DataController.DataSourcedsTransferMasterDataController.Filter.Criteria
	   ����     /DataController.Summary.DefaultGroupSummaryItems )DataController.Summary.FooterSummaryItems $DataController.Summary.SummaryGroups  OptionsCustomize.ColumnFilteringOptionsData.DeletingOptionsData.InsertingOptionsView.ColumnAutoWidth	OptionsView.GroupByBox TcxGridDBColumn&cxTransferMasterDBTableView1LojaOrigemCaptionOrigin StoreDataBinding.FieldName
LojaOrigemOptions.EditingWidth�   TcxGridDBColumn'cxTransferMasterDBTableView1LojaDestinoCaptionDestination StoreDataBinding.FieldNameLojaDestinoOptions.EditingWidth�   TcxGridDBColumn"cxTransferMasterDBTableView1NumberDataBinding.FieldNameNumberWidth`   TcxGridLevelcxTransferMasterLevel1GridViewcxTransferMasterDBTableView1   �TcxGridcxTransferDetailLeftTop� WidthHeight� TabOrder TcxGridDBTableView"cxTransferDetailcxGridDBTableView1DataController.DataSourcedsTransferDetailDataController.Filter.Criteria
	   ����     /DataController.Summary.DefaultGroupSummaryItems )DataController.Summary.FooterSummaryItems $DataController.Summary.SummaryGroups  OptionsCustomize.ColumnFilteringOptionsData.DeletingOptionsData.EditingOptionsData.InsertingOptionsSelection.CellSelectOptionsView.ColumnAutoWidth	OptionsView.GridLinesglNoneOptionsView.GroupByBox TcxGridDBColumn'cxTransferDetailcxGridDBTableView1ModelDataBinding.FieldNameModelWidth|  TcxGridDBColumn-cxTransferDetailcxGridDBTableView1DescriptionDataBinding.FieldNameDescriptionWidthA  TcxGridDBColumn%cxTransferDetailcxGridDBTableView1QtyDataBinding.FieldNameQtyWidth^   TcxGridLevelcxTransferDetailcxGridLevel1GridView"cxTransferDetailcxGridDBTableView1   �	TCheckBoxchkPrintLeftTop,Width� HeightCaptionPrint transfer after finishChecked	State	cbCheckedTabOrder  �TDataSourcedsTransferDetailDataSetcdsTransferDetailLeftTop=  �TDataSourcedsTransferMasterDataSetcdsTransferMasterOnDataChangedsTransferMasterDataChangeLeftTop  �	TClientDataSetcdsTransferMaster
Aggregates Params Left�Top TIntegerFieldcdsTransferMasterIDLojaOrigem	FieldNameIDLojaOrigem  TIntegerFieldcdsTransferMasterIDLojaDestino	FieldNameIDLojaDestino  TDateTimeFieldcdsTransferMasterData	FieldNameData  TIntegerFieldcdsTransferMasterIDUser	FieldNameIDUser  TIntegerFieldcdsTransferMasterIDModel	FieldNameIDModel  TCurrencyFieldcdsTransferMasterCostPrice	FieldName	CostPrice  TCurrencyFieldcdsTransferMasterTax	FieldNameTax  TFloatFieldcdsTransferMasterQty	FieldNameQty  TStringFieldcdsTransferMasterDescription	FieldNameDescriptionSize  TStringFieldcdsTransferMasterNumber	FieldNameNumber  TStringFieldcdsTransferMasterLojaOrigem	FieldName
LojaOrigemSize  TStringFieldcdsTransferMasterLojaDestino	FieldNameLojaDestinoSize  TStringFieldcdsTransferMasterModel	FieldNameModelSize  TStringFieldcdsTransferMasterSystemUser	FieldName
SystemUserSize2   �
TClientDataSetcdsTransferDetail
Aggregates Params Left�TopB  �	TsiLangRTsiLangStorageFileMR_FrmNewPOTransferConsult.sil  	TADOQueryqryModelDescription
ConnectionDM.ADODBConnectCommandTimeout
ParametersNameIDModel
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT	DescriptionFROM	Model (NOLOCK) WHERE	IDModel =  :IDModel LefthTop, TStringFieldqryModelDescriptionDescription	FieldNameDescriptionSize2   	TADOQueryqryInsertTransf
ConnectionDM.ADODBConnectCommandTimeout
ParametersNameIDModelTransf
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDLojaOrigem
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDLojaDestino
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDUser
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameDataDataType
ftDateTime	PrecisionSizeValue  Namenumber
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� SizeValue  NameTransferType
Attributes
paNullable DataType	ftBooleanNumericScale� 	Precision� SizeValue  NameImported
Attributes
paNullable DataType	ftBooleanNumericScale� 	Precision� SizeValue   SQL.StringsINSERT INTO ModelTransf	(IDModelTransf,	IDLojaOrigem,	IDLojaDestino,	IDUser,	Data,	number,	TransferType,
	Imported)VALUES	(:IDModelTransf,	:IDLojaOrigem,	:IDLojaDestino,		:IDUser,	:Data,		:number,	:TransferType,	:Imported) Left� Top�   	TADOQueryqryInsertTransfDet
ConnectionDM.ADODBConnectCommandTimeout
ParametersNameIDModelTransfDet
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDModelTransf
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDModel
AttributespaSigned DataType	ftInteger	Precision
SizeValue  Name	CostPrice
AttributespaSigned
paNullable DataTypeftBCDNumericScale	PrecisionSizeValue  NameTax
AttributespaSigned
paNullable DataTypeftBCDNumericScale	PrecisionSizeValue  NameQty
AttributespaSigned
paNullable DataTypeftFloatNumericScale� 	PrecisionSizeValue   SQL.StringsINSERT INTO ModelTransfdet(	IDModelTransfDet,	IDModelTransf,		IDModel,	CostPrice,	Tax,	Qty)VALUES(	:IDModelTransfDet,	:IDModelTransf,
	:IDModel,	:CostPrice,	:Tax,	:Qty) LeftxTopx  TADOStoredProcstpInvTransfOut
ConnectionDM.ADODBConnectCommandTimeoutProcedureNamesp_Inventory_Tranfer_OUT;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@IDModelTransf
Attributes
paNullable DataType	ftInteger	Precision
Value   Left8Top�    