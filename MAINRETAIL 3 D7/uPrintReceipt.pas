(*
-----------------------------------------------------------------------------------------------------

Version : (289 - 285)
Date    : 03.18.2011
Author  : Antonio Marcos Fernandes de Souza (amf)
Issue   : Hold not printed.
Solution: To test first if idpresale is not null.
Version : (289 - 286)
-----------------------------------------------------------------------------------------------------

Version : (287 - 275)
Date    : 11.24.2010
Author  : Antonio Marcos Fernandes de Souza (Antonio M F Souza)
Issue   : ( Changes ) - word wrap description if this one is too long.
Solution: Were enabled word wrap to description in receipt.
Version : (287 - 276)
-----------------------------------------------------------------------------------------------------

Version : (287 - 272)
Date    : 10.13.2010
Author  : Antonio Marcos Fernandes de Souza (Antonio M F Souza)
Issue   : ( Implementation ) - Reprint receipt.
Solution: I made a button to that functionality
Version : (287 - 273)
-----------------------------------------------------------------------------------------------------
*)

unit uPrintReceipt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBTables, ComCtrls, ADODB, siComp, siLangRT,
  PaiDeForms, PaidePrinter, ppDB, ppDBPipe, ppEndUsr, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ppStrtch,
  ppMemo, ppModule, raCodMod, ppSubRpt, ppParameter, ppRegion, jpeg, ppVar,
  PsRBExport_MasterControl, PowerADOQuery, DBCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, BuilderControls, myChkBox, Provider, DBClient,
  XiButton, EanRB, clsInfoCashSale;

const
  RECEIPT_TYPE_HOLD             = 1;
  RECEIPT_TYPE_INVOICE          = 2;
  RECEIPT_TYPE_TICKET           = 3;
  RECEIPT_TYPE_TAXISEMPTION     = 4;
  RECEIPT_TYPE_LAYAWAY_RECEIVE  = 5;

