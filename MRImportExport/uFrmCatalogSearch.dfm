inherited FrmCatalogSearch: TFrmCatalogSearch
  Left = 288
  Top = 104
  Width = 742
  Height = 505
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Catalog Search (I/E)'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grdCatalog: TcxGrid [0]
    Left = 0
    Top = 93
    Width = 734
    Height = 353
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object grdCatalogDBTableView: TcxGridDBTableView
      DataController.DataSource = dtsCatalog
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdCatalogDBTableViewSkuProduct: TcxGridDBColumn
        Caption = 'Sku Product'
        DataBinding.FieldName = 'SkuProduct'
        Width = 67
      end
      object grdCatalogDBTableViewUpc: TcxGridDBColumn
        DataBinding.FieldName = 'Upc'
        Width = 66
      end
      object grdCatalogDBTableViewTitle: TcxGridDBColumn
        DataBinding.FieldName = 'Title'
        Width = 67
      end
      object grdCatalogDBTableViewCategory: TcxGridDBColumn
        DataBinding.FieldName = 'Category'
        Width = 66
      end
      object grdCatalogDBTableViewSubCategory: TcxGridDBColumn
        Caption = 'Sub-Category'
        DataBinding.FieldName = 'SubCategory'
        Width = 67
      end
      object grdCatalogDBTableViewGroup: TcxGridDBColumn
        Caption = 'Group'
        DataBinding.FieldName = 'CGroup'
        Width = 74
      end
      object grdCatalogDBTableViewMSRP: TcxGridDBColumn
        DataBinding.FieldName = 'MSRP'
        Width = 65
      end
      object grdCatalogDBTableViewSkuVendor: TcxGridDBColumn
        Caption = 'Sku Vendor'
        DataBinding.FieldName = 'SkuVendor'
        Width = 65
      end
      object grdCatalogDBTableViewVendorCost: TcxGridDBColumn
        Caption = 'Vendor Cost'
        DataBinding.FieldName = 'VendorCost'
        Width = 65
      end
      object grdCatalogDBTableViewVendor: TcxGridDBColumn
        DataBinding.FieldName = 'Vendor'
        Width = 65
      end
      object grdCatalogDBTableViewVendorCompany: TcxGridDBColumn
        Caption = 'Vendor Company'
        DataBinding.FieldName = 'VendorCompany'
        Width = 65
      end
    end
    object grdCatalogLevel: TcxGridLevel
      GridView = grdCatalogDBTableView
    end
  end
  object pnlFilter: TPanel [1]
    Left = 0
    Top = 0
    Width = 734
    Height = 93
    Align = alTop
    BevelOuter = bvNone
    Color = clBtnShadow
    TabOrder = 0
    object lblVendor: TLabel
      Left = 35
      Top = 12
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vendor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCategory: TLabel
      Left = 331
      Top = 12
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sub-Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSubCategory: TLabel
      Left = 373
      Top = 40
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Group'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDepartment: TLabel
      Left = 25
      Top = 40
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbxVendor: TcxLookupComboBox
      Left = 80
      Top = 8
      Width = 153
      Height = 21
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'IDVendor'
      Properties.ListColumns = <
        item
          FieldName = 'Vendor'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DMImportExport.dtsLUCatalogVendor
      Style.BorderStyle = ebs3D
      TabOrder = 0
    end
    object cbxCategory: TcxLookupComboBox
      Left = 412
      Top = 8
      Width = 153
      Height = 21
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'Category'
      Properties.ListColumns = <
        item
          FieldName = 'Category'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DMImportExport.dtsLUCatalogCategory
      Style.BorderStyle = ebs3D
      TabOrder = 4
    end
    object cbxDepartment: TcxLookupComboBox
      Left = 80
      Top = 36
      Width = 153
      Height = 21
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'Department'
      Properties.ListColumns = <
        item
          FieldName = 'Department'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DMImportExport.dtsLUCatalogDepartment
      Style.BorderStyle = ebs3D
      TabOrder = 2
    end
    object cbxSubCategory: TcxLookupComboBox
      Left = 412
      Top = 36
      Width = 153
      Height = 21
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'SubCategory'
      Properties.ListColumns = <
        item
          FieldName = 'SubCategory'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DMImportExport.dtsLUCatalogSubCategory
      Style.BorderStyle = ebs3D
      TabOrder = 6
    end
    object cbxMethod: TComboBox
      Left = 80
      Top = 64
      Width = 100
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'Start with'
      Items.Strings = (
        'Start with'
        'End with'
        'Contains')
    end
    object cbxType: TComboBox
      Left = 184
      Top = 64
      Width = 141
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 9
      Items.Strings = (
        'UPC'
        'Sku '
        'Vendor Sku '
        'Title')
    end
    object edtSearch: TEdit
      Left = 328
      Top = 64
      Width = 276
      Height = 21
      TabOrder = 10
    end
    object btnSearch: TBitBtn
      Left = 628
      Top = 36
      Width = 91
      Height = 27
      Caption = '&Search'
      TabOrder = 11
      OnClick = btnSearchClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FF00FF7D8497
        747DAEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF747DAE4985D6767DAC747DAEFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA4B1F75BB9FD
        4589DF707CAF747DAEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFA0A5FA55B5FC4588DE727CAF747DAEFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A1AFFA57B6FC4689DE747DAE747DAEFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1A5FB57B1FC468AD59385A6FF
        00FFFF00FFCEA890CEA890CEA890CEA890FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFA5ADFA95BFE4A69E9EC86DA4E0A5A3EDD5ADF0E4C2F2E7C9EBD6
        BDDE8EBECEA890FE02FDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEADA9E6
        C1A0FBF0C2FFFCD1FFFFD9FFFFE7FFFFF6F8F2EED4B6B5CEA890FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFDEB6ABFFEDBCFFEFBAFFFCD0FFFFDFFFFDF2FFFF
        FFFEFEFCEEE1D0D57FB6FF00FFFF00FFFF00FFFF00FFFF00FFCEA890E9D2B4FF
        EABAFFE4B2FFFCD1FFFFDFFFFEF6FFFDFAFFFCF3FCF6D7CBA693FF00FFFF00FF
        FF00FFFF00FFFF00FFCEA890F2E1BCFFE4B2FFE4B2FFF8C9FFFFDAFFFEE6FFFD
        EAFFFEDFFFFDD3D1B7A5FF00FFFF00FFFF00FFFF00FFFF00FFCEA890F1DFBBFF
        F1C3FFE9B6FFECB9FFF9CBFFFDD4FFFDD5FFFDD3FFF6CAD0A993FF00FFFF00FF
        FF00FFFF00FFFF00FFCEA890E7CAB6FFF9E8FFF2DAFFE2BBFFEBB5FFF0BCFFF1
        BDFFF6C4F7E4BCCDA294FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA890F4
        E7E0FEFDFCFFEACBFFE4B3FBDCADFFE8B9FCEEBEDDAA94CEA890FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFCEA890E8D2CAF9EED1FFF4C3FDF2C1F2E0
        B7DFAF9BCEA890FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFCEA890CCA590CEA890D1B09DD5B1A8CEA890FF00FFFF00FF}
    end
    object btnAllVendor: TButton
      Left = 240
      Top = 8
      Width = 29
      Height = 21
      Caption = 'All'
      TabOrder = 1
      OnClick = btnAllVendorClick
    end
    object btnAllDepartment: TButton
      Left = 240
      Top = 36
      Width = 29
      Height = 21
      Caption = 'All'
      TabOrder = 3
      OnClick = btnAllDepartmentClick
    end
    object btnAllCategory: TButton
      Left = 572
      Top = 8
      Width = 29
      Height = 21
      Caption = 'All'
      TabOrder = 5
      OnClick = btnAllCategoryClick
    end
    object btnAllSubCategory: TButton
      Left = 572
      Top = 36
      Width = 29
      Height = 21
      Caption = 'All'
      TabOrder = 7
      OnClick = btnAllSubCategoryClick
    end
  end
  object pnlBottom: TPanel [2]
    Left = 0
    Top = 446
    Width = 734
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      734
      32)
    object btnClose: TButton
      Left = 652
      Top = 5
      Width = 75
      Height = 23
      Anchors = [akTop, akRight]
      Caption = '&Close'
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object btnColumns: TButton
      Left = 572
      Top = 5
      Width = 75
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = 'Columns'
      TabOrder = 1
      OnClick = btnColumnsClick
    end
    object btnGroup: TButton
      Left = 493
      Top = 5
      Width = 75
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = 'Group'
      TabOrder = 2
      OnClick = btnGroupClick
    end
  end
  inherited siLang: TsiLang
    Top = 132
    TranslationData = {
      737443617074696F6E730D0A5446726D436174616C6F67536561726368014361
      74616C6F67205365617263680101010D0A677264436174616C6F674442546162
      6C6556696577536B7550726F6475637401536B752050726F647563740101010D
      0A677264436174616C6F6744425461626C655669657755706301557063010101
      0D0A677264436174616C6F6744425461626C65566965775469746C6501546974
      6C650101010D0A677264436174616C6F6744425461626C655669657743617465
      676F7279014465706172746D656E740101010D0A677264436174616C6F674442
      5461626C655669657753756243617465676F72790143617465676F7279010101
      0D0A677264436174616C6F6744425461626C655669657747726F757001537562
      2D43617465676F72790101010D0A677264436174616C6F6744425461626C6556
      6965774D535250014D5352500101010D0A677264436174616C6F674442546162
      6C6556696577536B7556656E646F7201536B752056656E646F720101010D0A67
      7264436174616C6F6744425461626C655669657756656E646F72436F73740156
      656E646F7220436F73740101010D0A677264436174616C6F6744425461626C65
      5669657756656E646F720156656E646F720101010D0A677264436174616C6F67
      44425461626C655669657756656E646F72436F6D70616E790156656E646F7220
      436F6D70616E790101010D0A677264436174616C6F674C6576656C010101010D
      0A706E6C46696C746572010101010D0A6C626C56656E646F720156656E646F72
      0101010D0A6C626C43617465676F72790143617465676F72790101010D0A6C62
      6C53756243617465676F7279015375622D43617465676F72790101010D0A6C62
      6C4465706172746D656E74014465706172746D656E740101010D0A706E6C426F
      74746F6D010101010D0A62746E436C6F73650126436C6F73650101010D0A6274
      6E53656172636801265365617263680101010D0A737448696E74730D0A544672
      6D436174616C6F6753656172636801010D0A677264436174616C6F6701010101
      0D0A706E6C46696C746572010101010D0A6C626C56656E646F72010101010D0A
      6C626C43617465676F7279010101010D0A6C626C53756243617465676F727901
      0101010D0A6C626C4465706172746D656E74010101010D0A63627856656E646F
      72010101010D0A63627843617465676F7279010101010D0A6362784465706172
      746D656E74010101010D0A63627853756243617465676F7279010101010D0A70
      6E6C426F74746F6D010101010D0A62746E436C6F7365010101010D0A6362784D
      6574686F64010101010D0A63627854797065010101010D0A6564745365617263
      68010101010D0A62746E536561726368010101010D0A7374446973706C61794C
      6162656C730D0A7374466F6E74730D0A5446726D436174616C6F675365617263
      68014D532053616E732053657269660101010D0A6C626C56656E646F72014D53
      2053616E732053657269660101010D0A6C626C43617465676F7279014D532053
      616E732053657269660101010D0A6C626C53756243617465676F7279014D5320
      53616E732053657269660101010D0A6C626C4465706172746D656E74014D5320
      53616E732053657269660101010D0A73744D756C74694C696E65730D0A636278
      4D6574686F642E4974656D73012253746172742077697468222C22456E642077
      697468222C436F6E7461696E730101010D0A636278547970652E4974656D7301
      5570632C22536B752050726F64756374222C22536B752056656E646F72222C54
      69746C650101010D0A7374446C677343617074696F6E730D0A5761726E696E67
      015761726E696E670101010D0A4572726F72014572726F720101010D0A496E66
      6F726D6174696F6E01496E666F726D6174696F6E0101010D0A436F6E6669726D
      01436F6E6669726D0101010D0A59657301265965730101010D0A4E6F01264E6F
      0101010D0A4F4B014F4B0101010D0A43616E63656C0143616E63656C0101010D
      0A41626F7274012641626F72740101010D0A5265747279012652657472790101
      010D0A49676E6F7265012649676E6F72650101010D0A416C6C0126416C6C0101
      010D0A4E6F20546F20416C6C014E266F20746F20416C6C0101010D0A59657320
      546F20416C6C0159657320746F2026416C6C0101010D0A48656C70012648656C
      700101010D0A7374537472696E67730D0A73744F74686572537472696E67730D
      0A5446726D436174616C6F675365617263682E48656C7046696C65010101010D
      0A677264436174616C6F6744425461626C6556696577536B7550726F64756374
      2E50726F70657274696573436C6173734E616D65010101010D0A677264436174
      616C6F6744425461626C65566965775570632E50726F70657274696573436C61
      73734E616D65010101010D0A677264436174616C6F6744425461626C65566965
      775469746C652E50726F70657274696573436C6173734E616D65010101010D0A
      677264436174616C6F6744425461626C655669657743617465676F72792E5072
      6F70657274696573436C6173734E616D65010101010D0A677264436174616C6F
      6744425461626C655669657753756243617465676F72792E50726F7065727469
      6573436C6173734E616D65010101010D0A677264436174616C6F674442546162
      6C655669657747726F75702E50726F70657274696573436C6173734E616D6501
      0101010D0A677264436174616C6F6744425461626C65566965774D5352502E50
      726F70657274696573436C6173734E616D65010101010D0A677264436174616C
      6F6744425461626C6556696577536B7556656E646F722E50726F706572746965
      73436C6173734E616D65010101010D0A677264436174616C6F6744425461626C
      655669657756656E646F72436F73742E50726F70657274696573436C6173734E
      616D65010101010D0A677264436174616C6F6744425461626C65566965775665
      6E646F722E50726F70657274696573436C6173734E616D65010101010D0A6772
      64436174616C6F6744425461626C655669657756656E646F72436F6D70616E79
      2E50726F70657274696573436C6173734E616D65010101010D0A636473436174
      616C6F672E436F6D6D616E6454657874010101010D0A636473436174616C6F67
      2E46696C746572010101010D0A636473436174616C6F672E496E646578466965
      6C644E616D6573010101010D0A636473436174616C6F672E50726F7669646572
      4E616D650164737053656172636850726F647563740101010D0A6362784D6574
      686F642E5465787401537461727420776974680101010D0A636278547970652E
      54657874010101010D0A6564745365617263682E54657874010101010D0A7374
      4C6F63616C65730D0A43757272656E637920537472696E6701240101010D0A54
      686F7573616E6420536570617261746F72012C0101010D0A446563696D616C20
      536570617261746F72012E0101010D0A4461746520536570617261746F72012F
      0101010D0A53686F7274204461746520466F726D6174014D2F642F7979797901
      01010D0A4C6F6E67204461746520466F726D617401646464642C204D4D4D4D20
      64642C20797979790101010D0A54696D6520536570617261746F72013A010101
      0D0A54696D6520414D20537472696E6701414D0101010D0A54696D6520504D20
      537472696E6701504D0101010D0A53686F72742054696D6520466F726D617401
      683A6D6D20414D504D0101010D0A4C6F6E672054696D6520466F726D61740168
      3A6D6D3A737320414D504D0101010D0A53686F7274204D6F6E7468204E616D65
      73014A616E2C4665622C4D61722C4170722C4D61792C4A756E2C4A756C2C4175
      672C5365702C4F63742C4E6F762C4465630101010D0A4C6F6E67204D6F6E7468
      204E616D6573014A616E756172792C46656272756172792C4D617263682C4170
      72696C2C4D61792C4A756E652C4A756C792C4175677573742C53657074656D62
      65722C4F63746F6265722C4E6F76656D6265722C446563656D6265720101010D
      0A53686F727420446179204E616D65730153756E2C4D6F6E2C5475652C576564
      2C5468752C4672692C5361740101010D0A4C6F6E6720446179204E616D657301
      53756E6461792C4D6F6E6461792C547565736461792C5765646E65736461792C
      54687572736461792C4672696461792C53617475726461790101010D0A737443
      6F6C6C656374696F6E730D0A737443686172536574730D0A5446726D43617461
      6C6F675365617263680144454641554C545F434841525345540101010D0A6C62
      6C56656E646F720144454641554C545F43484152534554010D0A6C626C436174
      65676F72790144454641554C545F43484152534554010D0A6C626C5375624361
      7465676F72790144454641554C545F43484152534554010D0A6C626C44657061
      72746D656E740144454641554C545F43484152534554010D0A}
  end
  object dtsCatalog: TDataSource
    DataSet = cdsCatalog
    Left = 236
    Top = 176
  end
  object cdsCatalog: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 250
    Params = <>
    ProviderName = 'dspSearchProduct'
    RemoteServer = DMImportExport.CatalogConn
    BeforeGetRecords = cdsCatalogBeforeGetRecords
    Left = 172
    Top = 176
  end
end
