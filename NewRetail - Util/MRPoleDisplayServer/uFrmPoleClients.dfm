object FrmPoleClients: TFrmPoleClients
  Left = 190
  Top = 226
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pole Client List'
  ClientHeight = 360
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 319
    Width = 436
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      436
      41)
    object btnClose: TBitBtn
      Left = 355
      Top = 6
      Width = 74
      Height = 31
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Close'
      TabOrder = 0
      OnClick = btnCloseClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 436
    Height = 319
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel2: TPanel
      Left = 345
      Top = 0
      Width = 91
      Height = 319
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
    end
    object grdPoleClient: TcxGrid
      Left = 0
      Top = 0
      Width = 345
      Height = 319
      Align = alClient
      TabOrder = 1
      object grdPoleClientDB: TcxGridDBTableView
        DataController.DataSource = dsPoleClient
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object grdPoleClientDBDescription: TcxGridDBColumn
          DataBinding.FieldName = 'Description'
          Options.Filtering = False
          Width = 130
        end
        object grdPoleClientDBIPAddress: TcxGridDBColumn
          DataBinding.FieldName = 'IPAddress'
          Options.Filtering = False
          Width = 108
        end
        object grdPoleClientDBPort: TcxGridDBColumn
          DataBinding.FieldName = 'Port'
          Options.Filtering = False
          Width = 73
        end
      end
      object grdPoleClientLevel1: TcxGridLevel
        GridView = grdPoleClientDB
      end
    end
  end
  object dsPoleClient: TDataSource
    DataSet = DM.cdsPoleDisplayClient
    Left = 155
    Top = 100
  end
  object siLang: TsiLang
    version = '5.2.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    LangDispatcher = DMGlobal.LanguageDispatcher
    LangDelim = 1
    LangNames.Strings = (
      'English'
      'Portugu'#234's'
      'Espa'#241'ol')
    Language = 'English'
    ExtendedTranslations = <>
    Left = 28
    Top = 40
    TranslationData = {
      737443617074696F6E730D0A5446726D506F6C65436C69656E747301506F6C65
      20436C69656E74204C69737401436F6D70757461646F72657320657869737465
      6E74657301010D0A706E6C427574746F6E73010101010D0A62746E436C6F7365
      0126436C6F7365014665266368617201010D0A50616E656C31010101010D0A50
      616E656C32010101010D0A677264506F6C65436C69656E744442446573637269
      7074696F6E014465736372697074696F6E01446573637269E7E36F01010D0A67
      7264506F6C65436C69656E744442495041646472657373014950416464726573
      7301456E64657265E76F20495001010D0A677264506F6C65436C69656E744442
      506F727401506F727401506F72746101010D0A677264506F6C65436C69656E74
      4C6576656C31010101010D0A737448696E74730D0A5446726D506F6C65436C69
      656E747301010D0A706E6C427574746F6E73010101010D0A62746E436C6F7365
      010101010D0A50616E656C3101010D0A50616E656C3201010D0A677264506F6C
      65436C69656E7401010D0A7374446973706C61794C6162656C730D0A7374466F
      6E74730D0A5446726D506F6C65436C69656E7473014D532053616E7320536572
      69660101010D0A73744D756C74694C696E65730D0A7374446C67734361707469
      6F6E730D0A5761726E696E67015761726E696E670101010D0A4572726F720145
      72726F720101010D0A496E666F726D6174696F6E01496E666F726D6174696F6E
      0101010D0A436F6E6669726D01436F6E6669726D0101010D0A59657301265965
      730101010D0A4E6F01264E6F0101010D0A4F4B014F4B0101010D0A43616E6365
      6C0143616E63656C0101010D0A41626F7274012641626F72740101010D0A5265
      747279012652657472790101010D0A49676E6F7265012649676E6F7265010101
      0D0A416C6C0126416C6C0101010D0A4E6F20546F20416C6C014E266F20746F20
      416C6C0101010D0A59657320546F20416C6C0159657320746F2026416C6C0101
      010D0A48656C70012648656C700101010D0A7374537472696E67730D0A73744F
      74686572537472696E67730D0A706E6C427574746F6E732E48656C704B657977
      6F7264010101010D0A62746E436C6F73652E48656C704B6579776F7264010101
      010D0A5446726D506F6C65436C69656E74732E48656C7046696C65010101010D
      0A5446726D506F6C65436C69656E74732E48656C704B6579776F726401010101
      0D0A50616E656C312E48656C704B6579776F7264010101010D0A50616E656C32
      2E48656C704B6579776F7264010101010D0A677264506F6C65436C69656E742E
      48656C704B6579776F7264010101010D0A677264506F6C65436C69656E744442
      4465736372697074696F6E2E50726F70657274696573436C6173734E616D6501
      0101010D0A677264506F6C65436C69656E7444424950416464726573732E5072
      6F70657274696573436C6173734E616D65010101010D0A677264506F6C65436C
      69656E744442506F72742E50726F70657274696573436C6173734E616D650101
      01010D0A73744C6F63616C65730D0A43757272656E637920537472696E670124
      0101010D0A54686F7573616E6420536570617261746F72012C0101010D0A4465
      63696D616C20536570617261746F72012E0101010D0A44617465205365706172
      61746F72012F0101010D0A53686F7274204461746520466F726D6174014D2F64
      2F797979790101010D0A4C6F6E67204461746520466F726D617401646464642C
      204D4D4D4D2064642C20797979790101010D0A54696D6520536570617261746F
      72013A0101010D0A54696D6520414D20537472696E6701414D0101010D0A5469
      6D6520504D20537472696E6701504D0101010D0A53686F72742054696D652046
      6F726D617401683A6D6D20414D504D0101010D0A4C6F6E672054696D6520466F
      726D617401683A6D6D3A737320414D504D0101010D0A53686F7274204D6F6E74
      68204E616D6573014A616E2C4665622C4D61722C4170722C4D61792C4A756E2C
      4A756C2C4175672C5365702C4F63742C4E6F762C4465630101010D0A4C6F6E67
      204D6F6E7468204E616D6573014A616E756172792C46656272756172792C4D61
      7263682C417072696C2C4D61792C4A756E652C4A756C792C4175677573742C53
      657074656D6265722C4F63746F6265722C4E6F76656D6265722C446563656D62
      65720101010D0A53686F727420446179204E616D65730153756E2C4D6F6E2C54
      75652C5765642C5468752C4672692C5361740101010D0A4C6F6E672044617920
      4E616D65730153756E6461792C4D6F6E6461792C547565736461792C5765646E
      65736461792C54687572736461792C4672696461792C53617475726461790101
      010D0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A5446
      726D506F6C65436C69656E74730144454641554C545F43484152534554010101
      0D0A}
  end
end