type
  TPrintReceipt = class(TFrmParentPrint)
    quBarCode: TADOQuery;
    quBarCodeBarCode: TStringField;
    quPreSaleValue: TADOStoredProc;
    quPreSaleValueTaxIsent: TBooleanField;
    quPreSaleValueSubTotal: TFloatField;
    quPreSaleValueItemDiscount: TFloatField;
    quPreSaleValueTax: TFloatField;
    quPreSaleValueTaxPrc: TFloatField;
    quPreSaleValueDiscountPrc: TFloatField;
    quPreSaleValueTotalInvoice: TFloatField;
    quPreSaleValueSpecialPriceID: TIntegerField;
    quPreSaleValueSpecialPrice: TStringField;
    quPreSaleValuenOpenUser: TIntegerField;
    quPreSaleValueShowOpenUser: TIntegerField;
    quPreSaleInfo: TADOQuery;
    quPreSaleInfoIDPreSale: TIntegerField;
    quPreSaleInfoIDMeioPag: TIntegerField;
    quPreSaleInfoIDTouristGroup: TIntegerField;
    quPreSaleInfoPreSaleDate: TDateTimeField;
    quPreSaleInfoOtherComissionID: TIntegerField;
    quPreSaleInfoIDCustomer: TIntegerField;
    quPreSaleInfoPassportDate: TDateTimeField;
    quPreSaleInfoAirLine: TStringField;
    quPreSaleInfoCompanyName: TStringField;
    quPreSaleInfoCompanyCGC: TStringField;
    quPreSaleInfoDepositDate: TDateTimeField;
    quPreSaleInfoNote: TStringField;
    quPreSaleInfoInvoiceDate: TDateTimeField;
    quPreSaleInfoIDInvoice: TIntegerField;
    quPreSaleInfoPassport: TStringField;
    quPreSaleInfoTicket: TStringField;
    quPreSaleInfoMediaID: TIntegerField;
    quPreSaleItem: TADOStoredProc;
    quPreSaleItemModelID: TIntegerField;
    quPreSaleItemModel: TStringField;
    quPreSaleItemDescription: TStringField;
    quPreSaleItemSalePrice: TFloatField;
    quPreSaleItemDiscount: TFloatField;
    quPreSaleItemIDInventoryMov: TIntegerField;
    quPreSaleItemTotalItem: TFloatField;
    quPreSaleItemSalesPerson: TStringField;
    quPreSaleItemIDComission: TIntegerField;
    quPreSaleItemCostPrice: TFloatField;
    quPreSaleInfoCashReceived: TFloatField;
    quPreSaleInfoCashRegMovID: TIntegerField;
    quDescCashier: TADOQuery;
    quDescCashierSystemUser: TStringField;
    quPreSaleInfoPrinted: TBooleanField;
    quPreSaleItemIDUser: TIntegerField;
    quPreSaleItemExchangeInvoice: TIntegerField;
    quPreSaleInfoTaxIsent: TBooleanField;
    quPreSaleInfoCardNumber: TStringField;
    quPreSaleInfoAddress: TStringField;
    quSerial: TADOQuery;
    quSerialDocumentID: TIntegerField;
    quSerialSerialNumber: TStringField;
    quSerialInventoryMovID: TIntegerField;
    quPreSaleValueTaxIsemptValue: TFloatField;
    quPreSaleValueSubTotalTaxable: TFloatField;
    quPreSaleValueTaxIsemptItemDiscount: TFloatField;
    quPreSaleValueTotalDiscount: TCurrencyField;
    quPreSaleParc: TADOQuery;
    quPreSaleParcIDDocumentoTipo: TIntegerField;
    quPreSaleParcNumDocumento: TStringField;
    quPreSaleParcDataVencimento: TDateTimeField;
    quPreSaleParcValorNominal: TFloatField;
    quPreSaleParcMeioPag: TStringField;
    quPreSaleParcIDMeioPag: TIntegerField;
    quStore: TADOQuery;
    quPreSaleInfoFirstName: TStringField;
    quPreSaleInfoLastName: TStringField;
    quPreSaleInfoPrintNotes: TBooleanField;
    quPreSaleInfoMedia: TStringField;
    quPayments: TADOQuery;
    AID: TIntegerField;
    quPaymentsMeioPag: TStringField;
    quPaymentsValorNominal: TFloatField;
    quPaymentsDataVencimento: TDateTimeField;
    quPaymentsIDQuitacaoMeioPrevisto: TIntegerField;
    quPaymentsIDDocumentoTipo: TIntegerField;
    quPaymentsIDPreSale: TIntegerField;
    quPaymentsCheckNumber: TStringField;
    quPaymentsIDBankCheck: TIntegerField;
    quPaymentsCustomerDocument: TStringField;
    quPaymentsCustomerName: TStringField;
    quPaymentsCustomerPhone: TStringField;
    quPaymentsHistorico: TMemoField;
    ppDesigner: TppDesigner;
    dsPreSaleInfo: TDataSource;
    ppPreSaleInfo: TppDBPipeline;
    dsPreSaleItem: TDataSource;
    ppPreSaleItem: TppDBPipeline;
    dsPayments: TDataSource;
    quPreSaleInfoCountryCod: TStringField;
    quPreSaleInfoCountry: TStringField;
    quPreSaleInfoStateCode: TStringField;
    quPreSaleInfoState: TStringField;
    quPreSaleInfoClientAddress: TStringField;
    quPreSaleInfoClientCity: TStringField;
    quPreSaleInfoClientNeighborhood: TStringField;
    quPreSaleInfoClientZip: TStringField;
    quPreSaleInfoClientPhone: TStringField;
    quPreSaleInfoClientCell: TStringField;
    quPreSaleInfoClientEmail: TStringField;
    quPreSaleInfoClientBirthDate: TDateTimeField;
    quPreSaleInfoClientEmployeeID: TStringField;
    quPreSaleInfoClientSocialSecurity: TStringField;
    quPreSaleInfoClientFederalID: TStringField;
    quPreSaleInfoClientSalesTax: TStringField;
    quPreSaleInfoClientDBA: TStringField;
    quPreSaleItemTax: TBCDField;
    quPreSaleItemUnitSalePrice: TCurrencyField;
    dsPreSaleValue: TDataSource;
    ppPreSaleValue: TppDBPipeline;
    ppStore: TppDBPipeline;
    dsStore: TDataSource;
    quPreSaleValueSubTotalDiscount: TCurrencyField;
    quPreSaleItemTaxValue: TFloatField;
    ppSerial: TppDBPipeline;
    dsSerial: TDataSource;
    quPreSaleItemCodSize: TStringField;
    quPreSaleItemSizeName: TStringField;
    quPreSaleItemCodColor: TStringField;
    quPreSaleItemColor: TStringField;
    quPreSaleItemSuggRetail: TBCDField;
    quPaymentsPaymentPlace: TIntegerField;
    quPreSaleValueAditionalExpenses: TBCDField;
    quPreSaleInfoIDFormOfPayment: TIntegerField;
    quPaymentsPaymentPlaceDesc: TStringField;
    quInvoiceCosts: TADODataSet;
    quInvoiceCostsCostType: TStringField;
    quInvoiceCostsIDInvoiceCost: TIntegerField;
    quInvoiceCostsIDCostType: TIntegerField;
    quInvoiceCostsAmount: TBCDField;
    dsInvoiceCosts: TDataSource;
    ppInvoiceCosts: TppDBPipeline;
    quDeliveryInfo: TADOQuery;
    quDeliveryInfoIDPreSale: TIntegerField;
    quDeliveryInfoDeliverTypeID: TIntegerField;
    quDeliveryInfoDeliverDate: TDateTimeField;
    quDeliveryInfoDeliverAddress: TStringField;
    quDeliveryInfoDeliverOBS: TStringField;
    quDeliveryInfoDeliverConfirmation: TBooleanField;
    quDeliveryInfoIDFormOfPayment: TIntegerField;
    quDeliveryInfoDeliverType: TStringField;
    ppDelivery: TppDBPipeline;
    dsDeliveryIndo: TDataSource;
    quPreSaleItemIsDelivered: TBooleanField;
    quPreSaleInfoSaleCode: TStringField;
    quPreSaleInfoInvoiceCode: TStringField;
    quPreSaleItemSaleCode: TStringField;
    quPreSaleItemInvoiceCode: TStringField;
    quDeliveryInfoSaleCode: TStringField;
    quDeliveryInfoInvoiceCode: TStringField;
    quPreSaleInfoFullName: TStringField;
    quPreSaleItemTaxes: TADODataSet;
    dsItemTax: TDataSource;
    ppItemTaxes: TppDBPipeline;
    quPreSaleItemTaxesTaxCategory: TStringField;
    quPreSaleItemTaxesOperationType: TIntegerField;
    quPreSaleItemTaxesSaleTaxType: TIntegerField;
    quPreSaleItemTaxesTax: TBCDField;
    quPreSaleItemTaxesIDMov: TIntegerField;
    PsRBExportMasterControl: TPsRBExportMasterControl;
    quFeatures: TPowerADOQuery;
    quFeaturesIDInvFeatures: TIntegerField;
    quFeaturesFeature: TStringField;
    dsFeatures: TDataSource;
    ppFeatures: TppDBPipeline;
    quTechFeature: TADOQuery;
    quTechFeatureIDInvTechFeatures: TIntegerField;
    quTechFeatureTechFeature: TStringField;
    dsTechFeature: TDataSource;
    ppTechFeatures: TppDBPipeline;
    quPreSaleItemIDModel: TIntegerField;
    quPreSaleItemQty: TFloatField;
    quPreSaleInfoClientPhoneAreaCode: TStringField;
    quPreSaleInfoClientCellAreaCode: TStringField;
    quPreSaleInfoClientFax: TStringField;
    quPreSaleInfoClientContacts: TStringField;
    quPreSaleInfoClientContact: TStringField;
    quPaymentsPayType: TIntegerField;
    quPreSaleInfoLayaway: TBooleanField;
    quPreSaleInfoChange: TFloatField;
    quPaymentsChange: TCurrencyField;
    quPaymentsCashReceived: TBCDField;
    ppPayments: TppDBPipeline;
    quPaymentsAuthorization: TStringField;
    quPaymentsCardNumber: TStringField;
    quPaymentsNumMeioQuitPreVisto: TStringField;
    quModelReceipt: TADODataSet;
    quCategoryReceipt: TADODataSet;
    quModelReceiptIDModel: TIntegerField;
    quModelReceiptReceiptText: TStringField;
    quPreSaleItemModelReceipt: TStringField;
    quCategoryReceiptIDModel: TIntegerField;
    quCategoryReceiptReceiptText: TStringField;
    quPreSaleItemCategoryReceipt: TStringField;
    quPaymentsDrawerKickOnPay: TBooleanField;
    quPreSaleItemPromo: TBooleanField;
    quPreSaleItemSellingPrice: TBCDField;
    quBonusBucks: TADOQuery;
    dsBonusBucks: TDataSource;
    quBonusBucksBonusCupon: TStringField;
    quBonusBucksDiscountValue: TBCDField;
    ppBonusBucks: TppDBPipeline;
    quBonusBucksValidFromDate: TDateTimeField;
    quBonusBucksExpirationDate: TDateTimeField;
    tmrPrint: TTimer;
    pnlPayment: TPanel;
    pnlPrintControl: TPanel;
    lblInvoice: TLabel;
    lblInvoiceTotal: TLabel;
    dbValue: TDBText;
    dbTotalValue: TDBText;
    lblChange: TLabel;
    lblChangeValue: TLabel;
    grdPayments: TcxGrid;
    grdPaymentsDBTV: TcxGridDBTableView;
    grdPaymentsDBTVMeioPag: TcxGridDBColumn;
    grdPaymentsDBTVDataVencimento: TcxGridDBColumn;
    grdPaymentsDBTVValorNominal: TcxGridDBColumn;
    grdPaymentsLVL: TcxGridLevel;
    lblPrint: TLabel;
    pnlPrinter: TPanel;
    AniPrint: TAnimate;
    btOk: TButton;
    pnlGiftBalance: TPanel;
    mmGiftBalance: TMemo;
    lblGift: TLabel;
    quGiftBalance: TADOQuery;
    quGiftBalanceIDAccountCard: TIntegerField;
    quGiftBalanceCardNumber: TStringField;
    quGiftBalanceAmount: TBCDField;
    quShippingInfo: TADODataSet;
    dsShippingInfo: TDataSource;
    ppShippingInfo: TppDBPipeline;
    quShippingInfoIDPreSale: TIntegerField;
    quShippingInfoIDInvoiceShipping: TIntegerField;
    quShippingInfoShipDate: TDateTimeField;
    quShippingInfoTracking: TStringField;
    quShippingInfoIDDeliverType: TIntegerField;
    quShippingInfoAddressName: TStringField;
    quShippingInfoAddress: TStringField;
    quShippingInfoCity: TStringField;
    quShippingInfoZIP: TStringField;
    quShippingInfoIDEstado: TStringField;
    quShippingInfoIDPais: TIntegerField;
    quShippingInfoState: TStringField;
    quShippingInfoCountryCod: TStringField;
    quShippingInfoCountry: TStringField;
    quPreSaleItemDiscountPercent: TFloatField;
    quPreSaleValueInvoiceDiscount: TBCDField;
    quPreSaleItemSerialNumber: TBooleanField;
    quPreSaleItemAutoServiceNum: TIntegerField;
    quPreSaleItemCupomFiscal: TStringField;
    quPreSaleItemManufacturer: TStringField;
    quPreSaleItemUnit: TStringField;
    quPreSaleItemDepartment: TStringField;
    quStoreStore: TStringField;
    quStoreAddress: TStringField;
    quStoreCity: TStringField;
    quStoreZip: TStringField;
    quStorePhone: TStringField;
    quStoreFax: TStringField;
    quStoreContact: TStringField;
    quStoreTicketHeader: TMemoField;
    quStoreTicketLayawayFooter: TMemoField;
    quStoreTicketTaxIsemptFooter: TMemoField;
    quStoreTicketFooter: TMemoField;
    quStoreTicketDetail: TMemoField;
    quStoreTicketTotals: TMemoField;
    quStorePrintTicketHeader: TBooleanField;
    quStorePrintLayawayFooter: TBooleanField;
    quStorePrintTaxInsemptFooter: TBooleanField;
    quStorePrintTicketFooter: TBooleanField;
    quStoreEmail: TStringField;
    quStoreWebPage: TStringField;
    quStoreStateCod: TStringField;
    quStoreState: TStringField;
    quStoreEmpresa: TStringField;
    quStoreRazaoEMP: TStringField;
    quStoreCNPJEMP: TStringField;
    quStoreIEEMP: TStringField;
    quStoreIMEMP: TStringField;
    quStoreEndEMP: TStringField;
    quStoreBairroEMP: TStringField;
    quStoreCidadeEMP: TStringField;
    quStoreCEPEMP: TStringField;
    quStoreEstadoEMP: TStringField;
    quStoreLogoEMP: TBlobField;
    quPreSaleInfoIDStore: TIntegerField;
    quPreSaleInfoTaxPerc: TBCDField;
    quPreSaleInfoIDCFOP: TIntegerField;
    quPreSaleInfoCFOP: TStringField;
    quPreSaleInfoNaturezaOperacao: TStringField;
    quPreSaleInfoPessoaTax: TStringField;
    quPreSaleInfoFreightType: TIntegerField;
    quPreSaleInfoCarrier: TStringField;
    quPreSaleInfoCarrierAddress: TStringField;
    quPreSaleInfoCarrierCity: TStringField;
    quPreSaleInfoCarrierNeighborhood: TStringField;
    quPreSaleInfoCarrierZip: TStringField;
    quPreSaleInfoCarrierFederalID: TStringField;
    quPreSaleInfoCarrierDBA: TStringField;
    quPreSaleInfoCarrierEmployeeID: TStringField;
    quPreSaleInfoAgent: TStringField;
    quPreSaleInfoAgentPhone: TStringField;
    quPreSaleInfoAgentCell: TStringField;
    quPreSaleInfoAgentEmail: TStringField;
    quPreSaleItemSerialNumbers: TStringField;
    quPreSaleInfoClientIdentidade: TStringField;
    quPreSaleInfoClientOrgaoEmissor: TStringField;
    quPreSaleInfoClientDataExpedicao: TDateTimeField;
    quPaymentsIDLancamento: TIntegerField;
    quPreSaleInfoClientOBS: TStringField;
    cdsPreSaleItem: TClientDataSet;
    dspPreSaleItem: TDataSetProvider;
    cdsPreSaleItemModelID: TIntegerField;
    cdsPreSaleItemModel: TStringField;
    cdsPreSaleItemDescription: TStringField;
    cdsPreSaleItemSalePrice: TFloatField;
    cdsPreSaleItemDiscount: TFloatField;
    cdsPreSaleItemIDInventoryMov: TIntegerField;
    cdsPreSaleItemTotalItem: TFloatField;
    cdsPreSaleItemSalesPerson: TStringField;
    cdsPreSaleItemIDComission: TIntegerField;
    cdsPreSaleItemCostPrice: TFloatField;
    cdsPreSaleItemIDUser: TIntegerField;
    cdsPreSaleItemExchangeInvoice: TIntegerField;
    cdsPreSaleItemTax: TBCDField;
    cdsPreSaleItemUnitSalePrice: TCurrencyField;
    cdsPreSaleItemTaxValue: TFloatField;
    cdsPreSaleItemCodSize: TStringField;
    cdsPreSaleItemSizeName: TStringField;
    cdsPreSaleItemCodColor: TStringField;
    cdsPreSaleItemColor: TStringField;
    cdsPreSaleItemSuggRetail: TBCDField;
    cdsPreSaleItemIsDelivered: TBooleanField;
    cdsPreSaleItemSaleCode: TStringField;
    cdsPreSaleItemInvoiceCode: TStringField;
    cdsPreSaleItemIDModel: TIntegerField;
    cdsPreSaleItemQty: TFloatField;
    cdsPreSaleItemModelReceipt: TStringField;
    cdsPreSaleItemCategoryReceipt: TStringField;
    cdsPreSaleItemPromo: TBooleanField;
    cdsPreSaleItemSellingPrice: TBCDField;
    cdsPreSaleItemDiscountPercent: TFloatField;
    cdsPreSaleItemSerialNumber: TBooleanField;
    cdsPreSaleItemAutoServiceNum: TIntegerField;
    cdsPreSaleItemCupomFiscal: TStringField;
    cdsPreSaleItemManufacturer: TStringField;
    cdsPreSaleItemUnit: TStringField;
    cdsPreSaleItemDepartment: TStringField;
    cdsPreSaleItemSerialNumbers: TStringField;
    quPaymentCondition: TADODataSet;
    quPaymentConditionIDMeioPag: TIntegerField;
    quPaymentConditionMeioPag: TStringField;
    quPaymentConditionPayType: TIntegerField;
    quPaymentConditionDrawerKickOnPay: TBooleanField;
    quPaymentConditionAmount: TBCDField;
    quPaymentConditionOBS: TStringField;
    quPaymentConditionEstimetedDate: TDateTimeField;
    dsPaymentCondition: TDataSource;
    ppPaymentCondition: TppDBPipeline;
    quPaymentsNumDesdobramento: TStringField;
    quPaymentsTotalQuitado: TBCDField;
    quPreSaleValueValorExtenso: TStringField;
    btnReprint: TXiButton;
    quPaymentsLayaway: TBooleanField;
    quPaymentsRemains: TCurrencyField;
    ppReport: TppReport;
    quPreSaleInfoDeliverDate: TDateTimeField;
    quPreSaleValueTotalSaved: TCurrencyField;
    quPaymentsCodSystemUser: TStringField;
    quPaymentsMerchantID: TStringField;
    quPaymentsIsChip: TBooleanField;
    quPaymentsAppLabel: TStringField;
    quPaymentsLabelAID: TStringField;
    quPaymentsLabelTVR: TStringField;
    quPaymentsLabelIAD: TStringField;
    quPaymentsIDLancamentoTipo: TIntegerField;
    quPaymentsMessageField1: TStringField;
    ppReport1: TppReport;
    ppParameterList2: TppParameterList;
    ppTitleBand5: TppTitleBand;
    ppRegion24: TppRegion;
    ppLabel33: TppLabel;
    ppRegion25: TppRegion;
    ppLabel34: TppLabel;
    ppDBText31: TppDBText;
    ppLabel35: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppCashier: TppLabel;
    cashierDb: TppDBText;
    ppRegion26: TppRegion;
    ppLabel39: TppLabel;
    ppDBText35: TppDBText;
    ppRegion27: TppRegion;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine3: TppLine;
    ppLogoImage: TppImage;
    ppDetailBand6: TppDetailBand;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppDetailBand7: TppDetailBand;
    ppRegion28: TppRegion;
    ppVariable2: TppVariable;
    ppDBText36: TppDBText;
    ppDBMemo9: TppDBMemo;
    ppRegion29: TppRegion;
    ppDBText38: TppDBText;
    ppLabel43: TppLabel;
    ppDBText39: TppDBText;
    ppRegion30: TppRegion;
    ppDBMemo5: TppDBMemo;
    ppRegion31: TppRegion;
    ppVariable5: TppVariable;
    ppLabel44: TppLabel;
    ppSummaryBand6: TppSummaryBand;
    ppRegion32: TppRegion;
    ppLabel45: TppLabel;
    ppDBText40: TppDBText;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppRegion33: TppRegion;
    ppLabel48: TppLabel;
    ppDBText43: TppDBText;
    ppRegion34: TppRegion;
    ppDBText44: TppDBText;
    ppLine4: TppLine;
    ppLabel49: TppLabel;
    ppDBText45: TppDBText;
    ppLabel50: TppLabel;
    ppRegion35: TppRegion;
    ppLabel51: TppLabel;
    pplbRemainValue: TppLabel;
    raCodeModule6: TraCodeModule;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppDetailBand8: TppDetailBand;
    ppRegion37: TppRegion;
    ppDBText47: TppDBText;
    ppVariable6: TppVariable;
    ppDBText48: TppDBText;
    ppRegion38: TppRegion;
    ppDBText49: TppDBText;
    ppLabel55: TppLabel;
    ppSummaryBand7: TppSummaryBand;
    ppRegion39: TppRegion;
    RBEan4: TRBEan;
    ppDBMemo6: TppDBMemo;
    ppRegion40: TppRegion;
    ppMemo2: TppMemo;
    ppRegion36: TppRegion;
    ppDBText46: TppDBText;
    ppLabel53: TppLabel;
    raCodeModule7: TraCodeModule;
    ppSubReport7: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppDetailBand9: TppDetailBand;
    ppRegion42: TppRegion;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppRegion43: TppRegion;
    ppDBText55: TppDBText;
    ppLabel58: TppLabel;
    ppSummaryBand8: TppSummaryBand;
    ppRegion44: TppRegion;
    RBEan5: TRBEan;
    ppDBMemo7: TppDBMemo;
    ppRegion45: TppRegion;
    ppMemo3: TppMemo;
    ppRegion46: TppRegion;
    ppLabel59: TppLabel;
    ppRegion41: TppRegion;
    ppLabel56: TppLabel;
    ppDBText51: TppDBText;
    raCodeModule8: TraCodeModule;
    ppSummaryBand9: TppSummaryBand;
    ppDBMemo8: TppDBMemo;
    ppLabel60: TppLabel;
    ppSubReport8: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppDetailBand10: TppDetailBand;
    ppImage4: TppImage;
    RBEan6: TRBEan;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLabel63: TppLabel;
    ppDBText59: TppDBText;
    ppLabel64: TppLabel;
    ppDBText60: TppDBText;
    ppLabel65: TppLabel;
    ppImage5: TppImage;
    ppSummaryBand10: TppSummaryBand;
    raCodeModule9: TraCodeModule;
    raCodeModule10: TraCodeModule;
    ppTitleBand1: TppTitleBand;
    ppRegion1: TppRegion;
    ppLabel1: TppLabel;
    ppRegion2: TppRegion;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppRegion3: TppRegion;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppRegion4: TppRegion;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppImage3: TppImage;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppRegion5: TppRegion;
    ppVariable1: TppVariable;
    ppDBText7: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppRegion6: TppRegion;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppRegion7: TppRegion;
    ppDBMemo2: TppDBMemo;
    ppRegion8: TppRegion;
    ppVariable3: TppVariable;
    ppLabel13: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppRegion9: TppRegion;
    ppLabel14: TppLabel;
    ppDBText10: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppRegion10: TppRegion;
    ppLabel17: TppLabel;
    ppDBText13: TppDBText;
    ppRegion11: TppRegion;
    ppDBText14: TppDBText;
    ppLine2: TppLine;
    ppLabel18: TppLabel;
    ppDBText15: TppDBText;
    ppLabel19: TppLabel;
    ppRegion12: TppRegion;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    raCodeModule1: TraCodeModule;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppRegion13: TppRegion;
    ppDBText16: TppDBText;
    ppVariable4: TppVariable;
    ppDBText17: TppDBText;
    ppRegion14: TppRegion;
    ppDBText18: TppDBText;
    ppLabel22: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppRegion15: TppRegion;
    RBEan1: TRBEan;
    ppDBMemo3: TppDBMemo;
    ppRegion16: TppRegion;
    ppMemo1: TppMemo;
    ppRegion17: TppRegion;
    ppDBText19: TppDBText;
    ppLabel23: TppLabel;
    raCodeModule2: TraCodeModule;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppRegion18: TppRegion;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppRegion19: TppRegion;
    ppDBText23: TppDBText;
    ppLabel24: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppRegion20: TppRegion;
    RBEan2: TRBEan;
    ppDBMemo4: TppDBMemo;
    ppRegion21: TppRegion;
    ppMemo4: TppMemo;
    ppRegion22: TppRegion;
    ppLabel25: TppLabel;
    ppRegion23: TppRegion;
    ppLabel26: TppLabel;
    ppDBText24: TppDBText;
    raCodeModule3: TraCodeModule;
    ppSummaryBand4: TppSummaryBand;
    ppDBMemo10: TppDBMemo;
    ppLabel27: TppLabel;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppImage1: TppImage;
    RBEan3: TRBEan;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel30: TppLabel;
    ppDBText27: TppDBText;
    ppLabel31: TppLabel;
    ppDBText28: TppDBText;
    ppLabel32: TppLabel;
    ppImage2: TppImage;
    ppSummaryBand5: TppSummaryBand;
    raCodeModule4: TraCodeModule;
    raCodeModule5: TraCodeModule;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure quPreSaleValueCalcFields(DataSet: TDataSet);
    procedure quPreSaleItemCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure quPaymentsCalcFields(DataSet: TDataSet);
    procedure quPreSaleItemAfterOpen(DataSet: TDataSet);
    procedure quPreSaleItemAfterClose(DataSet: TDataSet);
    procedure tmrPrintTimer(Sender: TObject);
    procedure quPaymentsAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure btnReprintClick(Sender: TObject);
    procedure pplbRemainValuePrint(Sender: TObject);
  private
    // Antonio M F Souza June 29, 2012
    reprint: boolean;

    // Antonio M F Souza June 21, 2012: Internal reference to InfoCashSale
    objInfocashSale: InfoCashSale;

    //Translation
    sEndereco,
    sItems,
    sTelefone,
    sNoTaxAble,
    sTaxAble,
    sTax,
    sSubTotal,
    sTotal,
    sDiscount,
    sHold,
    sTaxExpHeadr,
    sIInvNum,
    sIInvDate,
    sICustomer,
    sIPassPort,
    sIPassPrtNum,
    sITicketNum,
    sIAirLine,
    sIArrivalNum,
    sIBusName,
    sILicencNum,
    sIAddress,
    sRecImpresso,
    sClickOK,
    sPayStore,
    sPayOuter,
    sPayOther,
    sBonusCode,
    sBonusValue,
    sBonusDate,
    sMsgBonus,
    sBonusGynbo1,
    sBonusGynbo2,
    sBonusGynbo3: String;
    MyIDPreSale, MyIDInvoice    : Integer;
    MyTotCash      : Currency;
    MyCashReceived : Currency;
    MyTotRefund    : Currency;
    MyChange       : Currency;
    ActualTime     : TDateTime;
    FPaymentDrawKick : Boolean;
    FChangeList    : TStringList;

    //Antonio M F Souza 11.02.2010 : save layaway payments to avoid fail in sum.
    FLayawayPayments: TStringList;

    // Max e Maic
    FPrintFooter, FHeightChanged: Boolean;
    FCopies, FReceiptType: Integer;
    FChangeValue: Double;

    //Antonio M F Souza 10.29.2010 : save total items to calculate remains.
    FSumLayawayPaid: double;
    FTotalInvoice: double;

    // Alex 09/30/2015
    function BuildExtraInformationText( originalText:String ): String;

    //Antonio M F Souza July 13, 2012 - gc number masked.
    function getGCNumberMasked(pGCNumber: String): String;

    //Antonio M F Souza 11.02.2010 - get total payed already to layaway receipt.
    function getTotalPayedLayaway(AIdPreSale: integer): double;

    //Antonio M F Souza 10.29.2010 - get total to invoice
    function getTotalInvoice(AIdPreSale: integer): double;

    procedure ImpTicketHeader(PrintDate: TDateTime; IDInvoice, IDHold, Customer,
      Cashier: String; IDTouristGroup: Integer; Printed: Boolean; Media: String);
    procedure ImpTicketDeliverHeader(PrintDate: TDateTime; IDPreSale, Customer,
      Hotel: String; IDTouristGroup : Integer; Media, Telefone, Bairro, Cidade, CEP, OBS: String);
    procedure ImpTicketLine(Qty: Double; Desc, Model, CatNote: String; Val: Double;
      BarCode: String; IDUser: Integer; SalesPerson, Manufacturer, Unidade: String);
    procedure ImpTicketTotals(SubTotalTaxable, TaxISemptValue, SubTotal, Tax,
      Total, Received, Change, ItemDiscount, Discount, Refund: Double);
    procedure ImpTicketPaymentLine(Date: TDateTime; PType: String;  Val: Double);
    procedure ImpTicketNotes;
    procedure ImpTicketTaxExemption;
    procedure ImpFooterLayaway(fInvoiceTotal, fPaymentTotal: Currency );
    procedure ImpTicketFooter;
    procedure ImpTicketBonus;

    //Falta fazer
    procedure ImpTicketHoldTotals(SubTotalTaxable, TaxIsemptValue, SubTotal,
      Tax, Total, Received, Change, ItemDiscount, Discount, Refund: Double; ReceiptType: Integer);
    procedure OpenQueries(var ReceiptType: Integer);
    procedure CalcChangeValue(AChangeValue: Double);
    function GetModelReceiptInfo(IDModel:Integer):String;
    function GetCategoryReceiptInfo(IDModel:Integer):String;
    //New Function
    procedure ehReport_BeforePrint(Sender: TObject);
    procedure ehReport_OnEndPage(Sender, aPage: TObject);
    procedure ehReport_OnStartPage(Sender, aPage: TObject);
    procedure ShowGiftBalanceInfo;

    procedure LoadReport(sReport : String);
    procedure LoadLogoImage;
    function GetTotalRefund: Currency;
    function GetSerialNumbers(IDInventoryMov : Integer):String;

    procedure DetailLineItems;
