inherited PrintReceiptDeclined: TPrintReceiptDeclined
  Left = 1336
  Top = 254
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Printing Receipt Declined'
  ClientHeight = 421
  ClientWidth = 348
  FormStyle = fsStayOnTop
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPayment: TPanel [0]
    Left = 0
    Top = 0
    Width = 348
    Height = 185
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblInvoice: TLabel
      Left = 60
      Top = 16
      Width = 70
      Height = 18
      Caption = 'Invoice #:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object lblInvoiceTotal: TLabel
      Left = 60
      Top = 36
      Width = 98
      Height = 18
      Caption = 'Invoice Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object dbValue: TDBText
      Left = 228
      Top = 16
      Width = 65
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdRightToLeft
      DataField = 'InvoiceCode'
      DataSource = dsPreSaleInfo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object dbTotalValue: TDBText
      Left = 228
      Top = 36
      Width = 65
      Height = 17
      Alignment = taRightJustify
      BiDiMode = bdRightToLeft
      DataField = 'TotalInvoice'
      DataSource = dsPreSaleValue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object lblChange: TLabel
      Left = 60
      Top = 160
      Width = 55
      Height = 18
      Caption = 'Change'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object lblChangeValue: TLabel
      Left = 176
      Top = 160
      Width = 117
      Height = 23
      Alignment = taRightJustify
      BiDiMode = bdRightToLeft
      Caption = 'ChangeValue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object grdPayments: TcxGrid
      Left = 7
      Top = 56
      Width = 336
      Height = 101
      TabOrder = 0
      object grdPaymentsDBTV: TcxGridDBTableView
        DataController.DataSource = dsPayments
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdPaymentsDBTVMeioPag: TcxGridDBColumn
          Caption = 'Payment'
          DataBinding.FieldName = 'MeioPag'
          SortOrder = soAscending
          Width = 107
        end
        object grdPaymentsDBTVDataVencimento: TcxGridDBColumn
          DataBinding.FieldName = 'DataVencimento'
          Width = 83
        end
        object grdPaymentsDBTVValorNominal: TcxGridDBColumn
          DataBinding.FieldName = 'ValorNominal'
          Width = 81
        end
      end
      object grdPaymentsLVL: TcxGridLevel
        GridView = grdPaymentsDBTV
      end
    end
  end
  object pnlPrintControl: TPanel [1]
    Left = 0
    Top = 239
    Width = 348
    Height = 180
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lblPrint: TLabel
      Left = 10
      Top = 64
      Width = 332
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Printing Receipt, Please Wait'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlPrinter: TPanel
      Left = 5
      Top = 93
      Width = 338
      Height = 16
      BevelOuter = bvNone
      Caption = 'If printer does not start, check the "On Line" Button'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object AniPrint: TAnimate
      Left = 8
      Top = 4
      Width = 335
      Height = 60
      CommonAVI = aviCopyFiles
      StopFrame = 34
    end
    object btOk: TButton
      Left = 190
      Top = 117
      Width = 154
      Height = 63
      Caption = '&OK'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 2
      OnClick = btOkClick
    end
    object btnReprint: TXiButton
      Left = 5
      Top = 116
      Width = 154
      Height = 63
      Cursor = crHandPoint
      ColorFace = 16772829
      ColorGrad = 16758380
      ColorDark = 16754769
      ColorLight = 16772313
      ColorBorder = 11753728
      ColorText = clBlack
      OverColorFace = 16772055
      OverColorGrad = 16753478
      OverColorDark = 16752190
      OverColorLight = 16770250
      OverColorBorder = 11753728
      OverColorText = clBlack
      DownColorFace = 16757606
      DownColorGrad = 16764573
      DownColorDark = 16765864
      DownColorLight = 16752190
      DownColorBorder = 11753728
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 16755027
      ColorScheme = csNeoSky
      Ctl3D = True
      Layout = blGlyphBottom
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Caption = 'Reprint'
      DragCursor = crDefault
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 3
      TabStop = False
      Visible = False
      OnClick = btnReprintClick
    end
  end
  object pnlGiftBalance: TPanel [2]
    Left = 0
    Top = 185
    Width = 348
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object lblGift: TLabel
      Left = 60
      Top = 1
      Width = 89
      Height = 18
      Caption = 'Gift Balance'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object mmGiftBalance: TMemo
      Left = 60
      Top = 23
      Width = 233
      Height = 30
      BevelInner = bvNone
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      Lines.Strings = (
        'GiftBalance                    15,00'
        'GiftBalance                    25,00')
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object quBarCode: TADOQuery [3]
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDModel1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IDModel2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'MAX(IDBarcode) Barcode'
      'FROM'
      #9'Barcode B'
      'WHERE'
      #9'B.Data = '#9'('
      #9#9'SELECT'
      #9#9#9'MAX(Data)'
      #9#9'FROM'
      #9#9#9'Barcode (NOLOCK)'
      #9#9'WHERE'
      #9#9#9'IDmodel =  :IDModel1'
      #9#9')'
      #9'AND B.IDmodel = :IDModel2')
    Left = 396
    Top = 156
    object quBarCodeBarCode: TStringField
      FieldName = 'BarCode'
    end
  end
  object quPreSaleValue: TADOStoredProc [4]
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    OnCalcFields = quPreSaleValueCalcFields
    ProcedureName = 'sp_PreSale_quPreSaleValue;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PreSaleID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 260
    Top = 424
    object quPreSaleValueTaxIsent: TBooleanField
      FieldName = 'TaxIsent'
    end
    object quPreSaleValueSubTotal: TFloatField
      FieldName = 'SubTotal'
      DisplayFormat = '$ #,##0.00'
    end
    object quPreSaleValueItemDiscount: TFloatField
      FieldName = 'ItemDiscount'
      DisplayFormat = '$ #,##0.00'
    end
    object quPreSaleValueTax: TFloatField
      FieldName = 'Tax'
      DisplayFormat = '$ #,##0.00'
    end
    object quPreSaleValueTaxPrc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TaxPrc'
      DisplayFormat = '#,##0.00 %'
      Calculated = True
    end
    object quPreSaleValueDiscountPrc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DiscountPrc'
      DisplayFormat = '#,##0.00 %'
      Calculated = True
    end
    object quPreSaleValueTotalInvoice: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalInvoice'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object quPreSaleValueSpecialPriceID: TIntegerField
      FieldName = 'SpecialPriceID'
    end
    object quPreSaleValueSpecialPrice: TStringField
      FieldName = 'SpecialPrice'
      Size = 30
    end
    object quPreSaleValuenOpenUser: TIntegerField
      FieldName = 'nOpenUser'
    end
    object quPreSaleValueShowOpenUser: TIntegerField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'ShowOpenUser'
      Calculated = True
    end
    object quPreSaleValueTaxIsemptValue: TFloatField
      FieldName = 'TaxIsemptValue'
    end
    object quPreSaleValueSubTotalTaxable: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotalTaxable'
      Calculated = True
    end
    object quPreSaleValueTaxIsemptItemDiscount: TFloatField
      FieldName = 'TaxIsemptItemDiscount'
    end
    object quPreSaleValueTotalDiscount: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalDiscount'
      Calculated = True
    end
    object quPreSaleValueSubTotalDiscount: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SubTotalDiscount'
      Calculated = True
    end
    object quPreSaleValueAditionalExpenses: TBCDField
      FieldName = 'AditionalExpenses'
      Precision = 19
    end
    object quPreSaleValueInvoiceDiscount: TBCDField
      FieldName = 'InvoiceDiscount'
      Precision = 19
    end
    object quPreSaleValueValorExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'ValorExtenso'
      Size = 255
      Calculated = True
    end
    object quPreSaleValueTotalSaved: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalSaved'
      Calculated = True
    end
  end
  object quPreSaleInfo: TADOQuery [5]
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDPreSale'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'I.IDPreSale,'
      #9'I.IDStore,'
      #9'I.IDMeioPag,'
      #9'I.IDTouristGroup,'
      #9'I.PreSaleDate,'
      #9'I.OtherComissionID,'
      #9'I.IDCustomer,'
      #9'I.PassportDate,'
      #9'I.AirLine,'
      #9'I.CompanyName,'
      #9'I.CompanyCGC,'
      #9'I.DepositDate,'
      #9'I.Note,'
      #9'I.PrintNotes,'
      #9'I.InvoiceDate,'
      #9'I.IDInvoice,'
      #9'I.Passport,'
      #9'I.Printed,'
      #9'I.Ticket,'
      #9'I.MediaID,'
      #9'I.CashReceived,'
      #9'I.CashRegMovID,'
      ' '#9'I.TaxIsent,'
      #9'I.CardNumber,'
      #9'I.Address,'
      #9'I.FirstName,'
      #9'I.LastName,'
      #9'I.Layaway,'
      #9'I.IDFormOfPayment,'
      #9'IsNull(I.SaleCode, '#39#39') SaleCode,'
      #9'IsNull(I.InvoiceCode, '#39#39') InvoiceCode,'
      '                I.DeliverDate,'
      #9'M.Media,'
      #9'PA.CodPais as CountryCod,'
      #9'PA.Pais as Country,'
      #9'E.IDEstado as StateCode,'
      #9'E.Estado as State,'
      #9'E.TaxPerc,'
      #9'P.Endereco +'
      
        #9'(CASE IsNull(P.ComplementoNum, '#39#39') WHEN '#39#39' THEN '#39#39' ELSE '#39' N'#186' '#39' ' +
        '+ CAST(P.ComplementoNum as varchar) END) +'
      
        #9'(CASE IsNull(P.Complemento, '#39#39') WHEN '#39#39' THEN '#39#39' ELSE '#39', '#39' + P.C' +
        'omplemento END) as ClientAddress, '
      #9'P.Cidade as ClientCity,'
      #9'P.Bairro as ClientNeighborhood,'
      #9'P.CEP as ClientZip,'
      #9'P.Telefone as ClientPhone,'
      #9'P.Cellular as ClientCell,'
      #9'P.Email as ClientEmail,'
      #9'P.Nascimento as ClientBirthDate,'
      #9'P.CPF as ClientEmployeeID,'
      #9'P.CartTrabalho as ClientSocialSecurity,'
      #9'P.InscEstadual as ClientFederalID,'
      #9'P.InscMunicipal as ClientSalesTax,'
      #9'P.NomeJuridico as ClientDBA,'
      #9'P.Pessoa as FullName,'
      #9'P.PhoneAreaCode as ClientPhoneAreaCode,'
      #9'P.CellAreaCode as ClientCellAreaCode,'
      #9'P.Fax as ClientFax,'
      #9'P.Contatos as ClientContacts,'
      #9'P.Contato as ClientContact,'
      #9'P.Identidade as ClientIdentidade,'
      #9'P.OrgaoEmissor as ClientOrgaoEmissor,'
      #9'P.DataExpedicao as ClientDataExpedicao,'
      #9'P.OBS as ClientOBS,'
      #9'C.IDCFOP,'
      #9'C.Number as CFOP,'
      #9'C.[Description] as NaturezaOperacao,'
      #9'PT.Pessoa as PessoaTax,'
      #9'IOBS.FreightType,'
      #9'CAR.Pessoa as Carrier,'
      #9'CAR.Endereco as CarrierAddress,'
      #9'CAR.Cidade as CarrierCity,'
      #9'CAR.Bairro as CarrierNeighborhood,'
      #9'CAR.CEP as CarrierZip,'
      #9'CAR.InscEstadual as CarrierFederalID,'
      #9'CAR.NomeJuridico as CarrierDBA,'
      #9'CAR.CPF as CarrierEmployeeID,'
      #9'AG.Pessoa as Agent,'
      #9'AG.Telefone as AgentPhone,'
      #9'AG.Cellular as AgentCell,'
      #9'AG.Email as AgentEmail'
      'FROM'
      #9'Invoice I (NOLOCK)'
      #9'LEFT JOIN Media M (NOLOCK) ON (M.IDMEdia = I.MediaID)'
      #9'LEFT JOIN Pessoa P (NOLOCK) ON (P.IDPessoa = I.IDCustomer)'
      #9'LEFT JOIN Pais PA (NOLOCK) ON (P.IDPais = PA.IDPais)'
      #9'LEFT JOIN Estado E (NOLOCK) ON (E.IDEstado = P.IDEstado)'
      
        #9'LEFT JOIN InvoiceOBS IOBS (NOLOCK) ON (I.IDPreSale = IOBS.IDPre' +
        'Sale)'
      #9'LEFT JOIN Mnt_CFOP C (NOLOCK) ON (IOBS.IDCFOP = C.IDCFOP)'
      
        #9'LEFT JOIN Pessoa PT (NOLOCK) ON (IOBS.IDPessoaTax = PT.IDPessoa' +
        ')'
      
        #9'LEFT JOIN Pessoa CAR (NOLOCK) ON (IOBS.IDCarrier = CAR.IDPessoa' +
        ')'
      
        #9'LEFT JOIN TouristGroup TG (NOLOCK) ON (TG.IDTouristGroup = I.ID' +
        'TouristGroup)'
      #9'LEFT JOIN Pessoa AG (NOLOCK) ON (AG.IDPessoa = TG.IDGuide)'
      'WHERE'
      #9'I.IDPreSale = :IDPreSale')
    Left = 24
    Top = 424
    object quPreSaleInfoIDPreSale: TIntegerField
      FieldName = 'IDPreSale'
      Origin = 'Invoice.IDPreSale'
    end
    object quPreSaleInfoIDMeioPag: TIntegerField
      FieldName = 'IDMeioPag'
      Origin = 'Invoice.IDMeioPag'
    end
    object quPreSaleInfoIDTouristGroup: TIntegerField
      FieldName = 'IDTouristGroup'
      Origin = 'Invoice.IDTouristGroup'
    end
    object quPreSaleInfoPreSaleDate: TDateTimeField
      FieldName = 'PreSaleDate'
      Origin = 'Invoice.PreSaleDate'
      EditMask = '!99/99/00;1;_'
    end
    object quPreSaleInfoOtherComissionID: TIntegerField
      FieldName = 'OtherComissionID'
      Origin = 'Invoice.OtherComissionID'
    end
    object quPreSaleInfoIDCustomer: TIntegerField
      FieldName = 'IDCustomer'
      Origin = 'Invoice.IDCustomer'
    end
    object quPreSaleInfoPassportDate: TDateTimeField
      FieldName = 'PassportDate'
      Origin = 'Invoice.PassportDate'
      EditMask = '!99/99/00;1;_'
    end
    object quPreSaleInfoAirLine: TStringField
      FieldName = 'AirLine'
      Origin = 'Invoice.AirLine'
      Size = 40
    end
    object quPreSaleInfoCompanyName: TStringField
      FieldName = 'CompanyName'
      Origin = 'Invoice.CompanyName'
      Size = 40
    end
    object quPreSaleInfoCompanyCGC: TStringField
      FieldName = 'CompanyCGC'
      Origin = 'Invoice.CompanyCGC'
    end
    object quPreSaleInfoDepositDate: TDateTimeField
      FieldName = 'DepositDate'
      Origin = 'Invoice.DepositDate'
      EditMask = '!99/99/00;1;_'
    end
    object quPreSaleInfoNote: TStringField
      FieldName = 'Note'
      Origin = 'Invoice.Note'
      Size = 150
    end
    object quPreSaleInfoInvoiceDate: TDateTimeField
      FieldName = 'InvoiceDate'
      Origin = 'Invoice.InvoiceDate'
      EditMask = '!99/99/00;1;_'
    end
    object quPreSaleInfoIDInvoice: TIntegerField
      FieldName = 'IDInvoice'
      Origin = 'Invoice.IDInvoice'
    end
    object quPreSaleInfoPassport: TStringField
      FieldName = 'Passport'
      Origin = 'Invoice.Passport'
    end
    object quPreSaleInfoTicket: TStringField
      FieldName = 'Ticket'
      Origin = 'Invoice.Ticket'
    end
    object quPreSaleInfoMediaID: TIntegerField
      FieldName = 'MediaID'
      Origin = 'Invoice.IDPreSale'
    end
    object quPreSaleInfoCashReceived: TFloatField
      FieldName = 'CashReceived'
      Origin = 'Invoice.IDPreSale'
    end
    object quPreSaleInfoCashRegMovID: TIntegerField
      FieldName = 'CashRegMovID'
      Origin = 'Invoice.IDPreSale'
    end
    object quPreSaleInfoPrinted: TBooleanField
      FieldName = 'Printed'
      Origin = 'Invoice.IDPreSale'
    end
    object quPreSaleInfoTaxIsent: TBooleanField
      FieldName = 'TaxIsent'
      Origin = 'Invoice.IDPreSale'
    end
    object quPreSaleInfoCardNumber: TStringField
      FieldName = 'CardNumber'
      Origin = 'Invoice.IDPreSale'
      Size = 30
    end
    object quPreSaleInfoAddress: TStringField
      FieldName = 'Address'
      Origin = 'Invoice.IDPreSale'
      Size = 200
    end
    object quPreSaleInfoFirstName: TStringField
      FieldName = 'FirstName'
      Origin = 'RETAIL.Invoice.FirstName'
    end
    object quPreSaleInfoLastName: TStringField
      FieldName = 'LastName'
      Origin = 'RETAIL.Invoice.LastName'
    end
    object quPreSaleInfoPrintNotes: TBooleanField
      FieldName = 'PrintNotes'
    end
    object quPreSaleInfoMedia: TStringField
      FieldName = 'Media'
      Size = 255
    end
    object quPreSaleInfoCountryCod: TStringField
      FieldName = 'CountryCod'
      Size = 3
    end
    object quPreSaleInfoCountry: TStringField
      FieldName = 'Country'
      Size = 50
    end
    object quPreSaleInfoStateCode: TStringField
      FieldName = 'StateCode'
      FixedChar = True
      Size = 3
    end
    object quPreSaleInfoState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object quPreSaleInfoClientAddress: TStringField
      FieldName = 'ClientAddress'
      Size = 80
    end
    object quPreSaleInfoClientCity: TStringField
      FieldName = 'ClientCity'
      Size = 40
    end
    object quPreSaleInfoClientNeighborhood: TStringField
      FieldName = 'ClientNeighborhood'
      Size = 50
    end
    object quPreSaleInfoClientZip: TStringField
      FieldName = 'ClientZip'
      FixedChar = True
      Size = 12
    end
    object quPreSaleInfoClientPhone: TStringField
      FieldName = 'ClientPhone'
      Size = 40
    end
    object quPreSaleInfoClientCell: TStringField
      FieldName = 'ClientCell'
      FixedChar = True
      Size = 18
    end
    object quPreSaleInfoClientEmail: TStringField
      FieldName = 'ClientEmail'
      Size = 50
    end
    object quPreSaleInfoClientBirthDate: TDateTimeField
      FieldName = 'ClientBirthDate'
    end
    object quPreSaleInfoClientEmployeeID: TStringField
      FieldName = 'ClientEmployeeID'
      Size = 30
    end
    object quPreSaleInfoClientSocialSecurity: TStringField
      FieldName = 'ClientSocialSecurity'
      Size = 30
    end
    object quPreSaleInfoClientFederalID: TStringField
      FieldName = 'ClientFederalID'
      Size = 30
    end
    object quPreSaleInfoClientSalesTax: TStringField
      FieldName = 'ClientSalesTax'
      Size = 30
    end
    object quPreSaleInfoClientDBA: TStringField
      FieldName = 'ClientDBA'
      Size = 50
    end
    object quPreSaleInfoIDFormOfPayment: TIntegerField
      FieldName = 'IDFormOfPayment'
    end
    object quPreSaleInfoSaleCode: TStringField
      FieldName = 'SaleCode'
    end
    object quPreSaleInfoInvoiceCode: TStringField
      FieldName = 'InvoiceCode'
    end
    object quPreSaleInfoFullName: TStringField
      FieldName = 'FullName'
      Size = 50
    end
    object quPreSaleInfoClientPhoneAreaCode: TStringField
      FieldName = 'ClientPhoneAreaCode'
      Size = 5
    end
    object quPreSaleInfoClientCellAreaCode: TStringField
      FieldName = 'ClientCellAreaCode'
      Size = 5
    end
    object quPreSaleInfoClientFax: TStringField
      FieldName = 'ClientFax'
      Size = 40
    end
    object quPreSaleInfoClientContacts: TStringField
      FieldName = 'ClientContacts'
      Size = 255
    end
    object quPreSaleInfoClientContact: TStringField
      FieldName = 'ClientContact'
      Size = 50
    end
    object quPreSaleInfoLayaway: TBooleanField
      FieldName = 'Layaway'
    end
    object quPreSaleInfoChange: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Change'
      Calculated = True
    end
    object quPreSaleInfoIDStore: TIntegerField
      FieldName = 'IDStore'
    end
    object quPreSaleInfoTaxPerc: TBCDField
      FieldName = 'TaxPerc'
      Precision = 19
    end
    object quPreSaleInfoIDCFOP: TIntegerField
      FieldName = 'IDCFOP'
    end
    object quPreSaleInfoCFOP: TStringField
      FieldName = 'CFOP'
      Size = 15
    end
    object quPreSaleInfoNaturezaOperacao: TStringField
      FieldName = 'NaturezaOperacao'
      Size = 30
    end
    object quPreSaleInfoPessoaTax: TStringField
      FieldName = 'PessoaTax'
      Size = 50
    end
    object quPreSaleInfoFreightType: TIntegerField
      FieldName = 'FreightType'
    end
    object quPreSaleInfoCarrier: TStringField
      FieldName = 'Carrier'
      Size = 50
    end
    object quPreSaleInfoCarrierAddress: TStringField
      FieldName = 'CarrierAddress'
      Size = 80
    end
    object quPreSaleInfoCarrierCity: TStringField
      FieldName = 'CarrierCity'
      Size = 40
    end
    object quPreSaleInfoCarrierNeighborhood: TStringField
      FieldName = 'CarrierNeighborhood'
      Size = 50
    end
    object quPreSaleInfoCarrierZip: TStringField
      FieldName = 'CarrierZip'
      FixedChar = True
      Size = 12
    end
    object quPreSaleInfoCarrierFederalID: TStringField
      FieldName = 'CarrierFederalID'
      Size = 30
    end
    object quPreSaleInfoCarrierDBA: TStringField
      FieldName = 'CarrierDBA'
      Size = 50
    end
    object quPreSaleInfoCarrierEmployeeID: TStringField
      FieldName = 'CarrierEmployeeID'
      Size = 30
    end
    object quPreSaleInfoAgent: TStringField
      FieldName = 'Agent'
      Size = 50
    end
    object quPreSaleInfoAgentPhone: TStringField
      FieldName = 'AgentPhone'
      Size = 40
    end
    object quPreSaleInfoAgentCell: TStringField
      FieldName = 'AgentCell'
      FixedChar = True
      Size = 18
    end
    object quPreSaleInfoAgentEmail: TStringField
      FieldName = 'AgentEmail'
      Size = 50
    end
    object quPreSaleInfoClientIdentidade: TStringField
      FieldName = 'ClientIdentidade'
      Size = 30
    end
    object quPreSaleInfoClientOrgaoEmissor: TStringField
      FieldName = 'ClientOrgaoEmissor'
      Size = 50
    end
    object quPreSaleInfoClientDataExpedicao: TDateTimeField
      FieldName = 'ClientDataExpedicao'
    end
    object quPreSaleInfoClientOBS: TStringField
      FieldName = 'ClientOBS'
      Size = 100
    end
    object quPreSaleInfoDeliverDate: TDateTimeField
      FieldName = 'DeliverDate'
    end
  end
  object quPreSaleItem: TADOStoredProc [6]
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = quPreSaleItemAfterOpen
    AfterClose = quPreSaleItemAfterClose
    OnCalcFields = quPreSaleItemCalcFields
    ProcedureName = 'sp_PreSale_quPreSaleItemSplited;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftSmallint
        Direction = pdReturnValue
        Value = 0
      end
      item
        Name = '@DocumentID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = '@IsPreSale'
        DataType = ftBoolean
        Size = -1
        Value = Null
      end
      item
        Name = '@Date'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    Left = 104
    Top = 424
    object quPreSaleItemModelID: TIntegerField
      FieldName = 'ModelID'
    end
    object quPreSaleItemModel: TStringField
      FieldName = 'Model'
      Size = 30
    end
    object quPreSaleItemDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object quPreSaleItemSalePrice: TFloatField
      FieldName = 'SalePrice'
      DisplayFormat = '0.00'
    end
    object quPreSaleItemDiscount: TFloatField
      FieldName = 'Discount'
      DisplayFormat = '0.00'
    end
    object quPreSaleItemIDInventoryMov: TIntegerField
      FieldName = 'IDInventoryMov'
    end
    object quPreSaleItemTotalItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalItem'
      DisplayFormat = '$ #,##0.00'
      Calculated = True
    end
    object quPreSaleItemSalesPerson: TStringField
      FieldName = 'SalesPerson'
      Size = 50
    end
    object quPreSaleItemIDComission: TIntegerField
      FieldName = 'IDComission'
    end
    object quPreSaleItemCostPrice: TFloatField
      FieldName = 'CostPrice'
    end
    object quPreSaleItemIDUser: TIntegerField
      FieldName = 'IDUser'
    end
    object quPreSaleItemExchangeInvoice: TIntegerField
      FieldName = 'ExchangeInvoice'
    end
    object quPreSaleItemTax: TBCDField
      FieldName = 'Tax'
      Precision = 19
    end
    object quPreSaleItemUnitSalePrice: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'UnitSalePrice'
      Calculated = True
    end
    object quPreSaleItemTaxValue: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TaxValue'
      Calculated = True
    end
    object quPreSaleItemCodSize: TStringField
      FieldName = 'CodSize'
      Size = 10
    end
    object quPreSaleItemSizeName: TStringField
      FieldName = 'SizeName'
    end
    object quPreSaleItemCodColor: TStringField
      FieldName = 'CodColor'
      Size = 10
    end
    object quPreSaleItemColor: TStringField
      FieldName = 'Color'
    end
    object quPreSaleItemSuggRetail: TBCDField
      FieldName = 'SuggRetail'
      Precision = 19
    end
    object quPreSaleItemIsDelivered: TBooleanField
      FieldName = 'IsDelivered'
    end
    object quPreSaleItemSaleCode: TStringField
      FieldName = 'SaleCode'
    end
    object quPreSaleItemInvoiceCode: TStringField
      FieldName = 'InvoiceCode'
    end
    object quPreSaleItemIDModel: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'IDModel'
      Calculated = True
    end
    object quPreSaleItemQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '0.#####'
    end
    object quPreSaleItemModelReceipt: TStringField
      FieldKind = fkCalculated
      FieldName = 'ModelReceipt'
      Size = 255
      Calculated = True
    end
    object quPreSaleItemCategoryReceipt: TStringField
      FieldKind = fkCalculated
      FieldName = 'CategoryReceipt'
      Size = 255
      Calculated = True
    end
    object quPreSaleItemPromo: TBooleanField
      FieldName = 'Promo'
    end
    object quPreSaleItemSellingPrice: TBCDField
      FieldName = 'SellingPrice'
      Precision = 19
    end
    object quPreSaleItemDiscountPercent: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DiscountPercent'
      Calculated = True
    end
    object quPreSaleItemSerialNumber: TBooleanField
      FieldName = 'SerialNumber'
    end
    object quPreSaleItemAutoServiceNum: TIntegerField
      FieldName = 'AutoServiceNum'
    end
    object quPreSaleItemCupomFiscal: TStringField
      FieldName = 'CupomFiscal'
      Size = 8
    end
    object quPreSaleItemManufacturer: TStringField
      FieldName = 'Manufacturer'
      Size = 50
    end
    object quPreSaleItemUnit: TStringField
      FieldName = 'Unit'
      FixedChar = True
      Size = 4
    end
    object quPreSaleItemDepartment: TStringField
      FieldName = 'Department'
      Size = 50
    end
    object quPreSaleItemSerialNumbers: TStringField
      FieldKind = fkCalculated
      FieldName = 'SerialNumbers'
      Size = 255
      Calculated = True
    end
  end
  object quDescCashier: TADOQuery [7]
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDCashRegMov'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT SystemUser'
      
        'FROM dbo.CashRegMov CashRegMov (NOLOCK) , dbo.SystemUser SystemU' +
        'ser (NOLOCK) '
      'WHERE ( CashRegMov.IDOpenUser = SystemUser.IDUser )'
      '  AND'
      ' ('
      ' ( IDCashRegMov = :IDCashRegMov )'
      ' )'
      ' ')
    Left = 396
    Top = 204
    object quDescCashierSystemUser: TStringField
      FieldName = 'SystemUser'
      Origin = 'SystemUser.SystemUser'
      Size = 50
    end
  end
  object quSerial: TADOQuery [8]
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDInvoice'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'DocumentID, '
      #9'InventoryMovID, '
      #9'SerialNumber'
      'FROM '
      #9'InventoryMov InventoryMov (NOLOCK)'
      
        #9'JOIN SerialMov SerialMov (NOLOCK) ON (SerialMov.InventoryMovID ' +
        '= InventoryMov.IDInventoryMov)'
      'WHERE '
      #9'DocumentID = IsNull(:IDInvoice, DocumentID)'
      #9'AND'
      #9'InventMovTypeID = 1')
    Left = 392
    Top = 424
    object quSerialDocumentID: TIntegerField
      FieldName = 'DocumentID'
      Origin = 'InventoryMov.DocumentID'
    end
    object quSerialSerialNumber: TStringField
      FieldName = 'SerialNumber'
      Origin = 'SerialMov.SerialNumber'
      Size = 30
    end
    object quSerialInventoryMovID: TIntegerField
      FieldName = 'InventoryMovID'
      Origin = 'InventoryMov.DocumentID'
    end
  end
  object quPreSaleParc: TADOQuery [9]
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDPreSale'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '    L.IDDocumentoTipo,'
      '    L.NumDocumento ,'
      '    L.DataVencimento ,'
      '    L.ValorNominal ,'
      '    MP.MeioPag ,'
      '    MP.IDMeioPag'
      ''
      'FROM'
      '    Fin_Lancamento L (NOLOCK) '
      
        '    JOIN MeioPag MP (NOLOCK) ON (L.IDQuitacaoMeioPrevisto = MP.I' +
        'DMeioPag)'
      ''
      'WHERE'
      '    L.IDPreSale = :IDPreSale'
      ' ')
    Left = 396
    Top = 252
    object quPreSaleParcIDDocumentoTipo: TIntegerField
      FieldName = 'IDDocumentoTipo'
      Origin = 'RETAIL.Fin_Lancamento.IDDocumentoTipo'
    end
    object quPreSaleParcNumDocumento: TStringField
      FieldName = 'NumDocumento'
      Origin = 'RETAIL.Fin_Lancamento.NumDocumento'
    end
    object quPreSaleParcDataVencimento: TDateTimeField
      FieldName = 'DataVencimento'
      Origin = 'RETAIL.Fin_Lancamento.DataVencimento'
    end
    object quPreSaleParcValorNominal: TFloatField
      FieldName = 'ValorNominal'
      Origin = 'RETAIL.Fin_Lancamento.ValorNominal'
    end
    object quPreSaleParcMeioPag: TStringField
      FieldName = 'MeioPag'
      Origin = 'RETAIL.MeioPag.MeioPag'
      Size = 50
    end
    object quPreSaleParcIDMeioPag: TIntegerField
      FieldName = 'IDMeioPag'
      Origin = 'RETAIL.MeioPag.IDMeioPag'
    end
  end
  object quStore: TADOQuery [10]
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDStore'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'S.Name as Store,'
      #9'S.Address,'
      #9'S.City,'
      #9'S.Zip,'
      #9'S.Telephone as Phone,'
      #9'S.Fax,'
      #9'S.Contato as Contact,'
      #9'S.TicketHeader,'
      #9'S.TicketLayawayFooter,'
      #9'S.TicketTaxIsemptFooter,'
      #9'S.TicketFooter,'
      #9'S.TicketDetail,'
      #9'S.TicketTotals,'
      #9'S.PrintTicketHeader,'
      #9'S.PrintLayawayFooter,'
      #9'S.PrintTaxInsemptFooter,'
      #9'S.PrintTicketFooter,'
      #9'S.Email,'
      #9'S.WebPage,'
      #9'E.IDEstado as StateCod,'
      #9'E.Estado as State,'
      #9'EMP.Empresa,'
      #9'EMP.RazaoSocial RazaoEMP,'
      #9'EMP.CGC CNPJEMP,'
      #9'EMP.InscricaoEstadual IEEMP,'
      #9'EMP.InscricaoMunicipal IMEMP,'
      
        #9'EMP.Endereco + '#39' '#39' +CAST(EMP.Numero AS VARCHAR) + '#39' '#39' + EMP.Cop' +
        'lemento EndEMP,'
      #9'EMP.Bairro BairroEMP,'
      #9'EMP.Cidade CidadeEMP,'
      #9'EMP.CEP CEPEMP,'
      #9'EMP.IDEstado EstadoEMP,'
      #9'EMP.LogoEmpresa LogoEMP'
      'FROM'
      #9'Store S (NOLOCK) '
      #9'LEFT JOIN Estado E (NOLOCK) ON (E.IDEstado = S.IDEstado)'
      
        #9'LEFT JOIN Sis_Empresa EMP (NOLOCK) ON (S.IDEmpresa = EMP.IDEmpr' +
        'esa)'
      'WHERE'
      '        S.IDStore = :IDStore')
    Left = 332
    Top = 424
    object quStoreStore: TStringField
      FieldName = 'Store'
      Size = 30
    end
    object quStoreAddress: TStringField
      FieldName = 'Address'
      Size = 80
    end
    object quStoreCity: TStringField
      FieldName = 'City'
      Size = 40
    end
    object quStoreZip: TStringField
      FieldName = 'Zip'
      FixedChar = True
      Size = 12
    end
    object quStorePhone: TStringField
      FieldName = 'Phone'
      Size = 40
    end
    object quStoreFax: TStringField
      FieldName = 'Fax'
      Size = 40
    end
    object quStoreContact: TStringField
      FieldName = 'Contact'
      Size = 50
    end
    object quStoreTicketHeader: TMemoField
      FieldName = 'TicketHeader'
      BlobType = ftMemo
    end
    object quStoreTicketLayawayFooter: TMemoField
      FieldName = 'TicketLayawayFooter'
      BlobType = ftMemo
    end
    object quStoreTicketTaxIsemptFooter: TMemoField
      FieldName = 'TicketTaxIsemptFooter'
      BlobType = ftMemo
    end
    object quStoreTicketFooter: TMemoField
      FieldName = 'TicketFooter'
      BlobType = ftMemo
    end
    object quStoreTicketDetail: TMemoField
      FieldName = 'TicketDetail'
      BlobType = ftMemo
    end
    object quStoreTicketTotals: TMemoField
      FieldName = 'TicketTotals'
      BlobType = ftMemo
    end
    object quStorePrintTicketHeader: TBooleanField
      FieldName = 'PrintTicketHeader'
    end
    object quStorePrintLayawayFooter: TBooleanField
      FieldName = 'PrintLayawayFooter'
    end
    object quStorePrintTaxInsemptFooter: TBooleanField
      FieldName = 'PrintTaxInsemptFooter'
    end
    object quStorePrintTicketFooter: TBooleanField
      FieldName = 'PrintTicketFooter'
    end
    object quStoreEmail: TStringField
      FieldName = 'Email'
      Size = 60
    end
    object quStoreWebPage: TStringField
      FieldName = 'WebPage'
      Size = 80
    end
    object quStoreStateCod: TStringField
      FieldName = 'StateCod'
      FixedChar = True
      Size = 3
    end
    object quStoreState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object quStoreEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 35
    end
    object quStoreRazaoEMP: TStringField
      FieldName = 'RazaoEMP'
      Size = 100
    end
    object quStoreCNPJEMP: TStringField
      FieldName = 'CNPJEMP'
    end
    object quStoreIEEMP: TStringField
      FieldName = 'IEEMP'
    end
    object quStoreIMEMP: TStringField
      FieldName = 'IMEMP'
    end
    object quStoreEndEMP: TStringField
      FieldName = 'EndEMP'
      ReadOnly = True
      Size = 102
    end
    object quStoreBairroEMP: TStringField
      FieldName = 'BairroEMP'
    end
    object quStoreCidadeEMP: TStringField
      FieldName = 'CidadeEMP'
      Size = 30
    end
    object quStoreCEPEMP: TStringField
      FieldName = 'CEPEMP'
      Size = 10
    end
    object quStoreEstadoEMP: TStringField
      FieldName = 'EstadoEMP'
      FixedChar = True
      Size = 3
    end
    object quStoreLogoEMP: TBlobField
      FieldName = 'LogoEMP'
    end
  end
  inherited siLang: TsiLangRT
    StorageFile = 'MR_PrintReceipt.sil'
    Left = 8
    Top = 4
  end
  object quPayments: TADOQuery
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    AfterOpen = quPaymentsAfterOpen
    OnCalcFields = quPaymentsCalcFields
    Parameters = <
      item
        Name = 'IDPreSale'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'MP.IDMeioPag,'
      #9'MP.MeioPag,'
      #9'MP.Tipo as PayType,'
      #9'MP.DrawerKickOnPay,'
      #9'L.IDLancamento,'
      #9'round(L.ValorNominal, 2) as ValorNominal,'
      #9'IsNull(L.DataVencimento, I.PresaleDate) DataVencimento,'
      #9'L.IDQuitacaoMeioPrevisto ,'
      #9'L.IDLancamentoTipo,'
      #9'L.IDDocumentoTipo,'
      #9'L.IDPreSale,'
      #9'L.CheckNumber,'
      #9'L.IDBankCheck,'
      #9'L.CustomerDocument,'
      #9'L.CustomerName,'
      #9'L.CustomerPhone,'
      #9'L.Historico,'
      #9'L.PaymentPlace,'
      #9'L.NumMeioQuitPreVisto,'
      #9'I.CashReceived,'
      #9'L.NumDesdobramento, '
      #9'L.TotalQuitado,'
      '  I.Layaway,'
      '  su.CodSystemUser'
      'FROM'
      #9'Fin_Lancamento L (NOLOCK) '
      
        #9'JOIN MeioPag MP (NOLOCK) ON (L.IDQuitacaoMeioPrevisto = MP.IDMe' +
        'ioPag)'
      #9'JOIN Invoice I (NOLOCK) ON (L.IDPreSale = I.IDPreSale)'
      #9'join SystemUser su on su.IDUser = L.IDUsuarioLancamento'
      #9'join UserType ut on ut.IDUserType = su.UserTypeID'
      'WHERE'
      #9'L.IDPreSale = :IDPreSale'
      'ORDER BY'
      #9'MP.MeioPag')
    Left = 180
    Top = 364
    object quPaymentsIDMeioPag: TIntegerField
      FieldName = 'IDMeioPag'
      Origin = 'RETAIL.MeioPag.IDMeioPag'
    end
    object quPaymentsMeioPag: TStringField
      DisplayLabel = 'Payment Type'
      FieldName = 'MeioPag'
      Origin = 'RETAIL.MeioPag.MeioPag'
      Size = 50
    end
    object quPaymentsValorNominal: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'ValorNominal'
      Origin = 'RETAIL.Fin_Lancamento.ValorNominal'
      DisplayFormat = '#,##0.00'
    end
    object quPaymentsDataVencimento: TDateTimeField
      DisplayLabel = 'Due Date'
      FieldName = 'DataVencimento'
      Origin = 'RETAIL.Fin_Lancamento.DataVencimento'
      DisplayFormat = 'mm/dd/yyyy HH:MM'
    end
    object quPaymentsIDQuitacaoMeioPrevisto: TIntegerField
      FieldName = 'IDQuitacaoMeioPrevisto'
      Origin = 'RETAIL.Fin_Lancamento.IDQuitacaoMeioPrevisto'
    end
    object quPaymentsIDLancamentoTipo: TIntegerField
      FieldName = 'IDLancamentoTipo'
      Origin = 'RETAIL.Fin_Lancamento.IDLancamentoTipo'
    end
    object quPaymentsIDDocumentoTipo: TIntegerField
      FieldName = 'IDDocumentoTipo'
      Origin = 'RETAIL.Fin_Lancamento.IDDocumentoTipo'
    end
    object quPaymentsIDPreSale: TIntegerField
      FieldName = 'IDPreSale'
      Origin = 'RETAIL.Fin_Lancamento.IDPreSale'
    end
    object quPaymentsCheckNumber: TStringField
      FieldName = 'CheckNumber'
    end
    object quPaymentsIDBankCheck: TIntegerField
      FieldName = 'IDBankCheck'
    end
    object quPaymentsCustomerDocument: TStringField
      FieldName = 'CustomerDocument'
    end
    object quPaymentsCustomerName: TStringField
      FieldName = 'CustomerName'
      Size = 80
    end
    object quPaymentsCustomerPhone: TStringField
      FieldName = 'CustomerPhone'
    end
    object quPaymentsHistorico: TMemoField
      FieldName = 'Historico'
      BlobType = ftMemo
    end
    object quPaymentsPaymentPlace: TIntegerField
      FieldName = 'PaymentPlace'
    end
    object quPaymentsPaymentPlaceDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'PaymentPlaceDesc'
      Calculated = True
    end
    object quPaymentsPayType: TIntegerField
      FieldName = 'PayType'
    end
    object quPaymentsCashReceived: TBCDField
      FieldName = 'CashReceived'
      Precision = 19
    end
    object quPaymentsChange: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Change'
      Calculated = True
    end
    object quPaymentsAuthorization: TStringField
      FieldKind = fkCalculated
      FieldName = 'Authorization'
      Size = 30
      Calculated = True
    end
    object quPaymentsCardNumber: TStringField
      FieldKind = fkCalculated
      FieldName = 'CardNumber'
      Calculated = True
    end
    object quPaymentsNumMeioQuitPreVisto: TStringField
      FieldName = 'NumMeioQuitPreVisto'
      Size = 60
    end
    object quPaymentsDrawerKickOnPay: TBooleanField
      FieldName = 'DrawerKickOnPay'
    end
    object quPaymentsIDLancamento: TIntegerField
      FieldName = 'IDLancamento'
    end
    object quPaymentsNumDesdobramento: TStringField
      FieldName = 'NumDesdobramento'
    end
    object quPaymentsTotalQuitado: TBCDField
      FieldName = 'TotalQuitado'
      Precision = 19
    end
    object quPaymentsLayaway: TBooleanField
      FieldName = 'Layaway'
    end
    object quPaymentsRemains: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Remains'
      Calculated = True
    end
    object quPaymentsCodSystemUser: TStringField
      FieldName = 'CodSystemUser'
    end
  end
  object ppDesigner: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Dynamic Reports'
    DataSettings.DatabaseName = 'ADODBConnect'
    DataSettings.SessionType = 'ADOSession'
    DataSettings.AllowEditSQL = True
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtMSSQLServer
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL1
    DataSettings.UseDataDictionary = True
    Icon.Data = {
      0000010002002020000001001800A80C0000260000002020000001002000A810
      0000CE0C00002800000020000000400000000100180000000000800C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009D9D9C8988877275
      7569686A73727175767500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000008485847475738A8B8B9B999BA5A3A4A8A7A7A7A6A6A8A8
      A8A6A6A6DCDCDCDFDEDF78787873757500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006D6D6D717272A5A6A5CAC9C9CECECDC5C6C5BABBBBB2B2B2ABABAAA7A7
      A7A1A1A1CCCCCCFFFFFFF8F8F8A3A2A263636300000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000686766
      979696CFCDCEE6E5E5E2E2E1D2D2D2C8C8C7BFBEBEB6B6B6AFAFAFA9A9AAA5A5
      A5A1A1A1D5D6D6FFFFFFF7F7F7FFFFFFCDCCCD61616200000000000000000000
      0000000000000000000000000000000000000000000000000000000000E2E0DF
      FFFFFFF3F3F3E5E4E4D9D7D7D1D0CFCBCBC9CBCACBC8C8C7C4C4C4BEBFBFBDBD
      BDB2B3B2A2A2A2EFEFEFFEFEFEF6F6F6FFFFFFF1F0F086868600000000000000
      0000000000000000000000000000000000000000000000000000000000F1F0F1
      F3F2F2EAE9E9E8E8E8E7E6E6E6E6E6E0DFDFCECECEBEBFBEB5B5B5B0B0B0ACAC
      AC9D9D9D6D6D6E858686DCDBDCFFFEFEF7F7F6FFFEFEFEFFFE8D8E8D00000000
      0000000000000000000000000000000000000000000000000000D3D2D2EDEBEB
      F7F7F6F2F1F1E1E1E0C9C8C8BEBEBFBCBCBDBBBABABBBBBBB8B7B7B1B0B1A6A6
      A6A6A7A7C7C7C7B5B4B5939293BBBBBAF9F9F9FBFBFBFFFEFFF6F5F674737200
      0000000000000000000000000000000000000000000000000000DBDBDAE0E1E0
      D0D0D0BBBBBBBCBBBBCFCECEE5E4E4F0EEEEE9E8E9D8D7D8C6C6C7B9B8B8AEAE
      AEA6A6A5BFC0BFD1D4D1D6D7D79394938F8E8CDEDEDEFFFFFFFFFFFFAEAEAA00
      0000000000000000000000000000000000000000000000000000C5C5C5A1A1A1
      CCCCCDE5E4E4F9F8F8F9F8F8F0EFEFE3E3E2D4D3D4C4C3C4BCBBBCBFBDBDC6C6
      C5A3A3A3919191C5C8C5CDCFCEDFE1E0ACADAB7B7A79B3B3B3FFFFFFD8D8D600
      0000000000000000000000000000000000000000000000000000B9BABAD1D1D0
      FFFDFEEFEEEEDBDBDAD6D6D6D4D4D3BFBFBDC5C5C5C9C7C6D0CDCCEAEAEACECD
      CBE1E0E09C9C9CA9A9A8C6C9C6CCCECDE7E8E7D2D2D18181828C8C8BDCDCDC00
      0000000000000000000000000000000000000000000000000000000000C2C0BE
      D2D2D2B2B1B0CDCDCDCFCECDD3D3D1E4E4E4CDCAC9E9E8E7E3E1DFDFDCDCF1F1
      F0D7D4D2E5E4E49C9C9DB4B6B4C4C6C3CACCCAE4E5E4EBEBEB9E9F9E7D7D7E00
      0000000000000000000000000000000000000000000000000000000000ACA8A5
      CCCBCBE0DFDED0CCC9E3E2E1DBDBDAC8C5C5CECFCECECDCBF0F0F0DBD8D8E1DE
      DEEAEAE9E5E4E3E0E1E1B3B3B3E5E6E5D0D2D0D5D6D5E1E2E1F4F5F4AEAEAE00
      0000000000000000000000000000000000000000000000000000000000000000
      AFA9A4D4D4D3E5E5E5DCDAD9DEDDDDD8D6D6CDCDCAD5D5D4D6D4D2F4F3F2E1DF
      DFEFEFF0E1DFDFECECECE7E6E7DCDBDCD1D1D0BDBFBDDBDDDBEDEEEDC8C9C800
      0000000000000000000000000000000000000000000000000000000000000000
      0000009F9C98E3E4E7E1E0DFCCCAC8FAFBFBF2F1F0F7F8F7DDDFE0E8E9EAE2E2
      E3BEBEBE9D9E9E7676776767684B4A4B605F5F3739397A7978DEDEDEDEDEDE00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3AFAEE1E2E3EAEBECDEDFE1ADB0B485888C7575757373727878
      784241421414141111110C0C0E0404044B4B4B3D3E3D1516154E4D4C9A999900
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A8A6A75B5D5E545250797166AA977EDCC6A2998B7A5256
      5A4B494A0F0F0F1C1C1C2525242525254C4C4C77777633333235363561606000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B7A48FEFD0AAFFDCB2FFD8AFFFD9B1EDD2B0625F
      5D5A5B5D4B4B4A5555555A5A5A5657564F50503D3C3E5453545B5C5B9B9B9B00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000E0CDB7FFDAAEFECAA8FED1B1FCD2B5FFE2C3CDC0
      AC949495ADAEAE3D3D3D222222232222161514454544A4A4A400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFDFC4FFE3CAFADEC5FBDCC4FBE1CCFFFD
      ECC6C4BF0000000000000000000000002529319FA1A300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4E6D8FCEBDAF8E9D8F6EADDF9EF
      E2FEFBF4B6B6B6000000000000000000614E30645C4C756C5C877C6800000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAD8D5FAF1E5F5EBE1F3EBE0F8F0
      E5FAF9F6ABAEB4000000C29840D09D2EFCB42AEEAC2FF9B927DAAD587F859000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000EFEDECFAF7F5F7F7F6FAFA
      F9F8F7F69FA5AEC7BAA5FFCE44FFC93AFFC338FFC135FFC529BA934E686D7700
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000E8E8EAFFFFFFF9FAFBF1F1
      F1E9E7E7BFC1C6B5B3AFC59A43C29645A1844B9D7E469D7D4559504200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000CCCCCCD1D1D10000000000
      000000000000000000009795928E8E90888A9000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
      0FFFFF8003FFFE0001FFF80000FFF800007FF800003FF000001FF000001FF000
      001FF000001FF800001FF800001FFC00001FFE00001FFF00001FFF80001FFFC0
      001FFFC0007FFFE03CFFFFF01C3FFFF0101FFFF8001FFFF8003FFFF9F1FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000002000000040000000010020000000
      00008010000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE01FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE01FDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0F1F112E3E4E322DFDFE024D9D8D929CACAC938BBBB
      BB45E8E8E81CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01EEEE
      EE11D8D8D828BDBCBD51A9A8A97A9D9D9C96898887B3727575D269686AE27372
      71F0757675CFA0A1A17FEFEFEF15FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F708C5C5C53A848584857475
      73B98A8B8BD19B999BEBA5A3A4F7A8A7A7FCA7A6A6FFA8A8A8FFA6A6A6FFDCDC
      DCFFDFDEDFFF787878FF737575B2E1E1E122FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6E6E6199FA0A0656D6D6DAC717272E6A5A6A5FFCAC9
      C9FFCECECDFFC5C6C5FFBABBBBFFB2B2B2FFABABAAFFA7A7A7FFA1A1A1FFCCCC
      CCFDFFFFFFFDF8F8F8FFA3A2A2FF636363CBC4C4C33CFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E5E530686766C3979696FFCFCDCEFFE6E5E5FFE2E2E1FFD2D2
      D2FFC8C8C7FFBFBEBEFFB6B6B6FFAFAFAFFFA9A9AAFFA5A5A5FFA1A1A1FFD5D6
      D6FEFFFFFFFDF7F7F7FDFFFFFFFDCDCCCDFF616162E9A0A0A05FFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D8D7D764E2E0DFFFFFFFFFFFF3F3F3FFE5E4E4FFD9D7D7FFD1D0
      CFFFCBCBC9FFCBCACBFFC8C8C7FEC4C4C4FFBEBFBFFFBDBDBDFEB2B3B2FFA2A2
      A2FEEFEFEFFDFEFEFEFDF6F6F6FDFFFFFFFDF1F0F0FF868686F2A3A3A35FFEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D5D4D46AF1F0F1FFF3F2F2FFEAE9E9FFE8E8E8FFE7E6E6FFE6E6
      E6FFE0DFDFFECECECEFEBEBFBEFFB5B5B5FEB0B0B0FFACACACFF9D9D9DFE6D6D
      6EFD858686FEDCDBDCFEFFFEFEFDF7F7F6FDFFFEFEFDFEFFFEFF8D8E8DF2A0A0
      A063FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D3D2D280EDEBEBFFF7F7F6FFF2F1F1FFE1E1E0FFC9C8C8FFBEBE
      BFFFBCBCBDFFBBBABAFFBBBBBBFFB8B7B7FFB1B0B1FFA6A6A6FFA6A7A7FEC7C7
      C7FDB5B4B5FD939293FDBBBBBAFDF9F9F9FDFBFBFBFDFFFEFFFDF6F5F6FF7473
      72DBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DBDBDA93E0E1E0FFD0D0D0FFBBBBBBFEBCBBBBFECFCECEFEE5E4
      E4FFF0EEEEFFE9E8E9FFD8D7D8FFC6C6C7FFB9B8B8FFAEAEAEFFA6A6A5FEBFC0
      BFFED1D4D1FFD6D7D7FF939493FE8F8E8CFEDEDEDEFDFFFFFFFDFFFFFFFFAEAE
      AAFAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C5C5C59DA1A1A1FFCCCCCDFEE5E4E4FFF9F8F8FFF9F8F8FFF0EF
      EFFFE3E3E2FFD4D3D4FEC4C3C4FEBCBBBCFFBFBDBDFDC6C6C5FEA3A3A3FE9191
      91FEC5C8C5FFCDCFCEFFDFE1E0FEACADABFE7B7A79FDB3B3B3FEFFFFFFFFD8D8
      D6FAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B9BABAA5D1D1D0FFFFFDFEFFEFEEEEFEDBDBDAFED6D6D6FED4D4
      D3FDBFBFBDFDC5C5C5FDC9C7C6FDD0CDCCFEEAEAEAFDCECDCBFEE1E0E0FD9C9C
      9CFDA9A9A8FEC6C9C6FFCCCECDFFE7E8E7FFD2D2D1FF818182FF8C8C8BFFDCDC
      DCF9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CDCDCD6BC2C0BEFFD2D2D2FFB2B1B0FDCDCDCDFECFCECDFDD3D3
      D1FDE4E4E4FDCDCAC9FEE9E8E7FDE3E1DFFEDFDCDCFEF1F1F0FDD7D4D2FDE5E4
      E4FD9C9C9DFDB4B6B4FDC4C6C3FECACCCAFFE4E5E4FFEBEBEBFF9E9F9EFF7D7D
      7EEFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8F7F70FACA8A59ACCCBCBFEE0DFDEFFD0CCC9FEE3E2E1FDDBDB
      DAFDC8C5C5FDCECFCEFDCECDCBFEF0F0F0FDDBD8D8FEE1DEDEFDEAEAE9FDE5E4
      E3FDE0E1E1FDB3B3B3FDE5E6E5FED0D2D0FFD5D6D5FFE1E2E1FFF4F5F4FFAEAE
      AEEEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6F5F410AFA9A4A4D4D4D3FFE5E5E5FEDCDAD9FEDEDD
      DDFDD8D6D6FDCDCDCAFED5D5D4FED6D4D2FEF4F3F2FDE1DFDFFEEFEFF0FDE1DF
      DFFEECECECFDE7E6E7FDDCDBDCFDD1D1D0FDBDBFBDFEDBDDDBFFEDEEEDFFC8C9
      C8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E5E7259F9C98DAE3E4E7FFE1E0DFFFCCCA
      C8FDFAFBFBFDF2F1F0FDF7F8F7FDDDDFE0FDE8E9EAFDE2E2E3FDBEBEBEFE9D9E
      9EFE767677FE676768FE4B4A4BFE605F5FFE373939FD7A7978FEDEDEDEFFDEDE
      DEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D0CE49B3AFAEBDE1E2E3FBEAEB
      ECFFDEDFE1FDADB0B4FD85888CFD757575FD737372FD787878FE424142FE1414
      14FE111111FE0C0C0EFE040404FE4B4B4BFD3D3E3DFD151615FF4E4D4CFF9A99
      99FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E5E428A8A6A7A25B5D
      5EFE545250FF797166FFAA977EFEDCC6A2FF998B7AFE52565AFD4B494AFF0F0F
      0FFF1C1C1CFD252524FD252525FD4C4C4CFD777776FD333332FF353635FF6160
      60DCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D3D23EB7A4
      8FEAEFD0AAFFFFDCB2FFFFD8AFFFFFD9B1FFEDD2B0FF625F5DFD5A5B5DF64B4B
      4AFF555555FF5A5A5AFF565756FF4F5050FD3D3C3EFF545354FF5B5C5BFF9B9B
      9B9AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F5F50FE0CD
      B7C3FFDAAEFFFECAA8FFFED1B1FEFCD2B5FEFFE2C3FECDC0ACFE949495AFADAE
      AE8A3D3D3DEE222222FF232222FF161514FF454544DFA4A4A48EC0BFBF66F1F1
      F116FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E3
      E150FFDFC4F6FFE3CAFFFADEC5FEFBDCC4FEFBE1CCFEFFFDECFFC6C4BFE0D5D5
      D541DFDFDF34B9BAB969ABABAC77252931FF9FA1A38BFDFDFD02F0F0F016FAFA
      FA09FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF01EDE8E570F4E6D8FBFCEBDAFFF8E9D8FEF6EADDFEF9EFE2FEFEFBF4FFB6B6
      B699FFFFFF00F0F0F014BBBAB95E614E30FF645C4CDB756C5CC7877C68E8B8B8
      BA7CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF01DAD8D5A9FAF1E5FFF5EBE1FEF3EBE0FEF8F0E5FEFAF9F6FFABAE
      B4AEBCB3A673C29840E3D09D2EFEFCB42AFFEEAC2FFFF9B927FFDAAD58FF7F85
      90BBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4E5E566EFEDECFFFAF7F5FEF7F7F6FEFAFAF9FFF8F7F6FF9FA5
      AEB8C7BAA5A1FFCE44FDFFC93AFFFFC338FFFFC135FFFFC529FFBA934EFF686D
      77C1FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFE0E04AE8E8EAFFFFFFFFFFF9FAFBFFF1F1F1FFE9E7E7FFBFC1
      C694B5B3AF8BC59A43FFC29645FFA1844BFF9D7E46FF9D7D45FF595042ED9FA0
      A16CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F0F0F020CCCCCC98D1D1D190DCDDDC72E1E1E15DE3E3E34BF8F8
      F813CCCCCC599795929B8E8E908F888A9083999B9E74B2B4B75DCCCCCD3AF9F9
      F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFDFFFFFFF9FFFFFFF9
      FFFFFFF80FFFFF8003FFFE0001FFF80000FFF000007FF000001FF000001FF000
      001FF000001FF000001FF000001FF000001FF000001FF800001FFC00001FFE00
      001FFF00001FFF80001FFF80001FFFC0001FFFC0101FFFE0001FFFF0001FFFF0
      001FFFF0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Position = poScreenCenter
    Report = ppReport
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 396
    Top = 108
  end
  object dsPreSaleInfo: TDataSource
    DataSet = quPreSaleInfo
    Left = 24
    Top = 472
  end
  object ppPreSaleInfo: TppDBPipeline
    DataSource = dsPreSaleInfo
    UserName = 'InvoiceInfo'
    Left = 24
    Top = 520
    object ppPreSaleInfoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDPreSale'
      FieldName = 'IDPreSale'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppPreSaleInfoppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDMeioPag'
      FieldName = 'IDMeioPag'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppPreSaleInfoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDTouristGroup'
      FieldName = 'IDTouristGroup'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppPreSaleInfoppField4: TppField
      FieldAlias = 'PreSaleDate'
      FieldName = 'PreSaleDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object ppPreSaleInfoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'OtherComissionID'
      FieldName = 'OtherComissionID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppPreSaleInfoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDCustomer'
      FieldName = 'IDCustomer'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppPreSaleInfoppField7: TppField
      FieldAlias = 'PassportDate'
      FieldName = 'PassportDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object ppPreSaleInfoppField8: TppField
      FieldAlias = 'AirLine'
      FieldName = 'AirLine'
      FieldLength = 40
      DisplayWidth = 40
      Position = 7
    end
    object ppPreSaleInfoppField9: TppField
      FieldAlias = 'CompanyName'
      FieldName = 'CompanyName'
      FieldLength = 40
      DisplayWidth = 40
      Position = 8
    end
    object ppPreSaleInfoppField10: TppField
      FieldAlias = 'CompanyCGC'
      FieldName = 'CompanyCGC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppPreSaleInfoppField11: TppField
      FieldAlias = 'DepositDate'
      FieldName = 'DepositDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object ppPreSaleInfoppField12: TppField
      FieldAlias = 'Note'
      FieldName = 'Note'
      FieldLength = 150
      DisplayWidth = 150
      Position = 11
    end
    object ppPreSaleInfoppField13: TppField
      FieldAlias = 'InvoiceDate'
      FieldName = 'InvoiceDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppPreSaleInfoppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDInvoice'
      FieldName = 'IDInvoice'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppPreSaleInfoppField15: TppField
      FieldAlias = 'Passport'
      FieldName = 'Passport'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppPreSaleInfoppField16: TppField
      FieldAlias = 'Ticket'
      FieldName = 'Ticket'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object ppPreSaleInfoppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'MediaID'
      FieldName = 'MediaID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppPreSaleInfoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'CashReceived'
      FieldName = 'CashReceived'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppPreSaleInfoppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'CashRegMovID'
      FieldName = 'CashRegMovID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppPreSaleInfoppField20: TppField
      FieldAlias = 'Printed'
      FieldName = 'Printed'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 19
    end
    object ppPreSaleInfoppField21: TppField
      FieldAlias = 'TaxIsent'
      FieldName = 'TaxIsent'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 20
    end
    object ppPreSaleInfoppField22: TppField
      FieldAlias = 'CardNumber'
      FieldName = 'CardNumber'
      FieldLength = 30
      DisplayWidth = 30
      Position = 21
    end
    object ppPreSaleInfoppField23: TppField
      FieldAlias = 'Address'
      FieldName = 'Address'
      FieldLength = 200
      DisplayWidth = 200
      Position = 22
    end
    object ppPreSaleInfoppField24: TppField
      FieldAlias = 'FirstName'
      FieldName = 'FirstName'
      FieldLength = 20
      DisplayWidth = 20
      Position = 23
    end
    object ppPreSaleInfoppField25: TppField
      FieldAlias = 'LastName'
      FieldName = 'LastName'
      FieldLength = 20
      DisplayWidth = 20
      Position = 24
    end
    object ppPreSaleInfoppField26: TppField
      FieldAlias = 'PrintNotes'
      FieldName = 'PrintNotes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object ppPreSaleInfoppField27: TppField
      FieldAlias = 'Media'
      FieldName = 'Media'
      FieldLength = 255
      DisplayWidth = 255
      Position = 26
    end
    object ppPreSaleInfoppField28: TppField
      FieldAlias = 'CountryCod'
      FieldName = 'CountryCod'
      FieldLength = 3
      DisplayWidth = 3
      Position = 27
    end
    object ppPreSaleInfoppField29: TppField
      FieldAlias = 'Country'
      FieldName = 'Country'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object ppPreSaleInfoppField30: TppField
      FieldAlias = 'StateCode'
      FieldName = 'StateCode'
      FieldLength = 3
      DisplayWidth = 3
      Position = 29
    end
    object ppPreSaleInfoppField31: TppField
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 50
      DisplayWidth = 50
      Position = 30
    end
    object ppPreSaleInfoppField32: TppField
      FieldAlias = 'ClientAddress'
      FieldName = 'ClientAddress'
      FieldLength = 80
      DisplayWidth = 80
      Position = 31
    end
    object ppPreSaleInfoppField33: TppField
      FieldAlias = 'ClientCity'
      FieldName = 'ClientCity'
      FieldLength = 40
      DisplayWidth = 40
      Position = 32
    end
    object ppPreSaleInfoppField34: TppField
      FieldAlias = 'ClientNeighborhood'
      FieldName = 'ClientNeighborhood'
      FieldLength = 50
      DisplayWidth = 50
      Position = 33
    end
    object ppPreSaleInfoppField35: TppField
      FieldAlias = 'ClientZip'
      FieldName = 'ClientZip'
      FieldLength = 12
      DisplayWidth = 12
      Position = 34
    end
    object ppPreSaleInfoppField36: TppField
      FieldAlias = 'ClientPhone'
      FieldName = 'ClientPhone'
      FieldLength = 40
      DisplayWidth = 40
      Position = 35
    end
    object ppPreSaleInfoppField37: TppField
      FieldAlias = 'ClientCell'
      FieldName = 'ClientCell'
      FieldLength = 18
      DisplayWidth = 18
      Position = 36
    end
    object ppPreSaleInfoppField38: TppField
      FieldAlias = 'ClientEmail'
      FieldName = 'ClientEmail'
      FieldLength = 50
      DisplayWidth = 50
      Position = 37
    end
    object ppPreSaleInfoppField39: TppField
      FieldAlias = 'ClientBirthDate'
      FieldName = 'ClientBirthDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 38
    end
    object ppPreSaleInfoppField40: TppField
      FieldAlias = 'ClientEmployeeID'
      FieldName = 'ClientEmployeeID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 39
    end
    object ppPreSaleInfoppField41: TppField
      FieldAlias = 'ClientSocialSecurity'
      FieldName = 'ClientSocialSecurity'
      FieldLength = 30
      DisplayWidth = 30
      Position = 40
    end
    object ppPreSaleInfoppField42: TppField
      FieldAlias = 'ClientFederalID'
      FieldName = 'ClientFederalID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 41
    end
    object ppPreSaleInfoppField43: TppField
      FieldAlias = 'ClientSalesTax'
      FieldName = 'ClientSalesTax'
      FieldLength = 30
      DisplayWidth = 30
      Position = 42
    end
    object ppPreSaleInfoppField44: TppField
      FieldAlias = 'ClientDBA'
      FieldName = 'ClientDBA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 43
    end
    object ppPreSaleInfoppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDFormOfPayment'
      FieldName = 'IDFormOfPayment'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 44
    end
    object ppPreSaleInfoppField46: TppField
      FieldAlias = 'SaleCode'
      FieldName = 'SaleCode'
      FieldLength = 20
      DisplayWidth = 20
      Position = 45
    end
    object ppPreSaleInfoppField47: TppField
      FieldAlias = 'InvoiceCode'
      FieldName = 'InvoiceCode'
      FieldLength = 20
      DisplayWidth = 20
      Position = 46
    end
    object ppPreSaleInfoppField48: TppField
      FieldAlias = 'FullName'
      FieldName = 'FullName'
      FieldLength = 50
      DisplayWidth = 50
      Position = 47
    end
    object ppPreSaleInfoppField49: TppField
      FieldAlias = 'ClientPhoneAreaCode'
      FieldName = 'ClientPhoneAreaCode'
      FieldLength = 5
      DisplayWidth = 5
      Position = 48
    end
    object ppPreSaleInfoppField50: TppField
      FieldAlias = 'ClientCellAreaCode'
      FieldName = 'ClientCellAreaCode'
      FieldLength = 5
      DisplayWidth = 5
      Position = 49
    end
    object ppPreSaleInfoppField51: TppField
      FieldAlias = 'ClientFax'
      FieldName = 'ClientFax'
      FieldLength = 40
      DisplayWidth = 40
      Position = 50
    end
    object ppPreSaleInfoppField52: TppField
      FieldAlias = 'ClientContacts'
      FieldName = 'ClientContacts'
      FieldLength = 255
      DisplayWidth = 255
      Position = 51
    end
    object ppPreSaleInfoppField53: TppField
      FieldAlias = 'ClientContact'
      FieldName = 'ClientContact'
      FieldLength = 50
      DisplayWidth = 50
      Position = 52
    end
    object ppPreSaleInfoppField54: TppField
      FieldAlias = 'Layaway'
      FieldName = 'Layaway'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 53
    end
    object ppPreSaleInfoppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'Change'
      FieldName = 'Change'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 54
    end
    object ppPreSaleInfoppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDStore'
      FieldName = 'IDStore'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 55
    end
    object ppPreSaleInfoppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'TaxPerc'
      FieldName = 'TaxPerc'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 56
    end
    object ppPreSaleInfoppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDCFOP'
      FieldName = 'IDCFOP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 57
    end
    object ppPreSaleInfoppField59: TppField
      FieldAlias = 'CFOP'
      FieldName = 'CFOP'
      FieldLength = 15
      DisplayWidth = 15
      Position = 58
    end
    object ppPreSaleInfoppField60: TppField
      FieldAlias = 'NaturezaOperacao'
      FieldName = 'NaturezaOperacao'
      FieldLength = 30
      DisplayWidth = 30
      Position = 59
    end
    object ppPreSaleInfoppField61: TppField
      FieldAlias = 'PessoaTax'
      FieldName = 'PessoaTax'
      FieldLength = 50
      DisplayWidth = 50
      Position = 60
    end
    object ppPreSaleInfoppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'FreightType'
      FieldName = 'FreightType'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object ppPreSaleInfoppField63: TppField
      FieldAlias = 'Carrier'
      FieldName = 'Carrier'
      FieldLength = 50
      DisplayWidth = 50
      Position = 62
    end
    object ppPreSaleInfoppField64: TppField
      FieldAlias = 'CarrierAddress'
      FieldName = 'CarrierAddress'
      FieldLength = 80
      DisplayWidth = 80
      Position = 63
    end
    object ppPreSaleInfoppField65: TppField
      FieldAlias = 'CarrierCity'
      FieldName = 'CarrierCity'
      FieldLength = 40
      DisplayWidth = 40
      Position = 64
    end
    object ppPreSaleInfoppField66: TppField
      FieldAlias = 'CarrierNeighborhood'
      FieldName = 'CarrierNeighborhood'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object ppPreSaleInfoppField67: TppField
      FieldAlias = 'CarrierZip'
      FieldName = 'CarrierZip'
      FieldLength = 12
      DisplayWidth = 12
      Position = 66
    end
    object ppPreSaleInfoppField68: TppField
      FieldAlias = 'CarrierFederalID'
      FieldName = 'CarrierFederalID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 67
    end
    object ppPreSaleInfoppField69: TppField
      FieldAlias = 'CarrierDBA'
      FieldName = 'CarrierDBA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 68
    end
    object ppPreSaleInfoppField70: TppField
      FieldAlias = 'CarrierEmployeeID'
      FieldName = 'CarrierEmployeeID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 69
    end
    object ppPreSaleInfoppField71: TppField
      FieldAlias = 'Agent'
      FieldName = 'Agent'
      FieldLength = 50
      DisplayWidth = 50
      Position = 70
    end
    object ppPreSaleInfoppField72: TppField
      FieldAlias = 'AgentPhone'
      FieldName = 'AgentPhone'
      FieldLength = 40
      DisplayWidth = 40
      Position = 71
    end
    object ppPreSaleInfoppField73: TppField
      FieldAlias = 'AgentCell'
      FieldName = 'AgentCell'
      FieldLength = 18
      DisplayWidth = 18
      Position = 72
    end
    object ppPreSaleInfoppField74: TppField
      FieldAlias = 'AgentEmail'
      FieldName = 'AgentEmail'
      FieldLength = 50
      DisplayWidth = 50
      Position = 73
    end
    object ppPreSaleInfoppField75: TppField
      FieldAlias = 'ClientIdentidade'
      FieldName = 'ClientIdentidade'
      FieldLength = 30
      DisplayWidth = 30
      Position = 74
    end
    object ppPreSaleInfoppField76: TppField
      FieldAlias = 'ClientOrgaoEmissor'
      FieldName = 'ClientOrgaoEmissor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 75
    end
    object ppPreSaleInfoppField77: TppField
      FieldAlias = 'ClientDataExpedicao'
      FieldName = 'ClientDataExpedicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 76
    end
    object ppPreSaleInfoppField78: TppField
      FieldAlias = 'ClientOBS'
      FieldName = 'ClientOBS'
      FieldLength = 100
      DisplayWidth = 100
      Position = 77
    end
    object ppPreSaleInfoppField79: TppField
      FieldAlias = 'DeliverDate'
      FieldName = 'DeliverDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 78
    end
  end
  object dsPreSaleItem: TDataSource
    DataSet = cdsPreSaleItem
    Left = 104
    Top = 472
  end
  object ppPreSaleItem: TppDBPipeline
    DataSource = dsPreSaleItem
    UserName = 'ItemsDetail'
    Left = 104
    Top = 520
    object ppPreSaleItemppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ModelID'
      FieldName = 'ModelID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppPreSaleItemppField2: TppField
      FieldAlias = 'Model'
      FieldName = 'Model'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object ppPreSaleItemppField3: TppField
      FieldAlias = 'Description'
      FieldName = 'Description'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppPreSaleItemppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'SalePrice'
      FieldName = 'SalePrice'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppPreSaleItemppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Discount'
      FieldName = 'Discount'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppPreSaleItemppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDInventoryMov'
      FieldName = 'IDInventoryMov'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppPreSaleItemppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalItem'
      FieldName = 'TotalItem'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppPreSaleItemppField8: TppField
      FieldAlias = 'SalesPerson'
      FieldName = 'SalesPerson'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppPreSaleItemppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDComission'
      FieldName = 'IDComission'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppPreSaleItemppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CostPrice'
      FieldName = 'CostPrice'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppPreSaleItemppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDUser'
      FieldName = 'IDUser'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppPreSaleItemppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ExchangeInvoice'
      FieldName = 'ExchangeInvoice'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppPreSaleItemppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tax'
      FieldName = 'Tax'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object ppPreSaleItemppField14: TppField
      FieldAlias = 'UnitSalePrice'
      FieldName = 'UnitSalePrice'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object ppPreSaleItemppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppPreSaleItemppField16: TppField
      FieldAlias = 'CodSize'
      FieldName = 'CodSize'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object ppPreSaleItemppField17: TppField
      FieldAlias = 'SizeName'
      FieldName = 'SizeName'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object ppPreSaleItemppField18: TppField
      FieldAlias = 'CodColor'
      FieldName = 'CodColor'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object ppPreSaleItemppField19: TppField
      FieldAlias = 'Color'
      FieldName = 'Color'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object ppPreSaleItemppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'SuggRetail'
      FieldName = 'SuggRetail'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 19
    end
    object ppPreSaleItemppField21: TppField
      FieldAlias = 'IsDelivered'
      FieldName = 'IsDelivered'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 20
    end
    object ppPreSaleItemppField22: TppField
      FieldAlias = 'SaleCode'
      FieldName = 'SaleCode'
      FieldLength = 20
      DisplayWidth = 20
      Position = 21
    end
    object ppPreSaleItemppField23: TppField
      FieldAlias = 'InvoiceCode'
      FieldName = 'InvoiceCode'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object ppPreSaleItemppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDModel'
      FieldName = 'IDModel'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppPreSaleItemppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qty'
      FieldName = 'Qty'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppPreSaleItemppField26: TppField
      FieldAlias = 'ModelReceipt'
      FieldName = 'ModelReceipt'
      FieldLength = 255
      DisplayWidth = 255
      Position = 25
    end
    object ppPreSaleItemppField27: TppField
      FieldAlias = 'CategoryReceipt'
      FieldName = 'CategoryReceipt'
      FieldLength = 255
      DisplayWidth = 255
      Position = 26
    end
    object ppPreSaleItemppField28: TppField
      FieldAlias = 'Promo'
      FieldName = 'Promo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object ppPreSaleItemppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'SellingPrice'
      FieldName = 'SellingPrice'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 28
    end
    object ppPreSaleItemppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'DiscountPercent'
      FieldName = 'DiscountPercent'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object ppPreSaleItemppField31: TppField
      FieldAlias = 'SerialNumber'
      FieldName = 'SerialNumber'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 30
    end
    object ppPreSaleItemppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'AutoServiceNum'
      FieldName = 'AutoServiceNum'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object ppPreSaleItemppField33: TppField
      FieldAlias = 'CupomFiscal'
      FieldName = 'CupomFiscal'
      FieldLength = 8
      DisplayWidth = 8
      Position = 32
    end
    object ppPreSaleItemppField34: TppField
      FieldAlias = 'Manufacturer'
      FieldName = 'Manufacturer'
      FieldLength = 50
      DisplayWidth = 50
      Position = 33
    end
    object ppPreSaleItemppField35: TppField
      FieldAlias = 'Unit'
      FieldName = 'Unit'
      FieldLength = 4
      DisplayWidth = 4
      Position = 34
    end
    object ppPreSaleItemppField36: TppField
      FieldAlias = 'Department'
      FieldName = 'Department'
      FieldLength = 50
      DisplayWidth = 50
      Position = 35
    end
    object ppPreSaleItemppField37: TppField
      FieldAlias = 'SerialNumbers'
      FieldName = 'SerialNumbers'
      FieldLength = 255
      DisplayWidth = 255
      Position = 36
    end
  end
  object dsPayments: TDataSource
    DataSet = quPayments
    Left = 180
    Top = 472
  end
  object dsPreSaleValue: TDataSource
    DataSet = quPreSaleValue
    Left = 260
    Top = 472
  end
  object ppPreSaleValue: TppDBPipeline
    DataSource = dsPreSaleValue
    UserName = 'PreSaleValue'
    Left = 256
    Top = 520
  end
  object ppStore: TppDBPipeline
    DataSource = dsStore
    UserName = 'Store'
    Left = 392
    Top = 350
  end
  object dsStore: TDataSource
    DataSet = quStore
    Left = 332
    Top = 472
  end
  object ppSerial: TppDBPipeline
    DataSource = dsSerial
    UserName = 'SerialNumber'
    Left = 392
    Top = 520
    object ppSerialppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'DocumentID'
      FieldName = 'DocumentID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppSerialppField2: TppField
      FieldAlias = 'SerialNumber'
      FieldName = 'SerialNumber'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object ppSerialppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'InventoryMovID'
      FieldName = 'InventoryMovID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
  end
  object dsSerial: TDataSource
    DataSet = quSerial
    Left = 392
    Top = 472
  end
  object quInvoiceCosts: TADODataSet
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    CommandText = 
      'SELECT'#13#10#9'C.CostType,'#13#10#9'ICT.IDInvoiceCost,'#13#10#9'ICT.IDCostType,'#13#10#9'IC' +
      'T.Amount'#13#10'FROM'#13#10#9'InvoiceToCostType ICT (NOLOCK) '#13#10#9'LEFT OUTER JO' +
      'IN CostType C (NOLOCK) ON (C.IDCostType = ICT.IDCostType)'#13#10'WHERE' +
      #13#10#9'ICT.IDPreSale = :IDPreSale'#13#10
    Parameters = <
      item
        Name = 'IDPreSale'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 460
    Top = 424
    object quInvoiceCostsCostType: TStringField
      FieldName = 'CostType'
      Size = 50
    end
    object quInvoiceCostsIDInvoiceCost: TIntegerField
      FieldName = 'IDInvoiceCost'
    end
    object quInvoiceCostsIDCostType: TIntegerField
      FieldName = 'IDCostType'
    end
    object quInvoiceCostsAmount: TBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
  end
  object dsInvoiceCosts: TDataSource
    DataSet = quInvoiceCosts
    Left = 460
    Top = 472
  end
  object ppInvoiceCosts: TppDBPipeline
    DataSource = dsInvoiceCosts
    UserName = 'ppInvoiceCosts'
    Left = 460
    Top = 520
  end
  object quDeliveryInfo: TADOQuery
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDPreSale1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IDPreSale'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      #9'I.IDPreSale, '
      #9'I.SaleCode, '
      #9'I.InvoiceCode, '
      #9'I.DeliverTypeID, '
      #9'I.DeliverDate,'
      #9'I.DeliverAddress,'
      #9'I.DeliverOBS,'
      #9'I.DeliverConfirmation,'
      #9'I.IDFormOfPayment,'
      #9'DT.Name as DeliverType'
      'FROM '
      #9'Invoice I'
      
        #9'LEFT OUTER JOIN DeliverType DT ON (I.DeliverTypeID = DT.IDDeliv' +
        'erType)'
      'WHERE '
      #9'IDPreSale = :IDPreSale1'
      #9'OR'
      #9'IDPreSaleParent = :IDPreSale'
      'ORDER BY'
      #9'DeliverDate')
    Left = 24
    Top = 572
    object quDeliveryInfoIDPreSale: TIntegerField
      FieldName = 'IDPreSale'
    end
    object quDeliveryInfoDeliverTypeID: TIntegerField
      FieldName = 'DeliverTypeID'
    end
    object quDeliveryInfoDeliverDate: TDateTimeField
      FieldName = 'DeliverDate'
    end
    object quDeliveryInfoDeliverAddress: TStringField
      FieldName = 'DeliverAddress'
      Size = 100
    end
    object quDeliveryInfoDeliverOBS: TStringField
      FieldName = 'DeliverOBS'
      Size = 255
    end
    object quDeliveryInfoDeliverConfirmation: TBooleanField
      FieldName = 'DeliverConfirmation'
    end
    object quDeliveryInfoIDFormOfPayment: TIntegerField
      FieldName = 'IDFormOfPayment'
    end
    object quDeliveryInfoDeliverType: TStringField
      FieldName = 'DeliverType'
      Size = 30
    end
    object quDeliveryInfoSaleCode: TStringField
      FieldName = 'SaleCode'
    end
    object quDeliveryInfoInvoiceCode: TStringField
      FieldName = 'InvoiceCode'
    end
  end
  object ppDelivery: TppDBPipeline
    DataSource = dsDeliveryIndo
    UserName = 'ppDeliveryInfo'
    Left = 24
    Top = 668
  end
  object dsDeliveryIndo: TDataSource
    DataSet = quDeliveryInfo
    Left = 24
    Top = 620
  end
  object quPreSaleItemTaxes: TADODataSet
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    CommandText = 
      'SELECT'#13#10#9'IDMov,'#13#10#9'T.TaxCategory,'#13#10#9'T.OperationType,'#13#10#9'T.SaleTaxT' +
      'ype,'#13#10#9'T.Tax'#13#10'FROM'#13#10#9'vwInvoiceItemTax T (NOLOCK) '#13#10'WHERE'#13#10#9'T.IDM' +
      'ov = :IDInventoryMov'#13#10#13#10
    DataSource = dsPreSaleItem
    MasterFields = 'IDInventoryMov'
    Parameters = <
      item
        Name = 'IDInventoryMov'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 104
    Top = 577
    object quPreSaleItemTaxesTaxCategory: TStringField
      FieldName = 'TaxCategory'
      Size = 50
    end
    object quPreSaleItemTaxesOperationType: TIntegerField
      FieldName = 'OperationType'
    end
    object quPreSaleItemTaxesSaleTaxType: TIntegerField
      FieldName = 'SaleTaxType'
    end
    object quPreSaleItemTaxesTax: TBCDField
      FieldName = 'Tax'
      Precision = 19
    end
    object quPreSaleItemTaxesIDMov: TIntegerField
      FieldName = 'IDMov'
    end
  end
  object dsItemTax: TDataSource
    DataSet = quPreSaleItemTaxes
    Left = 104
    Top = 620
  end
  object ppItemTaxes: TppDBPipeline
    DataSource = dsItemTax
    UserName = 'ppItemTaxes'
    Left = 104
    Top = 668
    MasterDataPipelineName = 'ppPreSaleItem'
  end
  object PsRBExportMasterControl: TPsRBExportMasterControl
    PDF.ShowSetupDialog = False
    PDF.CompressionMethod = cmNormal
    PDF.ExportImageFormat = ifJPG
    PDF.EncryptionLevel = el40Bit
    HTML.DefaultFont.Charset = DEFAULT_CHARSET
    HTML.DefaultFont.Color = clWindowText
    HTML.DefaultFont.Height = -13
    HTML.DefaultFont.Name = 'Arial'
    HTML.DefaultFont.Style = []
    HTML.DocumentPreferences.AutoMaximizeWindow = False
    HTML.DocumentPreferences.DisableRightClick = False
    HTML.DocumentPreferences.DisableCopying = False
    HTML.LinkFont.Charset = DEFAULT_CHARSET
    HTML.LinkFont.Color = clBlue
    HTML.LinkFont.Height = -24
    HTML.LinkFont.Name = 'Wingdings'
    HTML.LinkFont.Style = []
    HTML.LinkTextFirst = #217
    HTML.LinkTextNext = #216
    HTML.LinkTextPrev = #215
    HTML.LinkTextLast = #218
    XHTML.DefaultFont.Charset = DEFAULT_CHARSET
    XHTML.DefaultFont.Color = clWindowText
    XHTML.DefaultFont.Height = -13
    XHTML.DefaultFont.Name = 'Arial'
    XHTML.DefaultFont.Style = []
    XHTML.DocumentPreferences.AutoMaximizeWindow = False
    XHTML.DocumentPreferences.DisableRightClick = False
    XHTML.DocumentPreferences.DisableCopying = False
    XHTML.LinkFont.Charset = DEFAULT_CHARSET
    XHTML.LinkFont.Color = clBlue
    XHTML.LinkFont.Height = -24
    XHTML.LinkFont.Name = 'Wingdings'
    XHTML.LinkFont.Style = []
    RTF.Active = True
    Excel.Active = True
    Excel.PositionalGridDimensions.Height = 4234
    Excel.PositionalGridDimensions.Width = 16934
    GIF.Active = True
    GIF.ScaleX = 1.000000000000000000
    GIF.ScaleY = 1.000000000000000000
    JPEG.Active = True
    JPEG.ShowSetupDialog = False
    JPEG.ScaleX = 1.000000000000000000
    JPEG.ScaleY = 1.000000000000000000
    JPEG.ProgressiveEncoding = True
    BMP.Active = True
    BMP.ScaleX = 1.000000000000000000
    BMP.ScaleY = 1.000000000000000000
    EMF.Active = True
    EMF.ScaleX = 1.000000000000000000
    EMF.ScaleY = 1.000000000000000000
    WMF.Active = True
    WMF.ScaleX = 1.000000000000000000
    WMF.ScaleY = 1.000000000000000000
    Left = 396
    Top = 12
  end
  object quFeatures: TPowerADOQuery
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    MaxRecords = 100
    CommandText = 
      'SELECT '#13#10#9'F.IDInvFeatures,'#13#10#9'F.Feature'#13#10'FROM'#13#10#9'InvFeatures F (NO' +
      'LOCK) '#13#10'WHERE'#13#10#9'F.IDModel = :IDModel'#13#10
    CommandTimeout = 180
    DataSource = dsPreSaleItem
    MasterFields = 'IDModel'
    Parameters = <
      item
        Name = 'IDModel'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 180
    Top = 572
    object quFeaturesIDInvFeatures: TIntegerField
      FieldName = 'IDInvFeatures'
    end
    object quFeaturesFeature: TStringField
      FieldName = 'Feature'
      Size = 255
    end
  end
  object dsFeatures: TDataSource
    DataSet = quFeatures
    Left = 180
    Top = 620
  end
  object ppFeatures: TppDBPipeline
    DataSource = dsFeatures
    SkipWhenNoRecords = False
    UserName = 'ppFeatures'
    Left = 184
    Top = 668
  end
  object quTechFeature: TADOQuery
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    DataSource = dsPreSaleItem
    Parameters = <
      item
        Name = 'IDModel'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'F.IDInvTechFeatures,'
      #9'F.TechFeature'
      'FROM'
      #9'InvTechFeatures F (NOLOCK) '
      'WHERE'
      #9'F.IDModel = :IDModel')
    Left = 256
    Top = 572
    object quTechFeatureIDInvTechFeatures: TIntegerField
      FieldName = 'IDInvTechFeatures'
    end
    object quTechFeatureTechFeature: TStringField
      FieldName = 'TechFeature'
      Size = 255
    end
  end
  object dsTechFeature: TDataSource
    DataSet = quTechFeature
    Left = 256
    Top = 620
  end
  object ppTechFeatures: TppDBPipeline
    DataSource = dsTechFeature
    SkipWhenNoRecords = False
    UserName = 'ppTechFeatures'
    Left = 256
    Top = 668
  end
  object ppPayments: TppDBPipeline
    DataSource = dsPayments
    UserName = 'Payments'
    Left = 180
    Top = 520
  end
  object quModelReceipt: TADODataSet
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'IDModel,'#13#10#9'ReceiptText '#13#10'FROM'#13#10#9'Inv_ModelReceipt  (NOL' +
      'OCK) '#13#10'WHERE'#13#10#9'IDModel = :IDModel'#13#10
    MasterFields = 'IDModel'
    Parameters = <
      item
        Name = 'IDModel'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 332
    Top = 572
    object quModelReceiptIDModel: TIntegerField
      FieldName = 'IDModel'
    end
    object quModelReceiptReceiptText: TStringField
      FieldName = 'ReceiptText'
      Size = 255
    end
  end
  object quCategoryReceipt: TADODataSet
    Connection = DM.ADODBConnect
    CommandText = 
      'SELECT '#13#10#9'IDModel,'#13#10#9'TG.ReceiptText'#13#10'FROM '#13#10#9'Model M'#13#10#9'JOIN TabG' +
      'roup TG ON (M.GroupID = TG.IDGroup)'#13#10'WHERE'#13#10#9'M.IDModel = :IDMode' +
      'l'#13#10
    Parameters = <
      item
        Name = 'IDModel'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 332
    Top = 620
    object quCategoryReceiptIDModel: TIntegerField
      FieldName = 'IDModel'
    end
    object quCategoryReceiptReceiptText: TStringField
      FieldName = 'ReceiptText'
      Size = 255
    end
  end
  object quBonusBucks: TADOQuery
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDPreSale'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      
        #9'RTRIM((CASE IsNull(RD.BonusCode, '#39#39') WHEN '#39#39' THEN ('#39'BB'#39' + CAST(' +
        'RD.IDPreSaleCreated as VARCHAR)) ELSE RD.BonusCode END))  BonusC' +
        'upon,'
      #9'RD.DiscountValue,'
      #9'RD.ValidFromDate,'
      #9'RD.ExpirationDate'
      'FROM'
      #9'Sal_RebateDiscount RD (NOLOCK) '
      'WHERE'
      #9'RD.IDPreSaleCreated = :IDPreSale'
      '         and RD.DiscountValue > 0  ')
    Left = 392
    Top = 572
    object quBonusBucksBonusCupon: TStringField
      FieldName = 'BonusCupon'
      ReadOnly = True
      Size = 32
    end
    object quBonusBucksDiscountValue: TBCDField
      FieldName = 'DiscountValue'
      Precision = 19
    end
    object quBonusBucksValidFromDate: TDateTimeField
      FieldName = 'ValidFromDate'
    end
    object quBonusBucksExpirationDate: TDateTimeField
      FieldName = 'ExpirationDate'
    end
  end
  object dsBonusBucks: TDataSource
    DataSet = quBonusBucks
    Left = 392
    Top = 620
  end
  object ppBonusBucks: TppDBPipeline
    DataSource = dsBonusBucks
    UserName = 'ppBonusBucks'
    Left = 392
    Top = 668
  end
  object tmrPrint: TTimer
    Enabled = False
    OnTimer = tmrPrintTimer
    Left = 312
    Top = 12
  end
  object quGiftBalance: TADOQuery
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDPreSale'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'AC.IDAccountCard,'
      #9'AC.CardNumber,'
      #9'AC.Amount'
      'FROM'
      #9'Sal_AccountCardMov ACM (NOLOCK) '
      
        #9'JOIN Sal_AccountCard AC (NOLOCK) ON (ACM.IDAccountCard = AC.IDA' +
        'ccountCard)'
      'WHERE'
      #9'ACM.IDPreSale = :IDPreSale')
    Left = 396
    Top = 300
    object quGiftBalanceIDAccountCard: TIntegerField
      FieldName = 'IDAccountCard'
    end
    object quGiftBalanceCardNumber: TStringField
      FieldName = 'CardNumber'
    end
    object quGiftBalanceAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
  end
  object quShippingInfo: TADODataSet
    Connection = DM.ADODBConnect
    CommandText = 
      'SELECT'#13#10#9'S.IDPreSale,'#13#10#9'S.IDInvoiceShipping,'#13#10#9'S.ShipDate,'#13#10#9'S.T' +
      'racking,'#13#10#9'S.IDDeliverType,'#13#10#9'S.AddressName,'#13#10#9'S.Address,'#13#10#9'S.Ci' +
      'ty,'#13#10#9'S.ZIP,'#13#10#9'S.IDEstado,'#13#10#9'S.IDPais,'#13#10#9'E.Estado as State,'#13#10#9'P.' +
      'CodPais as CountryCod,'#13#10#9'P.Pais as Country'#13#10'FROM'#13#10#9'Sal_InvoiceSh' +
      'ipping S (NOLOCK) '#13#10#9'LEFT JOIN Estado E (NOLOCK) ON (S.IDEstado ' +
      '= E.IDEstado)'#13#10#9'LEFT JOIN Pais P (NOLOCK) ON (S.IDPais = P.IDPai' +
      's)'#13#10'WHERE'#13#10#9'S.IDPreSale = :IDPreSale'
    Parameters = <
      item
        Name = 'IDPreSale'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 460
    Top = 572
    object quShippingInfoIDPreSale: TIntegerField
      FieldName = 'IDPreSale'
    end
    object quShippingInfoIDInvoiceShipping: TIntegerField
      FieldName = 'IDInvoiceShipping'
    end
    object quShippingInfoShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object quShippingInfoTracking: TStringField
      FieldName = 'Tracking'
      Size = 255
    end
    object quShippingInfoIDDeliverType: TIntegerField
      FieldName = 'IDDeliverType'
    end
    object quShippingInfoAddressName: TStringField
      FieldName = 'AddressName'
      Size = 30
    end
    object quShippingInfoAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object quShippingInfoCity: TStringField
      FieldName = 'City'
    end
    object quShippingInfoZIP: TStringField
      FieldName = 'ZIP'
      Size = 10
    end
    object quShippingInfoIDEstado: TStringField
      FieldName = 'IDEstado'
      FixedChar = True
      Size = 3
    end
    object quShippingInfoIDPais: TIntegerField
      FieldName = 'IDPais'
    end
    object quShippingInfoState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object quShippingInfoCountryCod: TStringField
      FieldName = 'CountryCod'
      Size = 3
    end
    object quShippingInfoCountry: TStringField
      FieldName = 'Country'
      Size = 50
    end
  end
  object dsShippingInfo: TDataSource
    DataSet = quShippingInfo
    Left = 460
    Top = 620
  end
  object ppShippingInfo: TppDBPipeline
    DataSource = dsShippingInfo
    UserName = 'ppShippingInfo'
    Left = 460
    Top = 668
  end
  object cdsPreSaleItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@DocumentID'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@IsPreSale'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@Date'
        ParamType = ptInput
      end>
    ProviderName = 'dspPreSaleItem'
    Left = 105
    Top = 394
    object cdsPreSaleItemModelID: TIntegerField
      FieldName = 'ModelID'
    end
    object cdsPreSaleItemModel: TStringField
      FieldName = 'Model'
      Size = 30
    end
    object cdsPreSaleItemDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object cdsPreSaleItemSalePrice: TFloatField
      FieldName = 'SalePrice'
    end
    object cdsPreSaleItemDiscount: TFloatField
      FieldName = 'Discount'
    end
    object cdsPreSaleItemIDInventoryMov: TIntegerField
      FieldName = 'IDInventoryMov'
    end
    object cdsPreSaleItemTotalItem: TFloatField
      FieldName = 'TotalItem'
      ReadOnly = True
    end
    object cdsPreSaleItemSalesPerson: TStringField
      FieldName = 'SalesPerson'
      Size = 50
    end
    object cdsPreSaleItemIDComission: TIntegerField
      FieldName = 'IDComission'
    end
    object cdsPreSaleItemCostPrice: TFloatField
      FieldName = 'CostPrice'
    end
    object cdsPreSaleItemIDUser: TIntegerField
      FieldName = 'IDUser'
    end
    object cdsPreSaleItemExchangeInvoice: TIntegerField
      FieldName = 'ExchangeInvoice'
    end
    object cdsPreSaleItemTax: TBCDField
      FieldName = 'Tax'
      Precision = 19
    end
    object cdsPreSaleItemUnitSalePrice: TCurrencyField
      FieldName = 'UnitSalePrice'
      ReadOnly = True
    end
    object cdsPreSaleItemTaxValue: TFloatField
      FieldName = 'TaxValue'
      ReadOnly = True
    end
    object cdsPreSaleItemCodSize: TStringField
      FieldName = 'CodSize'
      Size = 10
    end
    object cdsPreSaleItemSizeName: TStringField
      FieldName = 'SizeName'
    end
    object cdsPreSaleItemCodColor: TStringField
      FieldName = 'CodColor'
      Size = 10
    end
    object cdsPreSaleItemColor: TStringField
      FieldName = 'Color'
    end
    object cdsPreSaleItemSuggRetail: TBCDField
      FieldName = 'SuggRetail'
      Precision = 19
    end
    object cdsPreSaleItemIsDelivered: TBooleanField
      FieldName = 'IsDelivered'
    end
    object cdsPreSaleItemSaleCode: TStringField
      FieldName = 'SaleCode'
    end
    object cdsPreSaleItemInvoiceCode: TStringField
      FieldName = 'InvoiceCode'
    end
    object cdsPreSaleItemIDModel: TIntegerField
      FieldName = 'IDModel'
      ReadOnly = True
    end
    object cdsPreSaleItemQty: TFloatField
      FieldName = 'Qty'
    end
    object cdsPreSaleItemModelReceipt: TStringField
      FieldName = 'ModelReceipt'
      ReadOnly = True
      Size = 255
    end
    object cdsPreSaleItemCategoryReceipt: TStringField
      FieldName = 'CategoryReceipt'
      ReadOnly = True
      Size = 255
    end
    object cdsPreSaleItemPromo: TBooleanField
      FieldName = 'Promo'
    end
    object cdsPreSaleItemSellingPrice: TBCDField
      FieldName = 'SellingPrice'
      Precision = 19
    end
    object cdsPreSaleItemDiscountPercent: TFloatField
      FieldName = 'DiscountPercent'
      ReadOnly = True
    end
    object cdsPreSaleItemSerialNumber: TBooleanField
      FieldName = 'SerialNumber'
    end
    object cdsPreSaleItemAutoServiceNum: TIntegerField
      FieldName = 'AutoServiceNum'
    end
    object cdsPreSaleItemCupomFiscal: TStringField
      FieldName = 'CupomFiscal'
      Size = 8
    end
    object cdsPreSaleItemManufacturer: TStringField
      FieldName = 'Manufacturer'
      Size = 50
    end
    object cdsPreSaleItemUnit: TStringField
      FieldName = 'Unit'
      FixedChar = True
      Size = 4
    end
    object cdsPreSaleItemDepartment: TStringField
      FieldName = 'Department'
      Size = 50
    end
    object cdsPreSaleItemSerialNumbers: TStringField
      FieldName = 'SerialNumbers'
      ReadOnly = True
      Size = 255
    end
  end
  object dspPreSaleItem: TDataSetProvider
    DataSet = quPreSaleItem
    Left = 120
    Top = 440
  end
  object quPaymentCondition: TADODataSet
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    CommandText = 
      'SELECT'#13#10#9'MP.IDMeioPag,'#13#10#9'MP.MeioPag,'#13#10#9'MP.Tipo as PayType,'#13#10#9'MP.' +
      'DrawerKickOnPay,'#13#10#9'C.Amount,'#13#10#9'C.OBS,'#13#10#9'C.EstimetedDate'#13#10'FROM'#13#10#9 +
      'Sal_PaymentCondition C (NOLOCK) '#13#10#9'JOIN MeioPag MP (NOLOCK) ON (' +
      'C.IDMeioPag = MP.IDMeioPag)'#13#10#9'JOIN Invoice I (NOLOCK) ON (C.IDPr' +
      'eSale = I.IDPreSale)'#13#10'WHERE'#13#10#9'C.IDPreSale = :IDPreSale'#13#10'ORDER BY' +
      #13#10#9'MP.MeioPag'
    CommandTimeout = 180
    Parameters = <
      item
        Name = 'IDPreSale'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 535
    Top = 425
    object quPaymentConditionIDMeioPag: TIntegerField
      FieldName = 'IDMeioPag'
    end
    object quPaymentConditionMeioPag: TStringField
      FieldName = 'MeioPag'
      Size = 50
    end
    object quPaymentConditionPayType: TIntegerField
      FieldName = 'PayType'
    end
    object quPaymentConditionDrawerKickOnPay: TBooleanField
      FieldName = 'DrawerKickOnPay'
    end
    object quPaymentConditionAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object quPaymentConditionOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object quPaymentConditionEstimetedDate: TDateTimeField
      FieldName = 'EstimetedDate'
      DisplayFormat = 'ddddd'
    end
  end
  object dsPaymentCondition: TDataSource
    DataSet = quPaymentCondition
    Left = 540
    Top = 475
  end
  object ppPaymentCondition: TppDBPipeline
    DataSource = dsPaymentCondition
    UserName = 'PaymentCondition'
    Left = 540
    Top = 520
    object ppPaymentConditionppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDMeioPag'
      FieldName = 'IDMeioPag'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppPaymentConditionppField2: TppField
      FieldAlias = 'MeioPag'
      FieldName = 'MeioPag'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppPaymentConditionppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PayType'
      FieldName = 'PayType'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppPaymentConditionppField4: TppField
      FieldAlias = 'DrawerKickOnPay'
      FieldName = 'DrawerKickOnPay'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 3
    end
    object ppPaymentConditionppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 4
    end
    object ppPaymentConditionppField6: TppField
      FieldAlias = 'OBS'
      FieldName = 'OBS'
      FieldLength = 100
      DisplayWidth = 100
      Position = 5
    end
    object ppPaymentConditionppField7: TppField
      FieldAlias = 'EstimetedDate'
      FieldName = 'EstimetedDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = ppPreSaleInfo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 508
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 76200
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\work\MAINRETAIL 3 D7\Receipts\Standard_Receipt.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    Icon.Data = {
      0000010002002020000001001800A80C0000260000002020000001002000A810
      0000CE0C00002800000020000000400000000100180000000000800C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009D9D9C8988877275
      7569686A73727175767500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000008485847475738A8B8B9B999BA5A3A4A8A7A7A7A6A6A8A8
      A8A6A6A6DCDCDCDFDEDF78787873757500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006D6D6D717272A5A6A5CAC9C9CECECDC5C6C5BABBBBB2B2B2ABABAAA7A7
      A7A1A1A1CCCCCCFFFFFFF8F8F8A3A2A263636300000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000686766
      979696CFCDCEE6E5E5E2E2E1D2D2D2C8C8C7BFBEBEB6B6B6AFAFAFA9A9AAA5A5
      A5A1A1A1D5D6D6FFFFFFF7F7F7FFFFFFCDCCCD61616200000000000000000000
      0000000000000000000000000000000000000000000000000000000000E2E0DF
      FFFFFFF3F3F3E5E4E4D9D7D7D1D0CFCBCBC9CBCACBC8C8C7C4C4C4BEBFBFBDBD
      BDB2B3B2A2A2A2EFEFEFFEFEFEF6F6F6FFFFFFF1F0F086868600000000000000
      0000000000000000000000000000000000000000000000000000000000F1F0F1
      F3F2F2EAE9E9E8E8E8E7E6E6E6E6E6E0DFDFCECECEBEBFBEB5B5B5B0B0B0ACAC
      AC9D9D9D6D6D6E858686DCDBDCFFFEFEF7F7F6FFFEFEFEFFFE8D8E8D00000000
      0000000000000000000000000000000000000000000000000000D3D2D2EDEBEB
      F7F7F6F2F1F1E1E1E0C9C8C8BEBEBFBCBCBDBBBABABBBBBBB8B7B7B1B0B1A6A6
      A6A6A7A7C7C7C7B5B4B5939293BBBBBAF9F9F9FBFBFBFFFEFFF6F5F674737200
      0000000000000000000000000000000000000000000000000000DBDBDAE0E1E0
      D0D0D0BBBBBBBCBBBBCFCECEE5E4E4F0EEEEE9E8E9D8D7D8C6C6C7B9B8B8AEAE
      AEA6A6A5BFC0BFD1D4D1D6D7D79394938F8E8CDEDEDEFFFFFFFFFFFFAEAEAA00
      0000000000000000000000000000000000000000000000000000C5C5C5A1A1A1
      CCCCCDE5E4E4F9F8F8F9F8F8F0EFEFE3E3E2D4D3D4C4C3C4BCBBBCBFBDBDC6C6
      C5A3A3A3919191C5C8C5CDCFCEDFE1E0ACADAB7B7A79B3B3B3FFFFFFD8D8D600
      0000000000000000000000000000000000000000000000000000B9BABAD1D1D0
      FFFDFEEFEEEEDBDBDAD6D6D6D4D4D3BFBFBDC5C5C5C9C7C6D0CDCCEAEAEACECD
      CBE1E0E09C9C9CA9A9A8C6C9C6CCCECDE7E8E7D2D2D18181828C8C8BDCDCDC00
      0000000000000000000000000000000000000000000000000000000000C2C0BE
      D2D2D2B2B1B0CDCDCDCFCECDD3D3D1E4E4E4CDCAC9E9E8E7E3E1DFDFDCDCF1F1
      F0D7D4D2E5E4E49C9C9DB4B6B4C4C6C3CACCCAE4E5E4EBEBEB9E9F9E7D7D7E00
      0000000000000000000000000000000000000000000000000000000000ACA8A5
      CCCBCBE0DFDED0CCC9E3E2E1DBDBDAC8C5C5CECFCECECDCBF0F0F0DBD8D8E1DE
      DEEAEAE9E5E4E3E0E1E1B3B3B3E5E6E5D0D2D0D5D6D5E1E2E1F4F5F4AEAEAE00
      0000000000000000000000000000000000000000000000000000000000000000
      AFA9A4D4D4D3E5E5E5DCDAD9DEDDDDD8D6D6CDCDCAD5D5D4D6D4D2F4F3F2E1DF
      DFEFEFF0E1DFDFECECECE7E6E7DCDBDCD1D1D0BDBFBDDBDDDBEDEEEDC8C9C800
      0000000000000000000000000000000000000000000000000000000000000000
      0000009F9C98E3E4E7E1E0DFCCCAC8FAFBFBF2F1F0F7F8F7DDDFE0E8E9EAE2E2
      E3BEBEBE9D9E9E7676776767684B4A4B605F5F3739397A7978DEDEDEDEDEDE00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3AFAEE1E2E3EAEBECDEDFE1ADB0B485888C7575757373727878
      784241421414141111110C0C0E0404044B4B4B3D3E3D1516154E4D4C9A999900
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A8A6A75B5D5E545250797166AA977EDCC6A2998B7A5256
      5A4B494A0F0F0F1C1C1C2525242525254C4C4C77777633333235363561606000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B7A48FEFD0AAFFDCB2FFD8AFFFD9B1EDD2B0625F
      5D5A5B5D4B4B4A5555555A5A5A5657564F50503D3C3E5453545B5C5B9B9B9B00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000E0CDB7FFDAAEFECAA8FED1B1FCD2B5FFE2C3CDC0
      AC949495ADAEAE3D3D3D222222232222161514454544A4A4A400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFDFC4FFE3CAFADEC5FBDCC4FBE1CCFFFD
      ECC6C4BF0000000000000000000000002529319FA1A300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4E6D8FCEBDAF8E9D8F6EADDF9EF
      E2FEFBF4B6B6B6000000000000000000614E30645C4C756C5C877C6800000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAD8D5FAF1E5F5EBE1F3EBE0F8F0
      E5FAF9F6ABAEB4000000C29840D09D2EFCB42AEEAC2FF9B927DAAD587F859000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000EFEDECFAF7F5F7F7F6FAFA
      F9F8F7F69FA5AEC7BAA5FFCE44FFC93AFFC338FFC135FFC529BA934E686D7700
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000E8E8EAFFFFFFF9FAFBF1F1
      F1E9E7E7BFC1C6B5B3AFC59A43C29645A1844B9D7E469D7D4559504200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000CCCCCCD1D1D10000000000
      000000000000000000009795928E8E90888A9000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
      0FFFFF8003FFFE0001FFF80000FFF800007FF800003FF000001FF000001FF000
      001FF000001FF800001FF800001FFC00001FFE00001FFF00001FFF80001FFFC0
      001FFFC0007FFFE03CFFFFF01C3FFFF0101FFFF8001FFFF8003FFFF9F1FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000002000000040000000010020000000
      00008010000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE01FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE01FDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0F1F112E3E4E322DFDFE024D9D8D929CACAC938BBBB
      BB45E8E8E81CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01EEEE
      EE11D8D8D828BDBCBD51A9A8A97A9D9D9C96898887B3727575D269686AE27372
      71F0757675CFA0A1A17FEFEFEF15FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F708C5C5C53A848584857475
      73B98A8B8BD19B999BEBA5A3A4F7A8A7A7FCA7A6A6FFA8A8A8FFA6A6A6FFDCDC
      DCFFDFDEDFFF787878FF737575B2E1E1E122FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6E6E6199FA0A0656D6D6DAC717272E6A5A6A5FFCAC9
      C9FFCECECDFFC5C6C5FFBABBBBFFB2B2B2FFABABAAFFA7A7A7FFA1A1A1FFCCCC
      CCFDFFFFFFFDF8F8F8FFA3A2A2FF636363CBC4C4C33CFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E5E530686766C3979696FFCFCDCEFFE6E5E5FFE2E2E1FFD2D2
      D2FFC8C8C7FFBFBEBEFFB6B6B6FFAFAFAFFFA9A9AAFFA5A5A5FFA1A1A1FFD5D6
      D6FEFFFFFFFDF7F7F7FDFFFFFFFDCDCCCDFF616162E9A0A0A05FFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D8D7D764E2E0DFFFFFFFFFFFF3F3F3FFE5E4E4FFD9D7D7FFD1D0
      CFFFCBCBC9FFCBCACBFFC8C8C7FEC4C4C4FFBEBFBFFFBDBDBDFEB2B3B2FFA2A2
      A2FEEFEFEFFDFEFEFEFDF6F6F6FDFFFFFFFDF1F0F0FF868686F2A3A3A35FFEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D5D4D46AF1F0F1FFF3F2F2FFEAE9E9FFE8E8E8FFE7E6E6FFE6E6
      E6FFE0DFDFFECECECEFEBEBFBEFFB5B5B5FEB0B0B0FFACACACFF9D9D9DFE6D6D
      6EFD858686FEDCDBDCFEFFFEFEFDF7F7F6FDFFFEFEFDFEFFFEFF8D8E8DF2A0A0
      A063FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D3D2D280EDEBEBFFF7F7F6FFF2F1F1FFE1E1E0FFC9C8C8FFBEBE
      BFFFBCBCBDFFBBBABAFFBBBBBBFFB8B7B7FFB1B0B1FFA6A6A6FFA6A7A7FEC7C7
      C7FDB5B4B5FD939293FDBBBBBAFDF9F9F9FDFBFBFBFDFFFEFFFDF6F5F6FF7473
      72DBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DBDBDA93E0E1E0FFD0D0D0FFBBBBBBFEBCBBBBFECFCECEFEE5E4
      E4FFF0EEEEFFE9E8E9FFD8D7D8FFC6C6C7FFB9B8B8FFAEAEAEFFA6A6A5FEBFC0
      BFFED1D4D1FFD6D7D7FF939493FE8F8E8CFEDEDEDEFDFFFFFFFDFFFFFFFFAEAE
      AAFAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C5C5C59DA1A1A1FFCCCCCDFEE5E4E4FFF9F8F8FFF9F8F8FFF0EF
      EFFFE3E3E2FFD4D3D4FEC4C3C4FEBCBBBCFFBFBDBDFDC6C6C5FEA3A3A3FE9191
      91FEC5C8C5FFCDCFCEFFDFE1E0FEACADABFE7B7A79FDB3B3B3FEFFFFFFFFD8D8
      D6FAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B9BABAA5D1D1D0FFFFFDFEFFEFEEEEFEDBDBDAFED6D6D6FED4D4
      D3FDBFBFBDFDC5C5C5FDC9C7C6FDD0CDCCFEEAEAEAFDCECDCBFEE1E0E0FD9C9C
      9CFDA9A9A8FEC6C9C6FFCCCECDFFE7E8E7FFD2D2D1FF818182FF8C8C8BFFDCDC
      DCF9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CDCDCD6BC2C0BEFFD2D2D2FFB2B1B0FDCDCDCDFECFCECDFDD3D3
      D1FDE4E4E4FDCDCAC9FEE9E8E7FDE3E1DFFEDFDCDCFEF1F1F0FDD7D4D2FDE5E4
      E4FD9C9C9DFDB4B6B4FDC4C6C3FECACCCAFFE4E5E4FFEBEBEBFF9E9F9EFF7D7D
      7EEFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8F7F70FACA8A59ACCCBCBFEE0DFDEFFD0CCC9FEE3E2E1FDDBDB
      DAFDC8C5C5FDCECFCEFDCECDCBFEF0F0F0FDDBD8D8FEE1DEDEFDEAEAE9FDE5E4
      E3FDE0E1E1FDB3B3B3FDE5E6E5FED0D2D0FFD5D6D5FFE1E2E1FFF4F5F4FFAEAE
      AEEEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6F5F410AFA9A4A4D4D4D3FFE5E5E5FEDCDAD9FEDEDD
      DDFDD8D6D6FDCDCDCAFED5D5D4FED6D4D2FEF4F3F2FDE1DFDFFEEFEFF0FDE1DF
      DFFEECECECFDE7E6E7FDDCDBDCFDD1D1D0FDBDBFBDFEDBDDDBFFEDEEEDFFC8C9
      C8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E5E7259F9C98DAE3E4E7FFE1E0DFFFCCCA
      C8FDFAFBFBFDF2F1F0FDF7F8F7FDDDDFE0FDE8E9EAFDE2E2E3FDBEBEBEFE9D9E
      9EFE767677FE676768FE4B4A4BFE605F5FFE373939FD7A7978FEDEDEDEFFDEDE
      DEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D0CE49B3AFAEBDE1E2E3FBEAEB
      ECFFDEDFE1FDADB0B4FD85888CFD757575FD737372FD787878FE424142FE1414
      14FE111111FE0C0C0EFE040404FE4B4B4BFD3D3E3DFD151615FF4E4D4CFF9A99
      99FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E5E428A8A6A7A25B5D
      5EFE545250FF797166FFAA977EFEDCC6A2FF998B7AFE52565AFD4B494AFF0F0F
      0FFF1C1C1CFD252524FD252525FD4C4C4CFD777776FD333332FF353635FF6160
      60DCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D3D23EB7A4
      8FEAEFD0AAFFFFDCB2FFFFD8AFFFFFD9B1FFEDD2B0FF625F5DFD5A5B5DF64B4B
      4AFF555555FF5A5A5AFF565756FF4F5050FD3D3C3EFF545354FF5B5C5BFF9B9B
      9B9AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F5F50FE0CD
      B7C3FFDAAEFFFECAA8FFFED1B1FEFCD2B5FEFFE2C3FECDC0ACFE949495AFADAE
      AE8A3D3D3DEE222222FF232222FF161514FF454544DFA4A4A48EC0BFBF66F1F1
      F116FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E3
      E150FFDFC4F6FFE3CAFFFADEC5FEFBDCC4FEFBE1CCFEFFFDECFFC6C4BFE0D5D5
      D541DFDFDF34B9BAB969ABABAC77252931FF9FA1A38BFDFDFD02F0F0F016FAFA
      FA09FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF01EDE8E570F4E6D8FBFCEBDAFFF8E9D8FEF6EADDFEF9EFE2FEFEFBF4FFB6B6
      B699FFFFFF00F0F0F014BBBAB95E614E30FF645C4CDB756C5CC7877C68E8B8B8
      BA7CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF01DAD8D5A9FAF1E5FFF5EBE1FEF3EBE0FEF8F0E5FEFAF9F6FFABAE
      B4AEBCB3A673C29840E3D09D2EFEFCB42AFFEEAC2FFFF9B927FFDAAD58FF7F85
      90BBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4E5E566EFEDECFFFAF7F5FEF7F7F6FEFAFAF9FFF8F7F6FF9FA5
      AEB8C7BAA5A1FFCE44FDFFC93AFFFFC338FFFFC135FFFFC529FFBA934EFF686D
      77C1FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFE0E04AE8E8EAFFFFFFFFFFF9FAFBFFF1F1F1FFE9E7E7FFBFC1
      C694B5B3AF8BC59A43FFC29645FFA1844BFF9D7E46FF9D7D45FF595042ED9FA0
      A16CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F0F0F020CCCCCC98D1D1D190DCDDDC72E1E1E15DE3E3E34BF8F8
      F813CCCCCC599795929B8E8E908F888A9083999B9E74B2B4B75DCCCCCD3AF9F9
      F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFDFFFFFFF9FFFFFFF9
      FFFFFFF80FFFFF8003FFFE0001FFF80000FFF000007FF000001FF000001FF000
      001FF000001FF000001FF000001FF000001FF000001FF800001FFC00001FFE00
      001FFF00001FFF80001FFF80001FFFC0001FFFC0101FFFE0001FFFF0001FFFF0
      001FFFF0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Language = lgEnglish
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 280
    Top = 50
    Version = '7.02'
    mmColumnWidth = 75692
    DataPipelineName = 'ppPreSaleInfo'
    object ppTitleBand3: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 54504
      mmPrintPosition = 0
      object ppRegion19: TppRegion
        UserName = 'Region19'
        Caption = 'Region19'
        Stretch = True
        mmHeight = 6085
        mmLeft = 5556
        mmTop = 44450
        mmWidth = 65881
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = 'Layaway'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 27252
          mmTop = 43656
          mmWidth = 21167
          BandType = 1
        end
      end
      object ppRegion7: TppRegion
        UserName = 'Region7'
        Caption = 'Region7'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 24342
        mmLeft = 4763
        mmTop = 17198
        mmWidth = 66675
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Invoice:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2910
          mmLeft = 13229
          mmTop = 33867
          mmWidth = 10848
          BandType = 1
        end
        object ppDBText18: TppDBText
          UserName = 'dbHoldDate'
          AutoSize = True
          DataField = 'DataVencimento'
          DataPipeline = ppPayments
          DisplayFormat = 'mm/dd/yyyy hh:nn AM/PM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppPayments'
          mmHeight = 2963
          mmLeft = 25400
          mmTop = 37571
          mmWidth = 17738
          BandType = 1
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 17463
          mmTop = 37306
          mmWidth = 6615
          BandType = 1
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          DataField = 'Store'
          DataPipeline = ppStore
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppStore'
          mmHeight = 6085
          mmLeft = 5556
          mmTop = 17992
          mmWidth = 65088
          BandType = 1
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'Address'
          DataPipeline = ppStore
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppStore'
          mmHeight = 2910
          mmLeft = 5292
          mmTop = 24077
          mmWidth = 65352
          BandType = 1
        end
        object ppDBText21: TppDBText
          UserName = 'DBText21'
          DataField = 'Phone'
          DataPipeline = ppStore
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppStore'
          mmHeight = 2910
          mmLeft = 5292
          mmTop = 30427
          mmWidth = 65617
          BandType = 1
        end
        object ppLabel7: TppLabel
          UserName = 'Label2'
          Caption = 'Label2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 5292
          mmTop = 27252
          mmWidth = 65352
          BandType = 1
        end
        object ppLabel13: TppLabel
          UserName = 'Label4'
          Caption = 'Label4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 25400
          mmTop = 34131
          mmWidth = 21431
          BandType = 1
        end
        object ppLabel24: TppLabel
          UserName = 'labelHoldDate'
          Caption = #39#39
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2963
          mmLeft = 25135
          mmTop = 37571
          mmWidth = 1016
          BandType = 1
        end
      end
      object ppRegion3: TppRegion
        UserName = 'Region3'
        Caption = 'Region3'
        Pen.Style = psClear
        ShiftRelativeTo = ppRegion7
        Stretch = True
        mmHeight = 4498
        mmLeft = 5027
        mmTop = 39952
        mmWidth = 66675
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel4: TppLabel
          UserName = 'lbCustomer'
          Caption = 'Customer:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 11642
          mmTop = 40217
          mmWidth = 12700
          BandType = 1
        end
        object ppDBText6: TppDBText
          UserName = 'dbCustomer'
          DataField = 'FullName'
          DataPipeline = ppPreSaleInfo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppPreSaleInfo'
          mmHeight = 3440
          mmLeft = 25400
          mmTop = 40481
          mmWidth = 45773
          BandType = 1
        end
      end
      object ppRegion8: TppRegion
        UserName = 'Region8'
        Caption = 'Region8'
        Pen.Style = psClear
        ShiftRelativeTo = ppRegion19
        mmHeight = 4498
        mmLeft = 4763
        mmTop = 50006
        mmWidth = 66675
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Item #'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2910
          mmLeft = 5821
          mmTop = 50799
          mmWidth = 8731
          BandType = 1
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'Description'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2963
          mmLeft = 20373
          mmTop = 50800
          mmWidth = 14139
          BandType = 1
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 62971
          mmTop = 50799
          mmWidth = 7673
          BandType = 1
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 5556
          mmTop = 53710
          mmWidth = 64823
          BandType = 1
        end
      end
      object ppLogoImage: TppImage
        UserName = 'LogoImage'
        AutoSize = True
        MaintainAspectRatio = True
        mmHeight = 17463
        mmLeft = 5292
        mmTop = 0
        mmWidth = 65881
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppPreSaleItem'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 529
        mmWidth = 75692
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppPreSaleItem
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 508
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 762002
          PrinterSetup.mmPaperWidth = 76200
          PrinterSetup.PaperSize = 256
          Version = '7.02'
          mmColumnWidth = 75692
          DataPipelineName = 'ppPreSaleItem'
          object ppDetailBand2: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 17727
            mmPrintPosition = 0
            object ppRegion1: TppRegion
              UserName = 'Region1'
              Brush.Style = bsClear
              Caption = 'Region1'
              Pen.Style = psClear
              Stretch = True
              StretchWithParent = True
              Transparent = True
              mmHeight = 5292
              mmLeft = 5027
              mmTop = 0
              mmWidth = 66675
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppVariable4: TppVariable
                UserName = 'Variable3'
                CalcOrder = 1
                DataType = dtDouble
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3440
                mmLeft = 57150
                mmTop = 529
                mmWidth = 13758
                BandType = 4
              end
              object ppDBText11: TppDBText
                UserName = 'DBText11'
                DataField = 'Model'
                DataPipeline = ppPreSaleItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppPreSaleItem'
                mmHeight = 3175
                mmLeft = 5292
                mmTop = 794
                mmWidth = 11642
                BandType = 4
              end
              object ppDBText12: TppDBText
                UserName = 'DBText5'
                ReprintOnOverFlow = True
                DataField = 'Description'
                DataPipeline = ppPreSaleItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppPreSaleItem'
                mmHeight = 2921
                mmLeft = 17198
                mmTop = 794
                mmWidth = 39423
                BandType = 4
              end
            end
            object ppRegion2: TppRegion
              UserName = 'Region2'
              Brush.Style = bsClear
              Caption = 'Region2'
              Pen.Style = psClear
              ShiftRelativeTo = ppRegion1
              Stretch = True
              Transparent = True
              mmHeight = 4498
              mmLeft = 5027
              mmTop = 4763
              mmWidth = 66411
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBText1: TppDBText
                UserName = 'DBText1'
                DataField = 'Qty'
                DataPipeline = ppPreSaleItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPreSaleItem'
                mmHeight = 3175
                mmLeft = 34396
                mmTop = 10849
                mmWidth = 11113
                BandType = 4
              end
              object ppLabel6: TppLabel
                UserName = 'Label6'
                Caption = '@'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 46302
                mmTop = 10849
                mmWidth = 2117
                BandType = 4
              end
              object ppDBText5: TppDBText
                UserName = 'DBText3'
                DataField = 'UnitSalePrice'
                DataPipeline = ppPreSaleItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppPreSaleItem'
                mmHeight = 2910
                mmLeft = 49213
                mmTop = 10849
                mmWidth = 17198
                BandType = 4
              end
            end
            object ppRegion11: TppRegion
              UserName = 'Region11'
              Caption = 'Region11'
              Pen.Style = psClear
              ShiftRelativeTo = ppRegion2
              Stretch = True
              mmHeight = 4233
              mmLeft = 5027
              mmTop = 11906
              mmWidth = 66411
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBMemo1: TppDBMemo
                UserName = 'DBMemo1'
                CharWrap = False
                DataField = 'ModelReceipt'
                DataPipeline = ppPreSaleItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppPreSaleItem'
                mmHeight = 3175
                mmLeft = 5556
                mmTop = 12964
                mmWidth = 65352
                BandType = 4
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmLeading = 0
              end
            end
            object ppRegion14: TppRegion
              UserName = 'Region14'
              Brush.Style = bsClear
              Caption = 'Region14'
              Pen.Style = psClear
              ShiftRelativeTo = ppRegion2
              Stretch = True
              Transparent = True
              mmHeight = 4498
              mmLeft = 5027
              mmTop = 8202
              mmWidth = 66675
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppVariable3: TppVariable
                UserName = 'Variable2'
                CalcOrder = 0
                DataType = dtCurrency
                DisplayFormat = '$#,0.00;-$#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 49213
                mmTop = 13231
                mmWidth = 17727
                BandType = 4
              end
              object ppLabel18: TppLabel
                UserName = 'Label18'
                Caption = 'Original Price:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2910
                mmLeft = 33338
                mmTop = 13231
                mmWidth = 15081
                BandType = 4
              end
            end
          end
          object ppSummaryBand1: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 34925
            mmPrintPosition = 0
            object ppRegion4: TppRegion
              UserName = 'Region4'
              Caption = 'Region4'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 11906
              mmLeft = 10319
              mmTop = 265
              mmWidth = 61119
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppLabel8: TppLabel
                UserName = 'Label8'
                Caption = 'Sub total:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2963
                mmLeft = 32544
                mmTop = 1323
                mmWidth = 12107
                BandType = 7
              end
              object ppDBText2: TppDBText
                UserName = 'DBText2'
                DataField = 'SubTotal'
                DataPipeline = ppPreSaleValue
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPreSaleValue'
                mmHeight = 2910
                mmLeft = 49213
                mmTop = 1323
                mmWidth = 22225
                BandType = 7
              end
              object ppLabel27: TppLabel
                UserName = 'Label27'
                Caption = 'Item Discounts:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2910
                mmLeft = 23548
                mmTop = 4763
                mmWidth = 21167
                BandType = 7
              end
              object ppLabel30: TppLabel
                UserName = 'Label30'
                Caption = 'Sale Discount:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2910
                mmLeft = 23813
                mmTop = 7938
                mmWidth = 20902
                BandType = 7
              end
              object ppDBText14: TppDBText
                UserName = 'DBText14'
                DataField = 'ItemDiscount'
                DataPipeline = ppPreSaleValue
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPreSaleValue'
                mmHeight = 2910
                mmLeft = 49213
                mmTop = 4763
                mmWidth = 22225
                BandType = 7
              end
              object ppDBText29: TppDBText
                UserName = 'DBText29'
                DataField = 'InvoiceDiscount'
                DataPipeline = ppPreSaleValue
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPreSaleValue'
                mmHeight = 2910
                mmLeft = 49213
                mmTop = 8467
                mmWidth = 22225
                BandType = 7
              end
            end
            object ppRegion5: TppRegion
              UserName = 'Region5'
              Caption = 'Region5'
              Pen.Style = psClear
              ShiftRelativeTo = ppRegion4
              Stretch = True
              mmHeight = 4498
              mmLeft = 10319
              mmTop = 11377
              mmWidth = 61383
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppLabel9: TppLabel
                UserName = 'lbDiscount'
                Caption = 'Total Saved:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2921
                mmLeft = 29867
                mmTop = 11907
                mmWidth = 15113
                BandType = 7
              end
              object ppDBText3: TppDBText
                UserName = 'dbDiscount'
                DataField = 'TotalSaved'
                DataPipeline = ppPreSaleValue
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPreSaleValue'
                mmHeight = 2910
                mmLeft = 50006
                mmTop = 11907
                mmWidth = 21431
                BandType = 7
              end
            end
            object ppRegion6: TppRegion
              UserName = 'Region6'
              Caption = 'Region6'
              Pen.Style = psClear
              ShiftRelativeTo = ppRegion5
              mmHeight = 18256
              mmLeft = 10054
              mmTop = 15346
              mmWidth = 61383
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBText8: TppDBText
                UserName = 'DBText8'
                DataField = 'TotalInvoice'
                DataPipeline = ppPreSaleValue
                DisplayFormat = '$#,0.00;-$#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPreSaleValue'
                mmHeight = 2910
                mmLeft = 49741
                mmTop = 20373
                mmWidth = 21431
                BandType = 7
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 32279
                mmTop = 19844
                mmWidth = 39158
                BandType = 7
              end
              object ppLabel10: TppLabel
                UserName = 'Label10'
                Caption = 'Tax:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2963
                mmLeft = 39338
                mmTop = 16139
                mmWidth = 5376
                BandType = 7
              end
              object ppDBText4: TppDBText
                UserName = 'DBText4'
                DataField = 'Tax'
                DataPipeline = ppPreSaleValue
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPreSaleValue'
                mmHeight = 2910
                mmLeft = 49741
                mmTop = 16404
                mmWidth = 21431
                BandType = 7
              end
              object ppLabel11: TppLabel
                UserName = 'Label101'
                Caption = 'Total:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2963
                mmLeft = 37517
                mmTop = 20637
                mmWidth = 7197
                BandType = 7
              end
            end
            object ppRegion20: TppRegion
              UserName = 'Region20'
              Caption = 'Region20'
              mmHeight = 7408
              mmLeft = 32015
              mmTop = 24342
              mmWidth = 38629
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
            end
          end
          object raCodeModule1: TraCodeModule
            ProgramStream = {
              01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650611
              44657461696C4265666F72655072696E740B50726F6772616D54797065070B74
              7450726F63656475726506536F757263650C3802000070726F63656475726520
              44657461696C4265666F72655072696E743B0D0A626567696E0D0A2020526567
              696F6E322E56697369626C65203A3D20284974656D7344657461696C5B275174
              79275D203E203129206F7220284974656D7344657461696C5B27517479275D20
              3C202D31293B0D0A2020526567696F6E31312E56697369626C65203A3D202849
              74656D7344657461696C5B274D6F64656C52656365697074275D203C3E202727
              293B0D0A2020526567696F6E31342E56697369626C65203A3D20284974656D73
              44657461696C5B27446973636F756E74275D203C3E2030293B0D0A2020566172
              6961626C65322E417343757272656E6379203A3D204974656D7344657461696C
              5B2753616C655072696365275D3B0D0A20200D0A202069662043617465676F72
              7952656365697074203D202727207468656E200D0A202020202043617465676F
              727952656365697074203A3D204974656D7344657461696C5B2743617465676F
              727952656365697074275D0D0A2020656C736520626567696E200D0A20202020
              20696620706F73284974656D7344657461696C5B2743617465676F7279526563
              65697074275D2C2043617465676F72795265636569707429203D203020207468
              656E0D0A202020202020202043617465676F727952656365697074203A3D2043
              617465676F727952656365697074202B20272C2027202B204974656D73446574
              61696C5B2743617465676F727952656365697074275D3B200D0A2020656E643B
              2020202020200D0A656E643B0D0A0D436F6D706F6E656E744E616D6506064465
              7461696C094576656E744E616D65060B4265666F72655072696E74074576656E
              74494402180001060F5472614576656E7448616E646C65720B50726F6772616D
              4E616D65061253756D6D6172794265666F72655072696E740B50726F6772616D
              54797065070B747450726F63656475726506536F75726365069B70726F636564
              7572652053756D6D6172794265666F72655072696E743B0D0A626567696E0D0A
              20200D0A20206C62446973636F756E742E56697369626C65203A3D2050726553
              616C6556616C75655B27546F74616C5361766564275D203C3E20303B0D0A2020
              6462446973636F756E742E56697369626C65203A3D206C62446973636F756E74
              2E56697369626C653B0D0A20200D0A656E643B0D0A0D436F6D706F6E656E744E
              616D65060753756D6D617279094576656E744E616D65060B4265666F72655072
              696E74074576656E74494402180001060F5472614576656E7448616E646C6572
              0B50726F6772616D4E616D6506175265706F72744F6E53746172745365636F6E
              64506173730B50726F6772616D54797065070B747450726F6365647572650653
              6F75726365064B70726F636564757265205265706F72744F6E53746172745365
              636F6E64506173733B0D0A626567696E0D0A202043617465676F727952656365
              697074203A3D2027273B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
              06065265706F7274094576656E744E616D6506114F6E53746172745365636F6E
              6450617373074576656E74494402160001060F5472614576656E7448616E646C
              65720B50726F6772616D4E616D6506115375625265706F7274314F6E5072696E
              740B50726F6772616D54797065070B747450726F63656475726506536F757263
              65066570726F636564757265205375625265706F7274314F6E5072696E743B0D
              0A626567696E0D0A2020526567696F6E32302E76697369626C65203A3D202849
              6E766F696365496E666F5B274C617961776179275D3D54727565293B0D0A2020
              0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060A5375625265706F72
              7431094576656E744E616D6506074F6E5072696E74074576656E744944022000
              01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
              5661726961626C65334F6E43616C630B50726F6772616D54797065070B747450
              726F63656475726506536F7572636506A970726F636564757265205661726961
              626C65334F6E43616C63287661722056616C75653A2056617269616E74293B0D
              0A626567696E0D0A0D0A2020095661726961626C65332E4173446F75626C6520
              3A3D2028284974656D7344657461696C5B2753616C655072696365275D202A20
              4974656D7344657461696C5B27517479275D29202D204974656D734465746169
              6C5B27446973636F756E74275D293B200D0A0D0A656E643B0D0A0D436F6D706F
              6E656E744E616D6506095661726961626C6533094576656E744E616D6506064F
              6E43616C63074576656E74494402210000}
          end
        end
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'ppPayments'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6085
        mmWidth = 75692
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppPayments
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 88900
          PrinterSetup.PaperSize = 256
          Version = '7.02'
          mmColumnWidth = 203200
          DataPipelineName = 'ppPayments'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand3: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 19844
            mmPrintPosition = 0
            object ppRegion10: TppRegion
              UserName = 'Region10'
              Caption = 'Region10'
              Pen.Style = psClear
              ShiftRelativeTo = ppRegion9
              mmHeight = 5027
              mmLeft = 4498
              mmTop = 8996
              mmWidth = 66675
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBText23: TppDBText
                UserName = 'DBText23'
                DataField = 'Change'
                DataPipeline = ppPayments
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPayments'
                mmHeight = 2910
                mmLeft = 53446
                mmTop = 9790
                mmWidth = 17198
                BandType = 4
              end
              object ppLabel14: TppLabel
                UserName = 'lbCashChange'
                Caption = 'Change'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 39158
                mmTop = 9790
                mmWidth = 11113
                BandType = 4
              end
              object ppLabel31: TppLabel
                UserName = 'Label31'
                Caption = 'Change'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2921
                mmLeft = 40481
                mmTop = 9790
                mmWidth = 8382
                BandType = 4
              end
            end
            object ppRegion9: TppRegion
              UserName = 'Region9'
              Caption = 'Region9'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 4763
              mmLeft = 4763
              mmTop = 0
              mmWidth = 66411
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBText20: TppDBText
                UserName = 'DBText20'
                DataField = 'MeioPag'
                DataPipeline = ppPayments
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppPayments'
                mmHeight = 4233
                mmLeft = 42333
                mmTop = 529
                mmWidth = 8467
                BandType = 4
              end
              object ppVariable1: TppVariable
                UserName = 'varTotal'
                CalcOrder = 0
                DataType = dtCurrency
                DisplayFormat = '$#,#0.00;-$#,#0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3175
                mmLeft = 51329
                mmTop = 529
                mmWidth = 19844
                BandType = 4
              end
              object ppDBText22: TppDBText
                UserName = 'dbPayDate'
                DataField = 'DataVencimento'
                DataPipeline = ppPayments
                DisplayFormat = 'mm/dd/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                Visible = False
                DataPipelineName = 'ppPayments'
                mmHeight = 4233
                mmLeft = 6085
                mmTop = 529
                mmWidth = 14023
                BandType = 4
              end
            end
            object ppRegion15: TppRegion
              UserName = 'Region15'
              Caption = 'Region15'
              mmHeight = 5027
              mmLeft = 4498
              mmTop = 4233
              mmWidth = 66675
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBText13: TppDBText
                UserName = 'DBText13'
                DataField = 'CardNumber'
                DataPipeline = ppPayments
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppPayments'
                mmHeight = 2910
                mmLeft = 14023
                mmTop = 5026
                mmWidth = 57679
                BandType = 4
              end
              object ppLabel19: TppLabel
                UserName = 'Label19'
                Caption = 'Card #:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 3175
                mmLeft = 5027
                mmTop = 4763
                mmWidth = 8467
                BandType = 4
              end
              object ppDBText7: TppDBText
                UserName = 'dbCashChange'
                DataField = 'Change'
                DataPipeline = ppPayments
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPayments'
                mmHeight = 3175
                mmLeft = 44450
                mmTop = 9260
                mmWidth = 26458
                BandType = 4
              end
            end
          end
          object ppSummaryBand4: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 18785
            mmPrintPosition = 0
            object ppRegion13: TppRegion
              UserName = 'Region13'
              Caption = 'Region13'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 8202
              mmLeft = 5027
              mmTop = 5821
              mmWidth = 66411
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object RBEan1: TRBEan
                UserName = 'Ean1'
                BackgroundColor = clWhite
                Transparent = False
                ShowLabels = False
                StartStopLines = True
                TypBarCode = bcCode128
                LinesColor = clBlack
                Ean13AddUp = True
                FontAutoSize = True
                Security = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = []
                BarCode = 'PSOFT'
                Angle = 0
                LabelMask = '__________________________________________________'
                DisableEditor = False
                mmHeight = 4763
                mmLeft = 27517
                mmTop = 7673
                mmWidth = 21696
                BandType = 7
              end
            end
            object ppDBMemo3: TppDBMemo
              UserName = 'DBMemo3'
              CharWrap = False
              DataField = 'TicketFooter'
              DataPipeline = ppStore
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              ShiftRelativeTo = ppRegion13
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppStore'
              mmHeight = 4498
              mmLeft = 5292
              mmTop = 14023
              mmWidth = 65881
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppRegion12: TppRegion
              UserName = 'Region12'
              Caption = 'Region12'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 6085
              mmLeft = 4763
              mmTop = 529
              mmWidth = 66411
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppMemo5: TppMemo
                UserName = 'memCategory'
                Caption = 'memCategory'
                CharWrap = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Courier New'
                Font.Size = 7
                Font.Style = []
                Stretch = True
                Transparent = True
                mmHeight = 5027
                mmLeft = 5556
                mmTop = 529
                mmWidth = 65617
                BandType = 7
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmLeading = 0
              end
            end
          end
          object raCodeModule3: TraCodeModule
            ProgramStream = {
              01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650611
              44657461696C4265666F72655072696E740B50726F6772616D54797065070B74
              7450726F63656475726506536F757263650CE701000070726F63656475726520
              44657461696C4265666F72655072696E743B0D0A626567696E0D0A2020202020
              20206C62436173684368616E67652E56697369626C65203A3D205061796D656E
              74735B274368616E6765275D203C3E20303B0D0A202020202020206462436173
              684368616E67652E56697369626C65203A3D206C62436173684368616E67652E
              56697369626C653B0D0A20202020202020526567696F6E31302E56697369626C
              6520202020203A3D206462436173684368616E67652E56697369626C653B0D0A
              20202020202020526567696F6E31352E56697369626C6520202020203A3D2028
              5061796D656E74735B27436172644E756D626572275D203C3E202727293B0D0A
              20202020202020526567696F6E31302E56697369626C6520202020203A3D2028
              496E766F696365496E666F5B274C617961776179275D3D46616C7365293B0D0A
              20202020202020696620496E766F696365496E666F5B274C617961776179275D
              203D2054727565207468656E0D0A20202020202020626567696E0D0A20202020
              20202020206462506179446174652E56697369626C65203A3D20547275653B0D
              0A20202020202020202044425465787432302E4C656674203A3D20302E373B0D
              0A20202020202020656E643B0D0A202020202020200D0A656E643B0D0A0D436F
              6D706F6E656E744E616D65060644657461696C094576656E744E616D65060B42
              65666F72655072696E74074576656E74494402180001060F5472614576656E74
              48616E646C65720B50726F6772616D4E616D65060E766172546F74616C4F6E43
              616C630B50726F6772616D54797065070B747450726F63656475726506536F75
              72636506CB70726F63656475726520766172546F74616C4F6E43616C63287661
              722056616C75653A2056617269616E74293B0D0A626567696E0D0A2020696620
              5061796D656E74735B2750617954797065275D203D2031207468656E0D0A2020
              202056616C7565203A3D205061796D656E74735B2756616C6F724E6F6D696E61
              6C275D202B205061796D656E74735B274368616E6765275D0D0A2020656C7365
              0D0A2020202056616C7565203A3D205061796D656E74735B2756616C6F724E6F
              6D696E616C275D3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D650608
              766172546F74616C094576656E744E616D6506064F6E43616C63074576656E74
              494402210001060F5472614576656E7448616E646C65720B50726F6772616D4E
              616D65061253756D6D6172794265666F72655072696E740B50726F6772616D54
              797065070B747450726F63656475726506536F7572636506EA70726F63656475
              72652053756D6D6172794265666F72655072696E743B0D0A626567696E0D0A20
              2045616E312E426172436F6465202020202020202020203A3D20496E766F6963
              65496E666F5B27496E766F696365436F6465275D3B0D0A2020526567696F6E31
              322E56697369626C652020202020203A3D202843617465676F72795265636569
              7074203C3E202727293B0D0A2020696620526567696F6E31322E56697369626C
              65207468656E0D0A2020202020206D656D43617465676F72792E54657874203A
              3D2043617465676F7279526563656970743B200D0A2020656E643B0D0A656E64
              3B0D0A0D436F6D706F6E656E744E616D65060753756D6D617279094576656E74
              4E616D65060B4265666F72655072696E74074576656E74494402180000}
          end
        end
      end
      object ppSubReport4: TppSubReport
        UserName = 'SubReport4'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'ppPayments'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 11642
        mmWidth = 75692
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = ppPayments
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 88900
          PrinterSetup.PaperSize = 256
          Version = '7.02'
          mmColumnWidth = 203200
          DataPipelineName = 'ppPayments'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand5: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 14288
            mmPrintPosition = 0
            object ppRegion16: TppRegion
              UserName = 'Region10'
              Caption = 'Region10'
              Pen.Style = psClear
              mmHeight = 5027
              mmLeft = 4498
              mmTop = 8996
              mmWidth = 66675
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppLabel25: TppLabel
                UserName = 'lbCashChange'
                Caption = 'Change'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2910
                mmLeft = 39158
                mmTop = 9790
                mmWidth = 10848
                BandType = 4
              end
              object ppDBText24: TppDBText
                UserName = 'DBText23'
                DataField = 'Change'
                DataPipeline = ppPayments
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPayments'
                mmHeight = 2910
                mmLeft = 53446
                mmTop = 9790
                mmWidth = 17198
                BandType = 4
              end
              object ppLabel32: TppLabel
                UserName = 'Label32'
                Caption = 'Change'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 2921
                mmLeft = 41804
                mmTop = 9790
                mmWidth = 8382
                BandType = 4
              end
            end
            object ppRegion17: TppRegion
              UserName = 'Region9'
              Caption = 'Region9'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 4763
              mmLeft = 4763
              mmTop = 0
              mmWidth = 66411
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBText25: TppDBText
                UserName = 'DBText20'
                DataField = 'MeioPag'
                DataPipeline = ppPayments
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPayments'
                mmHeight = 2910
                mmLeft = 51858
                mmTop = 1058
                mmWidth = 8996
                BandType = 4
              end
              object ppDBText26: TppDBText
                UserName = 'dbPayDate'
                DataField = 'DataVencimento'
                DataPipeline = ppPayments
                DisplayFormat = 'mm/dd/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                Visible = False
                DataPipelineName = 'ppPayments'
                mmHeight = 4233
                mmLeft = 4763
                mmTop = 794
                mmWidth = 15346
                BandType = 4
              end
              object ppDBText30: TppDBText
                UserName = 'DBText30'
                DataField = 'ValorNominal'
                DataPipeline = ppPayments
                DisplayFormat = '$#,#0.00;-$#,#0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPayments'
                mmHeight = 2910
                mmLeft = 61119
                mmTop = 1058
                mmWidth = 8996
                BandType = 4
              end
            end
            object ppRegion18: TppRegion
              UserName = 'Region15'
              Caption = 'Region15'
              mmHeight = 5027
              mmLeft = 4498
              mmTop = 4233
              mmWidth = 66675
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBText27: TppDBText
                UserName = 'DBText13'
                DataField = 'CardNumber'
                DataPipeline = ppPayments
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppPayments'
                mmHeight = 2910
                mmLeft = 14023
                mmTop = 5026
                mmWidth = 57679
                BandType = 4
              end
              object ppLabel26: TppLabel
                UserName = 'Label19'
                Caption = 'Card #:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                mmHeight = 3175
                mmLeft = 5027
                mmTop = 4763
                mmWidth = 8467
                BandType = 4
              end
              object ppDBText28: TppDBText
                UserName = 'dbCashChange'
                DataField = 'Change'
                DataPipeline = ppPayments
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppPayments'
                mmHeight = 3175
                mmLeft = 44450
                mmTop = 9260
                mmWidth = 26458
                BandType = 4
              end
            end
          end
          object ppSummaryBand2: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 22754
            mmPrintPosition = 0
            object ppRegion22: TppRegion
              UserName = 'Region13'
              Caption = 'Region13'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 8202
              mmLeft = 4763
              mmTop = 9260
              mmWidth = 66675
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object RBEan3: TRBEan
                UserName = 'Ean1'
                BackgroundColor = clWhite
                Transparent = False
                ShowLabels = False
                StartStopLines = True
                TypBarCode = bcCode128
                LinesColor = clBlack
                Ean13AddUp = True
                FontAutoSize = True
                Security = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = []
                BarCode = 'PSOFT'
                Angle = 0
                LabelMask = '__________________________________________________'
                DisableEditor = False
                mmHeight = 4763
                mmLeft = 27252
                mmTop = 10848
                mmWidth = 21696
                BandType = 7
              end
            end
            object ppRegion21: TppRegion
              UserName = 'Region12'
              Caption = 'Region12'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 6350
              mmLeft = 4498
              mmTop = 3704
              mmWidth = 66940
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppMemo1: TppMemo
                UserName = 'memCategory'
                Caption = 'memCategory'
                CharWrap = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Courier New'
                Font.Size = 7
                Font.Style = []
                Stretch = True
                Transparent = True
                mmHeight = 5556
                mmLeft = 5027
                mmTop = 4498
                mmWidth = 65881
                BandType = 7
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmLeading = 0
              end
            end
            object ppRegion23: TppRegion
              UserName = 'Region23'
              Caption = 'Region23'
              mmHeight = 4233
              mmLeft = 4763
              mmTop = 0
              mmWidth = 66411
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppLabel29: TppLabel
                UserName = 'Label2'
                Caption = 'Layaway Paid In Full'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 25400
                mmTop = 794
                mmWidth = 25400
                BandType = 7
              end
            end
            object ppDBMemo4: TppDBMemo
              UserName = 'DBMemo4'
              CharWrap = False
              DataField = 'TicketLayawayFooter'
              DataPipeline = ppStore
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              ShiftRelativeTo = ppRegion22
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppStore'
              mmHeight = 5821
              mmLeft = 5027
              mmTop = 16933
              mmWidth = 66146
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
          end
          object raCodeModule5: TraCodeModule
            ProgramStream = {
              01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650611
              44657461696C4265666F72655072696E740B50726F6772616D54797065070B74
              7450726F63656475726506536F757263650CF901000070726F63656475726520
              44657461696C4265666F72655072696E743B0D0A626567696E0D0A2020202020
              20206C62436173684368616E67652E56697369626C65203A3D205061796D656E
              74735B274368616E6765275D203C3E20303B0D0A202020202020206C62436173
              684368616E67652E76697369626C65203A3D20747275653B0D0A202020202020
              206462436173684368616E67652E56697369626C65203A3D20747275653B0D0A
              20202020202020526567696F6E31302E56697369626C6520202020203A3D2064
              62436173684368616E67652E56697369626C653B0D0A20202020202020526567
              696F6E31352E56697369626C6520202020203A3D20285061796D656E74735B27
              436172644E756D626572275D203C3E202727293B0D0A20202020202020526567
              696F6E31302E56697369626C6520202020203A3D2028496E766F696365496E66
              6F5B274C617961776179275D3D46616C7365293B0D0A20202020202020696620
              496E766F696365496E666F5B274C617961776179275D203D2054727565207468
              656E0D0A20202020202020626567696E0D0A2020202020202064625061794461
              74652E56697369626C65203A3D20547275653B0D0A2020202020202044425465
              787432302E4C656674203A3D20302E373B0D0A20202020202020656E643B0D0A
              202020202020200D0A656E643B0D0A0D436F6D706F6E656E744E616D65060644
              657461696C094576656E744E616D65060B4265666F72655072696E7407457665
              6E74494402180001060F5472614576656E7448616E646C65720B50726F677261
              6D4E616D65061253756D6D6172794265666F72655072696E740B50726F677261
              6D54797065070B747450726F63656475726506536F757263650C2B0100007072
              6F6365647572652053756D6D6172794265666F72655072696E743B0D0A626567
              696E0D0A202045616E312E426172436F6465202020202020202020203A3D2049
              6E766F696365496E666F5B27496E766F696365436F6465275D3B0D0A20205265
              67696F6E32332E56697369626C652020202020203A3D2028496E766F69636549
              6E666F5B27496E766F696365436F6465275D203C3E202727293B0D0A20205265
              67696F6E31322E56697369626C652020202020203A3D202843617465676F7279
              52656365697074203C3E202727293B0D0A2020696620526567696F6E31322E56
              697369626C65207468656E0D0A20202020206D656D43617465676F72792E5465
              78742020203A3D2043617465676F7279526563656970743B200D0A2020656E64
              3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060753756D6D617279
              094576656E744E616D65060B4265666F72655072696E74074576656E74494402
              180000}
          end
        end
      end
    end
    object ppSummaryBand3: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 28046
      mmPrintPosition = 0
      object ppDBMemo2: TppDBMemo
        UserName = 'dbInvNotes'
        CharWrap = False
        DataField = 'Note'
        DataPipeline = ppPreSaleInfo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ShiftRelativeTo = ppSubReport3
        Stretch = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppPreSaleInfo'
        mmHeight = 17198
        mmLeft = 4763
        mmTop = 5556
        mmWidth = 66675
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 22754
        mmWidth = 2646
        BandType = 7
      end
      object ppSubReport3: TppSubReport
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppBonusBucks'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 529
        mmWidth = 75692
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppBonusBucks
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 508
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 762002
          PrinterSetup.mmPaperWidth = 76200
          PrinterSetup.PaperSize = 256
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppBonusBucks'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 76200
            mmPrintPosition = 0
            object ppImage2: TppImage
              UserName = 'Image2'
              MaintainAspectRatio = False
              Stretch = True
              Transparent = True
              Picture.Data = {
                07544269746D6170A6360200424DA63602000000000036000000280000002F01
                00009F0000000100180000000000703602000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000C8D0D4000000000000404040F7F7F7FAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
                FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFBFBFB000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003A3A3AFBFBFBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003F3F3FFBFBFBFEFEFEFEFE
                FE9292920E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0E0E0E0E0E0E0E0E0E0E919191FEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8C8C8C000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003F3F3FFBFBFBFEFEFEFEFE
                FE8C8C8C00000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000A8A49FEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E9E900000000000000
                0000000000000000000000000000717171EBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEAEAEAEBEBEB53535300000000000000000000000000
                00000000004F4F4FEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEB7B7B7B000000000000000000000000000000000000000000EB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9E3DE
                D90000000000000000000000000000000303030E0E0EBDBDBDEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB1313130000000000
                00000000000000000000000000C1C1C1EBEBEBEBEBEBEBEBEBEBEBEB969696EB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBE9E9E95D5D5D0000000000000000000000000000
                00000000070707EBEBEBEBEBEBEBEBEBE9E9E9AAAAAAE7E7E7EBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEB5D5D5D0000000000000000000000000000000000002E2E2EE0E0
                E0EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE6E6E6
                000000000000000000000000000000000000000000DEDEDEEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBCDCDCD1F1F1F000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000404048B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8B8B8B000000000000606060000000
                020202F5F3F11F1F1F0000000000000000000000006969696969690000000000
                00000000000000000000717171B1B1B1FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9
                E9E92F2F2FA7A7A7FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD959595D5D5D5FDFDFD
                FEFEFE8A8A8A0000000000000000000000000000000000000000000000000000
                00464646C5C5C5FEFEFEFEFEFEFDFDFDE1E1E11111115E5E5EFCFCFCFEFEFEFE
                FEFEFDFDFDA2A2A2343434ECECECFEFEFEFEFEFEFEFEFEFEFEFE959595222222
                0000000000000000000000000000000000000000000000001C1C1C959595FEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC1C1C1141414D0
                D0D0FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDC9C9C9151515000000000000000000
                000000000000000000000000000000000000848484FEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD8A8A8ADADADAFE
                FEFEFEFEFEFEFEFEB3B3B3787878000000000000000000000000000000000000
                000000000000000000969696D3D3D3FEFEFEFEFEFEFDFDFDC4C4C4959494C9C7
                C5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFED9D9D9080808434343F7F7F7FEFEFEFA
                FAFA8C8B890D0D0C000000000000000000000000000000000000000000000000
                2E2E2EE7E7E7FEFEFE8C8C8C919191FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFCFCFCB4B4B41C1C1CDADADAFEFEFEFEFEFEF5F5F5A5A5A500000000
                0000000000000000000000000000000000000000000000454341969696FDFDFD
                FEFEFE696969FAFAFAFEFEFEFEFEFEFDFDFD9C9C9C3F3F3FF4F4F4FEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEA5A5A565656500000000000000000047
                47478C8C8C000000000000000000000000959595E0E0E0FEFEFEFEFEFEF7F7F7
                969696959595EBEBEBFEFEFEFEFEFEFEFEFEFEFEFEFCFCFCFBF9F7FEFEFEFEFE
                FEFEFEFEFEFEFEF8F8F845454500000000000000000000000000000000000000
                0000000000020202404040F4F4F4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                A3A3A3000000555555FEFEFEFEFEFEFDFDFDDEDEDE9A9A9AFEFEFEFEFEFEE3E3
                E393939300000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000202028B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFAFA
                FA8C8C8C000000000000E9E9E900000000000016161503030300000000000000
                0000BEBEBE181818181818C0BEBD292726000000000000000000000000060606
                BCBCBCFEFEFEFEFEFEFEFEFEFEFEFECDCDCD0000002C2C2CFEFEFEFEFEFEFEFE
                FEFEFEFEFDFDFD000000999999E9E9E918181800000000000000000000000000
                00000000000000000000000000000000000000000B0B0B181818FEFEFEFEFEFE
                F8F8F87F7F7FCCCCCCFEFEFEFEFEFEFEFEFEFDFDFD252525464442F5F5F4FEFE
                FEFEFEFEC8C8C8242424000000000000000000000000353432E3E2E00D0D0D3A
                3A3A0000000000000000000000002E2E2DDFDCDBFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFAFAFA6B6B6B0000008D8D8DFEFEFEFEFEFEFEFEFEFCFCFC1818
                180C0C0C00000000000000000000000000000000000000000000000000000000
                0000000000181818DFDFDFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFDFDFDFAFAFA818181BEBEBEFEFEFEFDFDFDCBCBCB0707070000000000
                000000000000000000000000000000000000000000000000000000001010105F
                5F5FFEFEFEFEFEFEF0F0F00000000D0D0DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                F4F4F40A0A0A676767F9F9F9ADADAD1B1B1B0000000000000000000000000000
                000000000000000000000000000000000000001313135A5A5AFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEEEEE000000A8A8A8
                FEFEFEFEFEFE1616160404040000000000000000000000000000000000000000
                00000000000000000000000000272727FCFCFCFEFEFEFEFEFEFEFEFEFEFEFEFD
                FDFD111111000000E7E7E7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3E3E3E
                0404040000000000000000000000000707071818180000000000000000000000
                00010101121212FEFEFEFEFEFEF0F0F03A3A3A232321F1EEECFEFEFEFEFEFEFE
                FEFEFCFCFCE5E5E5171716FEFEFEFEFEFEFEFEFE7E7E7E161616000000000000
                0000000000000000000000000000000000000000000000000000001616167777
                77FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDFDFDF1A1A1AC8C8C8FEFEFEFEFEFEFB
                FBFBB3B3B3070707FEFEFE7B7B7B121212000000000000000000000000000000
                0000009D9D9DCBCBCB1818180000000000000000008F8F8FC8C8C80000000000
                000000000F0F0F0000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFBFBFB8B8B8B000000000000E7E7E7949494
                000000000000000000000000DADADA2828281A1A1A3232329696962323235454
                54000000000000000000000000000000000000232323A2A2A2FEFEFEFEFEFEFE
                FEFECACACAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF2F2F2535353000000
                0000000000000000000000000000000000006060609595950000000000000000
                00000000000000000000212121939393FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEC5C5C5656565FEFEFEFDFDFDDDDDDD989898000000000000000000000000
                000000020202A9A9A90505055E5E5E5E5E5E0000000000000000000000000000
                00000000999999D9D9D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDBFBFBFFE
                FEFEFEFEFEFDFDFD959595212121000000000000000000000000000000454545
                6666660000000000002A2A2A656565000000000000000000000000383838E1E1
                E0FEFEFEFEFEFEFDFDFDFDFDFD000000040404FEFEFEFEFEFEFEFEFEFEFEFE97
                97972A2A2A0000000000000000000000002323238282823D3D3D4C4C4C000000
                0000000000000000000000000000000000005757579F9F9FFEFEFEF8F8F88080
                80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED0D0D06E6E6D00000000
                0000000000000000000000000000252525656565000000000000000000000000
                000000000000000000020202ACACACF7F7F6FEFEFEFEFEFEFDFDFDB5B5B51B1B
                1BD8D8D8FEFEFEFEFEFEFDFDFDEDEDED8181810000000000000000000000003D
                3D3D5454549999998F8F8F3E3E3E000000000000000000000000000000000000
                000000767676FBFBFBFEFEFEFEFEFEFEFEFEFEFEFED0D0D0FEFEFEFEFEFEFEFE
                FEFDFDFDFEFEFE98989816161600000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000006A6A6AC9C9C9
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDCFCFCF030303454545FCFBFBBEBD
                BC0A0A0A00000000000000000000000000000065656565656564646400000000
                00000000000000000000000000000000002C2C2CC1C1C1FEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEAEAEAE6F6F6F0000000000
                00000000000000000000000000000000020202AEAEAEEFEFEF3A3A3A00000000
                00000000006060608787870000000000003A3A3AE9E9E90000000000008C8C8C
                FEFEFEFEFEFEFBFBFB000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFAFA
                FA8A8A8A000000020202E9E9E9F0F0F0161616000000000000030303D9D9D90D
                0D0DC1C1C1000000B8B8B8000000999999000000000000000000000000000000
                0000000000000303034D4D4DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFDFDFD7171711A1A1A00000000000000000000000000000000000000000000
                0000050505000000000000000000000000000000000000000000000000000000
                1D1D1DEAEAEAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDD7D6D61313
                13000000000000000000000000000000000000A8A8A8111111A5A5A51B1B1B1B
                1B1BB3B3B3000000000000000000000000000000000000121212FEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF4F4F41D1D1D0000000000000000
                000000000000000000000000000000001B1B1B7E7E7ED0D0D0717171E8E8E800
                00000000000000000000000000001514146B6B6BFEFEFEFDFDFDFDFDFD000000
                B0B0B0FEFEFEFEFEFEFDFDFD5555550000000000000000000000000101010101
                01C3C3C34A4A4AE0E0E0DFDFDF00000000000000000000000000000000000000
                00000000000202027C7C7CFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFE272727101010000000000000000000000000000000000000000000EBEB
                EBFBFBFB9393930000000000000000000000000000000000000000000606061C
                1C1CFEFEFEFEFEFEFCFCFC474747000000B2B2B2FEFEFEFEFEFED7D7D7181818
                000000000000000000000000131313565656141414E1E1E10000001212120000
                000000000000000000000000000000000000000000001C1C1C858585FEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEA7A7A71D1D1D000000000000000000
                000000000000000000000000B0B0B0E0E0E0E0E0E00303030000000000000000
                000000000000000000000000000E0E0EB4B4B4FEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEF1F1F1E2E2E2F4F4F41C1C1C0B0B0A0000000000000000004A4743000000
                7474741D1D1D1D1D1D2020203434340000000000000000000000000000000000
                000000000B0B0B1D1D1DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFE
                FEFE595959060606000000000000000000000000000000000000000000000000
                0000001313131919190202020000000000000000000000000000000000000000
                00929292E6E6E60000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003D3D3DFBFBFBFEFEFEF9F9F98B8B8B000000000000E9E9E9FDFDFD
                EDEAE50000000000000000000000009B9B9B0F0F0F9E9E9E3D3D3D82807E2E2E
                2E000000000000000000000000000000000000000000000000000000000000A6
                A6A6EDEDEDFEFEFEFEFEFEFBFBFBBBBBBA232323000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000585858F4F4F4FEFEFEFE
                FEFEFEFEFEACACAC666666000000000000000000000000000000000000000000
                000000BDBDBD181715605F5E3736354645452828280000000000000000000000
                00000000000000000000020202616161A8A8A8FEFEFEFEFEFEFEFEFEF7F7F788
                8888000000000000000000000000000000000000000000000000000000000000
                0000004444440C0C0C000000E6E6E60000000000004242420D0D0D0000000000
                00000000111111BCBCBCFEFEFEFEFEFEFDFDFDE9E9E9A3A3A300000000000000
                00000000000000000000000000009898980101016A6A6A0F0F0F222222A6A6A6
                0000000000000000000000000000000000000000000000000000000606069F9F
                9FFEFEFEFEFEFEFEFEFEFEFEFE9E9E9E53535300000000000000000000000000
                00000000000000000000000000003A3A3A9D9D9D131313000000000000000000
                0101012F2D2B212121000000000000000000010101767676D9D9D9FCFCFCDFDF
                DFFEFEFEC3C3C33232320000000000000000000000000000000000001E1E1E64
                6464AAA8A60707075F5C57202020D5D5D5000000000000000000000000000000
                00000000000000000000000086837EC8C8C8FEFEFEFEFEFEFCFCFCD7D7D79D9D
                9D00000000000000000000000000000050505000000000000040404024242400
                00000000003F3F3F272727000000000000000000000000000000000000000000
                0000001A1A1ABCBCBCFEFEFEFEFEFEFCFCFCEBEBEB9090900C0C0C0000000000
                000000000000000000008787870202022A2A2A010101CACACA04040465656501
                0101000000000000000000000000000000000000000000000000212121969696
                FEFEFEFEFEFEFEFEFEFEFEFE9B9B9B1E1E1E0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000003A3A3AFEFEFEEAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003F3F3FFBFBFBFEFEFEFAFA
                FA8C8C8C000000000000E9E9E9FEFEFEFCFCFC86868600000000000000000012
                1212BEBEBEA7A7A7BABABA383837050505000000000000000000000000000000
                0000000000000000000000000000000303031E1E1EFEFEFEFCFCFC2121210A0A
                0A00000000000006060617171700000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000001E1E1E757575FDFDFD9E9A960505050000000000000000
                00B3B3B3AFAFAF0F0F0F000000000000000000191919A7A7A7191919B2B2B209
                0909AEAEAE000000000000000000000000000000000000000000000000000000
                0404047E7E7DFEFEFE7F7F7F1F1F1F0000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000E6E6E6DC
                DCDCACACAC171717A1A1A10000000000000000000000000B0B0B222222FEFEFE
                FBFBFB1B1B1B020202000000000000000000000000000000000000000000ADAD
                AD0000009090902828285959590B0B0B00000000000000000000000000000000
                0000000000000000000000000000000000232323BBBBBBFEFEFE222222010101
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000002A2827DBDAD8C3C3C316161600000000
                0000000000000000161616C1C1C1FEFEFE6464640E0E0E000000000000000000
                0000000000000000000000001212123F3F3F2121204848480B0B0B414141F1F1
                F10000000000000000000000000000000000000000000000000000000101010F
                0F0F222222FCFCFC9A9A9A1414140000000000000000000000000000002E2C2A
                3332319797970303039D9D9D0101010000000000000000000000000000000000
                000000009E9E9E8686860000000000000000000000000B0B0B424242FEFEFEE2
                E2E21B1B1B000000000000000000000000000000000000000000464646000000
                7B7B7B0000007E7E7E0404040606060000000000000000000000000000000000
                00000000000000000000000000000000222222DCDCDCEEEEEE40404000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000EBEB
                EBFCFCFCE7E7E70000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFDFDFD8A8A8A000000000000E9E9E9616161
                E4E4E4BCBCBC0B0B0B0000000000000000000000000000000000000000000000
                00313131A3A3A3FEFEFEFBFBFB79797900000000000000000000000000000000
                0000000000000000000000000000000000000000000000A5A5A54A4A4A000000
                0000000000000000000000000101010303035B5B5B0000000000000000007E7E
                7E5D5D5D18181800000000000000000000000000000000000000000000000000
                0000000000000000000000000000020202CECECEE2E2E2222222000000000000
                0000000000002A2A2A4B4B4B5B5B5B8D8D8D0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000A3A2A1090909000000
                0000000000000000000000000000000000000000000000008F8F8F0808080000
                0000000000000000000000000000000000000000000000000000000000000016
                1616191919000000000000000000000000A4A4A41A1919A2A2A2716F6D969696
                000000000000000000000000363636EFEFEF2727270000000000000000000000
                000000000000000000000000000000000000004D4B4837373701010100000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000008282827474740000000000000000000000000000000000000000000000
                000000000000002F2F2F5B5B5B8B8B8B00000000000000000000000000000061
                61612D2D2D353535979797333333272727000000000000000000000000000000
                989898FEFEFE2929290000000000000000000000000000000000000000000000
                000000000000000000000000005757572B2B2B2525259A9A9A00000000000000
                0000000000000000000000000000000000000000000000DADADAC0C0C0000000
                0000000000000000000000000000000000000000000000000000005B5B5B2727
                270000000000000000000000009E9E9E2D2D2DA0A0A05252525A5A5A55555500
                0000000000000000000000000000000000000000636363FDFDFD393939000000
                0000000000000000000000000000000000000000000000000000000000000101
                0123232345454500000000000000000000000000000000000000000000000000
                00000000000000000000009A9A9AFEFEFEFDFDFDE9E9E90000000000008C8C8C
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003F3F3FFBFBFBFEFEFEFEFE
                FE8B8B8B000000020202E9E9E97D7D7D3C3C3CFEFEFEB9B9B900000000000000
                0000000000000000000000000000000000000000000000272727C9C9C9000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000001010104040400000000000000000000000000000000000066
                6666343434CBC6BE000000D4D4D41616162626268282820A0A0A000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                002020201B1B1B0000000000000000000000000000000000000E0E0E2727270B
                0B0B000000000000000000000000000000000000000000868686000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000FCFBFAD7D7D700000000000000000000000000000000000000
                00000000000000000101018E8E8E000000000000000000000000000000000000
                0000000000000000000000000000005151516C6C6C0000000000000000000000
                000E0E0E9B9B9BD6D6D6636362040404000000000000000000030303969696FE
                FEFE6E6E6E000000000000000000000000000000000000000000000000000000
                00000021201F8C8C8C0000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000A6A6A6EBEBEB313131
                0000000000000000000000000000000000001313131616160E0E0E7474740000
                00000000000000000000000000000000787878FCFCFC15151500000000000000
                00000000000000000000000000000000000000000000000000000000009A9A9A
                2A2A2A0000000000000000000000000000000000000000000000000000000000
                000000000000001717170C0C0C00000000000000000000000000000000000000
                0000000000000000000000FEFEFE6C6C6C000000000000000000000000040404
                4B4B4BD7D7D7D8D8D82929290000000000000000000000000000000000000000
                00000000676767FBFBFB76767600000000000000000000000000000000000000
                0000000000000000000000000000000000888888C1C1C1000000000000000000
                0000000000000000000000000000000000000000000000001C1C1CEFEFEFFEFE
                FEFEFEFEE8E8E80000000000008B8B8BFEFEFEFEFEFEFBFBFB000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFDFDFD8C8C8C000000010101E9E9E9E8E8E8
                151515FEFEFEFBFBFB3737370000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000C0C0CA6A6A63E3E3E565656A1A1A10101018080808282820101010000
                000000000000009A9A9A24242400000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000101016B6B6B6E6E6E00000000000000000000000000000000000000
                00000000000000000000000000000000002C2C2CA6A6A6585858000000000000
                0000000000000000000000000000000000000000000000000202020808080303
                0300000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000009999990000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000008B8B8B00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000051515100000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000C5C1BDFEFEFEFEFEFEFDFDFDE9E9E90000000000008C8C8C
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E9E9E9FEFEFED7D7D7FEFEFEFEFEFEADADAD06060600
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000001F1F1F2B2B2B00
                0000000000010101161616000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0016161601010100000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000020202858585FEFEFEFEFEFEFEFE
                FEFDFDFDE8E8E80000000000008B8B8BFEFEFEFEFEFEFAFAFA000000C8D0D400
                00000000003F3F3FFBFBFBFEFEFEFCFCFC8C8C8C000000000000E9E9E9FEFEFE
                FEFEFEFEFEFEFEFEFEFCFCFC6969690000000000000000000000001919195151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515151515151515151515151515151515151
                5151515151515151515151515151515150505019191900000000000000000000
                00000B0B0BBBBBBBA2A2A2898989FEFEFEFEFEFEE7E7E70000000000008C8C8C
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E9E9E9FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFAFAFA00
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FDFDFD4F4F4F000000000000000000000000666666FBFBFB000000020202FEFE
                FEFDFDFDEAEAEA0000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFAFAFA8C8C8C000000000000E9E9E9FEFEFE
                FEFEFEE0E0E0161616595858F9F9F9747474000000000000000000505050FEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD4F4F4F00000000000000000000
                0000EAEAEAFDFDFDC5C5C59F9F9FFEFEFEFEFEFEE5E5E50000000000008B8B8B
                FEFEFEFEFEFEFBFBFB000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFDFD
                FD8C8C8C000000000000E9E9E9FEFEFEFEFEFEE6E6E61818185A5A5AFCFCFC00
                00000000000000000000004E4E4EFEFEFEFDFDFDFDFDFD353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535353535353535
                3535353535353535353535353535353535353535353535353535FEFEFEFEFEFE
                FEFEFE4F4F4F000000000000000000020202434343FEFEFEFEFEFEFEFEFEFEFE
                FEFCFCFCE8E8E80000000000008B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFDFDFD8A8A8A000000000000E9E9E9FEFEFE
                FEFEFEFEFEFEFEFEFEEDEDED1D1D1D0000000000000000000000004E4E4EFEFE
                FEFDFDFDFBFBFB00000000000000000000000000000000000000000000000000
                0000000000000000000000444444121212000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                1919194747470000000000000000000000000000000000000000000000000000
                00000000010101010101FEFEFEFEFEFEFAFAFA4F4F4F00000000000000000000
                0000000000A0A0A0FEFEFEFDFDFDF7F7F7B6B6B6A8A8A80000000000008B8B8B
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8A8A8A000000000000E9E9E9FEFEFEFEFEFEFEFEFEFBFBFBA7A7A703030300
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFE000000000000000000
                000000000000000000000000000000000000000000000000000000F3F3F34040
                4000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000005A5A5AFEFEFE00000000000000000000
                0000000000000000000000000000000000000000000000000000FEFEFEFEFEFE
                FEFEFE4F4F4F000000000000000000000000000000242424FEFEFEFEFEFEEEEE
                EE2424240000000000000303038B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFDFDFD8B8B8B000000010101E6E6E6B0B0B0
                0E0E0EFDFDFDFDFDFD0000000000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFDFDFD0000000202021F1F1FD9D9D9C3C3C300000000000000000000
                0000000000000000000000F3F3F3404040000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FD0E0E0E00000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                5A5A5AFEFEFE0000000000000000000000000000000000000000000000001111
                11111111000000000000FEFEFEFEFEFEFCFCFC4F4F4F00000000000039393903
                0303000000010101929291FEFEFEFDFDFD8383830404040000000000008B8B8B
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFAFA
                FA8A8A8A000000000000E9E9E9FDFDFDCDCDCDFDFDFD55555500000000000020
                20200000000000000000004E4E4EFEFEFEFEFEFEFCFCFC000000020202404040
                FCFCFCC3C3C3000000000000000000000000000000000000000000F0F0F04040
                4000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000171717
                FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFD6D6D6F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000005A5A5AFEFEFE00000000000000000000
                0000000000000000000000000000CFCFCF404040000000000000FEFEFEFEFEFE
                FDFDFD4F4F4F000000020202F4F4F44545450000000101010C0C0CB7B7B7FEFE
                FEF1F1F01B1B1B0000000000008B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFBFBFB8C8C8C000000000000E9E9E9FEFEFE
                FCFCFCB6B6B60909090101010303037F7F7FBDBAB50000000000004E4E4EFEFE
                FEFEFEFEFDFDFD0000000000000000000000000000000000000000002B2B2B3E
                3E3E3E3E3E3E3E3E3E3E3EF6F6F66E6E6E3E3E3E3D3D3D373737020202000000
                0000000000000000000000000000000000000000003D3D3D0000000000000000
                000000000000000000000000009E9E9EFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFEEEEEE0000000000000000000000000000000000000000000000003E3E3E3C
                3C3C0000000000000000000000000000000000003E3E3E3E3E3E3E3E3E3E3E3E
                828282FEFEFE3E3E3E3E3E3E3E3E3E1F1F1F0000000000000000000000000000
                00000000000000010101FEFEFEFEFEFEFCFCFC4F4F4F00000000000000000000
                0000000000000000000000757575FEFEFEFEFEFEE9E9E90000000000008B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFDFD
                FD8B8B8B000000010101E9E9E9FDFDFDFBFBFB2929290000000000000000005A
                5A5A6161610000000000004E4E4EFEFEFEFDFDFDFBFBFB000000000000000000
                000000000000000000BABABAE8E8E8C8C5C0434343434343434343FEFEFE8686
                865E5E5EFDFDFDF7F7F7BCBCBC80808000000000000000000000000000000000
                0000000000FDFDFDBBBBBB010101000000000000000000000000010101EDEDED
                FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE000000000000000000000000
                000000000000000000000000FDFDFDFBFBFB0000000000000000000000004D4D
                4DB9B9B9FAFAFA585858434343434343868686FEFEFE434343DDDDDDFEFEFEDD
                DDDDB8B8B8282828000000000000000000000000000000010101FEFEFEFEFEFE
                FCFCFC4F4F4F000000000000000000000000000000000000000000000000E4E2
                E0FDFDFDE7E7E70000000303038B8B8BFEFEFEFEFEFEF9F9F9000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFCFCFC8C8C8C000000000000E9E9E9FDFDFD
                CBCBCB0000000000000000000000004646461F1F1F0000000000004E4E4EFEFE
                FEFEFEFEFDFDFD0000000000000000000000001D1D1DD8D8D8FEFEFE73737300
                0000000000000000000000FBFBFB595959000000000000CCCCCCFEFEFEF7F7F7
                787878000000000000000000000000000000000000FEFEFE7D7D7D0000000000
                00000000000000000000000000EDEDEDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFEEEEEE000000000000000000000000000000000000000000000000C5C5C5C5
                C5C5000000000000020202343434FCFCFCFCFCFC222222000000000000000000
                5A5A5AFEFEFE0000000000003E3E3EF3F3F3FEFEFEFDFDFD2929290000000000
                00000000000000000000FEFEFEFEFEFEFEFEFE4F4F4F00000000000000000000
                0000000000000000000000000000131313E7E7E7E7E7E70000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFEFE
                FE8B8B8B000000000000E9E9E9D6D6D610101000000000000000000000000000
                0000000000000000000000505050FEFEFEFEFEFEFDFDFD000000000000000000
                000000C7C7C7FEFEFEFEFEFEFDFDFD939393000000000000000000FEFEFE5A5A
                5A0000000000001C1C1CFEFEFEFEFEFEFCFCFC67635E00000000000000000000
                0000000000FAFAFA242424000000000000000000000000000000000000EDEDED
                FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC000000000000000000000000
                000000000000000000000000000000000000000000000000383838F4F4F4FEFE
                FEFDFDFDE0E0E0171717000000000000595959FDFDFD00000000000000000094
                908CFEFEFEFDFDFDE9E9E92A2A2A000000000000000000000000FEFEFEFEFEFE
                FDFDFD4E4E4E0000000000000000000000000000000000000000000000000303
                03959595EAEAEA0000000000008C8C8CFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFCFCFC8A8A8A000000000000E7E7E7777777
                0000000000000000000000000000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFCFCFC000000000000000000010101FEFEFEFEFEFEFEFEFEFEFEFEFD
                FDFD515151000000020202FEFEFE5B5B5B0000000000001C1C1CFEFEFEFEFEFE
                FEFEFEECECEC111111000000000000000000020202A7A7A40000000000000000
                00000000000000010101707070FEFEFEFCFCFCFBFBFBFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFEFE71717100000000000000000000000000000000000000000000000000
                00000000000000006E6E6EFEFEFEFEFEFEFEFEFEFEFEFEFBFBFB000000000000
                5A5A5AFBFBFB000000000000000000B3B2B0FEFEFEFEFEFEFEFEFED0D0CF0000
                00000000010101010101FEFEFEFEFEFEFCFCFC4E4E4E00000000000000000000
                0000000000000000000000000000000000000000EAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFBFBFB000000C8D0D40000000000003E3E3EFBFBFBFEFEFEFEFE
                FE8B8B8B000000000000E6E6E600000000000000000000000000000000000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFCFCFC000000000000000000
                010101FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD515151000000000000FCFCFC5A5A
                5A000000000000B9B9B9FEFEFEFEFEFEFEFEFEFDFDFD67676700000000000000
                0000000000000000000000000000000000000000000000010101717171FEFEFE
                FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE717171000000000000000000
                0000000000000000000000000000000000000000000000006E6E6EFEFEFEFEFE
                FEFEFEFEFEFEFEFBFBFB0000000000005A5A5AFDFDFD0000000000003A3A3AEF
                EFEFFEFEFEFEFEFEFEFEFEFCFCFC000000000000000000000000FEFEFEFEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000004F4F4F0000000000
                000000004747470000000000008C8C8CFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFEFEFE8C8C8C000000000000000000000000
                0000000000000000000000000000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFEFEFE000000000000000000010101D9D9D9FEFEFEFEFEFEFEFEFEF5
                F5F5424242010101010101FEFEFE5D5D5D424242E6E6E6FEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFE6F6F6F0000000000000000000000000000000000000000000000
                00000000000000010101D1CECBFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFEFED1CFCB00000000000000000000000000000000000000000000000000
                0000000000000000434343F6F6F6FEFEFEFEFEFEFDFDFDD4D4D4000000010101
                5A5A5AFCFCFC1111114F4F4FFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFC0000
                00000000000000010101FEFEFEFEFEFEFCFCFC4F4F4F00000000000025252555
                55554545455D5D5D0707079090902A2A2A0000000000000000000000008D8D8D
                FEFEFEFEFEFEFCFCFC000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8A8A8A00000000000000000000000000000000000000000000000000000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFBFBFB000000000000000000
                010101131313CECECEFEFEFE959595424242000000000000000000FDFDFDCDCD
                CDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE6F6F6F00000000000000
                0000000000000000000000000000000000000000000000010101FEFEFEFEFEFE
                FEFEFEFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE000000000000000000
                0000000000000000000000000000000000000000000000000101014C4C4CB3B3
                B3FEFEFE9B9B9A0909090000000101015A5A5AFEFEFEC8C8C8FEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000030303FEFEFEFEFEFE
                FDFDFD4E4E4E000000000000282828595959D9D9D9686868141414444444E3E3
                E30000000000000000000000008B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                0000000000383838FBFBFBFEFEFEFEFEFE8B8B8B000000000000000000000000
                000000000000000000515150F8F7F7A6A6A60000000000000000004E4E4EFEFE
                FEFEFEFEFEFEFE00000000000000000000000000000000000000000000000002
                02022020204F4F4FFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFCFCFC6A6A6A0000000000000000000000000000000000000000000000
                00000000000000292929FEFEFEFEFEFEFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFEFEFBFBFBDBD6D000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000002B2B2B9A9691
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000
                00000000000000000000FEFEFEFEFEFEFCFCFC4E4E4E00000000000028282859
                5959BCBCBC2A2A2A3F3F3F525252DBD7D10000000000000000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFEFE
                FE8B8B8B000000000000000000000000000000000000000000545353FAFAFAA5
                A5A50000000000000000004E4E4EFEFEFEFEFEFEFEFEFE000000000000000000
                0000000000000000000000002D2D2DABABABE7E7E7FEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDF1F1F11D1D1D00000000000000
                0000000000000000000000000000000000000000000000F2F2F2FEFEFEFEFEFE
                FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEF2F2F2000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000424242A7A7A7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFDFDFD7F7F7F000000000000000000000000FEFEFEFEFEFE
                FDFDFD4F4F4F0000000000000D0D0D8989890C0C0C5656564D4D4D6565654E4E
                4E0000000000000000000000008C8C8CFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8C8C8C000000000000000000000000
                0000000000000000000000000000000000000000000000000000004E4E4EFEFE
                FEFDFDFDFBFBFB000000000000000000000000000000000000545454FEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFE7B76700000000000000000000000000000000000000000000000000000
                00000000757575FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFEFEFEFEFEFDFDFD73737300000000000000000000000000000000000000
                0000000000000000000000000000101010DEDEDEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF3F3F33333330000
                00000000000000000000FEFEFEFEFEFEFEFEFE4F4F4F00000000000000000000
                0000CECECE5353532020207676760000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8B8B8B00000000000000000000000000000000000000000000000000000000
                00000000000000000101014E4E4EFEFEFEFEFEFEFEFEFE000000000000000000
                000000000000767676FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD9F9F9F00000000000000000000000000
                0000000000000000000000000000000000000000CDCDCDFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDCCCCCC000000
                000000000000141414000000000000000000000000000000000000030303C9C9
                C9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFE424242000000000000000000000000010101FEFEFEFEFEFE
                FCFCFC4F4F4F0000000000000000000000000000003838380F0F0F0000000000
                000000000000000000000000008C8C8CFEFEFEFEFEFEFBFBFB000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFEFEFE8A8A8A000000000000E9E9E9060606
                0000000000000000000000000000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFCFCFC0000000000000000000000001E1E1EDBDBDBFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEAEAEA000000
                0000000000000000000000000000000000000000000000000000000000000000
                00202020FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFEFEFEFEFEFEFEFEFCFCFC2020200000000000006C6C6CF8F8F854545409
                09090000000000000000001E1E1EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDDDD3030300000000000000000
                00000000000000000000FEFEFEFEFEFEFCFCFC4F4F4F00000000000000000000
                00000000000000000000000000000000000000001E1E1E0000000101018B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFEFE
                FE8B8B8B000000000000E9E9E96F6F6F00000000000000000000000000000000
                00000000000000000000004F4F4FFEFEFEFDFDFDFCFCFC000000000000000000
                0000003B3B3BFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFDFDFDFDFDFD60606026262600000000000000000000000000000000000000
                0000000000000000000000000000000000F7F7F7FEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFCFCFCF6F6F6
                0000000000000000005F5F5FB3B3B31B1B1B000000000000000000EBEBEBFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFCCCCCCC60
                6060000000000000000000000000000000000000000000000000FEFEFEFEFEFE
                FCFCFC4F4F4F0000000000000000000000000000000000000000000000000000
                00111111E8E8E80000000202028C8C8CFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003D3D3DFBFBFBFEFEFEFEFEFE8C8C8C000000000000E9E9E9FEFEFE
                1A1A1A0000000000000000000000000000000000000000000000004E4E4EFEFE
                FEFDFDFDFEFEFE0000000000000000000000003B3B3BFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFDFDFDE8E8E81A1A1A0000000303031C1C1C1C1C1C
                0B0B0B0000000000000000000000000000000000000000000000000000007D7D
                7DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFEFEFEFEFEFEFEFEFEFEFEFCFCFC7E7E7E00000000000000000000000000
                0000000000000000000000EBEBEBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFED0D0D01E1E1E0000000000001C1C1C1C1C1C0000000000000000
                00000000010101010101FEFEFEFEFEFEFDFDFD4E4E4E0000000000006F6F6F69
                6969000000000000000000000000020202999999EAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003E3E3EFBFBFBFEFEFEFEFE
                FE8B8B8B000000000000E9E9E9FDFDFDA3A3A300000000000000000000000000
                00004E4B488080800F0F0F4E4E4EFEFEFEFDFDFDFCFCFC000000000000000000
                0000003B3B3BFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFC969696F2F2F24040
                40000000000000A4A4A4FEFEFEFEFEFEC3C3C300000000000000000000000000
                0000000000000000000000020202D3D3D3FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFCFCFC
                D3D3D3000000000000000000000000000000000000000000010101EBEBEBFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE9B9B9BFAFAFA00000000000030303099
                9999FEFEFEFEFEFE9292921E1E1D000000000000000000000000FEFEFEFEFEFE
                FDFDFD4E4E4E000000020202FEFEFEFEFEFE0000000000000000000000001515
                15EDEBEAE8E8E80000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8C8C8C000000000000E9E9E9FDFDFD
                FEFEFE63615D0000000000000000000101010101019C9C9C0000004E4E4EFEFE
                FEFEFEFEFCFCFC0000000000000000000000003B3B3BFEFEFEFEFEFEFEFEFEFD
                FDFDBDBDBD000000000000F3F3F3404040000000333333FEFEFEFEFEFEFEFEFE
                FBFBFBE8E8E80000000000000000000000000000000000000D0D0DFCFCFCFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD0C0C0C00000000000000
                0000000000000000020202E0E0E0FEFEFEFEFEFEFEFEFEFEFEFE909090000000
                595959FCFCFC000000000000505050FEFEFEFEFEFEFEFEFEFEFEFE3C3C3C0000
                00000000000000000000FEFEFEFEFEFEFEFEFE4F4F4F00000000000000000000
                0000000000000000000000020202FEFEFEFEFEFEEAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFAFA
                FA8B8B8B000000020202E9E9E9FEFEFEFDFDFDD3D3D311111100000000000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFE000000000000000000
                000000191919D5D5D5FEFEFEFDFDFDDDDDDD1A1A1A000000010101F3F3F34040
                400000009E9E9EFEFEFEFEFEFEFEFEFEFEFEFEECECEC00000000000000000000
                0000000000020202C9C9C9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEC9C9C90202020000000000000000000000000000002F2F2FFEFE
                FEFEFEFEFDFDFD7A7A7A000000000000595959FCFCFC000000000000505050FE
                FEFEFEFEFEFEFEFEFEFEFE3C3C3C000000000000000000000000FEFEFEFEFEFE
                FDFDFD4F4F4F0000000000000000000000000000000000000000005A5A5AFEFE
                FEFEFEFEE9E9E90000000000008B8B8BFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFEFEFE8C8C8C000000000000E5E5E5969696
                000000FEFEFE2E2E2E0000000000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFCFCFC000000000000000000000000000000AAAAAAFEFEFEFBFBFBCC
                CCCC000000000000030303F3F3F3404040000000000000EEEEEEFEFEFEFEFEFE
                FEFEFEDBDBDB000000000000000000000000000000333333FEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECECDCD02020200
                00000000000000000000000000009E9E9EFEFEFEFCFCFC1D1D1D000000000000
                5A5A5AFCFCFC0000000000004B4B4BFAFAFAFEFEFEFEFEFEF9F9F93838380000
                00000000000000000000FEFEFEFEFEFEFCFCFC4F4F4F00000000000000000000
                0000000000000000191918797878050505A6A6A6E8E8E80000000000008D8D8D
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFCFC
                FC8B8B8B000000000000E9E9E9D1D1D18F8F8FFDFDFDFAFAFA55555500000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFE000000000000000000
                0000000000000000008E8E8EFEFEFEE9E9E92E2E2E000000000000F3F3F34040
                400000000000001A1A1AF2F2F2FCFCFCABABAB00000000000000000000000002
                02024B4B4BFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFCFCFC5A5A5A0000000000000000000000000000002E2E
                2EECECECFDFDFD9B9B9B0000000000005A5A5AFCFCFC00000000000001010159
                5959FEFEFEFEFEFE515151000000000000000000000000000000FEFEFEFEFEFE
                FCFCFC4E4E4E0000000000000000000000000000000000009B9B9B6363630000
                00949494E7E7E70000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8A8A8A000000000000E9E9E9FEFEFE
                FEFEFEFEFEFEFEFEFEA6A6A60202020000000000000000000303034E4E4EFEFE
                FEFDFDFDFEFEFE000000000000000000000000000000000000000000000000F1
                F1F1F8F8F8D1D1D10D0D0DF4F4F44C4C4C0D0D0DA3A3A3F4F4F4F0F0F0A5A5A5
                000000000000000000000000020202181818FEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFC15
                15150000000000000000000000000000000000005F5F5FF1F1F1F7F7F7FBFBFB
                616161FDFDFD1010100D0D0DFBFBFBF2F2F2F1F1F13434340000000000000000
                00000000000000000000FEFEFEFEFEFEFCFCFC4F4F4F00000000000000000000
                0000000000080808FEFEFEFEFEFEFEFEFEFEFEFEE6E6E60000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFDFD
                FD8C8C8C000000000000E9E9E9FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD24242400
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFE000000000000000000
                0000000000000000000000000000000000003B3B3B747474747474F7F7F79797
                977474747474741A1A1A0000000000000000000000000000000000004B4B4BFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE5A5A5A0202020000000000000000
                00000000010101000000353535747474A5A5A5FEFEFE74747473737359595906
                0606000000000000000000000000000000000000000000000000FEFEFEFEFEFE
                FCFCFC4F4F4F000000000000000000000000131313D3D3D3FEFEFEFEFEFEFEFE
                FEFCFCFCEAEAEA0000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003F3F3FFBFBFBFEFEFEFCFCFC8C8C8C000000000000E9E9E9FEFEFE
                FEFEFEFEFEFEF6F6F6FDFDFDFAFAFA0404040000000000000000004E4E4EFEFE
                FEFDFDFDFAFAFA00000000000000000000000000000000000000000000000000
                0000000000000000000000EFEFEF404040000000000000000000000000000000
                000000000000050505414141FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFCFCFCD3D3D3050505000000000000000000000000000000000000000000
                5A5A5AFEFEFE0000000000000000000000000000000000000000000000000000
                00000000000000000000FBFBFBFEFEFEFEFEFE4F4F4F00000006060600000000
                00002B2B2BFEFEFEFEFEFEFEFEFEFDFDFDFAFAFAE8E8E80000000000008B8B8B
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFEFE
                FE8C8C8C000000010101E9E9E9FEFEFEFEFEFEFDFDFD202020A9A9A9FEFEFE8D
                8D8C0000000000000000004E4E4EFEFEFEFDFDFDFCFCFC000000000000000000
                0000000000000000000000000000000000000000000000000000007373731F1F
                1F000000000000000000000000000000000000090909C9C9C9FEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC8C8C80A0A0A0000
                000000000000000000000000000000002B2B2B79797900000000000000000000
                0000000000000000000000000000000000000000000000000000989898FEFEFE
                FEFEFE4F4F4F000000A7A7A7707070000000FEFEFEFEFEFEFEFEFEFEFEFE6C6C
                6C474747E9E9E90000000000008C8C8CFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003F3F3FFBFBFBFEFEFEFEFEFE8C8C8C000000000000E9E9E9FEFEFE
                FEFEFEFEFEFEFEFEFEFDFDFDFCFCFC0000000000000000000000004E4E4EFEFE
                FEFEFEFEFBFBFB00000000000000000000000004040401010100000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                030303FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFAFAFA030303000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000009B9B9BFEFEFEFDFDFD4E4E4E00000000000000000000
                0000232323FEFEFEFEFEFEFEFEFE040404040404EAEAEA0000000000008D8D8D
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFEFE
                FE8C8C8C000000010101E9E9E9FEFEFEFEFEFEFEFEFEFEFEFEFDFDFD46464600
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFE000000000000000000
                000000FCFCFC4747470000000000000000000000000000000000000000000000
                00000000000000000000000000838383D7D7D7FEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED6D6
                D683838300000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000969696FEFEFE
                FEFEFE4F4F4F000000000000000000000000111111CFCFCFFEFEFEFEFEFEFEFE
                FEFCFCFCE9E9E90000000000008B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFAFAFA8A8A8A000000020202E9E9E9FEFEFE
                FEFEFEFEFEFEFEFEFEA1A1A10000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFBFBFB00000000000000000000000001010100000000000000000000
                00000000000000000000000000000000000000000000001C1C1CFDFDFDFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD1D1D1D000000000000
                000000000000000000000000000000000000000000000000000000000000C8C8
                C81010100000000000009B9B9BFEFEFEFBFBFB4F4F4F00000000000000000000
                00000000001F1F1FFEFEFEFEFEFEFEFEFEFEFEFEEAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFDFD
                FD8C8C8C000000000000E9E9E9C8C8C8393939FDFDFDFDFDFD50505000000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFCFCFC000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                007B7B7BCDCDCDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFDFDFDCBCBCB7B7B7B00000000000000000000000000000000
                00000000000000000000000000006A6A6A0808080000000000009B9B9BFEFEFE
                FDFDFD4F4F4F000000000000000000000000000000000000929292FEFEFEFEFE
                FEFDFDFDE9E9E90000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003F3F3FFBFBFBFEFEFEFCFCFC8C8C8C000000020202E9E9E9FEFEFE
                FBFBFBFDFDFD2424240000000000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFBFBFB00000000000000000000000000000000000000000000000000
                0000000000000000000000252525F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                F8F8F82626260000000000000000000000000000000000000000000000000000
                00000000000000000000969696FEFEFEFCFCFC4F4F4F00000000000000000000
                00000000000000001E1E1EFEFEFEFEFEFEFDFDFDEAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFDFD
                FD8B8B8B000000010101E9E9E9FEFEFEFEFEFECFCFCF11111100000000000000
                00002626267575751515154E4E4EFEFEFEFDFDFDFDFDFD000000000000000000
                0000000000000000000000000000004C4C4C767676E4E4E4FEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDE2E2E276767651
                4F4C0000000000000000000000000000000000000000000000009B9B9BFEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000000000005C5C5CFEFE
                FEFDFDFDE6E6E60000000202028B8B8BFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003F3F3FFBFBFBFEFEFEFEFEFE8C8C8C000000000000E9E9E9FEFEFE
                FEFEFE7B7B7B000000000000353535F3F3F32B2B2B0B0B0B0202024E4E4EFEFE
                FEFEFEFEFEFEFE0000000000000303032D2D2D676767F3F3F3F3F3F3F3F3F3FA
                FAFAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFAFAF3F3F3F3F3F3F2F2F26767672E2E
                2E000000000000000000969696FEFEFEFDFDFD4E4E4E0000000000009E9E9E00
                0000000000000000000000010101FEFEFEFCFCFCE6E6E60000000000008B8B8B
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFCFC
                FC8B8B8B000000000000E9E9E9FCFCFC979797000000000000000000DADADA00
                00000000000000000000004E4E4EFEFEFEFDFDFDFBFBFB000000010101FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000999999FEFEFE
                FEFEFE4F4F4F000000000000151413D3D2D0E9E9E97272720000000000001A1A
                1AFDFDFDE9E9E90000000000008B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFCFCFC8B8B8B000000020202E9E9E9FDFDFD
                1A1A1A000000000000000000DADADA0000000000000000000303034E4E4EFEFE
                FEFEFEFEFBFBFB000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FDF9F9F9000000000000969696FEFEFEFDFDFD4E4E4E0000000000000000000A
                0A0AE8E8E83737370000000000000202029B9B9BE6E6E60000000000008B8B8B
                FEFEFEFEFEFEFCFCFC000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFDFD
                FD8B8B8B000000000000E9E9E96A6A6A000000000000000000000000DADADA00
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFE000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFB000000000000989898FEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000000000000000000202
                02171717E6E6E60000000202028B8B8BFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE898989000000020202E9E9E9040404
                0404045B5B5BE9E9E9E8E8E8F9F9F90000000000000000000000004E4E4EFEFE
                FEFDFDFDFDFDFD000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FDFDFDFD0000000000009B9B9BFEFEFEFAFAFA4E4E4E00000000000000000000
                00000000000000000000000000000000000000001313130000000000008B8B8B
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFDFD
                FD8B8B8B0000000000000000000000000000003C3C3C23232300000000000000
                00004D4B482B29270000004E4E4EFEFEFEFEFEFEFEFEFE000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD0000000202029B9B9BFEFEFE
                FDFDFD4F4F4F0000000000000000000000000000000000000000000000000000
                000000000000000000000202028B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFCFCFC8B8B8B000000000000000000000000
                000000000000CACACA000000000000000000D2D1D0A4A4A30000004E4E4EFEFE
                FEFEFEFEFEFEFE000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFDFDFD000000000000979797FEFEFEFBFBFB4F4F4F00000000000000000094
                9494C5C5C50000000000000000000000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFCFC
                FC8C8C8C00000000000000000000000000000054545490909000000000000000
                00000000000000000202024E4E4EFEFEFEFEFEFEFDFDFD000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000009B9B9BFEFEFE
                FBFBFB4F4F4F000000000000060606B2B2B2EFEFEF3939390000000000000000
                000000000000000000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8C8C8C000000000000000000000000
                C8C8C81A1A1A0303030000000000000000000000000000000000004E4E4EFEFE
                FEFDFDFDFCFCFC000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFBFBFB000000030303979797FEFEFEFBFBFB4F4F4F00000000000000000014
                14141B1B1B0000000000000000000000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8B8B8B00000000000000000000000000000000000000000000000000000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFE010101010101FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000010101969696FEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000005656561818180000
                005D5D5D0000000000000000008C8C8CFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003F3F3FFBFBFBFEFEFEFEFEFE8C8C8C000000000000000000000000
                000000000000000000000000BBBBBB8D8D8D0000000000000303034E4E4EFEFE
                FEFDFDFDFDFDFD000000030303FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FDFBFBFB000000000000969696FEFEFEFEFEFE4F4F4F00000000000000000000
                0000000000000000A7A7A60909090000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFDFD
                FD8C8C8C000000000000E6E6E6000000000000000000000000000000DADADADE
                DEDE1A1A1A0000000000004E4E4EFEFEFEFDFDFDFDFDFD000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000989898FEFEFE
                FBFBFB4F4F4F00000000000000000000000000000032302E0000000000000000
                000000000B0B0B0000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFCFCFC8C8C8C000000000000E6E6E67E7E7E
                0000000000000000000000002222221A1A1A0000000000000000004E4E4EFEFE
                FEFDFDFDFDFDFD000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFBFBFB000000000000979797FEFEFEFEFEFE4F4F4F000000000000212121D5
                D5D55353539B9B9A000000000000000000000000CACACA0000000000008B8B8B
                FEFEFEFEFEFEFCFCFC000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFDFD
                FD8B8B8B000000010101E9E9E9B8B8B808080800000000000000000000000000
                00000000000000000000004F4F4FFEFEFEFDFDFDFDFDFD000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFCFCFCFC0000000000009B9B9BFEFEFE
                FCFCFC4F4F4F0000000303032828285B5B5B171717A8A8A80000000000000000
                00939393EAEAEA0000000101018B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                0000000000383838FBFBFBFEFEFEFEFEFE8B8B8B000000000000E9E9E9FCFCFC
                B8B6B5000000000000000000000000000000000000000000000000515151FEFE
                FEFDFDFDFDFDFD000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FDFDFDFD000000000000979797FEFEFEFEFEFE4F4F4F00000001010128282859
                5959000000000000000000000000151515ECECECEAEAEA0000000101018D8D8D
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003E3E3EFBFBFBFEFEFEFAFA
                FA8A8A8A000000000000E9E9E9FDFDFDFDFDFD30303000000000000000000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFDFDFD000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFDFDFD000000000000969696FEFEFE
                FEFEFE4F4F4F0C0C0C4B4B4B3535353D3D3D000000000000000000010101C1BD
                B9FEFEFEEAEAEA0000000303038B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003D3D3DFBFBFBFEFEFEFCFCFC8C8C8C000000000000E9E9E9FEFEFE
                FDFDFD2929290303030000000000000000000000000000000000004E4E4EFEFE
                FEFDFDFDFCFCFC000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FDFCFCFC000000000000969696FEFEFEFCFCFC4F4F4F0707072F2F2F10101000
                00000000000000000000007A7A7AEAEAEA323232EAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8B8B8B000000010101E9E9E9FBFBFBA8A49F6363635D5C5900000000000000
                00000000000000000101014F4F4FFEFEFEFDFDFDFDFDFD000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFBFBFB0101010101019A9A9AFEFEFE
                FDFDFD4E4E4E000000000000000000000000000000000000090909B7B7B74343
                430000004545450000000000008B8B8BFEFEFEFEFEFEFAFAFA000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFEFEFE8C8C8C000000000000E6E6E6ACACAC
                060606CECBC7FAF9F70000000000000000000000000000000101014F4F4FFEFE
                FEFDFDFDFEFEFE000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FDFDFDFD000000000000969696FEFEFEFEFEFE4F4F4F00000000000000000000
                00000000000000008A8580FEFEFEF9F9F9C7C7C7EAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFDFD
                FD8C8C8C000000010101E9E9E9FDFDFD595959ECE8E3FDFDFDA4A4A401010100
                00000000002F2F2F0000004E4E4EFEFEFEFDFDFDFDFDFD000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFDFDFD0000000000009B9B9BFEFEFE
                FCFCFC4E4E4E0000000000000000000000000000002C2C2CFEFEFEFEFEFEFEFE
                FEFCFCFCEAEAEA0000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003D3D3DFBFBFBFEFEFEFEFEFE8C8C8C000000000000E9E9E9FEFEFE
                FEFEFEFAF9F8FDFDFDE9E9E91C1C1C0000009E9E9ED7D7D71919194E4E4EFEFE
                FEFEFEFEFEFEFE000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFCFCFC0000000000009B9B9BFEFEFEFCFCFC4F4F4F00000000000000000000
                0000000000A0A0A0FEFEFEFEFEFEFEFEFEFEFEFEEAEAEA0000000303038B8B8B
                FEFEFEFEFEFEFCFCFC000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFCFC
                FC8B8B8B000000010101E8E8E8E2E2E2BDBDBDFDFDFDFEFEFEFDFDFDFCFCFC00
                00000000003D3D3D0000004E4E4EFEFEFEFEFEFEFCFCFC000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD0000000000009B9B9BFEFEFE
                FAFAFA4E4E4E000000000000000000020202424242FEFEFEFEFEFED6D6D6BEBE
                BEE3E3E3E7E7E70000000000008B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEF9F9F98B8B8B000000010101E8E8E8959595
                000000898989FEFEFEFEFEFEFCFCFC7A7A7A000000000000000000505050FEFE
                FEFEFEFEFEFEFE000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFBFBFB000000000000979797FEFEFEFDFDFD4F4F4F00000000000000000000
                0000E5E5E5FEFEFEFDFDFD636363010101959595E6E6E60000000000008B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFBFB
                FB8C8C8C000000000000E9E9E9AEAEAE3D3D3DDBDBDAFEFEFEFEFEFEFDFDFD00
                00000000000000000000004F4F4FFEFEFEFEFEFEFCFCFC000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000979797FEFEFE
                FBFBFB4E4E4E000000000000010101010101808080FEFEFEFEFEFE8989893D3D
                3DAEAEAEE7E7E70000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                0000000000383838FBFBFBFEFEFEFEFEFE8B8B8B000000000000E9E9E9FEFEFE
                FEFEFEFEFEFEFEFEFEFCFCFC5F5F5F0000000000000000000000004F4F4FFEFE
                FEFEFEFEFEFEFE000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFDFDFD0000000000009B9B9BFEFEFEFEFEFE4F4F4F00000000000000000001
                01010A0A0ABABABAFEFEFEFEFEFEFEFEFEFDFDFDEAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003E3E3EFBFBFBFEFEFEFEFE
                FE8A8A8A000000000000E9E9E9FEFEFEFEFEFEFEFEFEFDFDFDAAAAAA04040400
                00000000000000000000004E4E4EFEFEFEFEFEFEFCFCFC000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFDFDFD0000000000009B9B9BFEFEFE
                FEFEFE4F4F4F0000000000000000000000000000007D7D7DFEFEFEFEFEFEFEFE
                FEFEFEFEEAEAEA0000000000008B8B8BFEFEFEFEFEFEFBFBFB000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFDFDFD8C8C8C000000000000E9E9E9FEFEFE
                FEFEFEFDFDFDFDFDFD2F2F2F0000000000000000000000000000004E4E4EFEFE
                FEFDFDFDFDFDFD000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FDFDFDFD0000000000009B9B9BFEFEFEFEFEFE4F4F4F00000000000000000000
                0000000000000000C0BCB8FEFEFEFEFEFEFDFDFDEAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFBFBFB000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E9E9E9FEFEFEFEFEFEFCFCFCD0D0D000000000000000
                00002323232222220000004E4E4EFEFEFEFEFEFEFEFEFE000000010101FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFDFDFD0000000101019A9A9AFEFEFE
                FCFCFC4F4F4F000000010101000000000000000000000000181818EAEAEAFDFD
                FDE0E0E0C1C1C10000000000008D8D8DFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFAFAFA8B8B8B000000010101E9E9E9FEFEFE
                FEFEFED1D1D1121212000000000000020202C9C9C9E4E4E42020204E4E4EFEFE
                FEFEFEFEFEFEFE000000010101FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFE000000010101999999FEFEFEFDFDFD4E4E4E010101020202373737B0
                B0B04444440000000000009A9A9AFAFAFA6969690909090000000000008B8B8B
                FEFEFEFEFEFEFBFBFB000000C8D0D40000000000003F3F3FFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E9E9E9FEFEFEFDFDFD7D7D7D00000000000000000000
                0000AEAEAEC5C4C31F1F1F4E4E4EFEFEFEFEFEFEFCFCFC000000020202FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFB000000000000969696FEFEFE
                FEFEFE4F4F4F000000000000918C88F3F3F26E6A65000000000000000000EEED
                ECFEFEFEE8E8E80000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003F3F3FFBFBFBFEFEFEFEFEFE8C8C8C000000000000E9E9E9FDFDFD
                FDFDFD0000000000000000000000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFEFEFE000000020202FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FDFCFCFC000000000000999999FEFEFEFEFEFE4F4F4F0000000000000A0A0A44
                4343000000000000000000000000474543FDFDFDE9E9E90000000000008D8D8D
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E9E9E9F0F0F016161600000000000000000000000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFCFCFC000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFCFCFCFC000000000000969696FEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000000000000000000000
                00949494EAEAEA0000000303038B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003D3D3DFBFBFBFEFEFEFDFDFD8C8C8C000000000000E9E9E99F9F9F
                0202020000001313136F6F6F030303000000000000000000000000505050FEFE
                FEFEFEFEFBFBFB010101010101FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFCFCFC000000000000969696FEFEFEFEFEFE4F4F4F00000000000000000000
                0000000000000000000000000000000000333333E9E9E90000000000008B8B8B
                FEFEFEFEFEFEFBFBFB000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E8E8E800000000000000000000000089898900000000
                00000000000000000303034E4E4EFEFEFEFEFEFEFCFCFC000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD000000000000969696FEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000000000000000000000
                00000000C6C6C60000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8B8B8B000000000000545454000000
                0000000000000000000000000000000000000000000000000000004E4E4EFEFE
                FEFDFDFDFBFBFB000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FDFCFCFC000000000000969696FEFEFEFEFEFE4F4F4F00000000000000000000
                00000000000000000000000000000000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFCFC
                FC8C8C8C00000000000000000000000000000000000000000000000000000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFE010101010101FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000030303979797FEFEFE
                FEFEFE4F4F4F0000000000000000001414144F4F4FDDDDDDC8C8C81E1E1E0000
                000000000000000000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8C8C8C000000000000000000000000
                0000000000000000000000008686861A1A1A73706C5857560101014F4F4FFEFE
                FEFEFEFEFCFCFC000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFDFDFD000000000000989898FEFEFEFBFBFB4F4F4F00000000000019191978
                78780303036868682323233A3A3A0000000000000000000000000000008C8C8C
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003F3F3FFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000000000000000000000000000DCDCDC4E4E4E1E1E1E10
                10101A1A1A7979792E2E2E4E4E4EFEFEFEFDFDFDFEFEFE000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0000000000009A9A9AFEFEFE
                FEFEFE4F4F4F0000000000002222220B0B0BCECDCC1414141919195454540000
                000000000000000000000404048B8B8BFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFDFDFD8C8C8C000000000000000000000000
                000000000000DDDDDD5D5D5D2424243E3E3EC7C7C72E2E2E1A1A1A4E4E4EFEFE
                FEFDFDFDFEFEFE000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFCFCFC000000000000999999FEFEFEFAFAFA4F4F4F00000000000013131307
                0707B8B6B495928F0D0D0D2929290000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFCFCFC000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000000000000000000000000000CCCCCC111111C6C6C60F
                0F0FC7C7C75353532D2D2D4E4E4EFEFEFEFEFEFEFEFEFE000000000000FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000969696FEFEFE
                FEFEFE4F4F4F0000000000002525255F5F5F202020E5E5E520201F5555540000
                000000000000000000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003D3D3DFBFBFBFEFEFEFDFDFD8B8B8B000000000000838383000000
                0000000000000000007979791414144A4A4A2727278383831313134E4E4EFEFE
                FEFDFDFDFEFEFE000000010101FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFE000000000000989898FEFEFEFCFCFC4F4F4F00000000000000000045
                45459292928F8F8F4C4C4C2B2B2B0000000000000000000000000000008C8C8C
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFAFA
                FA8A8A8A000000020202E9E9E93F3F3F0000000000000000000101017D7873EA
                EAEA2626260000000000004E4E4EFEFEFEFDFDFDFEFEFE010101010101FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFDFDFD0000000000009B9B9BFEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000000000000000000000
                00000000EAEAEA0000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFBFBFB8C8C8C000000010101E9E9E9CFCFCF
                0E0E0E0000000000000000000000000000000000000000000000004E4E4EFEFE
                FEFDFDFDFEFEFE010101010101FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                FDFDFDFD000000000000999999FEFEFEFEFEFE4F4F4F00000000000000000000
                0000000000000000000000000000000000515151EAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFCFCFC000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000020202E9E9E9FDFDFD25252500000000000000000000000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFCFCFC000000000000F2F2F2
                F2F2F2F2F2F2FBFBFBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFBFBFBF2F2F2F2F2F2F2F2F20000000000009B9B9BFEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000000000000000001515
                15DFDFDFE8E8E80000000000008B8B8BFEFEFEFEFEFEFAFAFA000000C8D0D400
                0000000000393939FBFBFBFEFEFEFEFEFE8A8A8A000000000000E9E9E9FDFDFD
                FDFDFD0B0B0B0000000000000000000000000000000000000000004E4E4EFEFE
                FEFDFDFDFAFAFA000000000000000000000000000000555555767676767676AC
                ACACFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEACACAC7676767575755656560000000000
                00000000000000000000969696FEFEFEFDFDFD4F4F4F00000000000000000000
                0000000000000000000000000000949494FEFEFEEAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFCFC
                FC8C8C8C000000000000E9E9E9FEFEFEF9F9F99E9E9E010101000000030303CD
                CDCD4949490000000000004E4E4EFEFEFEFEFEFEFBFBFB000000000000000000
                0000000000000000000000000000000000000000002E2E2EF7F7F7F8F8F8FEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF8F8F8F6F6F62B2B2B00000000
                00000000000000000000000000000000000000000000000303039B9B9BFEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000000000000A0A0A1D1D
                1D959595EAEAEA0000000000008B8B8BFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFBFBFB8A8A8A000000000000E9E9E9C7C7C7
                1A1A1AACACAC1F1F1F000000010101A7A7A78E8E8E0000000000004E4E4EFEFE
                FEFDFDFDFDFDFD00000000000000000000000000000000000000000000000000
                00000000000000000000000F0F0F737372E9E9E9FEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDEAE9E8
                737372100F0F0000000000000000000000000000000000000000000000000000
                00000000000000000000999999FEFEFEFBFBFB4F4F4F0101010101018484842E
                2E2E000000000000121212CCCCCC848484C9C9C9EAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFAFA
                FA8C8C8C000000000000E5E5E5959595000000636363FCFCFC01010100000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFE000000000000000000
                000000030303B7B7B7C8C8C80000000000000000000000000000000000000000
                000000009D9D9DFCFCFCFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFCFCFC9B9B9B00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000969696FEFEFE
                FCFCFC4F4F4F0000000000005C5C5C575757000000000000202020FEFEFEFEFE
                FEFDFDFDE6E6E60000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFEFEFE8B8B8B000000000000E9E9E9E4E4E4
                868686FEFEFEFCFCFC7373730000000000000000000000000000004E4E4EFEFE
                FEFDFDFDFDFDFD00000000000000000000000000000059595964646400000000
                00000000000000000000000000000000000000000000000E0E0E7F7F7FFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFC7D7D7D0E0E0E000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000020202CACACAFEFEFEFDFDFD4F4F4F00000000000000000000
                0000000000000000FEFEFEFEFEFEFEFEFEFEFEFEE8E8E80000000202028C8C8C
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFAFA
                FA8A8A8A000000000000E9E9E9FEFEFEFEFEFEFEFEFEFEFEFEFCFCFC24242400
                00000000000000000000004E4E4EFEFEFEFDFDFDFDFDFD000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000030303959595FEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE9696
                9603030300000000000000000000000000000000000000000000000000000000
                0000000000000000454545FBFBFB000000000000000000000000FEFEFEFEFEFE
                FEFEFE4F4F4F0000000000000000000000000000009E9E9EFEFEFEFEFEFEFEFE
                FEFEFEFEEAEAEA0000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFCFCFC8B8B8B000000000000E9E9E9FEFEFE
                FEFEFEFEFEFEFEFEFEFDFDFD8B8B8B0000000000000000000000004F4F4FFEFE
                FEFDFDFDFBFBFB00000000000000000000000000000000000000000000000000
                00000000000000000101017373731F1F1F000000000000000000000000000000
                0000008D8D8DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFE8C8C8C000000000000000000000000000000010101
                2B2B2B787878000000000000000000000000000000000000A5A5A5C4C4C41919
                19000000000000000000FEFEFEFEFEFEFEFEFE4F4F4F00000000000000000000
                0000232323BBBBBB848484CECECEFEFEFEFCFCFCE8E8E80000000000008B8B8B
                FEFEFEFEFEFEF9F9F9000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000020202E9E9E9FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFAFAFA79
                79790000000000000000004E4E4EFEFEFEFDFDFDFDFDFD000000000000000000
                000000000000000000000000000000000000000000000000000000EFEFEF4040
                40000000000000000000000000000000000000010101707070FEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFCFEFEFE7171710101010000
                000000000000000000000000000303035A5A5AFEFEFE00000000000000000000
                0000000000000000020202040404000000000000000000030303FEFEFEFEFEFE
                FEFEFE4F4F4F000000000000000000000000F5F5F55F5F5F0000009A9A9AFEFE
                FEFEFEFEE8E8E80000000000008B8B8BFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFEFEFE8C8C8C000000000000E9E9E9FEFEFE
                FEFEFE9A9A9A020202FEFEFEFCFCFC5858580000003B3B3B0202024E4E4EFEFE
                FEFEFEFEFCFCFC00000000000000000000000000000000000000000000000000
                0000000000000000000000F0F0F0404040000000000000000000000000000000
                000000000000000000070707C9C9C9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFD
                FDFDC7C7C7080808000000000000000000000000000000000000000000000000
                5A5A5AFDFDFD0000000000000000000000000000000000000000000000000000
                00000000000000000000FEFEFEFEFEFEFCFCFC4F4F4F00000000000001010101
                0101989898B3B3B3757575C8C8C8FEFEFEFEFEFEE9E9E90000000202028B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8A8A8A000000000000E9E9E9FEFEFEFEFEFEF9F9F9F1F1F1FEFEFE55555500
                0000C1BCB5E0E0E01E1E1E4E4E4EFEFEFEFDFDFDFDFDFD000000000000000000
                000000000000000000000000000000000000000000000000000000F3F3F34040
                40000000000000000000000000000000000000000000000000000000070707FA
                FAFAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFC0707070000000000000000000000
                000000000000000000000000000303035A5A5AFEFEFE00000000000000000000
                0000000000000000000000000000000000000000000000000000FEFEFEFEFEFE
                FEFEFE4F4F4F000000000000000000000000232323FEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEEAEAEA0000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFEFEFE8B8B8B000000000000E9E9E9FEFEFE
                FEFEFEFEFEFEFEFEFED5D5D51414140000000000000000000000004E4E4EFEFE
                FEFEFEFEFEFEFE0000000000000000000000000000000000000000004F4F4F70
                7070707070707070727272F5F5F59494947070706F6F6F646464000000000000
                000000000000000000000000000000060606C4C4C4FEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC9C9C905
                0505000000000000000000000000010101000000707070707070707070707070
                A2A2A2FDFDFD7070707070707070701616160000000000000000000000000000
                00000000010101010101FEFEFEFEFEFEFEFEFE4F4F4F00000000000000000000
                0000000000595959FEFEFEFEFEFEFEFEFEFDFDFDE8E8E80000000000008C8C8C
                FEFEFEFEFEFEFEFEFE000000C8D0D4000000000000373737FBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E9E9E9FEFEFEFEFEFEFCFCFCFEFEFE98989800000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFE000000000000000000
                000000000000000000EDEDEDF9F9F9C8C3BD111111121212121212FCFCFC6666
                66636363FEFEFEFCFCFCEBEBEB00000000000000000000000000000000000000
                0000090909FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFDFDFDFCFCFC0909090000000000000000000000000000004C4C
                4CE8E8E8FDFDFD606060111111111111656565FEFEFE252525DFDFDFFEFEFEEE
                EEEECBCBCB1A1A1A000000000000000000000000000000000000FEFEFEFEFEFE
                FCFCFC4F4F4F000000000000000000000000000000000000FEFEFEFCFCFC5E5E
                5EFDFDFDEAEAEA0000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8C8C8C000000000000E7E7E73E3E3D
                090909FEFEFE9E9E9E0000000000000000000000000000000000004F4F4FFEFE
                FEFDFDFDFDFDFD000000000000000000000000191919D5D5D5FCFCFC97979700
                0000000000000000000000FBFBFB5B5B5B0000000000009F9F9FFEFEFEF1F1F1
                6B6B6B000000000000000000000000000000000000020202C8C8C8FEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECECEC16161600000000
                0000000000000000000000636363FDFDFDFEFEFE414141000000000000000000
                5A5A5AFBFBFB0000000000002E2E2EE9E9E9FCFCFCF9F9F94E4E4E0000000000
                00000000010101010101FEFEFEFEFEFEFDFDFD4F4F4F00000000000000000000
                00000000000000001E1E1EFDFDFD747474747474E8E8E80000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E9E9E9000000000000FEFEFE1F1F1F00000000000000
                00000000009C9C9C000000515151FEFEFEFDFDFDFCFCFC000000000000000000
                000000EDEDEDFEFEFEFEFEFEFEFEFEBBBBBB000000000000030303FBFBFB5B5B
                5B0000000000001C1C1CFEFEFEFEFEFEFEFEFE6D6D6D00000000000000000000
                00000000000404047F7F7FFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFE868686000000000000000000000000000000000000EBEBEBFEFE
                FEFEFEFEF3F3F31A1A1A0000000303035A5A5AFBFBFB000000000000000000AF
                AEABFEFEFEFEFEFEF3F3F3363636000000000000000000000000FEFEFEFEFEFE
                FEFEFE4F4F4F000000000000000000000000000000000000030303A2A2A2E5E5
                E50303033030300000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFDFDFD8B8B8B000000000000E9E9E9FEFEFE
                FCFCFC7F7F7F000000000000020202020202D4D4D4F8F7F62D2C2C4E4E4EFEFE
                FEFEFEFEFEFEFE000000000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEF7
                F7F7484848000000000000FEFEFE5B5B5B0000000000001C1C1CFEFEFEFEFEFE
                FEFEFEEFEFEF222222000000000000000000000000000000000000979797FEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE95959500000000000000000000
                00000000000000006E6E6EFEFEFEFEFEFEFEFEFEFDFDFDFDFDFD000000000000
                5A5A5AFCFCFC000000000000000000B9B8B6FEFEFEFEFEFEFCFCFCC5C5C50000
                00000000000000000000FEFEFEFEFEFEFCFCFC4F4F4F00000000000000000000
                00000000000000000202020D0D0DEDEDED7C7C7CEAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8B8B8B000000000000E9E9E9FEFEFEFCFCFC09090900000000000000000000
                00001616168F8E8E0404044E4E4EFEFEFEFDFDFDFEFEFE000000000000000000
                000000FEFEFEFEFEFEFEFEFEFEFEFEFCFCFC515151000000000000FDFDFD5959
                59010101020202E6E6E6FEFEFEFEFEFEFEFEFEFBFBFB6C6C6C00000000000000
                0000000000000000000000040404979797FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                9696960000000000000000000000000000000000000000006E6E6EFEFEFEFEFE
                FEFEFEFEFCFCFCFEFEFE0000000303035A5A5AFCFCFC000000000000484848F9
                F9F9FEFEFEFEFEFEFDFDFDFEFEFE000000000000000000000000FEFEFEFEFEFE
                FBFBFB4F4F4F0000000000000000000000000000000000000000000000003131
                31FEFEFEEAEAEA0000000404048B8B8BFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFCFCFC8C8C8C000000000000E9E9E9FDFDFD
                1A1A1A0000000000000000000000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFAFAFA000000000000000000000000B3B3B3FEFEFEFEFEFEFEFEFEEB
                EBEB323232000000000000FEFEFE5A5A5A616161C3C3C3FEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFE6E6E6E0000000000000000000000000000000000000000004B4B
                4BFBFBFBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEF9F9F94B4B4B00000000000000000000000000
                0000000000000000333333F4F4F4FEFEFEFEFEFEFDFDFDA8A8A8000000000000
                5B5B5BF9F9F91F1F1F606060FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFCFCFC0000
                00000000000000000000FEFEFEFEFEFEFCFCFC4F4F4F0000000000007A7A7A98
                98980000000000000000000000000F0F0FD6D6D6EAEAEA0000000202028B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E7E7E7A3A3A303030300000000000000000000000000
                00000000000000000000004E4E4EFEFEFEFDFDFDFDFDFD000000000000000000
                000000070707C0C0C0FEFEFEE1E1E11A1A1A000000010101010101FEFEFEE9E9
                E9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE6F6F6F00000000000000
                0000000000000000000000000000000000F7F7F7FEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF8F8F8
                0000000000000000000000000000000000000000000000000202021D1D1DFEFE
                FEFCFCFCA5A5A50404040000000000005A5A5AFEFEFEE9E9E9FEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFE000000000000000000000000FEFEFEFEFEFE
                FEFEFE4F4F4F0000000000005B5B5BD3D3D20000000000000000000000000404
                042B2B2BEAEAEA0000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8C8C8C000000010101E8E8E81F1F1F
                0000000000000000000000000000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFEFEFE00000000000000000000000000000000000000000000000000
                00003F3F3F787878FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFDFDFD6565650000000000000000000000000000000000000000000101
                01000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFE00000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000005C5C5C929292
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD0000
                00000000000000000000FEFEFEFEFEFEFDFDFD4F4F4F00000000000000000000
                00000000000000000000000000000000000000009292920000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFCFC
                FC8C8C8C00000000000021212100000000000000000000000000000000000000
                00000000009292920000004E4E4EFEFEFEFEFEFEFEFEFE000000000000000000
                000000000000000000000000030303D9D9D9F2F2F2FEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFCEEEEEE0C0C0C00000000000000
                00000000000000000000000000000000000000008B8B8BFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFBFBFB888888000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000565656D9D9D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFDFDFD767676000000000000000000000000FEFEFEFEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000000000000000000000
                000000000000000000000000008B8B8BFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFDFDFD8C8C8C000000000000000000000000
                0000000000004C4C4C3737370000000A0A0A9898980000000000004E4E4EFEFE
                FEFEFEFEFCFCFC0000000000000000000000000000000000007C7C7CFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FDFDFD7676760000000000000000000000000000000000000000000000000000
                000000002A2A2AF7F7F7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFEFEFEFEFEFEF9F9F94D4D4D00000000000000000000000000000000000000
                0000000000000000000000000000252525888888FEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE5E5E52626260000
                00000000000000000000FEFEFEFEFEFEFEFEFE4F4F4F00000000000000000000
                00000000000000000000000000000000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000000000000000000000000000DEDEDEA1A1A10000004D
                4D4D2929290000000000004E4E4EFEFEFEFDFDFDFDFDFD000000000000000000
                000000000000999999FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFB82828200000000000000000000000000
                0000000000000000000000000000000000000000000000F2F2F2FEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDF0F0F0000000000000
                000000000000000000000000000000000000000000000000000000000000E6E6
                E6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFBFBFB1E1E1E000000000000000000000000000000FEFEFEFEFEFE
                FBFBFB4F4F4F000000000000000000000000000000000000BABABA0000000000
                000000000000000000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8C8C8C000000000000000000000000
                000000000000DFDFDF0000000000009393930D0D0D0000000000004E4E4EFEFE
                FEFEFEFEFDFDFD000000000000000000000000252525E3E3E3FEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECACACA272727
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFCFCFC29292900000000000000000000000000000000000000000000
                00000000000000000000004D4D4DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEAAAAAA2525250000000000000000
                00000000000000010101FEFEFEFEFEFEFCFCFC4F4F4F00000000000000000000
                0000000000A0A0A0FEFEFE6363630000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFBFB
                FB8C8C8C0000000000000000000000000000000000002929290000000000004C
                4C4C6363630000000000004E4E4EFEFEFEFDFDFDFAFAFA000000000000000000
                0000003D3D3DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFE2F2F2F13131300000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFB000000000000000000
                000000000000000000000000000000000000000000000000000000EBEBEBFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEBDBDBD2E
                2E2E000000000000000000000000000000000000000000010101FEFEFEFEFEFE
                FDFDFD4F4F4F0000000000000000000000000000001D1D1D2F2F2F1212120000
                000000000000000000000000008B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003E3E3EFBFBFBFEFEFEFDFDFD8C8C8C000000000000000000000000
                0000000000000000000000000000000202029393933434340000004F4F4FFEFE
                FEFDFDFDFEFEFE0000000000000000000202023B3B3BFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFBFBFBC3C3C31C1C1C0000000808084D4D4D4E4E4E
                2020200000000000000000000000000000000000000000000000000000000000
                00000000000000000000ACA9A7FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFDFDFDACAAA800000000000000000000000000000000000000000000000000
                0000000000000000010101EBEBEBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFCFCFCAFAFAF1E1E1E0000000000004E4E4E4E4E4E0000000000000000
                00000000000000000000FEFEFEFEFEFEFEFEFE4F4F4F00000000000000000000
                00000000000000000000000000000000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFAFA
                FA8C8C8C000000000000B6B6B600000000000000000000000000000000000000
                0000AAAAAA3C3C3C0000004F4F4FFEFEFEFEFEFEFCFCFC000000000000000000
                0000003B3B3BFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFCFCFC767676F1F1F14040
                40000000000000D0D0D0FDFDFDFEFEFEDEDEDE00000000000000000000000000
                0000000000000000000000000000000000000000000000000000707070FEFEFE
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE707070000000000000000000
                000000000000000000000000000000000000000000000000020202EBEBEBFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFC7B7B7BFCFCFC000000000000404040CA
                CACAFEFEFEFCFCFCABABAB151515000000000000000000000000FEFEFEFEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000000000000000000000
                000000000000000000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFDFDFD8B8B8B000000000000E8E8E82A2A2A
                000000000000000000000000000000A7A7A71D1D1D0000000000004E4E4EFEFE
                FEFEFEFEFBFBFB0000000000000000000303033B3B3BFEFEFEFEFEFEFEFEFEFE
                FEFECBCBCB010101010101F0F0F0404040010101535353FEFEFEFEFEFEFEFEFE
                FDFDFDE9E9E9000000000000000000000000000000000000000000030303ACAC
                AC0707070000000000001F1F1FF2F2F2FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEF8F7F744434200000000000000000000000000000000000000000000000000
                0000000000000000010101C8C8C8FEFEFEFEFEFEFEFEFEFBFBFB6F6F6F000000
                595959FCFCFC000000000000525252FEFEFEFEFEFEFEFEFEFDFDFD3B3B3B0000
                00000000000000000000FEFEFEFEFEFEFEFEFE4F4F4F00000000000000000000
                00000000000000000000000000000000000000006E6E6E0000000000008B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFAFA
                FA8B8B8B000000020202E4E4E495959500000000000000000000000002020225
                2525A6A6A60000000000004E4E4EFEFEFEFDFDFDFAFAFA000000000000000000
                010101131313CECECEFEFEFEFCFCFCD7D7D7121212000000000000F3F3F34040
                400000009E9E9EFEFEFEFEFEFEFEFEFEFEFEFEECECEC00000000000000000000
                0000000000000000000000000000393939020202000000000000020202EDEDED
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEEEEE000000000000000000000000
                000000000000000000000000000000000000000000000000000000191919FEFE
                FEFEFEFEFCFCFC4F4F4F0000000000005B5B5BFDFDFD000000000000505050FE
                FEFEFEFEFEFEFEFEFCFCFC3A3A3A000000000000000000000000FEFEFEFEFEFE
                FDFDFD4E4E4E0000000000000000000000000000000000000000000000000303
                03747474EAEAEA0000000000008B8B8BFEFEFEFEFEFEFAFAFA000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFDFDFD8B8B8B000000010101E9E9E9FDFDFD
                5453510000000000000000000000000000000101019797971818184E4E4EFEFE
                FEFEFEFEFDFDFD000000000000000000000000000000868686FEFEFEFBFBFBCC
                CCCC000000000000030303F2F2F2404040000000010101C1C1C1FEFEFEFEFEFE
                FDFDFDABABAB0000000000000000000000000000000000000000000000000000
                00000000000000000000010101EDEDEDFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEEEEEEE00000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000D6D6D6FEFEFEFCFCFC1D1D1D000000000000
                5A5A5AFCFCFC0000000000003A3A3AF1F1F1FEFEFEFDFDFDEBEBEB2C2C2C0000
                00000000000000000000FEFEFEFEFEFEFCFCFC4F4F4F00000000000000000000
                0000000000000000000000000000070707AFAFAFE8E8E80000000000008B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFAFA
                FA8C8C8C000000000000E9E9E9FEFEFEFAF8F700000000000000000000000001
                0101010101A9A9A90101014E4E4EFEFEFEFDFDFDFDFDFD000000000000000000
                000000000000010101666666FDFDFDF2F2F23E3E3E000000010101EFEFEF4040
                40000000000000181818F0F0F0FEFEFE8D8D8D00000000000000000000000000
                0000000000000000000000000000000000000000000000000000020202EDEDED
                FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEEEEE000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000001919
                19ECECECFDFDFDC8C8C80000000000005A5A5AFCFCFC00000000000000000031
                3131FEFEFEFDFDFD454545000000000000000000000000000000FEFEFEFEFEFE
                FEFEFE4F4F4F0000000000000000000000000000000000000000000202021919
                19FCFCFCEAEAEA0000000000008D8D8DFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFBFBFB8C8C8C000000020202E9E9E9FEFEFE
                FEFEFE9F9F9F0202020000000000000101012C2C2C3939390000004E4E4EFEFE
                FEFEFEFEFCFCFC0000000000003F3F3F1111110000000000000000004A4A4ABF
                BFBFEAEAEA8B8B8B404040F3F3F37070704040405D5D5DDADADABFBFBF858585
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000020202101010FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FED4D4D400000000000000000000000083838300000000000000000000000000
                00000000000000000000000000000000000000005A5A5ABFBFBFE6E6E5555555
                838383FDFDFD4040404040407A7A7AE3E3E3BEBEBE2929290000000000000101
                01303030000000010101FEFEFEFEFEFEFDFDFD4F4F4F00000000000000000000
                0000000000000000000000282828FEFEFEFEFEFEE7E7E70000000000008B8B8B
                FEFEFEFEFEFEFDFDFD000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFDFD
                FD8B8B8B000000000000E9E9E9FEFEFEFEFEFEE9E9E919191900000000000001
                01012D2D2D0000000000004E4E4EFEFEFEFDFDFDFBFBFB010101010101FEFEFE
                4242420000000000000000000000000000002D2D2D424242424242F6F6F67171
                714141414141411C1C1C00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000040404
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFC393939000000000000000000000000
                2222220000000000000000000000000000000000000000000000000000000000
                000000000000000000003B3B3A414141848484FCFCFC41414141414140404026
                26260000000000000000000000001E1D1CD7D6D5000000010101FEFEFEFEFEFE
                FDFDFD4F4F4F0000000000000000000000000000000000000303039A9A9AFEFE
                FEFDFDFDEAEAEA0000000000008C8C8CFEFEFEFEFEFEFAFAFA000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8C8C8C000000000000E9E9E9E9E9E9
                151515595958FBFBFB0000000000000000000000000000000000004E4E4EFEFE
                FEFEFEFEFAFAFA00000000000000000000000000000000000000000000000000
                0000000000000000000000F1F1F1404040000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
                C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C0C0
                C000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                5B5B5BFDFDFD0000000000000000000000000000000000000000000000000000
                00000000000000000000FEFEFEFEFEFEFCFCFC4F4F4F00000027272731313100
                0000000000000000353535FEFEFEFEFEFEFEFEFEEAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFCFCFC000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000010101E8E8E8C9C7C50D0C0C585857FBFAFA74747400000000
                00000000000000000000004E4E4EFEFEFEFEFEFEFDFDFD000000000000000000
                0000000000000000000000000000000000000000000000000000004242421212
                1200000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000019191946464600000000000000000000
                0000000000000000000000000000000000000000000000000000FEFEFEFEFEFE
                FEFEFE4F4F4F0303036E6E6ECECBC6000000010101010101DCDCDCFEFEFEFEFE
                FEFBFBFBE7E7E70000000000008B8B8BFEFEFEFEFEFEFAFAFA000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFDFDFD8A8A8A000000000000E9E9E9FEFEFE
                FEFEFEFEFEFEFEFEFEBEBEBE0C0C0C0000000000000000000000004E4E4EFEFE
                FEFEFEFEFEFEFE00000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000020202FEFEFEFEFEFEFEFEFE4F4F4F00000000000000000000
                0000000000A0A0A0FEFEFEFEFEFEFEFEFEFEFEFEE9E9E90000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFDFD
                FD8C8C8C000000010101E9E9E9FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDA5A4A200
                00000000000000000000004E4E4EFEFEFEFEFEFEFEFEFEB3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3FEFEFEFEFEFE
                FDFDFD4F4F4F000000000000000000000000191919E2E2E2FEFEFEFEFEFEFEFE
                FEFEFEFEE7E7E70000000000008B8B8BFEFEFEFEFEFEFBFBFB000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8B8B8B000000000000E9E9E9FEFEFE
                FEFEFEF9F9F9B0B0B04B4B4BF7F7F71F1F1F0000000000000101014E4E4EFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD4F4F4F00000000000001010103
                0303909090FEFEFEFEFEFEE1E1E1D2D2D2FEFEFEE8E8E80000000303038D8D8D
                FEFEFEFEFEFEFCFCFC000000C8D0D40000000000003F3F3FFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E9E9E9FEFEFEFEFEFEF9F9F81D1D1D404040F2F2F234
                34340000000000000101014E4E4EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FBFBFB4E4E4E000000000000000000000000FDFDFDFEFEFEE8E8E82020200808
                08B4B4B4EAEAEA0000000000008B8B8BFEFEFEFEFEFEFBFBFB000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFBFBFB8C8C8C000000000000E9E9E9FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFED8D8D80000000000000000000000000000001212
                1200000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000002C2C2C2C2C2C00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000101011D1D
                1D00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000013131300000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000181818050505000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00001D1D1DEFEFEFFCFCFC828282414141FEFEFEEAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8C8C8C000000000000E9E9E9FEFEFEFEFEFEFEFEFEFDFDFDF1F0F01F1F1F00
                0000000000000000000000A3A19F403F3E323232818181000000000000000000
                0000000000002E2E2E0000000000000000000000000000000000000000000000
                000000000000000000003E3C3800000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                2828280909090000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000FEFEFEFCFCFC000000000000
                0000000000000000000000000000000000000000000000000000000000000101
                01414141000000000000000000000000000000000000000000A9A9A910101000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000646464A1A1A123232300
                0000000000000000000000030303A3A3A3000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000202020A8A8A8000000000000
                0000000000000000000000000000000000000000000000002828280000000000
                000000000000000000000000000000002B2B2B00000000000000000000000000
                0000000000000000000000000000000000000000000000000000B1B1B1000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000D6D6D61D1D1D00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000010101A2A2A2FEFEFEFEFEFEFEFE
                FEFEFEFEE9E9E90000000000008B8B8BFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFBFBFB8C8C8C000000000000E7E7E7969696
                000000FEFEFEFDFDFD8888880000000000000000000000002626260B0B0B2121
                211E1E1E5656562020200000000000000000000000009F9F9FA9A9A900000000
                0000000000000000000000000000000000000000000000050505A8A8A8FEFEFE
                FDFDFDEDEDED2727270000000000000000000000002727272323230000000000
                00010101767676D6D6D61616160000009191913E3E3ED5D5D518181800000000
                00000000000000000000000000000000004E4E4EB9B9B9060606000000000000
                0000000000000808082525252727272424230000000000000000000000000000
                00000000D6D6D6D6D6D600000000000000000000000000000000000000000000
                0000000000000000000000000000FEFEFEFCFCFC040404000000000000000000
                000000000000000000EDEDEDFEFEFE9999990000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000001B1B1A2727271B1B1A000000000000000000000000000000000000
                000000AFABA65454542424247E7E7E0D0D0D0303030000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000282828282828060606010101000000000000
                0000000000001E1E1E2626260000000000000000000000000000000000000000
                00000000282828D5D5D500000000000000000000000000000000000000000000
                0000313130D5D5D5000000000000000000000000000000000000000000565350
                F9F9F97674700000000000000000000000000000000000000000000000000000
                000000000000000000000000003D3D3D00000000000000000000000000000000
                0000080808FEFEFE5F5F5F000000000000000000000000252525080808000000
                0000000000000000000000000000000000000000000000000000000000000000
                000101010505050000000000000000000000000000001414142727270A0A0A26
                2626000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000A4A4A40909090000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000F4F4F3FEFEFEFEFEFEFDFDFDE7E7E70000000101018B8B8B
                FEFEFEFEFEFEFCFCFC000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8B8B8B000000000000E9E9E9D9D9D9A4A4A4FEFEFEFAFAFA00000000000000
                0000000000000000D0D0D04B4B4A6B6B6A737373282828535353010101000000
                0000000000001010100000000000000000000000001C1C1C3737370000000000
                000000000000001D1D1DFCFCFCFEFEFEAAAAAA5A5A5A5A5A5A00000000000000
                00000000000101014F4F4FA1A1A1000000A1A1A13131310000006060609D9D9D
                3434340000000000000000000000005754500000000000000000000000000000
                000000003F3F3F0000000000000000000000000000008D8D8D54545459595953
                514F828282000000000000000000000000000000000000000000000000000000
                0000000000004848480000000000000000000000000000000000000000008484
                84ADADAD010101000000000000000000000000000000030303767676FDFDFD50
                5050000000000000000000000000000000000000000000000000000000292928
                1E1E1D000000000000000000000000000000000000454341D3D3D3E1E0DFA4A4
                A4A2A2A23636360000000000000202026767675D5D5D5A5A5962626287878623
                23234E4E4E000000000000000000000000000000282828000000000000000000
                000000000000000000000000464646A1A1A15F5F5F000000000000030303FCFC
                FC7171710B0B0B00000000000000000032323221212144444455555500000000
                0000000000000000000000000000818181000000000000000000000000000000
                000000000000000000000000000000010101C9C4BF5F5F5F4F4F4F8080806D6D
                6C0000000000000000000000002D2D2DFBFBFB2E2E2E00000000000000000000
                0000000000232323080808000000000000000000000000000000000000959493
                000000000000000000000000000000000000121212FBFBFB8282820000000000
                00000000000000F9F9F845454500000000000000000000000000000068686800
                0000000000000000000000000000000000A5A5A56F6F6F000000000000000000
                0000000101017F7F7F5A5A5A1717175656567575750909090000000000000000
                0000000000000000000000000000000000000000000037373700000000000000
                0000000000000000323232535353000000020202A4A4A42C2C2C000000000000
                000000000000000000000000000000000000000000000000565655FEFEFEFEFE
                FEFDFDFDEAEAEA0000000101018B8B8BFEFEFEFEFEFEFBFBFB000000C8D0D400
                00000000003B3B3BFBFBFBFEFEFEFAFAFA8C8C8C000000000000E9E9E9FEFEFE
                FDFDFDF3F3F31C1C1C000000000000000000000000000000B4B4B4323232C1C1
                C14949493B3B3B42424200000000000000000000000000000000000000000007
                07073E3E3EFEFEFEFEFEFEDCDCDC0C0C0C000000000000121212424242000000
                000000000000000000000000000000000000000000000000000000000000DBDB
                DB0606060000000000005F5F5F0F0F0F0000000000000000001F1F1FFEFEFEFB
                FBFBAFAFAF232323000000000000000000000000000000000000000000000000
                010101313131161616515151D6D6D64848483131314A4A4A000000000000FEFE
                FE585858000000000000000000000000232323A5A5A5FEFEFEFEFEFE21212106
                0606000000000000000000000000000000000000000000000000000000000000
                000000000000000000696969FCFCFC0000000000000000000000000000000000
                000000000000000B0B0BD2D2D2D2D2D2C1C1C125252508080800000000000000
                0000000000000000030303E2E2E2FEFEFEB4B4B4000000000000000000000000
                A0A0A01B1B1B7070704444449595950000000909090000000000000000001212
                12272727FEFEFEFCFCFC9393931C1B1B0000000000000000000000006D6D6DFC
                FCFC858585000000000000000000000000000000000000000000B6B6B6060606
                4E4E4E333333000000000000000000000000000000000000424242E3E3E3FEFE
                FECFCFCF1C1C1C00000000000000000000000000000000000000000000000057
                57570303032E2E2E020202222222767676101010000000000000000000000000
                0000000000000000000000000000001D1C1CEFEFEFFEFEFEFEFEFE2323230404
                04000000000000000000000000404040202020121212383838AEAEAE00000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000171717717171FEFEFEFBFBFB7676760000000000000000000000
                00D9D9D99D9D9D000000000000000000000000232323393939D8D8D8C1C1C15F
                5F5F6464640C0C0C000000000000000000000000000000000000000000040404
                707070FEFEFEFDFDFD484848181818000000000000000000010101A8A8A86262
                62B3B3B300000000000000000000000000000000000000000017171700000000
                00000000000000000101019A9A9AFCFCFC6868682020200000000000008B8B8B
                FEFEFEFEFEFEFAFAFA000000C8D0D40000000000003A3A3AFBFBFBFEFEFEFAFA
                FA8B8B8B000000000000E9E9E9FEFEFEFAFAFAA9A9A905050500000000000000
                00000000000000000101017373739F9F9F8B8B8B161616A7A7A5000000000000
                0000000000000000000000005E5D5BB1B1B1FEFEFEFEFEFEFEFEFEFEFEFEC1C1
                C18A8A8A00000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000009F9F9FF4F4F4FEFEFEFEFEFEFEFEFEFCFCFC9090901414140000
                00000000000000000000000000000000000000BFBFBF0707077775707B7B7B90
                90903434344D4D4D0000000000005F5F5F2121210000000000001010108D8D8C
                FEFEFEFEFEFEFEFEFEFEFEFEFAFAFAAEAEAE0000000000000000000000000000
                000000000000000000000000000000000000000000000000006B6B6B93939300
                0000000000000000000000000000000000000000838383BDBDBDFBFBFBD5D5D5
                979797FEFEFEB5B5B55959590000000000000000000000000000001313137B7B
                7B0000000000000000000000000202029A989504040448484856565694949400
                0000181818000000000000404040D1D1D1FEFEFEFEFEFEFEFEFEFDFDFDEBEAEA
                5353530000000000000000002929295F5F5F1212120000000000000000000000
                000000000000008686865F5F5F939393A0A0A032323200000000000000000000
                00002828289D9D9DD9D9D95F5F5FF7F7F7FEFEFEEBEBEB9F9F9F000000000000
                0000000000000000000000000000006A6A6A0909093F3F3F0707075F5F5F0D0D
                0D727272000000000000000000000000000000000000000000000000979797E9
                E8E6FEFEFEFEFEFEFEFEFEFEFEFEA8A8A8373737000000000000000000202020
                0F0F0F000000010101B1B1B10000000000000000000000000000000000000000
                000000000000000000000000000000000000009A9A9ADDDDDDFEFEFEFEFEFEFE
                FEFEFEFEFE9F9F9F404040000000000000020202101010000000000000000000
                000000FCFCFC0303031D1D1D2020205C5C5C5454548D8D8D0000000000000000
                000000000000000000003B3B3BAAAAAAFEFEFEFEFEFEFEFEFEFDFDFDDFDFDF7F
                7F7F0000000000000000000000000000000202021F1F1F000000000000000000
                0000000000001C1C1CDEDEDE8686860000000000000000000202023A3A3AFEFE
                FEC6C6C6E9E9E90000000000008B8B8BFEFEFEFEFEFEFBFBFB000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFE8B8B8B000000020202E9E9E9FEFEFE
                FDFDFD0000000000000000000000000000000000000000000000000000001818
                181E1E1EB3B3B3000000000000000000000000000000151515505050FEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE8E7E51A1A1A010101000000
                0000000000000000000000000000000101019191911D1D1D0000000000000000
                000000000000000000000000000909097C7C7CFEFEFEFEFEFEFEFEFEF0F0F01C
                1C1CEBEBEBFEFEFEFEFEFEFEFEFE1E1E1E060606000000000000000000000000
                000000161616181818020202070707A9A9A93333334D4D4D0000000000000000
                000000000505051E1E1EFEFEFEFEFEFEFDFCFCE8E8E7F7F7F7FEFEFEFEFEFEFE
                FEFEFAFAFA8484840707070000000000000000000000000000000000001E1E1E
                0202020000000000005B5B5B1414140000000000000000000000000101011A1A
                1AFEFEFEFEFEFEFCFCFCE8E8E8E9E9E9FEFEFEFEFEFEFEFEFEFEFEFE81818116
                1616000000000000000000000000000000000000000000000000000000000000
                000000D3D3D33B3B3B2A2A2A5D5D5D0000000000001E1E1E989898FEFEFEFEFE
                FEE0E0E0EFEFEFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE1D1D1D02020200000000
                00000000000000000909091D1D1D1616160404040B0B0B282828000000000000
                5E5E5E171717000000000000080808737373FEFEFEFDFDFD90908F0000004C4C
                4BFEFEFEFEFEFEFEFEFEE9E9E93F3F3F00000000000000000000000000000000
                0000B5B5B5050505DEDEDE5754511E1E1E1A1A1A000000000000000000000000
                0000000F0F0F1E1E1EFEFEFEFEFEFEFEFEFEFEFEFEF0F0F0131313ECECECFEFE
                FEFEFEFE3B3B3B131313000000000000000000000000000000B7B7B71E1E1EB0
                B0B0606060000000000000000000000000000000000000000000000000262626
                BEBEBEFEFEFEFEFEFEFAFAFA6F6F6FE4E4E4FEFEFEFEFEFEFEFEFEAEAEAD0D0D
                0D0000000000000000000000000000000000003939393E3E3E54545459595996
                9696000000000000000000000000000000000000101010E4E4E4FEFEFEFEFEFE
                FEFEFE272727000000D1D1D1FEFEFEFEFEFEBCBCBC1E1E1E0000000000000000
                00000000C5C5C56F6F6FE0E0E0DEDEDE393939000000282828E0E0E0BDBDBD00
                0000000000000000000000020202C3C2BFFCFCFCE6E6E60000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFCFC
                FC8C8C8C000000010101E9E9E9FCFCFC70707000000000000000000000000000
                0000000000000000000000000000505050646464161616000000000000010101
                0101019A9A9AE2E2E2FEFEFEFEFEFEFEFEFEFEFEFEE3E3E3646464FEFEFEFEFE
                FEFEFEFEFEFEFEF3F3F39D9D9D00000000000000000000000000000000000007
                0707E8E8E8E1E1DF000000000000000000000000000000000000444444B8B8B8
                FEFEFEFEFEFEFEFEFEFEFEFE9D9D9D0000005C5C5CFEFEFEFEFEFEFEFEFEFEFE
                FEADADAD5858580000000000000000000000000000005151517878788E8E8E1C
                1C1C3C3C3C1E1E1E000000000000000000191919AAAAAAFEFEFEFEFEFEFEFEFE
                E7E7E61A19185B5B5BFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEB1B1B14A4A4A0000
                00000000000000000000000000D9D9D90A0A0A00000000000000000000000000
                00000000000000000000009F9F9FF1F1F1FDFDFD7F7F7F5C5C5C959595B7B7B7
                FEFEFEFEFEFE898989646464D7D7D7E4E4E49999990000000000000000000000
                000000000000000000000000000000000000000000002E2E2E44444400000000
                0000585858FEFEFEFEFEFEFEFEFEADADAD020202474747FEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEB8B8B8A0A0A00000000000000000000000001E1E1E6161614949
                49868686858585101010000000000000000000000000000000787878B6B6B6FE
                FEFEFEFEFEFEFEFEE6E6E69B9B9BFAF8F6FEFEFEFEFEFEFDFDFD7F7F7FFEFEFE
                9A9A9A3737370000000000000000000000005D5D5D6464649A9A9A9898985E5E
                5E000000000000000000000000000000040404C7C7C7FEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFE929292000000666666FEFEFEFEFEFEFEFEFED8D8D8171717000000
                0000000000000000006464646363630000004D4D4D7272720000000000000000
                000000000000001F1F1F9A9A9AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE0D
                0D0DC3C3C3FEFEFEFEFEFEFEFEFEC4C4C4909090000000000000000000000000
                0000000000004040409595958787866464640000000000000000000000000000
                008D8D8DD1D1D1FEFEFEFEFEFEFEFEFEFDFDFD2626262F2E2CE9E9E7FEFEFEFE
                FEFEFEFEFEFCFCFC808080101010000000000000000000000000000000020202
                CCCCCC0000000000000000000000000000000000000000000000000000000A0A
                0ABEBEBEE7E7E70000000000008B8B8BFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFCFCFC8C8C8C000000000000E9E9E99F9F9F
                030303000000000000000000D7D7D7A6A6A60000000000000000000000000000
                00000000000000000000000000191919C2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFE7777770B0B0B929292FEFEFEFEFEFEFEFEFEE2E2E2020202F9F9F9
                6161610606060000000000000000000000001E1E1E0000000000000000000000
                00000000121212E7E7E7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE37
                3737FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFD484848121212000000
                0000000000000000000000000000000000000000000000000000001111113F3F
                3FFEFEFEFEFEFEFEFEFEFEFEFEFCFCFCE6E6E61919192D2D2DFEFEFEFEFEFEFE
                FEFEFEFEFE747474060606FEFEFEF8F8F8121212000000000000000000000000
                000000000000000000000000000000000000040404656360FAF9F9FEFEFEFEFE
                FEFEFEFE3E3E3E616161FEFEFEFEFEFEFEFEFEFDFDFD3B3B3B000000BEBEBEFE
                FEFEFDFDFDCACACA1919190000000000000000000000002727278D8D8D000000
                000000000000000000020202191919FEFEFE6E6E6E2B2B2BFEFEFEFEFEFEDFDF
                DF1919198D8D8DFEFEFEFEFEFEFEFEFEFDFDFD232323797979FEFEFEFEFEFE2B
                2B2B0A0A0A000000000000000000000000000000000000000000000000000000
                000000141414D8D8D8FEFEFE9F9E9C2E2E2EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFE515151020202ADADADFEFEFEFBFBFB33333309090900000000
                00000000000000000000000000000000000000000000000000000F0F0E8B8B8B
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFA2D2D2DFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEAFAFAF16161500000000000000000000000000
                0000000000252321222120000000000000060606191919FDFDFDFAFAFA2A2A2A
                F6F6F6FEFEFEFEFEFEFEFEFEFDFDFD191919191919FEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEDEDEDE17171701010100000000000000000000000000000000000000
                0000000000000000040404181818FDFDFDE8E8E8000000D6D6D6FEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE1919
                1906060600000000000000000000000005050508080800000000000000000000
                0000030303191919000000000000000000878787EAEAEA0000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFEFE
                FE8B8B8B000000000000E9E9E93E3E3E00000000000000000000000058585844
                4444000000000000000000000000000000000000000000282828969696FEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDF5F5F5C1C1C1FEFEFEFEFE
                FEFEFEFEFEFEFEF3F3F3969696FEFEFEFCFCFCAEAEAE41414100000000000000
                0000000000000000000000000000010101929292E1E1E1FEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEE1E1E147474700000000000000000000000000000000
                0000000000000000717171DCDCDCFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEC7C7C7989898FEFEFEFEFE
                FEE0E0E09494940000000000000000000000000000000000000000000000003C
                3C3C969696FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEEEEEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEAEAEAE969696E4E4E4FEFEFEFEFEFEFEFEFEFEFEFE9696962F2F
                2F0000000000001010106868680000000000000000001D1D1DA0A0A0FEFEFEFE
                FEFEC3C3C39C9C9CFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEE0E0E0FEFEFEFEFEFEFCFCFCC0C0BF0F0F0F0000000000000000
                00000000000000000000000000000000979797E9E9E9FEFEFEFDFDFDE2E2E2CD
                CDCDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFCB6B6B6626262EEEEEE
                FEFEFEFEFEFEFEFEFEBDBDBD8585850000000000000000000000000000000000
                000000000000004F4F4FD6D3D0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                F2F0ED6868680202020000000000000000000000000000000000000101016F6F
                6FADADADFEFEFEFEFEFEFEFEFE969696DCDCDCFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDF8F8F8999999000000
                000000000000000000000000000000000000000000000000A7A7A7F9F9F9FEFE
                FEA0A0A0171717B8B8B8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEAFAFAF151515000000000000000000
                3232324F4F4F000000000000000000000000232323FCFCFC0000000000000000
                00010101C6C6C60000000000008C8C8CFEFEFEFEFEFEFDFDFD000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFAFAFA8C8C8C000000000000D7D7D7000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000030303EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAE8E8E8D9D9D9000000000000000000000000000000000000EAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                ADADAD000000000000000000000000000000000000A3A3A3EAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE8E8E8080808000000
                000000000000000000000000949494EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAE9E9E9E6E6E6000000000000000000000000000000
                0000001C1C1CEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEA8F8F8F000000000000000000000000000000131313CBCBCB
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE6E6E65D
                5D5D000000000000000000000000000000000000EAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE9E9E9E9E9E900000000000000
                0000000000000000000000393939EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE96C696500000000000000000000000004
                04046B6B6BEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
                EAEAEAEAE9E9E93F3F3F00000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000008D8D8D
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003C3C3CFBFBFBFEFEFEFCFC
                FC8B8B8B00000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000008B8B8BFEFEFEFEFEFEFEFEFE000000C8D0D400
                00000000003F3F3FFBFBFBFEFEFEFEFEFE8C8C8C000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000008B8B8B
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000003D3D3DFBFBFBFEFEFEFDFD
                FDCACACA8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
                8C8C8C8C8C8C8C8C8C8C8C8C8CCACACAFEFEFEFEFEFEFAFAFA000000C8D0D400
                00000000003F3F3FFBFBFBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFAFAFA000000C8D0D4000000000000393939FBFBFBFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFCFC000000C8D0D400
                00000000003C3C3CFBFBFBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFE000000C8D0D40000000000001D1D1D7B7B7B7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7B7B7B000000C8D0D400
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000C8D0D4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0D400
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFC8D0D4000000}
              mmHeight = 43392
              mmLeft = 4763
              mmTop = 0
              mmWidth = 66411
              BandType = 4
            end
            object RBEan2: TRBEan
              UserName = 'Ean2'
              BackgroundColor = clWhite
              Transparent = False
              ShowLabels = False
              StartStopLines = True
              TypBarCode = bcCode128
              LinesColor = clBlack
              Ean13AddUp = True
              FontAutoSize = True
              Security = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              BarCode = 'PSOFT'
              Angle = 0
              LabelMask = '__________________________________________________'
              DisableEditor = False
              mmHeight = 6615
              mmLeft = 24871
              mmTop = 23813
              mmWidth = 26194
              BandType = 4
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              AutoSize = False
              Caption = 'Bonus Bucks'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 12
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 19579
              mmTop = 8731
              mmWidth = 37042
              BandType = 4
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Caption = '* Valid from'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 16140
              mmTop = 30163
              mmWidth = 20373
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'DiscountValue'
              DataPipeline = ppBonusBucks
              DisplayFormat = '$,0.00;-$,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBonusBucks'
              mmHeight = 7938
              mmLeft = 10319
              mmTop = 15875
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'DiscountValue'
              DataPipeline = ppBonusBucks
              DisplayFormat = '$,0.00;-$,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppBonusBucks'
              mmHeight = 8202
              mmLeft = 50800
              mmTop = 15875
              mmWidth = 14817
              BandType = 4
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              Caption = '.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 6085
              mmTop = 69850
              mmWidth = 1852
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'ValidFromDate'
              DataPipeline = ppBonusBucks
              DisplayFormat = 'mm/dd/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppBonusBucks'
              mmHeight = 3175
              mmLeft = 36777
              mmTop = 29898
              mmWidth = 22225
              BandType = 4
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              Caption = 'to'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 33338
              mmTop = 33338
              mmWidth = 2910
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'ExpirationDate'
              DataPipeline = ppBonusBucks
              DisplayFormat = 'mm/dd/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppBonusBucks'
              mmHeight = 3175
              mmLeft = 36777
              mmTop = 33338
              mmWidth = 22225
              BandType = 4
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              AutoSize = False
              Caption = 
                'Bonus Bucks may not be redeemed for cash.  Store reserves the ri' +
                'ght to discontinue program at any time.  Bonus Bucks are void if' +
                ' detached from original receipt.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              WordWrap = True
              mmHeight = 20108
              mmLeft = 6085
              mmTop = 44450
              mmWidth = 64294
              BandType = 4
            end
            object ppImage1: TppImage
              UserName = 'Image1'
              AutoSize = True
              MaintainAspectRatio = True
              mmHeight = 9525
              mmLeft = 25135
              mmTop = 14023
              mmWidth = 25400
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object raCodeModule4: TraCodeModule
            ProgramStream = {
              01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650611
              44657461696C4265666F72655072696E740B50726F6772616D54797065070B74
              7450726F63656475726506536F7572636506C570726F63656475726520446574
              61696C4265666F72655072696E743B0D0A626567696E0D0A202045616E322E42
              6172436F6465203A3D207070426F6E75734275636B735B27426F6E7573437570
              6F6E275D3B0D0A2020496D616765312E506963747572652E4C6F616446726F6D
              46696C652827433A5C50726F6772616D2046696C65735C4D61696E5265746169
              6C5C53746F72655F46696C65735C72656365697074735C726563656970745F62
              6F6E75736275636B732E6A706727293B0D0A656E643B0D0A0D436F6D706F6E65
              6E744E616D65060644657461696C094576656E744E616D65060B4265666F7265
              5072696E74074576656E74494402180000}
          end
        end
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365064870726F6365647572652056
        61726961626C65733B0D0A7661720D0A202043617465676F7279526563656970
        74203A20537472696E673B200D0A626567696E0D0A0D0A656E643B0D0A000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506105469
        746C654265666F72655072696E740B50726F6772616D54797065070B74745072
        6F63656475726506536F757263650CCC03000070726F63656475726520546974
        6C654265666F72655072696E743B0D0A626567696E0D0A6C62437573746F6D65
        722E56697369626C65203A3D2028496E766F696365496E666F5B2746756C6C4E
        616D65275D203C3E20274E6F6E6527293B0D0A6462437573746F6D65722E5669
        7369626C65203A3D206C62437573746F6D65722E56697369626C653B0D0A4C61
        62656C322E54657874203A3D2053746F72655B2743697479275D202B20272C20
        27202B2053746F72655B275374617465436F64275D202B20272027202B205374
        6F72655B275A6970275D3B0D0A526567696F6E31392E546578742E5669736962
        6C65203A3D2028496E766F696365496E666F5B274C617961776179275D3D5472
        7565293B0D0A6C6162656C486F6C64446174652E56697369626C65203A3D2066
        616C73653B0D0A6C6162656C486F6C64446174652E54657874203A3D2027273B
        0D0A4946202828496E766F696365496E666F5B27496E766F696365436F646527
        5D203D2027272920616E642028496E766F696365496E666F5B274C6179617761
        79275D3D2046616C7365292029207468656E20626567696E0D0A094C6162656C
        342E54657874203A3D20496E766F696365496E666F5B2753616C65436F646527
        5D3B0D0A2020202020204C6162656C352E54657874203A3D2027486F6C64273B
        0D0A2020202020206C6162656C486F6C64446174652E76697369626C65203A3D
        20747275653B0D0A2020202020206C6162656C486F6C64446174652E54657874
        203A3D20496E766F696365496E666F5B2750726553616C6544617465275D3B0D
        0A202020202020526567696F6E31392E546578742E56697369626C65203A3D20
        747275653B0D0A2020202020204C6162656C32382E54657874203A3D20275175
        6F7465273B0D0A656E640D0A454C534520696620496E766F696365496E666F5B
        27496E766F696365436F6465275D203C3E202727207468656E20626567696E0D
        0A094C6162656C342E54657874203A3D20496E766F696365496E666F5B27496E
        766F696365436F6465275D3B0D0A2020202020204C6162656C352E5465787420
        3A3D2027496E766F696365273B0D0A202020202020656E643B0D0A6966202849
        6E766F696365496E666F5B274C617961776179275D3D5472756529207468656E
        20626567696E0D0A094C6162656C342E54657874203A3D20496E766F69636549
        6E666F5B2753616C65436F6465275D3B0D0A2020202020204C6162656C352E54
        657874203A3D2027496E766F696365273B0D0A656E643B0D0A20202020202020
        2020200D0A2020202020200D0A656E643B2020202020200D0A656E643B0D0A0D
        436F6D706F6E656E744E616D6506055469746C65094576656E744E616D65060B
        4265666F72655072696E74074576656E74494402180001060F5472614576656E
        7448616E646C65720B50726F6772616D4E616D6506215265706F727441667465
        724175746F5365617263684469616C6F674372656174650B50726F6772616D54
        797065070B747450726F63656475726506536F75726365063D70726F63656475
        7265205265706F727441667465724175746F5365617263684469616C6F674372
        656174653B0D0A626567696E0D0A0D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D6506065265706F7274094576656E744E616D65061B4166746572417574
        6F5365617263684469616C6F67437265617465074576656E744944020A000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506115265
        706F72744265666F72655072696E740B50726F6772616D54797065070B747450
        726F63656475726506536F75726365068570726F636564757265205265706F72
        744265666F72655072696E743B0D0A626567696E0D0A20204C6F676F496D6167
        652E506963747572652E4C6F616446726F6D46696C652827433A5C4D61696E52
        657461696C5C52656365697074735C53746F7265204C6F676F735C7265636569
        70745F6C6F676F2E6A706727293B0D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D6506065265706F7274094576656E744E616D65060B4265666F72655072
        696E74074576656E74494402010001060F5472614576656E7448616E646C6572
        0B50726F6772616D4E616D65061144657461696C4265666F72655072696E740B
        50726F6772616D54797065070B747450726F63656475726506536F7572636506
        A070726F6365647572652044657461696C4265666F72655072696E743B0D0A62
        6567696E0D0A20205375625265706F7274322E56697369626C65203A3D202849
        6E766F696365496E666F5B274C617961776179275D3D46616C7365293B0D0A20
        205375625265706F7274342E56697369626C65203A3D2028496E766F69636549
        6E666F5B274C617961776179275D3D54727565293B0D0A20200D0A656E643B0D
        0A0D436F6D706F6E656E744E616D65060644657461696C094576656E744E616D
        65060B4265666F72655072696E74074576656E74494402180000}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppReportDeclined: TppReport
    AutoStop = False
    DataPipeline = ppVirtualSelectDeclined
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 508
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 76200
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\MainRetail\Receipts\Standard_DeclinedReceipt.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    Icon.Data = {
      0000010002002020000001001800A80C0000260000002020000001002000A810
      0000CE0C00002800000020000000400000000100180000000000800C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009D9D9C8988877275
      7569686A73727175767500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000008485847475738A8B8B9B999BA5A3A4A8A7A7A7A6A6A8A8
      A8A6A6A6DCDCDCDFDEDF78787873757500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006D6D6D717272A5A6A5CAC9C9CECECDC5C6C5BABBBBB2B2B2ABABAAA7A7
      A7A1A1A1CCCCCCFFFFFFF8F8F8A3A2A263636300000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000686766
      979696CFCDCEE6E5E5E2E2E1D2D2D2C8C8C7BFBEBEB6B6B6AFAFAFA9A9AAA5A5
      A5A1A1A1D5D6D6FFFFFFF7F7F7FFFFFFCDCCCD61616200000000000000000000
      0000000000000000000000000000000000000000000000000000000000E2E0DF
      FFFFFFF3F3F3E5E4E4D9D7D7D1D0CFCBCBC9CBCACBC8C8C7C4C4C4BEBFBFBDBD
      BDB2B3B2A2A2A2EFEFEFFEFEFEF6F6F6FFFFFFF1F0F086868600000000000000
      0000000000000000000000000000000000000000000000000000000000F1F0F1
      F3F2F2EAE9E9E8E8E8E7E6E6E6E6E6E0DFDFCECECEBEBFBEB5B5B5B0B0B0ACAC
      AC9D9D9D6D6D6E858686DCDBDCFFFEFEF7F7F6FFFEFEFEFFFE8D8E8D00000000
      0000000000000000000000000000000000000000000000000000D3D2D2EDEBEB
      F7F7F6F2F1F1E1E1E0C9C8C8BEBEBFBCBCBDBBBABABBBBBBB8B7B7B1B0B1A6A6
      A6A6A7A7C7C7C7B5B4B5939293BBBBBAF9F9F9FBFBFBFFFEFFF6F5F674737200
      0000000000000000000000000000000000000000000000000000DBDBDAE0E1E0
      D0D0D0BBBBBBBCBBBBCFCECEE5E4E4F0EEEEE9E8E9D8D7D8C6C6C7B9B8B8AEAE
      AEA6A6A5BFC0BFD1D4D1D6D7D79394938F8E8CDEDEDEFFFFFFFFFFFFAEAEAA00
      0000000000000000000000000000000000000000000000000000C5C5C5A1A1A1
      CCCCCDE5E4E4F9F8F8F9F8F8F0EFEFE3E3E2D4D3D4C4C3C4BCBBBCBFBDBDC6C6
      C5A3A3A3919191C5C8C5CDCFCEDFE1E0ACADAB7B7A79B3B3B3FFFFFFD8D8D600
      0000000000000000000000000000000000000000000000000000B9BABAD1D1D0
      FFFDFEEFEEEEDBDBDAD6D6D6D4D4D3BFBFBDC5C5C5C9C7C6D0CDCCEAEAEACECD
      CBE1E0E09C9C9CA9A9A8C6C9C6CCCECDE7E8E7D2D2D18181828C8C8BDCDCDC00
      0000000000000000000000000000000000000000000000000000000000C2C0BE
      D2D2D2B2B1B0CDCDCDCFCECDD3D3D1E4E4E4CDCAC9E9E8E7E3E1DFDFDCDCF1F1
      F0D7D4D2E5E4E49C9C9DB4B6B4C4C6C3CACCCAE4E5E4EBEBEB9E9F9E7D7D7E00
      0000000000000000000000000000000000000000000000000000000000ACA8A5
      CCCBCBE0DFDED0CCC9E3E2E1DBDBDAC8C5C5CECFCECECDCBF0F0F0DBD8D8E1DE
      DEEAEAE9E5E4E3E0E1E1B3B3B3E5E6E5D0D2D0D5D6D5E1E2E1F4F5F4AEAEAE00
      0000000000000000000000000000000000000000000000000000000000000000
      AFA9A4D4D4D3E5E5E5DCDAD9DEDDDDD8D6D6CDCDCAD5D5D4D6D4D2F4F3F2E1DF
      DFEFEFF0E1DFDFECECECE7E6E7DCDBDCD1D1D0BDBFBDDBDDDBEDEEEDC8C9C800
      0000000000000000000000000000000000000000000000000000000000000000
      0000009F9C98E3E4E7E1E0DFCCCAC8FAFBFBF2F1F0F7F8F7DDDFE0E8E9EAE2E2
      E3BEBEBE9D9E9E7676776767684B4A4B605F5F3739397A7978DEDEDEDEDEDE00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3AFAEE1E2E3EAEBECDEDFE1ADB0B485888C7575757373727878
      784241421414141111110C0C0E0404044B4B4B3D3E3D1516154E4D4C9A999900
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A8A6A75B5D5E545250797166AA977EDCC6A2998B7A5256
      5A4B494A0F0F0F1C1C1C2525242525254C4C4C77777633333235363561606000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B7A48FEFD0AAFFDCB2FFD8AFFFD9B1EDD2B0625F
      5D5A5B5D4B4B4A5555555A5A5A5657564F50503D3C3E5453545B5C5B9B9B9B00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000E0CDB7FFDAAEFECAA8FED1B1FCD2B5FFE2C3CDC0
      AC949495ADAEAE3D3D3D222222232222161514454544A4A4A400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFDFC4FFE3CAFADEC5FBDCC4FBE1CCFFFD
      ECC6C4BF0000000000000000000000002529319FA1A300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4E6D8FCEBDAF8E9D8F6EADDF9EF
      E2FEFBF4B6B6B6000000000000000000614E30645C4C756C5C877C6800000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAD8D5FAF1E5F5EBE1F3EBE0F8F0
      E5FAF9F6ABAEB4000000C29840D09D2EFCB42AEEAC2FF9B927DAAD587F859000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000EFEDECFAF7F5F7F7F6FAFA
      F9F8F7F69FA5AEC7BAA5FFCE44FFC93AFFC338FFC135FFC529BA934E686D7700
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000E8E8EAFFFFFFF9FAFBF1F1
      F1E9E7E7BFC1C6B5B3AFC59A43C29645A1844B9D7E469D7D4559504200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000CCCCCCD1D1D10000000000
      000000000000000000009795928E8E90888A9000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
      0FFFFF8003FFFE0001FFF80000FFF800007FF800003FF000001FF000001FF000
      001FF000001FF800001FF800001FFC00001FFE00001FFF00001FFF80001FFFC0
      001FFFC0007FFFE03CFFFFF01C3FFFF0101FFFF8001FFFF8003FFFF9F1FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000002000000040000000010020000000
      00008010000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE01FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE01FDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0F1F112E3E4E322DFDFE024D9D8D929CACAC938BBBB
      BB45E8E8E81CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01EEEE
      EE11D8D8D828BDBCBD51A9A8A97A9D9D9C96898887B3727575D269686AE27372
      71F0757675CFA0A1A17FEFEFEF15FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F708C5C5C53A848584857475
      73B98A8B8BD19B999BEBA5A3A4F7A8A7A7FCA7A6A6FFA8A8A8FFA6A6A6FFDCDC
      DCFFDFDEDFFF787878FF737575B2E1E1E122FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6E6E6199FA0A0656D6D6DAC717272E6A5A6A5FFCAC9
      C9FFCECECDFFC5C6C5FFBABBBBFFB2B2B2FFABABAAFFA7A7A7FFA1A1A1FFCCCC
      CCFDFFFFFFFDF8F8F8FFA3A2A2FF636363CBC4C4C33CFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E5E530686766C3979696FFCFCDCEFFE6E5E5FFE2E2E1FFD2D2
      D2FFC8C8C7FFBFBEBEFFB6B6B6FFAFAFAFFFA9A9AAFFA5A5A5FFA1A1A1FFD5D6
      D6FEFFFFFFFDF7F7F7FDFFFFFFFDCDCCCDFF616162E9A0A0A05FFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D8D7D764E2E0DFFFFFFFFFFFF3F3F3FFE5E4E4FFD9D7D7FFD1D0
      CFFFCBCBC9FFCBCACBFFC8C8C7FEC4C4C4FFBEBFBFFFBDBDBDFEB2B3B2FFA2A2
      A2FEEFEFEFFDFEFEFEFDF6F6F6FDFFFFFFFDF1F0F0FF868686F2A3A3A35FFEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D5D4D46AF1F0F1FFF3F2F2FFEAE9E9FFE8E8E8FFE7E6E6FFE6E6
      E6FFE0DFDFFECECECEFEBEBFBEFFB5B5B5FEB0B0B0FFACACACFF9D9D9DFE6D6D
      6EFD858686FEDCDBDCFEFFFEFEFDF7F7F6FDFFFEFEFDFEFFFEFF8D8E8DF2A0A0
      A063FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D3D2D280EDEBEBFFF7F7F6FFF2F1F1FFE1E1E0FFC9C8C8FFBEBE
      BFFFBCBCBDFFBBBABAFFBBBBBBFFB8B7B7FFB1B0B1FFA6A6A6FFA6A7A7FEC7C7
      C7FDB5B4B5FD939293FDBBBBBAFDF9F9F9FDFBFBFBFDFFFEFFFDF6F5F6FF7473
      72DBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DBDBDA93E0E1E0FFD0D0D0FFBBBBBBFEBCBBBBFECFCECEFEE5E4
      E4FFF0EEEEFFE9E8E9FFD8D7D8FFC6C6C7FFB9B8B8FFAEAEAEFFA6A6A5FEBFC0
      BFFED1D4D1FFD6D7D7FF939493FE8F8E8CFEDEDEDEFDFFFFFFFDFFFFFFFFAEAE
      AAFAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C5C5C59DA1A1A1FFCCCCCDFEE5E4E4FFF9F8F8FFF9F8F8FFF0EF
      EFFFE3E3E2FFD4D3D4FEC4C3C4FEBCBBBCFFBFBDBDFDC6C6C5FEA3A3A3FE9191
      91FEC5C8C5FFCDCFCEFFDFE1E0FEACADABFE7B7A79FDB3B3B3FEFFFFFFFFD8D8
      D6FAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B9BABAA5D1D1D0FFFFFDFEFFEFEEEEFEDBDBDAFED6D6D6FED4D4
      D3FDBFBFBDFDC5C5C5FDC9C7C6FDD0CDCCFEEAEAEAFDCECDCBFEE1E0E0FD9C9C
      9CFDA9A9A8FEC6C9C6FFCCCECDFFE7E8E7FFD2D2D1FF818182FF8C8C8BFFDCDC
      DCF9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CDCDCD6BC2C0BEFFD2D2D2FFB2B1B0FDCDCDCDFECFCECDFDD3D3
      D1FDE4E4E4FDCDCAC9FEE9E8E7FDE3E1DFFEDFDCDCFEF1F1F0FDD7D4D2FDE5E4
      E4FD9C9C9DFDB4B6B4FDC4C6C3FECACCCAFFE4E5E4FFEBEBEBFF9E9F9EFF7D7D
      7EEFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8F7F70FACA8A59ACCCBCBFEE0DFDEFFD0CCC9FEE3E2E1FDDBDB
      DAFDC8C5C5FDCECFCEFDCECDCBFEF0F0F0FDDBD8D8FEE1DEDEFDEAEAE9FDE5E4
      E3FDE0E1E1FDB3B3B3FDE5E6E5FED0D2D0FFD5D6D5FFE1E2E1FFF4F5F4FFAEAE
      AEEEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6F5F410AFA9A4A4D4D4D3FFE5E5E5FEDCDAD9FEDEDD
      DDFDD8D6D6FDCDCDCAFED5D5D4FED6D4D2FEF4F3F2FDE1DFDFFEEFEFF0FDE1DF
      DFFEECECECFDE7E6E7FDDCDBDCFDD1D1D0FDBDBFBDFEDBDDDBFFEDEEEDFFC8C9
      C8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E5E7259F9C98DAE3E4E7FFE1E0DFFFCCCA
      C8FDFAFBFBFDF2F1F0FDF7F8F7FDDDDFE0FDE8E9EAFDE2E2E3FDBEBEBEFE9D9E
      9EFE767677FE676768FE4B4A4BFE605F5FFE373939FD7A7978FEDEDEDEFFDEDE
      DEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D0CE49B3AFAEBDE1E2E3FBEAEB
      ECFFDEDFE1FDADB0B4FD85888CFD757575FD737372FD787878FE424142FE1414
      14FE111111FE0C0C0EFE040404FE4B4B4BFD3D3E3DFD151615FF4E4D4CFF9A99
      99FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E5E428A8A6A7A25B5D
      5EFE545250FF797166FFAA977EFEDCC6A2FF998B7AFE52565AFD4B494AFF0F0F
      0FFF1C1C1CFD252524FD252525FD4C4C4CFD777776FD333332FF353635FF6160
      60DCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D3D23EB7A4
      8FEAEFD0AAFFFFDCB2FFFFD8AFFFFFD9B1FFEDD2B0FF625F5DFD5A5B5DF64B4B
      4AFF555555FF5A5A5AFF565756FF4F5050FD3D3C3EFF545354FF5B5C5BFF9B9B
      9B9AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F5F50FE0CD
      B7C3FFDAAEFFFECAA8FFFED1B1FEFCD2B5FEFFE2C3FECDC0ACFE949495AFADAE
      AE8A3D3D3DEE222222FF232222FF161514FF454544DFA4A4A48EC0BFBF66F1F1
      F116FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E3
      E150FFDFC4F6FFE3CAFFFADEC5FEFBDCC4FEFBE1CCFEFFFDECFFC6C4BFE0D5D5
      D541DFDFDF34B9BAB969ABABAC77252931FF9FA1A38BFDFDFD02F0F0F016FAFA
      FA09FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF01EDE8E570F4E6D8FBFCEBDAFFF8E9D8FEF6EADDFEF9EFE2FEFEFBF4FFB6B6
      B699FFFFFF00F0F0F014BBBAB95E614E30FF645C4CDB756C5CC7877C68E8B8B8
      BA7CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF01DAD8D5A9FAF1E5FFF5EBE1FEF3EBE0FEF8F0E5FEFAF9F6FFABAE
      B4AEBCB3A673C29840E3D09D2EFEFCB42AFFEEAC2FFFF9B927FFDAAD58FF7F85
      90BBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4E5E566EFEDECFFFAF7F5FEF7F7F6FEFAFAF9FFF8F7F6FF9FA5
      AEB8C7BAA5A1FFCE44FDFFC93AFFFFC338FFFFC135FFFFC529FFBA934EFF686D
      77C1FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFE0E04AE8E8EAFFFFFFFFFFF9FAFBFFF1F1F1FFE9E7E7FFBFC1
      C694B5B3AF8BC59A43FFC29645FFA1844BFF9D7E46FF9D7D45FF595042ED9FA0
      A16CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F0F0F020CCCCCC98D1D1D190DCDDDC72E1E1E15DE3E3E34BF8F8
      F813CCCCCC599795929B8E8E908F888A9083999B9E74B2B4B75DCCCCCD3AF9F9
      F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFDFFFFFFF9FFFFFFF9
      FFFFFFF80FFFFF8003FFFE0001FFF80000FFF000007FF000001FF000001FF000
      001FF000001FF000001FF000001FF000001FF000001FF800001FFC00001FFE00
      001FFF00001FFF80001FFF80001FFFC0001FFFC0101FFFE0001FFFF0001FFFF0
      001FFFF0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Language = lgEnglish
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 150
    Top = 200
    Version = '7.02'
    mmColumnWidth = 75692
    DataPipelineName = 'ppVirtualSelectDeclined'
    object ppTitleBand5: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 137584
      mmPrintPosition = 0
      object ppRegion25: TppRegion
        UserName = 'Region7'
        Caption = 'Region7'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 115888
        mmLeft = 5027
        mmTop = 14817
        mmWidth = 66675
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText32: TppDBText
          UserName = 'DBText17'
          DataField = 'Store'
          DataPipeline = ppStore
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppStore'
          mmHeight = 8467
          mmLeft = 5821
          mmTop = 19579
          mmWidth = 65088
          BandType = 1
        end
        object ppDBText33: TppDBText
          UserName = 'DBText19'
          DataField = 'Address'
          DataPipeline = ppStore
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppStore'
          mmHeight = 2910
          mmLeft = 5556
          mmTop = 25929
          mmWidth = 65352
          BandType = 1
        end
        object ppDBText34: TppDBText
          UserName = 'DBText21'
          DataField = 'Phone'
          DataPipeline = ppStore
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppStore'
          mmHeight = 2381
          mmLeft = 5556
          mmTop = 29104
          mmWidth = 65617
          BandType = 1
        end
        object ppLabel36: TppLabel
          UserName = 'Label2'
          Caption = 'DECLINED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 29916
          mmTop = 32279
          mmWidth = 16637
          BandType = 1
        end
        object labelEntryNethod: TppLabel
          UserName = 'Label1'
          Caption = 'EntryMethod'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 7144
          mmTop = 42863
          mmWidth = 22754
          BandType = 1
        end
        object entryMethod: TppDBText
          UserName = 'lastDigit1'
          DataField = 'EntryMethod'
          DataPipeline = ppVirtualSelectDeclined
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppVirtualSelectDeclined'
          mmHeight = 3969
          mmLeft = 31485
          mmTop = 42863
          mmWidth = 35454
          BandType = 1
        end
        object ppLabelDate: TppLabel
          UserName = 'Label4'
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 7144
          mmTop = 48419
          mmWidth = 8467
          BandType = 1
        end
        object ppDbDateTime: TppDBText
          UserName = 'DbDateTime'
          DataField = 'SaleDateTime'
          DataPipeline = ppVirtualSelectDeclined
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppVirtualSelectDeclined'
          mmHeight = 4233
          mmLeft = 17198
          mmTop = 48419
          mmWidth = 49742
          BandType = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label6'
          Caption = 'INVOICE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 7673
          mmTop = 55298
          mmWidth = 15346
          BandType = 1
        end
        object ppDBText31: TppDBText
          UserName = 'lastDigit2'
          DataField = 'Invoice'
          DataPipeline = ppVirtualSelectDeclined
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppVirtualSelectDeclined'
          mmHeight = 4233
          mmLeft = 24077
          mmTop = 55298
          mmWidth = 42863
          BandType = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          Caption = 'AMOUNT:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 7938
          mmTop = 61383
          mmWidth = 15875
          BandType = 1
        end
        object ppDBAmount: TppDBText
          UserName = 'DBAmount'
          DataField = 'Amount'
          DataPipeline = ppVirtualSelectDeclined
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppVirtualSelectDeclined'
          mmHeight = 4233
          mmLeft = 34131
          mmTop = 61119
          mmWidth = 32808
          BandType = 1
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          Caption = 'TOTAL:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 7938
          mmTop = 67469
          mmWidth = 12171
          BandType = 1
        end
        object ppDBTotal: TppDBText
          UserName = 'DBAmount1'
          DataField = 'Amount'
          DataPipeline = ppVirtualSelectDeclined
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppVirtualSelectDeclined'
          mmHeight = 3704
          mmLeft = 34131
          mmTop = 67469
          mmWidth = 32544
          BandType = 1
        end
        object ppLabelMessage: TppLabel
          UserName = 'LabelMessage'
          Caption = 'TRANSACTION NOT COMPLETED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 9260
          mmTop = 76200
          mmWidth = 56621
          BandType = 1
        end
        object ppDBMemo8: TppDBMemo
          UserName = 'DBMemo8'
          CharWrap = False
          DataField = 'NumMeioQuitPrevisto'
          DataPipeline = ppVirtualSelectDeclined
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Stretch = True
          Transparent = True
          DataPipelineName = 'ppVirtualSelectDeclined'
          mmHeight = 23548
          mmLeft = 9260
          mmTop = 85196
          mmWidth = 57150
          BandType = 1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
      object ppImage3: TppImage
        UserName = 'LogoImage'
        AutoSize = True
        MaintainAspectRatio = True
        mmHeight = 14552
        mmLeft = 5292
        mmTop = 0
        mmWidth = 65881
        BandType = 1
      end
    end
    object ppDetailBand6: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
      object ppDBMemo5: TppDBMemo
        UserName = 'DBMemo5'
        CharWrap = False
        DataField = 'NumMeioQuitPreVisto'
        DataPipeline = ppPayments
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppPayments'
        mmHeight = 12435
        mmLeft = 7673
        mmTop = 0
        mmWidth = 62177
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBMemo6: TppDBMemo
        UserName = 'DBMemo6'
        CharWrap = False
        DataField = 'NumMeioQuitPreVisto'
        DataPipeline = ppPayments
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppPayments'
        mmHeight = 12435
        mmLeft = 7673
        mmTop = 0
        mmWidth = 62177
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBMemo7: TppDBMemo
        UserName = 'DBMemo7'
        CharWrap = False
        DataField = 'NumMeioQuitPreVisto'
        DataPipeline = ppPayments
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppPayments'
        mmHeight = 12435
        mmLeft = 7673
        mmTop = 0
        mmWidth = 62177
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand9: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule10: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365064870726F6365647572652056
        61726961626C65733B0D0A7661720D0A202043617465676F7279526563656970
        74203A20537472696E673B200D0A626567696E0D0A0D0A656E643B0D0A000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506215265
        706F727441667465724175746F5365617263684469616C6F674372656174650B
        50726F6772616D54797065070B747450726F63656475726506536F7572636506
        3D70726F636564757265205265706F727441667465724175746F536561726368
        4469616C6F674372656174653B0D0A626567696E0D0A0D0A656E643B0D0A0D43
        6F6D706F6E656E744E616D6506065265706F7274094576656E744E616D65061B
        41667465724175746F5365617263684469616C6F67437265617465074576656E
        744944020A0001060F5472614576656E7448616E646C65720B50726F6772616D
        4E616D6506115265706F72744265666F72655072696E740B50726F6772616D54
        797065070B747450726F63656475726506536F75726365068570726F63656475
        7265205265706F72744265666F72655072696E743B0D0A626567696E0D0A2020
        4C6F676F496D6167652E506963747572652E4C6F616446726F6D46696C652827
        433A5C4D61696E52657461696C5C52656365697074735C53746F7265204C6F67
        6F735C726563656970745F6C6F676F2E6A706727293B0D0A656E643B0D0A0D43
        6F6D706F6E656E744E616D6506065265706F7274094576656E744E616D65060B
        4265666F72655072696E74074576656E74494402010000}
    end
    object ppParameterList2: TppParameterList
    end
  end
  object virtualSelectDeclined: TADOQuery
    Connection = DM.ADODBConnect
    CursorType = ctStatic
    AfterOpen = quPaymentsAfterOpen
    OnCalcFields = virtualSelectDeclinedCalcFields
    Parameters = <>
    SQL.Strings = (
      'select'
      #39'MerchantID'#39' as MerchantID'
      ','#39'LastDigit'#39' as LastDigit'
      ','#39'CardType'#39' as CardType'
      ','#39'Invoice'#39' as Invoice'
      ','#39'Amount'#39' as Amount'
      ','#39'SaleDateTime'#39' as SaleDateTime'
      ','#39'EntryMethod'#39' as EntryMethod'
      
        ','#39'A: R:6671 L: M:755847002 E:CHIP D:10/01/2015 T:16:24:09 C:chip' +
        ' P: AID:A0000000041010 TVR:4000008000 IAD:021020000F240000DAC000' +
        '000000000000F TSI:E800 ARC:05 CVM:NONE TC:EMVSale'#39' as NumMeioQui' +
        'tPrevisto'
      'from Sys_Module')
    Left = 85
    Top = 249
    object virtualSelectDeclinedMerchantID: TStringField
      FieldName = 'MerchantID'
      ReadOnly = True
      Size = 10
    end
    object virtualSelectDeclinedLastDigit: TStringField
      FieldName = 'LastDigit'
      ReadOnly = True
      Size = 9
    end
    object virtualSelectDeclinedCardType: TStringField
      FieldName = 'CardType'
      ReadOnly = True
      Size = 8
    end
    object virtualSelectDeclinedInvoice: TStringField
      FieldName = 'Invoice'
      ReadOnly = True
      Size = 7
    end
    object virtualSelectDeclinedAmount: TStringField
      FieldName = 'Amount'
      ReadOnly = True
      Size = 6
    end
    object virtualSelectDeclinedSaleDateTime: TStringField
      FieldName = 'SaleDateTime'
      ReadOnly = True
      Size = 12
    end
    object virtualSelectDeclinedEntryMethod: TStringField
      FieldName = 'EntryMethod'
      ReadOnly = True
      Size = 11
    end
    object virtualSelectDeclinedNumMeioQuitPrevisto: TStringField
      FieldName = 'NumMeioQuitPrevisto'
      Size = 175
    end
    object virtualSelectDeclinedcalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc'
      Size = 10
      Calculated = True
    end
  end
  object ppVirtualSelectDeclined: TppDBPipeline
    DataSource = dataSourceVirtualSelect
    UserName = 'virtualSelect'
    Left = 232
    Top = 255
  end
  object dataSourceVirtualSelect: TDataSource
    DataSet = virtualSelectDeclined
    Left = 157
    Top = 227
  end
end