//    function getquPaymentSQL(): String;

  public
    function DesignReport:Boolean;
    procedure Start(IDPreSale : Integer; ReceiptType: Integer; AChangeValue: Double = 0; pInfoCashSale: InfoCashSale = nil);
    procedure StartShipping(IDPreSale, ReceiptType, NumCopy: Integer;
       ReportPath, Printer : String; Preview : Boolean; AChangeValue: Double = 0);
  end;

implementation

uses uDM, XBase, uMsgBox, uMsgConstant, uDMGlobal, uSystemConst, Variants,
     uStringFunctions, ppTypes, Math, uNumericFunctions, raIDE,
     ppCTDsgn, ppChrt, PsRBRoutines, StrUtils, ConvUtils, uInvoiceInfo;

{$R *.DFM}

function TPrintReceipt.DesignReport:Boolean;
begin
  Result := True;
  try

    { Alex - 7/14/2011 }
    ppReport.Template.FileName := DM.fPrintReceipt.ReportPath;
    ppReport.Template.LoadFromFile;

    ppDesigner.ShowModal;
  except
    Result := False;
  end;
end;

procedure TPrintReceipt.LoadReport(sReport : String);
var
  sMessage: String;
  saveDefaultTemplate: String;
begin

  if sReport <> '[SYSTEM]' then begin
    // Antonio M F Souza 10.03.2011 - begin
    saveDefaultTemplate := ppReport.Template.FileName;
    ppReport.Template.FileName := sReport;
 end;

 // Antonio M F Souza 10.03.2011 - end
 if FileExists(sReport) then
 begin
    // Antonio, August 13, 2013
    ppReport.Reset;

    ppReport.Template.FileName := sReport;
    ppReport.Template.LoadFromFile;
    ppReport.AllowPrintToArchive := True;
    ppReport.AllowPrintToFile    := True;
 end
  //Antonio M F Souza 10.20.2011 - begin
 else begin
    sMessage := 'Receipt specified in client parameters is not present. Default receipt will be used instead';
    application.MessageBox(Pchar(sMessage), 'File not found', mb_OK + mb_IconStop);
    ppReport.Template.Filename := saveDefaultTemplate;
 end;
  //Antonio M F Souza 10.20.2011 - end

 if DM.fPrintReceipt.InvoiceReportPrinter <> '' then
    ppReport.PrinterSetup.PrinterName := DM.fPrintReceipt.InvoiceReportPrinter;

 if DM.fPrintReceipt.Preview then
    ppReport.DeviceType := dtScreen
  else
    begin
    ppReport.DeviceType      := dtPrinter;
    ppReport.ShowPrintDialog := False;
  end;

  //ppReport.PrinterSetup.Copies := DM.fPrintReceipt.NumOfCopies;

  if DM.fPrintReceipt.UseUSBPrinter then
    ppReport.BeforePrint := ehReport_BeforePrint;

  LoadLogoImage;
end;

procedure TPrintReceipt.StartShipping(IDPreSale, ReceiptType, NumCopy: Integer;
  ReportPath, Printer : String; Preview : Boolean; AChangeValue: Double);
var
  PaperType : Integer;
  ReportTemp : String;
  USBPrinter,
  PreviewTemp : Boolean;
  PrinterTemp : String;
  NumCopyTemp : Integer;
begin

  DM.FTraceControl.TraceIn('TPrintReceipt.StartShipping');

  FChangeValue := AChangeValue;
  try
    FReceiptType   := ReceiptType;
    MyIDPreSale    := IDPreSale;
    Self.FormStyle := fsNormal;

    FCopies := 1;

    PaperType   := DM.fPrintReceipt.PaperType;
    ReportTemp  := DM.fPrintReceipt.ReportPath;
    USBPrinter  := DM.fPrintReceipt.UseUSBPrinter;
    PrinterTemp := DM.fPrintReceipt.InvoiceReportPrinter;
    PreviewTemp := DM.fPrintReceipt.Preview;
    NumCopyTemp := DM.fPrintReceipt.NumOfCopies;

    DM.fPrintReceipt.PaperType            := PAPER_TYPE_4A;
    DM.fPrintReceipt.ReportPath           := ReportPath;
    DM.fPrintReceipt.UseUSBPrinter        := False;
    DM.fPrintReceipt.InvoiceReportPrinter := Printer;
    DM.fPrintReceipt.Preview              := Preview;
    DM.fPrintReceipt.NumOfCopies          := NumCopy;

    try
      tmrPrint.Enabled := True;
      ShowModal;
    finally
      DM.fPrintReceipt.PaperType            := PaperType;
      DM.fPrintReceipt.ReportPath           := ReportTemp;
      DM.fPrintReceipt.UseUSBPrinter        := USBPrinter;
      DM.fPrintReceipt.InvoiceReportPrinter := PrinterTemp;
      DM.fPrintReceipt.Preview              := PreviewTemp;
      DM.fPrintReceipt.NumOfCopies          := NumCopyTemp;
      end;
  except
    on E: Exception do
      DM.FTraceControl.SaveTrace(DM.fUser.ID, E.Message, 'TPrintReceipt');
  end;


  DM.FTraceControl.TraceOut;
end;


procedure TPrintReceipt.Start(IDPreSale : Integer; ReceiptType: Integer;
AChangeValue: Double = 0; pInfoCashSale: InfoCashSale = nil);
var
  i, iPaymentCopies: Integer;
  sProcessor, sMercantNum, sCardID: String;
begin

  // Antonio M F Souza June 21, 2012:  I can get infocashSale here.
  if ( pInfoCashSale <> nil ) then
     self.objInfocashSale := pInfoCashSale;

  FChangeValue := AChangeValue;
  FHeightChanged := False;

  if DM.fPrintReceipt.PrintReceipt then
  begin
    DM.FTraceControl.TraceIn('TPrintReceipt.Start');

    try
      FReceiptType := ReceiptType;

      //Antonio M F Souza 03.18.2011
      case FReceiptType of
          RECEIPT_TYPE_HOLD:begin
              //lblInvoice.Caption := 'Hold #';
              lblInvoice.Visible := false;
              dbValue.Visible    := false;
              lblInvoiceTotal.Caption := 'Hold Total #:';
              lblchange.Visible := false;
              lblChangeValue.Visible := lblChange.Visible;
              grdPayments.Visible := false;
          end;

           RECEIPT_TYPE_TICKET: begin
              lblInvoice.Visible := false;
              dbValue.Visible    := false;
              lblInvoiceTotal.Caption := 'Delivery Total #:';
              lblchange.Visible := false;
              lblChangeValue.Visible := lblChange.Visible;
              grdPayments.Visible := false;
           end;

      end;

      MyIDPreSale  := IDPreSale;
      FPrintFooter := False;

      if DM.fPrintReceipt.PaperType = PAPER_TYPE_4A then
        Self.FormStyle := fsNormal
      else
        Self.FormStyle := fsStayOnTop;

      // Number of Copies by Payment registered as PCCharge payment
      FCopies := 1;

      FPaymentDrawKick := False;

      with quPayments do
      begin
        if Active then
          Close;

        //sql.Text := getquPaymentSQL();

        Parameters.ParambyName('IDPreSale').Value := MyIDPreSale;
        Open;

        //Antonio M F Souza 03.18.2011
        if ( not quPayments.FieldByName('IdPreSale').IsNull ) then
           FTotalInvoice := getTotalInvoice(quPayments.fieldByName('IdPreSale').Value);

        First;
        while not EOF do
        begin

         if DM.fCashRegister.Open and (not FPaymentDrawKick) then
           if FieldByName('DrawerKickOnPay').AsBoolean then
             FPaymentDrawKick := True;

         if (not FPrintFooter) then begin
           // Alex 09/27/2015
           //FPrintFooter := quPaymentsPayType.AsInteger in [PAYMENT_TYPE_CARD, PAYMENT_TYPE_DEBIT, PAYMENT_TYPE_STOREACCOUNT];
           FPrintFooter := quPaymentsPayType.AsInteger in [PAYMENT_TYPE_CARD];


         end;

         Next;
        end;
      end;
      tmrPrint.Enabled := True;
      ShowModal;
    except
      on E: Exception do begin
        showmessage(E.Message);
        DM.FTraceControl.SaveTrace(DM.fUser.ID, E.Message, 'TPrintReceipt');
      end;
    end;

    DM.FTraceControl.TraceOut;
  end;
end;

procedure TPrintReceipt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with quPreSaleInfo do
    if Active then
      Close;

  with cdsPreSaleItem do
    if Active then
      Close;

  with quStore do
    if Active then
      Close;

  with quPayments do
    if Active then
      Close;

  with quPaymentCondition do
    if Active then
      Close;

  with quInvoiceCosts do
    if Active then
      Close;

  with quDeliveryInfo do
    if Active then
      Close;

  with quBonusBucks do
    if Active then
      Close;

  with quShippingInfo do
    if Active then
      Close;

  Action := caFree;
end;

procedure TPrintReceipt.ImpTicketPaymentLine(Date: TDateTime; PType: String; Val: Double);
var
  fText, fPayment: String;
begin
  if Length(PType) > 14 then
    PType := Copy(PType,1,14);

  fText    := quStoreTicketTotals.AsString;
  fPayment := (Pad(FormatDateTime('ddddd', Date), 11) +
               Pad(PType, 14) +
               LPad(FormatFloat('###,###,##0.00', Val), 14));

  if Pos(TICKET_PAYDATE_TYPE, fText) > 0 then
    DM.PrintLine(fPayment);
end;

procedure TPrintReceipt.ImpTicketHeader(PrintDate: TDateTime; IDInvoice, IDHold,
  Customer, Cashier: String; IDTouristGroup: Integer; Printed: Boolean; Media: String);
var
  fText : string;
begin
  //Print Header if it is checkedto Print
  if not quStorePrintTicketHeader.AsBoolean then
    Exit;

  fText := quStoreTicketHeader.AsString;
  fText := StringReplace(fText, TICKET_DATE,     DateToStr(PrintDate), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_TIME,     TimeToStr(PrintDate), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_CUSTOMER, Customer, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_MEDIA,    Media, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_CASHIER,  Cashier, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_HOLD,     IDHold, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_INVOICE,  IDInvoice, [rfReplaceAll]);
  
  ImpMemoDBInfo(fText);
end;

procedure TPrintReceipt.ImpTicketNotes;
begin
  DM.PrintLine('----------------------------------------');
  ImpMemoDBInfo(quPreSaleInfoNote.AsString);
  DM.PrintLine('----------------------------------------');
  DM.PrintLine('');
end;

procedure TPrintReceipt.ImpTicketDeliverHeader(PrintDate: TDateTime; IDPreSale,
  Customer, Hotel: String; IDTouristGroup : Integer; Media, Telefone, Bairro, Cidade, CEP, OBS: String);
begin
  //Print Header if it is checked
  ImpTicketHeader(PrintDate, '0', IDPreSale, Customer, cdsPreSaleItemSalesPerson.AsString,
                  IDTouristGroup, False, Media);

  DM.PrintLine('----------------------------------------');
  DM.PrintLine(sEndereco + Hotel);
  DM.PrintLine(Bairro + ' - ' + Cidade);
  DM.PrintLine(sTelefone + Telefone);
  DM.PrintLine(OBS);
  DM.PrintLine('----------------------------------------');
end;

procedure TPrintReceipt.ImpTicketLine(Qty: Double; Desc, Model, CatNote: String;
  Val: Double; BarCode: String; IDUser: Integer; SalesPerson, Manufacturer, Unidade: String);
var
  i, iRgh: Integer;
  fText, fSerial : String;
begin
  fSerial := '';

  fSerial := GetSerialNumbers(cdsPreSaleItemIDInventoryMov.AsInteger);

  fText := quStoreTicketDetail.AsString;
  fText := StringReplace(fText, TICKET_MODEL, Model, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_DESCRIPTION, Desc, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_MANUFACTURER, Manufacturer, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_UNIT, Unidade, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_SP, SalesPerson, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_SPN, IntToStr(IDUser), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_BARCODE, BarCode, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_SERIALNUMBER, fSerial, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_CATEG_TEXT, CatNote, [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_QTY, FloatToStr(Qty), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_UNIT_PRICE, FormatCurr('###,###,##0.00',Val), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_UNIT_TOTAL, IncLeftSpaces(FormatCurr('###,###,##0.00', Qty * Val),14), [rfReplaceAll]);

  iRgh := CountStr(fText, '{>');
  for i:=1 to iRgh do
    fText := IncLeftStringFlage('{>','<}', fText,DM.fPrintReceipt.PrinterLineWidth);

  //ImpMemoNoEmptyLine(fText);
  ImpMemoDBInfo(fText);

end;

procedure TPrintReceipt.ImpTicketTotals(SubTotalTaxable, TaxISemptValue,
  SubTotal, Tax, Total, Received, Change, ItemDiscount, Discount, Refund: Double);
var
  i, iRgh: Integer;
  fText : string;
begin
  fText := quStoreTicketTotals.AsString;

  //Error quando e Layaway
  if (Received = 0) or (Change<0) then
    Change := 0;

  fText := StringReplace(fText, TICKET_NO_TAXABLE, IncLeftSpaces(FormatCurr('###,###,##0.00',TaxIsemptValue), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_TAXABLE, IncLeftSpaces(FormatCurr('###,###,##0.00',SubTotalTaxable), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_SUBTOTAL, IncLeftSpaces(FormatCurr('###,###,##0.00',SubTotal), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_TAX, IncLeftSpaces(FormatCurr('###,###,##0.00',Tax), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_TOTAL, IncLeftSpaces(FormatCurr('###,###,##0.00',Total), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_CASH_RECEIVED, IncLeftSpaces(FormatCurr('###,###,##0.00',Received), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_CHANGE, IncLeftSpaces(FormatCurr('###,###,##0.00',Change), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_ITEM_DISCOUNT, IncLeftSpaces(FormatCurr('###,###,##0.00',ItemDiscount), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_DISCOUNT, IncLeftSpaces(FormatCurr('###,###,##0.00',Discount), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_REFUND, IncLeftSpaces(FormatCurr('###,###,##0.00',Refund), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_PAYDATE_TYPE, '', [rfReplaceAll]);

  if TaxIsemptValue <> 0 then
    fText := CopyStringFlage('{TA','TA}', fText, False)
  else
    fText := CopyStringFlage('{TA','TA}', fText, True);

  if ItemDiscount > 0 then
    fText := CopyStringFlage('{ID','ID}', fText, False)
  else
    fText := CopyStringFlage('{ID','ID}', fText, True);

  if Discount > 0 then
    fText := CopyStringFlage('{D','D}', fText, False)
  else
    fText := CopyStringFlage('{D','D}', fText, True);

  if Refund > 0 then
    fText := CopyStringFlage('{R','R}', fText, False)
  else
    fText := CopyStringFlage('{R','R}', fText, True);

  iRgh := CountStr(fText, '{>');
  for i:=1 to iRgh do
    fText := IncLeftStringFlage('{>','<}', fText,DM.fPrintReceipt.PrinterLineWidth);

  ImpMemoDBInfo(fText);
end;

procedure TPrintReceipt.ImpTicketHoldTotals(SubTotalTaxable, TaxIsemptValue,
  SubTotal, Tax, Total, Received, Change, ItemDiscount, Discount, Refund: Double; ReceiptType: Integer);
var
  i, iRgh: Integer;
  fText : string;
  slText: TStringList;
begin
  case ReceiptType  of
    RECEIPT_TYPE_HOLD:
    begin
      fText := quStoreTicketTotals.AsString;

      //Error quando e Layaway
      if (Received = 0) or (Change<0) then
        Change := 0;

      fText := StringReplace(fText, TICKET_NO_TAXABLE, IncLeftSpaces(FormatCurr('###,###,##0.00',TaxIsemptValue), 14), [rfReplaceAll]);
      fText := StringReplace(fText, TICKET_TAXABLE, IncLeftSpaces(FormatCurr('###,###,##0.00',SubTotalTaxable), 14), [rfReplaceAll]);
      fText := StringReplace(fText, TICKET_SUBTOTAL, IncLeftSpaces(FormatCurr('###,###,##0.00',SubTotal), 14), [rfReplaceAll]);
      fText := StringReplace(fText, TICKET_TAX, IncLeftSpaces(FormatCurr('###,###,##0.00', Tax), 14), [rfReplaceAll]);
      fText := StringReplace(fText, TICKET_TOTAL, IncLeftSpaces(FormatCurr('###,###,##0.00', Total), 14), [rfReplaceAll]);
      fText := StringReplace(fText, TICKET_ITEM_DISCOUNT, IncLeftSpaces(FormatCurr('###,###,##0.00', ItemDiscount), 14), [rfReplaceAll]);
      fText := StringReplace(fText, TICKET_DISCOUNT, IncLeftSpaces(FormatCurr('###,###,##0.00', Discount), 14), [rfReplaceAll]);
      fText := StringReplace(fText, TICKET_REFUND, IncLeftSpaces(FormatCurr('###,###,##0.00', Refund), 14), [rfReplaceAll]);
      fText := StringReplace(fText, TICKET_PAYDATE_TYPE, '', [rfReplaceAll]);

      if TaxIsemptValue <> 0 then
        fText := CopyStringFlage('{TA','TA}', fText, False)
      else
        fText := CopyStringFlage('{TA','TA}', fText, True);

      if ItemDiscount > 0 then
        fText := CopyStringFlage('{ID','ID}', fText, False)
      else
        fText := CopyStringFlage('{ID','ID}', fText, True);

      if Discount > 0 then
        fText := CopyStringFlage('{D','D}', fText, False)
      else
        fText := CopyStringFlage('{D','D}', fText, True);

      if Refund <> 0 then
        fText := CopyStringFlage('{R','R}', fText, False)
      else
        fText := CopyStringFlage('{R','R}', fText, True);

      iRgh := CountStr(fText, '{>');
      for i:=1 to iRgh do
        fText := IncLeftStringFlage('{>','<}', fText, DM.fPrintReceipt.PrinterLineWidth);

      slText := TStringList.Create;
      try
        slText.Text := fText;

        for i := 0 to Pred(slText.Count) do
          DM.PrintLine(slText.Strings[i]);
      finally
        FreeAndNil(slText);
      end;

      {
      DM.PrintLine(' ');
      DM.PrintLine(Space(14) + sSubTotal + RightStr(Space(12) + FormatFloat('#,###,##0.00', SubTotal), 12));
      DM.PrintLine(Space(14) + sTax      + RightStr(Space(12) + FormatFloat('#,###,##0.00', Tax), 12));
      DM.PrintLine(Space(14) + sTotal    + RightStr(Space(12) + FormatFloat('#,###,##0.00',Total), 12));
      DM.PrintLine('                                        ');
      DM.PrintLine(Space(14) + sDiscount + RightStr(Space(12) + FormatFloat('#,###,##0.00', Discount), 12));
      }
    end;
    else
    begin
      DM.PrintLine('                                        ');
      if TaxIsemptValue <> 0 then
      begin
        DM.PrintLine(Space(14) + sNoTaxAble + RightStr(Space(12) + FormatFloat('#,###,##0.00', TaxIsemptValue), 12));
        DM.PrintLine(Space(14) + sTaxAble   + RightStr(Space(12) + FormatFloat('#,###,##0.00', SubTotalTaxable), 12));
        DM.PrintLine(Space(14) + sTax       + RightStr(Space(12) + FormatFloat('#,###,##0.00', Tax), 12));
      end
      else
      begin
        DM.PrintLine(Space(14) + sSubTotal + RightStr(Space(12) + FormatFloat('#,###,##0.00', SubTotal), 12));
        DM.PrintLine(Space(14) + sTax      + RightStr(Space(12) + FormatFloat('#,###,##0.00', Tax), 12));
      end;
      DM.PrintLine(Space(14) + sTotal + RightStr(Space(12) + FormatFloat('#,###,##0.00', Total), 12));

      if Discount > 0  then
      begin
        DM.PrintLine('                                        ');
        DM.PrintLine(Space(14) + sDiscount + RightStr(Space(12) + FormatFloat('#,###,##0.00', Discount), 12));
      end;
    end;
  end;
end;

procedure TPrintReceipt.ImpTicketFooter();
begin
  //Print the ticket footer if it is checked
  if quStorePrintTicketFooter.AsBoolean then
    ImpMemoDBInfo(quStoreTicketFooter.AsString);
end;

procedure TPrintReceipt.ImpFooterLayaway(fInvoiceTotal, fPaymentTotal: Currency);
var
  fText : string;
begin
  if not quStorePrintLayawayFooter.AsBoolean then
    Exit;

  fText := quStoreTicketLayawayFooter.AsString;
  fText := StringReplace(fText, TICKET_PAYMENT_TOTAL, IncLeftSpaces(FormatCurr('###,###,##0.00',fPaymentTotal), 14), [rfReplaceAll]);
  fText := StringReplace(fText, TICKET_PAYMENT_BALANCE, IncLeftSpaces(FormatCurr('###,###,##0.00',fPaymentTotal - fInvoiceTotal), 14), [rfReplaceAll]);

  ImpMemoDBInfo(fText);
end;

procedure TPrintReceipt.quPreSaleValueCalcFields(DataSet: TDataSet);
var
  // Antonio M F Souza, December 13 2012
  tempInvoiceTaxStr: String;
  tempInvoiceTax: Extended;
  tempInvoiceSubTotal: Extended;
  tempInvoiceDiscount: Extended;
  tempInvoiceItemDiscount: Extended;
  tempInvoiceTaxIsemptItemDiscount: Extended;
  tempInvoiceTaxIsemptValue: Extended;
  tempInvoiceAddExpens: Extended;
  tempInvoiceTotal: Extended;
  tempInvoiceTotalStr: String;
  tempInvoiceTotalDiscount: Extended;
  tempInvoiceTotalSaved: Extended;
  tempInvoiceNewSubtotal: Extended;
  tempInvoiceSubtotalTaxable: Extended;

  // Antonio M F Souza October 25, 2012 - to fix rounding issues
  invoiceInfo: TInvoiceInfo;
begin
  try
    try
      invoiceInfo := TInvoiceInfo.Create(dm.ADODBConnect);

      invoiceInfo.InfoCashSale := self.objInfocashSale;
      invoiceInfo.treatInvoice( (quPreSaleValueSubTotal.Value < 0), quPresaleValue);

      // Antonio 2014 Jun 18: Getting results
      qupresaleValueSubtotal.Value := invoiceInfo.Subtotal;
      quPreSaleValueItemDiscount.value := invoiceInfo.ItemsDiscount;
      quPreSaleValueInvoiceDiscount.Value := invoiceInfo.InvoiceDiscount;
      quPreSaleValueTotalInvoice.Value := invoiceInfo.TotalInvoice;
      quPreSaleValueTotalDiscount.Value := invoiceInfo.TotalDiscount;
      quPreSaleValueTotalSaved.Value := invoiceInfo.TotalDiscount;
      quPreSaleValueSubTotalTaxable.Value := invoiceInfo.SubTotalTaxable;
    except
      on e: Exception do begin
        raise Exception.Create(format('error to get totals in invoice: %s', [e.Message]));
      end;
    end;
  finally
    freeAndNil(invoiceInfo);
  end;


end;

procedure TPrintReceipt.quPreSaleItemCalcFields(DataSet: TDataSet);
var
  tempTotalItem: extended;
  tempTotalItemStr: String;
begin
  // total item
  //Antonio June 12, 2013
  if ( quPresaleItemQty.value < 0 ) then begin
     quPresaleItemDiscount.Value := roundLikeDatabase(quPresaleItemDiscount.Value, 2);
     quPreSaleItemDiscount.Value := {(-1) *} qupresaleItemDiscount.Value;
  end;

  quPreSaleItemTotalItem.AsFloat := (quPreSaleItemQty.AsFloat * quPreSaleItemSalePrice.AsFloat) - quPreSaleItemDiscount.AsFloat;

  // Antonio M F Souza, December 19 2012
  tempTotalItem := roundLikeDatabase(quPreSaleItemTotalItem.Value, 2);
  quPreSaleItemTotalItem.Value := tempTotalItem;

  //Unit price
  quPreSaleItemUnitSalePrice.AsCurrency := quPreSaleItemSalePrice.AsFloat - (quPreSaleItemDiscount.AsFloat / quPreSaleItemQty.AsFloat);
  //Tax Value
  quPreSaleItemTaxValue.AsFloat := (((quPreSaleItemSalePrice.AsFloat-quPreSaleItemDiscount.AsFloat) / quPreSaleItemQty.AsFloat) * quPreSaleItemTax.AsFloat)/100;
  //Model para Features
  quPreSaleItemIDModel.AsInteger := quPreSaleItemModelID.AsInteger;
  //Abre a query do Model Receipt
  quPreSaleItemModelReceipt.AsString := GetModelReceiptInfo(quPreSaleItemIDModel.AsInteger);
  //Abre a query do Category Receipt

  quPreSaleItemCategoryReceipt.AsString := GetCategoryReceiptInfo(quPreSaleItemIDModel.AsInteger);

  //Discount Percent
  if (quPreSaleItemSalePrice.AsCurrency <> 0 ) and (quPreSaleItemDiscount.AsCurrency > 0) then
    quPreSaleItemDiscountPercent.AsFloat := (quPreSaleItemDiscount.AsCurrency/quPreSaleItemSalePrice.AsCurrency)* 100;
  quPreSaleItemSerialNumbers.AsString := GetSerialNumbers(quPreSaleItemIDInventoryMov.AsInteger);

end;

procedure TPrintReceipt.FormShow(Sender: TObject);
begin
  AniPrint.Active := True;
  btOk.Visible := False;
end;

procedure TPrintReceipt.btOkClick(Sender: TObject);
begin
  Close;
end;

procedure TPrintReceipt.ImpTicketTaxExemption;
begin

  //Print Tax Isemption if it is checked
  if quStorePrintTaxInsemptFooter.AsBoolean then
  begin
    // Imprime o documento de isen��o de taxa
    DM.PrintLine('');
    DM.PrintLine('');
    DM.PrintLine('');
    DM.PrintLine('');
    //DM.PrintLine(sTaxExpHeadr);
    DM.PrintLine('');
    DM.PrintLine(sIInvNum     + quPreSaleInfoIDInvoice.AsString);
    DM.PrintLine(sIInvDate    + DateToStr(quPreSaleInfoInvoiceDate.AsDateTime));
    DM.PrintLine(sICustomer   + quPreSaleInfoFirstName.AsString +' '+
                                          quPreSaleInfoLastName.ASString);
    DM.PrintLine(sIPassPort   + quPreSaleInfoPassport.AsString);
    DM.PrintLine(sIPassPrtNum + DateToStr(quPreSaleInfoPassportDate.AsDateTime));
    DM.PrintLine(sITicketNum  + quPreSaleInfoTicket.AsString);
    DM.PrintLine(sIAirLine    + quPreSaleInfoAirLine.AsString);
    DM.PrintLine(sIArrivalNum + quPreSaleInfoCardNumber.AsString);
    DM.PrintLine(sIBusName    + quPreSaleInfoCompanyName.AsString);
    DM.PrintLine(sILicencNum   + quPreSaleInfoCompanyCGC.AsString);
    DM.PrintLine(sIAddress    + quPreSaleInfoAddress.AsString);

    DM.PrintLine('');
    DM.PrintLine('');
    DM.PrintLine('');
    DM.PrintLine('');

    ImpMemoDBInfo(quStoreTicketTaxIsemptFooter.AsString);

    DM.PrintLine('');
    DM.PrintLine('');
    DM.PrintLine('');
    DM.PrintLine('');
    DM.PrintLine('');
  end;
end;

procedure TPrintReceipt.FormCreate(Sender: TObject);
begin
  inherited;

  FChangeList := TStringList.Create;
  FLayawayPayments := TStringList.Create;

  case DMGlobal.IDLanguage of
    LANG_ENGLISH :
    begin
      sEndereco      := ' Address:';
      sTelefone      := 'Phone:';
      sNoTaxAble     := '  Non taxable:';
      sTaxAble       := '      Taxable:';
      sTax           := '          Tax:';
      sSubTotal      := '     SubTotal:';
      sTotal         := '        Total:';
      sDiscount      := '     Discount:';
      sHold          := 'HOLD';
      sItems         := '---------------- Items -----------------';
      sTaxExpHeadr   := '======= T A X   E X E M P T I O N ======';
      sIInvNum       := 'Invoice #     : ';
      sIInvDate      := 'Invoice Date  : ';
      sICustomer     := 'Customer      : ';
      sIPassPort     := 'Passport #    : ';
      sIPassPrtNum   := 'Passport Date : ';
      sITicketNum    := 'Ticket #      : ';
      sIAirLine      := 'AirLine       : ';
      sIArrivalNum   := 'Arrival Number: ';
      sIBusName      := 'Business Name : ';
      sILicencNum    := 'Licence #     : ';
      sIAddress      := 'Address       : ';
      sRecImpresso   := 'Receipt Printed';
      sClickOK       := 'Click OK to continue';
      sPayStore      := 'Store';
      sPayOuter      := 'Outer';
      sPayOther      := 'Another';
      sBonusCode     := 'Bonus :';
      sBonusValue    := 'Value :';
      sBonusDate     := 'Valid :';
      sMsgBonus      := '$$$$$$$ You got bonus $$$$$$$';
      sBonusGynbo1   := 'Access the website www.gynbo.com to';
      sBonusGynbo2   := 'collect your bonus using the bonus code';
      sBonusGynbo3   := 'or your e-mail :';

      lblInvoice.Caption                    := 'Invoice #:';
      lblInvoiceTotal.Caption               := 'Invoice Total:';
      lblChange.Caption                     := 'Change';
      grdPaymentsDBTVMeioPag.Caption        := 'Payment';
      grdPaymentsDBTVDataVencimento.Caption := 'Date';
      grdPaymentsDBTVValorNominal.Caption   := 'Amount';
      ppReport.Language := lgEnglish;
    end;

    LANG_PORTUGUESE :
    begin
      sEndereco      := ' Endere�o:';
      sTelefone      := ' Telefone:';
      sNoTaxAble     := 'N�o Tribut�vel:';
      sTaxAble       := '    Tribut�vel:';
      sTax           := '          Taxa:';
      sSubTotal      := '      SubTotal:';
      sTotal         := '         Total:';
      sDiscount      := '      Desconto:';
      sHold          := 'PEND';
      sItems         := '---------------- Itens -----------------';
      sTaxExpHeadr   := '=== I S E N � � O    D E    T A X A ====';
      sIInvNum       := 'N. da Nota    : ';
      sIInvDate      := 'Data da Nota  : ';
      sICustomer     := 'Cliente       : ';
      sIPassPort     := 'N. Passaporte : ';
      sIPassPrtNum   := 'Data Passporte: ';
      sITicketNum    := 'N. do Bilhete : ';
      sIAirLine      := 'Linha A�rea   : ';
      sIArrivalNum   := 'N. da Chegada : ';
      sIBusName      := 'Empresa       : ';
      sILicencNum    := 'N. Taxa ID    : ';
      sIAddress      := 'Endere�o      : ';
      sRecImpresso   := 'Recibo Impresso';
      sClickOK       := 'Clique OK para continuar';
      sPayStore      := 'Loja';
      sPayOuter      := 'Contra-Entrega';
      sPayOther      := 'Outros';
      sBonusCode     := 'B�nus : ';
      sBonusValue    := 'Valor :';
      sBonusDate     := 'Valid.:';
      sMsgBonus      := '$$$$$$$ Voc� ganhou b�nus $$$$$$$';
      sBonusGynbo1   := 'Acesse o site www.gynbo.com para ';
      sBonusGynbo2   := 'resgatar os seus b�nus digitando o B�nus';
      sBonusGynbo3   := 'ou o e-mail :';
      lblInvoice.Caption                    := 'Nota #';
      lblInvoiceTotal.Caption               := 'Total Nota';
      lblChange.Caption                     := 'Troco';
      grdPaymentsDBTVMeioPag.Caption        := 'Pagamento';
      grdPaymentsDBTVDataVencimento.Caption := 'Vencimento';
      grdPaymentsDBTVValorNominal.Caption   := 'Valor';
      ppReport.Language := lgPortugueseBrazil;
    end;

    LANG_SPANISH :
    begin
      sEndereco      := ' Direcci�n:';
      sTelefone      := '  Tel�fono:';
      sNoTaxAble     := 'No Tributable:';
      sTaxAble       := '   Tributable:';
      sTax           := '     Impuesto:';
      sSubTotal      := '     SubTotal:';
      sTotal         := '        Total:';
      sDiscount      := '    Descuento:';
      sHold          := 'PEND';
      sItems         := '---------------- Items -----------------';
      sTaxExpHeadr   := '========= EXENCI�N DE IMPUESTO =========';
      sIInvNum       := 'Boleta #        : ';
      sIInvDate      := 'Fecha Boleta    : ';
      sICustomer     := 'Cliente         : ';
      sIPassPort     := 'Pasaporte       : ';
      sIPassPrtNum   := 'Fecha Pasaporte : ';
      sITicketNum    := 'Pasaje #        : ';
      sIAirLine      := 'Linea A�rea     : ';
      sIArrivalNum   := 'N�mero Vuelo    : ';
      sIBusName      := 'Empresa         : ';
      sILicencNum    := 'Impuesto ID #   : ';
      sIAddress      := 'Direcci�n       : ';
      sRecImpresso   := 'Recibo Imprimido';
      sClickOK       := 'Clic OK para continuar';
      sPayStore      := 'Tienda';
      sPayOuter      := 'Contra-Entrega';
      sPayOther      := 'Otros';
      sBonusCode     := 'B�nus : ';
      sBonusValue    := 'Valor :';
      sBonusDate     := 'Valid.:';
      sMsgBonus      := ' $$$$$$$ Voc� ganhou b�nus $$$$$$$';
      sBonusGynbo1   := 'Acesse o site www.gynbo.com para ';
      sBonusGynbo2   := 'resgatar os seus b�nus digitando o B�nus';
      sBonusGynbo3   := 'ou o e-mail :';
      lblInvoice.Caption                    := 'Boleta #';
      lblInvoiceTotal.Caption               := 'Total Boleta';
      lblChange.Caption                     := 'Cambio';
      grdPaymentsDBTVMeioPag.Caption        := 'Pagamiento';
      grdPaymentsDBTVDataVencimento.Caption := 'Vencimiento';
      grdPaymentsDBTVValorNominal.Caption   := 'Valor';
      ppReport.Language       := lgSpanish;
    end;
  end;
end;

procedure TPrintReceipt.quPaymentsCalcFields(DataSet: TDataSet);
var
  cvmValue, CardInfo : String;
  tempString : String;
begin
  inherited;
  case quPaymentsPaymentPlace.AsInteger of
    0: quPaymentsPaymentPlaceDesc.AsString  := sPayStore;
    1: quPaymentsPaymentPlaceDesc.AsString  := sPayOuter;
    else quPaymentsPaymentPlaceDesc.AsString := sPayOther;
  end;

  if quPaymentsPayType.AsInteger = PAY_TYPE_CASH then
  begin

    //controle criado pois a impressao do relatorio chama o evento vairias vezes
    if Assigned(FChangeList) and (FChangeList.IndexOf(quPaymentsIDLancamento.AsString) = -1) then
    begin
      FChangeList.Add(quPaymentsIDLancamento.AsString);
      MyChange := MyChange + quPaymentsValorNominal.AsFloat;
    end;

    if ((quPaymentsCashReceived.AsFloat - MyChange) > 0) then
      quPaymentsChange.AsFloat := quPaymentsCashReceived.AsFloat - MyChange
    else
      quPaymentsChange.AsFloat := 0;

    lblChangeValue.Caption := FormatFloat('#,##0.00', quPaymentsChange.AsFloat * -1);
  end;

  {  if ( processResult.ChipMethod = 'chip') then begin
      FCmdPayment.Parameters.ParamByName('NumMeioQuitPrevisto').Value :=
      'A:'+ FAuthorization + ' R:' + FTroutD + ' L:' + FLastDigits + ' M:' + FMerchantID + ' E:' + FEntryMethod +
      ' D:' + FDate + ' T:' + FTime + ' C:' + 'chip' + ' P:' + FAppLabel + ' AID:' + FAID + ' TVR:' + FTVR +
      ' IAD:' + FIAD + ' TSI:' + FTSI + ' ARC:' + FARC + ' CVM:' + FCVM;
  }

  CardInfo := quPaymentsNumMeioQuitPreVisto.AsString;
  if CardInfo <> '' then
     if PosEx('A:', CardInfo) > 0 then begin
       quPaymentsAuthorization.AsString := Copy(CardInfo, Pos('A:', (CardInfo))+2, Pos(' R:', CardInfo)-2);
       quPaymentsCardNumber.AsString    := '************' + Copy(CardInfo, Pos('L:', CardInfo)+2, 4);
       // Alex 09/30/2015
       // Antonio 09/28/2015
       //quPaymentsMerchantID.AsString := copy(cardInfo, pos('M:', (cardInfo))+2, pos(' E:', cardInfo)-2);

       tempString := copy(cardInfo, Pos('M:',cardInfo)+2, Length(cardinfo));
       tempString := copy(tempString, 0, Pos('E:',(tempString) ) -1);
       quPaymentsMerchantID.AsString := Trim(tempString);
       quPaymentsNumMeioQuitPreVisto.AsString := BuildExtraInformationText( cardInfo );
       tempString := copy(cardInfo, Pos('CVM:',cardInfo)+4, Length(cardinfo));
       tempString := copy(tempString, 0, Pos('TC:',(tempString) ) -1);
       cvmValue := Trim(tempString);
       If ( cvmValue = 'PIN VERIFIED') Then
         quPaymentsMessageField1.AsString := 'BY ENTERING A VERIFIED PIN, CARDHOLDER AGREES TO PAY ISSUER SUCH '+
                                             'TOTAL IN ACCORDANCE WITH ISSUER''S AGREEMENT WITH CARDHOLDER'
       Else
         quPaymentsMessageField1.AsString := 'I AGREE TO PAY THE ABOVE TOTAL AMOUNT ACCORDING '+
                                             'TO CARD ISSUER AGREEMENT (MERCHANT AGREEMENT IF CREDIT VOUCHER)';


       tempString := copy(cardInfo, Pos('C:',cardInfo)+2, Length(cardinfo));
       tempString := Trim(copy(tempString, 0, Pos('P:',(tempString) ) -1));

       quPaymentsIsChip.Value := ( tempString = 'chip');

       //Alex 10/01/2015
       if ( quPaymentsIsChip.Value = True ) then begin
          // TODO: Change this to a label os a proper field
          quPaymentsCustomerDocument.AsString := IfThen( reprint = True, 'Customer Copy', 'Merchant Copy' );
       end;

     end
     else
       begin
       quPaymentsAuthorization.AsString := quPaymentsNumMeioQuitPreVisto.AsString;
       quPaymentsCardNumber.AsString    := getGCNumberMasked(cardInfo);
       // Antonio M F Souza 13, 2012 - quPaymentsCardNumber.AsString    := '************0000';
       end;

end;

procedure TPrintReceipt.quPreSaleItemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  quPreSaleItemTaxes.Open;
  quFeatures.Open;
  quTechFeature.Open;
end;

procedure TPrintReceipt.quPreSaleItemAfterClose(DataSet: TDataSet);
begin
  inherited;
  quPreSaleItemTaxes.Close;
  quFeatures.Close;
  quTechFeature.Close;
end;

procedure TPrintReceipt.OpenQueries(var ReceiptType: Integer);
begin

  DM.FTraceControl.TraceIn('TPrintReceipt.OpenQueries');

  try

    with quPreSaleInfo do
    begin
      if Active then
        Close;
      Parameters.ParambyName('IDPreSale').Value := MyIDPreSale;
      Open;
      MyIDInvoice := quPreSaleInfoIDInvoice.AsInteger;
      MyCashReceived := quPreSaleInfoCashReceived.AsFloat;
    end;

    with quStore do
    begin
      if Active then
        Close;
      Parameters.ParamByName('IDStore').Value := quPreSaleInfoIDStore.AsInteger;
      Open;
    end;

    // Se � invoice, imprime o serial
    with quSerial do
    begin
      if Active then
        Close;
      Parameters.ParambyName('IDInvoice').Value := MyIDInvoice;
      Open;
    end;

    with cdsPreSaleItem do
    begin
      if Active then
        Close;

      if MyIDInvoice = 0 then
      begin
        Params.ParambyName('@DocumentID').Value := MyIDPreSale;
        Params.ParambyName('@IsPreSale').Value  := True;
        Params.ParambyName('@Date').Value       := Now;
      end
      else
      begin
        if (ReceiptType = RECEIPT_TYPE_HOLD) or
           (ReceiptType = RECEIPT_TYPE_LAYAWAY_RECEIVE) then
          ReceiptType := RECEIPT_TYPE_INVOICE;

        //O presale tem que passar esses parametros para os items
        Params.ParambyName('@DocumentID').Value := MyIDPreSale;
        Params.ParambyName('@IsPreSale').Value  := False;
        Params.ParambyName('@Date').Value       := Now;
      end;

      Open;

      DetailLineItems;

      MyTotRefund := GetTotalRefund;
    end;

    with quPreSaleValue do
    begin
      if Active then
        Close;
      Parameters.ParambyName('@PreSaleID').Value := MyIDPreSale;
      Open;
    end;

    with quPayments do
    begin
      if Active then
        Close;
      Parameters.ParambyName('IDPreSale').Value := MyIDPreSale;
      Open;
    end;

    with quPaymentCondition do
    begin
      if Active then
        Close;
      Parameters.ParambyName('IDPreSale').Value := MyIDPreSale;
      Open;
    end;

    with quInvoiceCosts do
    begin
      if Active then
        Close;
      Parameters.ParambyName('IDPreSale').Value := MyIDPreSale;
      Open;
    end;

    with quDeliveryInfo do
    begin
      if Active then
        Close;
      Parameters.ParambyName('IDPreSale1').Value := MyIDPreSale;
      Parameters.ParambyName('IDPreSale').Value  := MyIDPreSale;
      Open;
    end;

    with quShippingInfo do
    begin
      if Active then
        Close;
      Parameters.ParambyName('IDPreSale').Value := MyIDPreSale;
      Open;
    end;


    if DM.fSystem.SrvParam[PARAM_APPLY_BONUS_ON_SALE] then
      with quBonusBucks do
      begin
        if Active then
          Close;
        Parameters.ParambyName('IDPreSale').Value  := MyIDPreSale;
        Open;
      end;
  except
    on E: Exception do
      DM.FTraceControl.SaveTrace(DM.fUser.ID, E.Message, 'TPrintReceipt');
  end;

  DM.FTraceControl.TraceOut;
end;

procedure TPrintReceipt.CalcChangeValue(AChangeValue: Double);
begin
  lblChange.Visible := (AChangeValue > 0);
  lblChangeValue.Visible := lblChange.Visible;
end;

function TPrintReceipt.GetModelReceiptInfo(IDModel: Integer): String;
begin

  with quModelReceipt do
  begin
  if Active then
    Close;
  Parameters.ParamByName('IDModel').Value := IDModel;
  try
    Open;

    if RecordCount <> 0 then
      begin
      First;
      While not EOF do
        begin
        Result := Result + ' ' + quModelReceiptReceiptText.AsString;
        Next;
        end;
      end;

  finally
    Close;
    end;
  end;

end;

function TPrintReceipt.GetCategoryReceiptInfo(IDModel: Integer): String;
begin
  with quCategoryReceipt do
  begin
  if Active then
    Close;
  Parameters.ParamByName('IDModel').Value := IDModel;
  try
    Open;
    if RecordCount <> 0 then
      Result := quCategoryReceiptReceiptText.AsString;
  finally
    Close;
    end;
  end;

end;

procedure TPrintReceipt.ehReport_BeforePrint(Sender: TObject);
begin

  if (ppReport.PrinterDevice <> nil) then
  begin
    ppReport.PrinterDevice.OnEndPage   := ehReport_OnEndPage;
    ppReport.PrinterDevice.OnStartPage := ehReport_OnStartPage;
  end;

end;


procedure TPrintReceipt.ehReport_OnEndPage(Sender, aPage: TObject);
begin

  if (DM.fPrintReceipt.USBCutCode <> '') then
    DM.SendPrinterCommands(ppReport.Printer.Canvas, DM.GetPrinterCode(DM.fPrintReceipt.USBCutCode));

  {
 Variable1.AsChar := Chr(27) + Chr(100) + Chr(49);
 Variable1.AsChar := 'ESC |100fP';
 Variable1.AsChar := 'ESC # f P';
 Variable1.AsChar := '1B 64 31';
 PrintCommand(Report, Chr(27) + Chr(100) + Chr(49));
  }
end;

procedure TPrintReceipt.ehReport_OnStartPage(Sender, aPage: TObject);
begin
  if (DM.fCashRegister.Open) and FPaymentDrawKick and (DM.fPrintReceipt.USBOpenDraw <> '') then
    DM.SendPrinterCommands(ppReport.Printer.Canvas, DM.GetPrinterCode(DM.fPrintReceipt.USBOpenDraw));
end;

procedure TPrintReceipt.tmrPrintTimer(Sender: TObject);
var
  I: Integer;
  bNotOk: Boolean;
  dDate: TDateTime;
  cPaymentTotal: Currency;
begin
  inherited;
  tmrPrint.Enabled := False;

  if (DM.fPrintReceipt.NumOfCopies > 1) then
    FCopies := DM.fPrintReceipt.NumOfCopies;

  try
    for I := 1 to FCopies do
    begin
      OpenQueries(FReceiptType);
      CalcChangeValue(FChangeValue);
      ShowGiftBalanceInfo;

      Update;

      Application.ProcessMessages;
      bNotOk := True;

      try

        //Impressao do Novo Relatorio
        if DM.fPrintReceipt.PaperType = PAPER_TYPE_4A then
        begin

          if ( not reprint ) then begin
              //Abrir gateta para imp. paralela
              if (DM.fCashRegister.Open and FPaymentDrawKick) and
                 (DM.fPrintReceipt.USBOpenDraw = '') and (DM.fCashRegister.OpenCod <> '') then
                 DM.OpenCashRegister(DRAW_KICK_TYPE_SALE);
          end;

          LoadReport(DM.fPrintReceipt.ReportPath);
          try
            ppReport.Print;
          except
            raise;
          end;
          //Cortar papel para impre. paralela
          if (not DM.fPrintReceipt.UseUSBPrinter) and (DM.fPrintReceipt.USBCutCode = '') then
            DM.SendAfterPrintCode(True);

          // Antonio 11/04/2015 - doesn't need footer to manual charge
          if ( dm.fPCCharge.DeviceProcess <> PROCESSING_TYPE_MANUAL_CHARGE ) then begin
              //Footer
              if FPrintFooter and (DM.fPrintReceipt.ReportPathFooter <> '') then
              begin
                FPaymentDrawKick := False;
                LoadReport(DM.fPrintReceipt.ReportPathFooter);
                try
                  ppReport.Print;
                except
                  raise;
                end;
                //Cortar papel para impre. paralela
                if (not DM.fPrintReceipt.UseUSBPrinter) and (DM.fPrintReceipt.USBCutCode = '') then
                  DM.SendAfterPrintCode(True);
              end;

          end;


          DM.FTraceControl.TraceOut;
          Continue;
        end;

        if ( not reprint ) then begin
            // Open CashRegister
            if DM.fCashRegister.Open and FPaymentDrawKick then
               DM.OpenCashRegister(DRAW_KICK_TYPE_SALE);
        end;

        while bNotOk do
        begin
          try
            if DM.fPrintReceipt.PaperType <> PAPER_TYPE_4A then
              DM.PrinterStart;
            bNotOk := False;
          except
            if MsgBox(MSG_CRT_ERROR_PRINTING, vbCritical + vbYesNo) = vbYes then
              bNotOk := True
            else
            begin
              MsgBox(MSG_INF_REPRINT_INVOICE, vbInformation + vbOkOnly);
              Exit;
            end;
          end;
        end;


        // -----------------------------------------------------------------
        // Impress�o do cabecalho do ticket
        case FReceiptType of
          RECEIPT_TYPE_INVOICE,
          RECEIPT_TYPE_LAYAWAY_RECEIVE: // INVOICE
          begin
            // Tem que descobrir quem pagou o Invoice
            with quDescCashier do
            begin
              if Active then Close;
                Parameters.ParambyName('IDCashRegMov').Value := quPreSaleInfoCashRegMovID.AsInteger;
              Open;
              ImpTicketHeader(quPreSaleInfoInvoiceDate.AsDateTime,
                              quPreSaleInfoInvoiceCode.AsString,
                              quPreSaleInfoSaleCode.AsString,
                              quPreSaleInfoFullName.ASString,
                              cdsPreSaleItemSalesPerson.AsString,
                              quPreSaleInfoIDTouristGroup.AsInteger,
                              quPreSaleInfoPrinted.AsBoolean,
                              quPreSaleInfoMedia.AsString);
              Close;
            end;
          end;

          RECEIPT_TYPE_HOLD: // HOLD
          begin
            if quPreSaleInfoInvoiceDate.IsNull then
              dDate := quPreSaleInfoPreSaleDate.AsDateTime
            else
              dDate := quPreSaleInfoInvoiceDate.AsDateTime;

            ImpTicketHeader(dDate,
                            '0',
                            quPreSaleInfoSaleCode.ASString,
                            quPreSaleInfoFullName.ASString,
                            cdsPreSaleItemSalesPerson.AsString,
                            quPreSaleInfoIDTouristGroup.AsInteger,
                            quPreSaleInfoPrinted.AsBoolean,
                            quPreSaleInfoMedia.AsString);
          end;

          RECEIPT_TYPE_TICKET: // HOTEL TICKET
          begin
            ImpTicketDeliverHeader(quPreSaleInfoPreSaleDate.AsDateTime,
                                   quPreSaleInfoSaleCode.AsString,
                                   quPreSaleInfoFullName.AsString,
                                   quDeliveryInfoDeliverAddress.AsString, quPreSaleInfoIDTouristGroup.AsInteger,
                                   quPreSaleInfoMedia.AsString,
                                   quPreSaleInfoClientPhone.AsString,
                                   quPreSaleInfoClientNeighborhood.AsString,
                                   quPreSaleInfoClientCity.AsString,
                                   quPreSaleInfoClientZip.AsString,
                                   quDeliveryInfoDeliverOBS.AsString);
          end;
        end;

        // -----------------------------------------------------------------
        // Impress�o dos itens do Ticket
        //ImpMemoNoEmptyLine(sItems + #13#10);

        with cdsPreSaleItem do
        begin
          DisableControls;
          First;
          while not Eof do
          begin
            quBarCode.Parameters.ParambyName('IDModel1').Value := FieldByName('ModelID').AsInteger;
            quBarCode.Parameters.ParambyName('IDModel2').Value := FieldByName('ModelID').AsInteger;
            quBarCode.Open;

            ImpTicketLine(FieldByName('Qty').AsFloat,
                          FieldByName('Description').AsString,
                          FieldByName('Model').AsString,
                          FieldByName('CategoryReceipt').AsString,
                          FieldByName('SalePrice').AsFloat - (FieldByName('Discount').AsFloat / FieldByName('Qty').AsFloat),
                          quBarCode.FieldByName('BarCode').AsString,
                          FieldByName('IDUser').AsInteger,
                          FieldByName('SalesPerson').AsString,
                          FieldByName('Manufacturer').AsString,
                          FieldByName('Unit').AsString);
            quBarCode.Close;
            Next;
          end;
          EnableControls;
        end;

        // --------------------------------------------------------------------
        // Impress�o dos Totais
        with quPreSaleParc do
        begin
          if Active then Close;
            Parameters.ParambyName('IDPreSale').Value := MyIDPreSale;
          Open;
          cPaymentTotal := 0;
          MyTotCash := 0;
          while not EOF do
          begin
            cPaymentTotal := cPaymentTotal + quPreSaleParcValorNominal.AsCurrency;
            if quPreSaleParcIDMeioPag.AsInteger = 1 then
              MyTotCash := MyTotCash + quPreSaleParcValorNominal.AsCurrency;
            Next;
          end;
          Close;
        end;

        case FReceiptType of
          RECEIPT_TYPE_INVOICE,
          RECEIPT_TYPE_LAYAWAY_RECEIVE: // INVOICE
          begin
            with quPreSaleValue do
              ImpTicketTotals(FieldByName('SubTotalTaxable').AsFloat,
                              FieldByName('TaxIsemptValue').AsFloat,
                              FieldByName('SubTotal').AsFloat,
                              FieldByName('Tax').AsFloat,
                              FieldByName('TotalInvoice').AsFloat,
                              MyCashReceived,
                              MyCashReceived - MyTotCash,
                              FieldByName('ItemDiscount').AsFloat,
                              FieldByName('InvoiceDiscount').AsFloat,
                              MyTotRefund);
          end;

          RECEIPT_TYPE_HOLD,
          RECEIPT_TYPE_TICKET: // HOLD AND HOTEL TICKET
          begin
            with quPreSaleValue do
              ImpTicketHoldTotals(FieldByName('SubTotalTaxable').AsFloat,
                                  FieldByName('TaxIsemptValue').AsFloat,
                                  FieldByName('SubTotal').AsFloat,
                                  FieldByName('Tax').AsFloat,
                                  FieldByName('TotalInvoice').AsFloat,
                                  MyCashReceived,
                                  MyCashReceived - MyTotCash,
                                  FieldByName('ItemDiscount').AsFloat,
                                  FieldByName('InvoiceDiscount').AsFloat,
                                  MyTotRefund,
                                  FReceiptType);
          end;
        end;

        // -----------------------------------------------------------------
        // Impress�o das parcelas
        case FReceiptType of
          RECEIPT_TYPE_INVOICE,
          RECEIPT_TYPE_LAYAWAY_RECEIVE: // INVOICE & LAYAWAY
          begin
            with quPreSaleParc do
            begin
              if Active then Close;
                Parameters.ParambyName('IDPreSale').Value := MyIDPreSale;
              Open;
              while not Eof do
              begin
                ImpTicketPaymentLine(FieldByName('DataVencimento').AsDateTime,
                                     FieldByName('MeioPag').AsString,
                                     FieldByName('ValorNominal').AsFloat);
                Next;
              end;
              Close;
            end;
          end;

          RECEIPT_TYPE_HOLD, RECEIPT_TYPE_TICKET: // HOLD & HOTEL TICKET
          begin
            // N�o tem impressao de parcelas
          end;
        end;


        // -----------------------------------------------------------------
        // Impress�o do notes
        if quPreSaleInfoPrintNotes.AsBoolean then
          ImpTicketNotes;

        // -----------------------------------------------------------------
        // Impress�o do rodape
        case FReceiptType of
          RECEIPT_TYPE_INVOICE,
          RECEIPT_TYPE_TICKET,
          RECEIPT_TYPE_HOLD: // INVOICE, HOTEL TICKET, HOLD
            ImpTicketFooter();

          RECEIPT_TYPE_LAYAWAY_RECEIVE: //LAYAWAY + Total and balance
            ImpFooterLayaway(quPreSaleValue.FieldByName('TotalInvoice').AsFloat, cPaymentTotal);
        end;

        // Caso o Invoice tenha recebido uma isen��o de taxa, devo incluir
        // a impressao de um documento de conhecimento de isen��o.
        if (FReceiptType = RECEIPT_TYPE_INVOICE) AND quPreSaleInfoTaxIsent.AsBoolean
            and (not DM.fSystem.SrvParam[PARAM_TAX_EXEMPT_ON_SALE]) then
        begin
          ImpTicketTaxExemption();
        end;

        //Print Bonus
        if DM.fSystem.SrvParam[PARAM_APPLY_BONUS_ON_SALE] and (quBonusBucks.RecordCount > 0) then
          ImpTicketBonus;

        // Marca o Invoice como Printed
        if FReceiptType = RECEIPT_TYPE_INVOICE then
        begin
          with DM.quFreeSQL do
          begin
            if Active then
              Close;
            SQL.Text := 'UPDATE Invoice SET Printed = 1 WHERE IDInvoice = ' + IntToStr(MyIDInvoice);
            ExecSQL;
          end;
        end;

        // -----------------------------------------------------------------
        // Cortar o papel
        if DM.fPrintReceipt.PaperType <> PAPER_TYPE_4A then
          DM.SendAfterPrintCode;

      finally
        if DM.fPrintReceipt.PaperType <> PAPER_TYPE_4A then
          DM.PrinterStop;
      end;
    end;
  finally
    lblPrint.Caption := sRecImpresso;
    btOk.Visible     := True;
    AniPrint.Active  := False;
    AniPrint.Visible  := False;
    pnlPrinter.Caption := sClickOK;

    ActualTime := Now;
    btnReprint.Visible := true;
    Application.ProcessMessages;
  end;
end;

procedure TPrintReceipt.ShowGiftBalanceInfo;
var
  bHasGiftOnSale: Boolean;
  sCardNumber, sAmount: String;
begin
  bHasGiftOnSale := False;
  mmGiftBalance.Clear;

  with quPayments do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('PayType').AsInteger = PAYMENT_TYPE_GIFTCARD then
      begin
        bHasGiftOnSale := True;
        Break;
      end;
      Next;
    end;

    First;
  end;

  if bHasGiftOnSale then
  begin
    with quGiftBalance do
    try
      if Active then
        Close;
      Parameters.ParamByName('IDPreSale').Value := MyIDPreSale;
      Open;

      if not IsEmpty then
      begin
        pnlGiftBalance.Visible := True;
        while not Eof do
        begin
          sCardNumber := FieldByName('CardNumber').AsString;
          sAmount := FormatFloat('#,##0.00', FieldByName('Amount').AsFloat);
          mmGiftBalance.Lines.Add(IncSpaces(sCardNumber, 20) +
                                  IncLeftSpaces(sAmount, 20 - Length(sAmount)));
          Next;
        end;
        mmGiftBalance.SelStart := 0;
        mmGiftBalance.SelLength := 0;
      end;
    finally
      Close;
    end;
  end;

  if (not pnlGiftBalance.Visible) and (not FHeightChanged) then
  begin
    FHeightChanged := True;
    Self.Height := Self.Height - 54;
  end;
end;


function TPrintReceipt.GetTotalRefund: Currency;
begin
  Result := 0;

  with cdsPreSaleItem do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('Qty').AsFloat < 0 then
        Result := Result + FieldByName('TotalItem').AsCurrency;
      Next;
    end;
    First;
  end;
end;

procedure TPrintReceipt.LoadLogoImage;
var
  msLogo: TMemoryStream;
  img: TJPEGImage;
begin
  if Assigned(ppLogoImage) then
  begin
    msLogo := TMemoryStream.Create;
    try
      if not quStoreLogoEMP.IsNull then
      begin
        quStoreLogoEMP.SaveToStream(msLogo);
        msLogo.Seek(0, soFromBeginning);
        img := TJPEGImage.Create;
        try
          img.LoadFromStream(msLogo);
          ppLogoImage.Picture.Bitmap.Assign(img);
        finally
          FreeAndNil(img);
        end;
      end
      else
        ppLogoImage.Picture.CleanupInstance;
    finally
      msLogo.Free;
    end;
  end;
end;

function TPrintReceipt.GetSerialNumbers(IDInventoryMov: Integer): String;
var
  fTemp : String;
begin

  Result := '';

  // Imprime os seriais do item
  with quSerial do
  begin
    if Active AND Locate('InventoryMovID', IDInventoryMov, []) then
    begin
      // vou percorrendo at� o IDInventoryMov mudar
      while (not EOF) AND (quSerialInventoryMovID.AsInteger = IDInventoryMov)  do
      begin
        //colocar o serial na outra linha se nao der no ticket
        fTemp := Result + Trim(quSerialSerialNumber.AsString);
        if Length(fTemp) > DM.fPrintReceipt.PrinterLineWidth then
          Result := Result + #13#10 + Trim(quSerialSerialNumber.AsString)
        else
          Result := fTemp;
        Next;
        if not EOF then
          Result := Result + ' ,';
      end;
    end;
  end;

end;

procedure TPrintReceipt.quPaymentsAfterOpen(DataSet: TDataSet);
begin
  inherited;

  MyChange := 0;
  if Assigned(FChangeList) then begin
    FChangeList.Clear;
  end;

  //Antonio M F Souza 10.29.2010 : To layaway remains to each sale item.
  FSumLayawayPaid := 0;
  if Assigned(FLayawayPayments) then begin
    FLayawayPayments.Clear;
  end;

end;

procedure TPrintReceipt.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FChangeList);
  freeAndNil(FLayawayPayments);
end;

procedure TPrintReceipt.DetailLineItems;
var
  iTotalLine, iAddLines, i, iResto : Integer;
begin

   iTotalLine := DM.fPrintReceipt.PrintItemsPerPage;

   if iTotalLine > 1 then
   begin
     iAddLines  := 0;

     if (cdsPreSaleItem.RecordCount - iTotalLine) < 0 then
       iAddLines := ABS(cdsPreSaleItem.RecordCount - iTotalLine)
     else if (cdsPreSaleItem.RecordCount - iTotalLine) <> 0 then
     begin
       iResto := Trunc(cdsPreSaleItem.RecordCount / iTotalLine) + 1;
       iAddLines := ABS(cdsPreSaleItem.RecordCount - (iTotalLine * iResto));
     end;

     if iAddLines <> 0 then
       for i := 1 to iAddLines do
       begin
         cdsPreSaleItem.Append;
         cdsPreSaleItemModelID.AsInteger    := 0;
         cdsPreSaleItemModel.AsString       := '';
         cdsPreSaleItemDescription.AsString := '';
         cdsPreSaleItemTax.AsInteger        := -1;
         cdsPreSaleItem.Post;
       end;
   end;

end;

procedure TPrintReceipt.ImpTicketBonus;
begin

    // Imprime o documento de isen��o de taxa
    DM.PrintLine('');
    DM.PrintLine('');
    DM.PrintLine('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$');
    DM.PrintLine(sMsgBonus);
    DM.PrintLine('');
    DM.PrintLine(sBonusCode + quBonusBucksBonusCupon.AsString);
    DM.PrintLine('');
    DM.PrintLine(sBonusValue + FormatFloat('#,##0.00', quBonusBucksDiscountValue.AsCurrency));
    DM.PrintLine('');
    DM.PrintLine(sBonusDate + FormatDateTime('ddddd', quBonusBucksValidFromDate.AsDateTime) + ' - ' + FormatDateTime('ddddd', quBonusBucksExpirationDate.AsDateTime));
    DM.PrintLine('');
    DM.PrintLine(sBonusGynbo1);
    DM.PrintLine(sBonusGynbo2);
    if (quPreSaleInfoClientEmail.AsString <> '') then
      DM.PrintLine(sBonusGynbo3 + quPreSaleInfoClientEmail.AsString);
    DM.PrintLine('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$');

end;

procedure TPrintReceipt.btnReprintClick(Sender: TObject);
begin
  inherited;
  //Antonio M F Souza June 29, 2012
  reprint := true;
  tmrPrintTimer(Sender);
  reprint := false;
end;

function TPrintReceipt.getTotalInvoice(AIdPreSale: integer): double;
var
  dsTotalInvoice: TADOQuery;
  sql: String;
begin
  try

    sql:= 'select ( (i.SubTotal + i.Tax + i.AditionalExpenses)  - (i.TaxIsent + i.ItemDiscount + i.InvoiceDiscount) ) total ' +
          'from Invoice i where i.IDPreSale = :idpresale ';

    dsTotalInvoice := TADOQuery.Create(nil);
    dsTotalInvoice.Connection := DM.ADODBConnect;

    dsTotalInvoice.SQL.Text := sql;
    dsTotalInvoice.Parameters.ParamByName('idpresale').Value := AIdPreSale;
    dsTotalInvoice.Open;

    if ( not dsTotalInvoice.FieldByName('total').IsNull ) then
       result := dsTotalInvoice.fieldbyname('total').Value
    else
       result := 0;

  finally
     freeAndNil(dsTotalInvoice);
  end;
end;


function TPrintReceipt.getTotalPayedLayaway(AIdPreSale: integer): double;
var
  sql: String;
  qryTotal: TADOQuery;
begin
  result := 0;

  try
    qryTotal := TADOQuery.Create(nil);
    qryTotal.Connection := dm.ADODBConnect;

    sql :=
    'SELECT sum(isnull(L.valorNominal, 0)) total, ' +
	  'L.IDPreSale ' +
    'FROM	Fin_Lancamento L (NOLOCK) ' +
	  'JOIN MeioPag MP (NOLOCK) ON (L.IDQuitacaoMeioPrevisto = MP.IDMeioPag) ' +
	  'JOIN Invoice I (NOLOCK) ON (L.IDPreSale = I.IDPreSale)                ' +
    'WHERE 	L.IDPreSale = :idpresale                                       ' +
    'group by L.idpresale ';

    qryTotal.SQL.Text := sql;
    qryTotal.Parameters.ParamByName('idpresale').Value := AIdPreSale;
    qryTotal.Open;

    result := qryTotal.fieldByName('total').Value;

  finally
    freeAndNil(qryTotal);
  end;

end;

procedure TPrintReceipt.pplbRemainValuePrint(Sender: TObject);
var
  remains: double;
begin
  inherited;

  //Antonio M F Souza 11.02.2010 - shows remains if layaway is not payed totally.
  remains :=
    ( dsPreSaleValue.DataSet.fieldByName('TotalInvoice').AsFloat -
    getTotalPayedLayaway(dsPayments.DataSet.FieldByname('IdPreSale').AsInteger) );

  // Alex 09/30/2015
  (*
  if ( remains > 0 ) then
     pplbRemainValue.Font.Color := clRed
  else begin
     pplbRemainValue.Font.Color := clBlack;
     remains := 0;
  end;
  ppLbRemainValue.Caption := FloatToStrF(remains, ffNumber, 15, 2);
  *)

end;

function TPrintReceipt.getGCNumberMasked(pGCNumber: String): String;
var
   i: Integer;
   gcNumberMasked: String;
   posPoundChar: Integer;
begin
   //Antonio M F Souza October 31, 2012
   gcNumberMasked := pGCNumber;

   if ( (length(pGCNumber) - 1) > 4 ) then begin
       for i:= length(pGCNumber) downto 0 do begin
           if ( i <= (length(pGCNumber)- 4) ) then begin
              pGCNumber[i] := '*';
           end;
       end;
       gcNumberMasked := pGCNumber;
   end;
//   posPoundChar := pos('#', gcNumberMasked);
//   delete(gcNumberMasked, posPoundChar, 1);
   result := gcNumberMasked;

end;

{
function TPrintReceipt.getquPaymentSQL: String;
var
  sql: TStringList;
  merchantID, typeTransaction, entryMethod, appData: String;
begin
  try
    sql := TStringList.Create;
    sql.add('select ');
    sql.Add('MP.IDMeioPag');
    sql.add(', MP.MeioPag');
    sql.add(', MP.Tipo as PayType');
    sql.add(', MP.DrawerKickOnPay');
    sql.add(', L.IDLancamento');
    sql.add(', round(L.ValorNominal, 2) as ValorNominal');
    sql.add(', IsNull(L.DataVencimento, I.PresaleDate) DataVencimento');
    sql.add(', L.IDQuitacaoMeioPrevisto');
    sql.add(', L.IDDocumentoTipo');
	sql.add(', L.IDPreSale');
	sql.add(', L.CheckNumber');
	sql.add(', L.IDBankCheck');
	sql.add(', L.CustomerDocument');
	sql.add(', L.CustomerName');
	sql.Add(', L.CustomerPhone');
	sql.add(', L.Historico');
	sql.Add(', L.PaymentPlace');
	sql.add(', L.NumMeioQuitPreVisto');
	sql.add(', I.CashReceived');
    sql.add(', L.NumDesdobramento');
    sql.add(', L.TotalQuitado');
    sql.add(', I.Layaway');
    sql.add(', su.CodSystemUser');

    // Alex 09/25/2015
    //sql.Add('join UserType ut on ut.IDUserType = su.UserTypeID');
    //sql.add(','+ merchantID  +' as MerchantID');
    //sql.add(','+TypeTransaction + ' as typeTransaction');
    //sql.add(','+EntryMethod +' as EntryMethod');
    //sql.add(','+ AppData + ' as AppData');

    sql.add('from ');
    sql.add(' Fin_Lancamento L ');
    sql.add('JOIN MeioPag MP ON (L.IDQuitacaoMeioPrevisto = MP.IDMeioPag)');
    sql.add('JOIN Invoice I ON (L.IDPreSale = I.IDPreSale)');
    sql.add('join SystemUser su on su.IDUser = L.IDUsuarioLancamento');
    sql.add('WHERE');
    sql.add('L.IDPresale = :IDPresale');
    sql.add('order by mp.MeioPag');

    result := String(sql.GetText);
  finally
    freeAndNil(sql);
  end;
end;
}
 
function TPrintReceipt.BuildExtraInformationText(originalText: String): String;
Var
  cmvPosition : Integer;
  tempString : String;
  List: TStringList;
begin
  originalText := StringReplace(originalText, 'Visa Credit', 'Visa_Credit', [rfReplaceAll, rfIgnoreCase]);
  originalText := StringReplace(originalText, 'PIN VERIFIED', 'PIN_VERIFIED', [rfReplaceAll, rfIgnoreCase]);
  originalText := StringReplace(originalText, 'NO CVM', 'NO_CVM', [rfReplaceAll, rfIgnoreCase]);
  originalText := StringReplace(originalText, 'OFFLINE PIN', 'OFFLINE_PIN', [rfReplaceAll, rfIgnoreCase]);
  originalText := StringReplace(originalText, 'ONLINE PIN', 'ONLINE_PIN', [rfReplaceAll, rfIgnoreCase]);
  originalText := StringReplace(originalText, 'EMV', '', [rfReplaceAll]);

  cmvPosition := IfThen( Pos( 'CVM:', originalText ) > 0, Pos( 'CVM:', originalText ), Length( originalText ) );
  tempString := Copy( originalText, 0, cmvPosition );

  List := TStringList.Create;
  ExtractStrings([' '], [], PChar(originalText), List);

  If ( Pos('chip',originalText ) > 0 ) Then Begin
    If ( Pos('CHIP',List[4] ) > 0 ) Then Begin
      Result := StringReplace(List[8], 'P:', 'Application Label:', [rfReplaceAll, rfIgnoreCase]) + #13 +
                StringReplace(List[1], 'R:', 'Reference:', [rfReplaceAll, rfIgnoreCase]) + #13 +
                StringReplace(List[4], 'E:', 'Entry Method:', [rfReplaceAll, rfIgnoreCase]) + #13 +
                List[9]  + #13 +
                List[10] + #13 +
                List[11] + #13 +
                List[12] + #13 +
                List[13] + #13 +
                StringReplace(List[14], '_', ' ', [rfReplaceAll, rfIgnoreCase]) + #13 +
                StringReplace(List[15], 'TC:', 'Transaction Type:', [rfReplaceAll, rfIgnoreCase]);
    End Else Begin
      Result := StringReplace(List[1], 'R:', 'Reference:', [rfReplaceAll, rfIgnoreCase]) + #13 +
                StringReplace(List[4], 'E:', 'Entry Method:', [rfReplaceAll, rfIgnoreCase]) + #13 +
                StringReplace(List[15],'TC:', 'Transaction Type:', [rfReplaceAll, rfIgnoreCase]);
    End;
  End;
end;

end.

