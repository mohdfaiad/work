inherited brwFrmParentBrw: TbrwFrmParentBrw
  Caption = 'brwFrmParentBrw'
  ClientHeight = 388
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    Top = 347
    inherited lblUserName: TLabel
      Font.Charset = DEFAULT_CHARSET
      Font.Name = 'Arial'
    end
    inherited Label15: TLabel
      Height = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Name = 'Arial'
    end
  end
  inherited pnlDetail: TPanel
    Height = 8
  end
  inherited EspacamentoEsquerdo: TPanel
    Height = 8
  end
  inherited EspacamentoDireito: TPanel
    Height = 8
  end
  object pnlPPageControl: TPanel [6]
    Left = 0
    Top = 88
    Width = 630
    Height = 259
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnlPPageControl'
    TabOrder = 6
    object PPageControl: TPageControl
      Left = 0
      Top = 0
      Width = 630
      Height = 259
      ActivePage = tsBrowse
      Align = alClient
      TabOrder = 0
      OnChange = PPageControlChange
      object tsBrowse: TTabSheet
        Caption = 'tsBrowse'
        object LabelName: TLabel
          Left = 0
          Top = 0
          Width = 622
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Change for the correct name'
          Color = clBtnShadow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object pnlComand: TPanel
          Left = 515
          Top = 21
          Width = 107
          Height = 207
          Align = alRight
          BevelOuter = bvNone
          Color = 14607076
          TabOrder = 1
          object btAdd: TSpeedButton
            Left = 2
            Top = 0
            Width = 104
            Height = 24
            Caption = 'F2 &Add'
            Flat = True
            Margin = 3
            Spacing = 5
            OnClick = btAddClick
          end
          object btDetail: TSpeedButton
            Tag = 1
            Left = 2
            Top = 24
            Width = 104
            Height = 24
            Caption = 'F3 &Details '
            Flat = True
            Margin = 3
            Spacing = 5
            OnClick = btDetailClick
          end
          object btRemove: TSpeedButton
            Tag = 2
            Left = 2
            Top = 48
            Width = 104
            Height = 24
            Caption = 'F4 Re&move'
            Flat = True
            Margin = 3
            Spacing = 5
            OnClick = btRemoveClick
          end
          object btGroup: TSpeedButton
            Tag = 3
            Left = 2
            Top = 135
            Width = 104
            Height = 23
            AllowAllUp = True
            GroupIndex = 88997
            Caption = '&Grouping'
            Flat = True
            Margin = 3
            Spacing = 5
            OnClick = btGroupClick
          end
          object btColumn: TSpeedButton
            Tag = 4
            Left = 2
            Top = 158
            Width = 104
            Height = 23
            AllowAllUp = True
            GroupIndex = 1235
            Caption = '&Columns'
            Flat = True
            Margin = 3
            Spacing = 5
            OnClick = btColumnClick
          end
          object btPreview: TSpeedButton
            Tag = 5
            Left = 2
            Top = 77
            Width = 104
            Height = 26
            Caption = 'F5 &Preview'
            Flat = True
            Margin = 3
            Spacing = 8
            OnClick = btPreviewClick
          end
          object btExcel: TSpeedButton
            Tag = 7
            Left = 2
            Top = 103
            Width = 104
            Height = 26
            Hint = 'Export grid to Spreadsheet'
            Caption = 'F6 Spreadsheet'
            Flat = True
            Margin = 3
            ParentShowHint = False
            ShowHint = True
            Spacing = 5
            OnClick = btExcelClick
          end
          object Panel8: TPanel
            Left = 12
            Top = 131
            Width = 89
            Height = 2
            BevelOuter = bvLowered
            TabOrder = 0
          end
          object Panel6: TPanel
            Left = 11
            Top = 74
            Width = 89
            Height = 2
            BevelOuter = bvLowered
            TabOrder = 1
          end
        end
        object pnlsdjhfksdhfjksdhf: TPanel
          Left = 0
          Top = 17
          Width = 622
          Height = 4
          Align = alTop
          BevelOuter = bvNone
          Color = 14607076
          TabOrder = 0
        end
        object grdBrowse: TcxGrid
          Left = 0
          Top = 21
          Width = 515
          Height = 207
          Align = alClient
          TabOrder = 2
          LookAndFeel.Kind = lfFlat
          object grdBrowseDB: TcxGridDBTableView
            OnDblClick = grdBrowseDBDblClick
            DataController.DataSource = dsBrowse
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OnFocusedItemChanged = grdBrowseDBFocusedItemChanged
            Filtering.MaxDropDownCount = 50
            Filtering.Visible = fvNever
            OptionsBehavior.IncSearch = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GridLines = glHorizontal
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            Preview.AutoHeight = False
            Preview.MaxLineCount = 2
            OnColumnHeaderClick = grdBrowseDBColumnHeaderClick
            OnCustomization = grdBrowseDBCustomization
          end
          object grdBrowseLevel: TcxGridLevel
            GridView = grdBrowseDB
          end
        end
      end
    end
  end
  inherited siLang: TsiLangRT
    TranslationData = {
      737443617074696F6E730D0A5462727746726D506172656E7442727701627277
      46726D506172656E744272770101010D0A50616E656C31010101010D0A6C626C
      557365724E616D65016C626C557365724E616D650101010D0A4C6162656C3135
      01557365723A0101010D0A4573706163616D656E746F496E666572696F720101
      01010D0A50616E656C33010101010D0A686868010101010D0A737048656C7001
      2648656C700101010D0A627443616E63656C0143616E63656C0101010D0A6274
      436C6F736501536176650101010D0A706E6C4E617669676174696F6E01010101
      0D0A62744669727374526563013C3C0101010D0A62745072696F72526563013C
      0101010D0A62744E657874526563013E0101010D0A62744C617374526563013E
      3E0101010D0A50616E656C32010101010D0A6C626C5375624D656E75014D6169
      6E204D656E750101010D0A6C626C4D656E75014669727374204D656E75204974
      656D0101010D0A4573706163616D656E746F5375706572696F72010101010D0A
      454545010101010D0A706E6C4175746F496E63010101010D0A62744C6F6F7049
      6E63010101010D0A6C626C4D6F6469666965640145646974204D6F6465010101
      0D0A706E6C4B6579010101010D0A50616E656C34010101010D0A706E6C446574
      61696C010101010D0A4573706163616D656E746F457371756572646F01010101
      0D0A4573706163616D656E746F4469726569746F010101010D0A706E6C505061
      6765436F6E74726F6C01706E6C5050616765436F6E74726F6C0101010D0A7473
      42726F77736501747342726F7773650101010D0A4C6162656C4E616D65014368
      616E676520666F722074686520636F7272656374206E616D650101010D0A706E
      6C436F6D616E64010101010D0A627441646401463220264164640101010D0A62
      7444657461696C014633202644657461696C73200101010D0A627452656D6F76
      65014634205265266D6F76650101010D0A627447726F7570012647726F757069
      6E670101010D0A6274436F6C756D6E0126436F6C756D6E730101010D0A627450
      7265766965770146352026507265766965770101010D0A6274457863656C0146
      362053707265616473686565740101010D0A50616E656C38010101010D0A5061
      6E656C36010101010D0A706E6C73646A68666B736468666A6B73646866010101
      010D0A737448696E74730D0A5462727746726D506172656E7442727701010D0A
      50616E656C31010101010D0A6C626C557365724E616D65010101010D0A4C6162
      656C3135010101010D0A4573706163616D656E746F496E666572696F72010101
      010D0A50616E656C33010101010D0A686868010101010D0A737048656C700101
      01010D0A627443616E63656C010101010D0A6274436C6F7365010101010D0A70
      6E6C4E617669676174696F6E010101010D0A62744669727374526563014D6F76
      6520746F204669727374205265636F72640101010D0A62745072696F72526563
      014D6F766520746F205072696F72205265636F72640101010D0A62744E657874
      526563014D6F766520746F204E657874205265636F72640101010D0A62744C61
      7374526563014D6F766520746F204C617374205265636F72640101010D0A5061
      6E656C32010101010D0A496D61676531010101010D0A6C626C5375624D656E75
      010101010D0A6C626C4D656E75010101010D0A4573706163616D656E746F5375
      706572696F72010101010D0A454545010101010D0A706E6C4175746F496E6301
      5072657373206865726520746F20636F6E74696E75696E6720696E7365727420
      646174610101010D0A62744C6F6F70496E6301436F6E74696E75696E6720696E
      73657274206461746120776974686F757420636C6F73696E6720746865207363
      7265656E2E0101010D0A6C626C4D6F646966696564010101010D0A706E6C4B65
      79010101010D0A50616E656C34010101010D0A706E6C44657461696C01010101
      0D0A4573706163616D656E746F457371756572646F010101010D0A4573706163
      616D656E746F4469726569746F010101010D0A706E6C5050616765436F6E7472
      6F6C010101010D0A5050616765436F6E74726F6C010101010D0A747342726F77
      7365010101010D0A4C6162656C4E616D65010101010D0A706E6C436F6D616E64
      010101010D0A6274416464010101010D0A627444657461696C010101010D0A62
      7452656D6F7665010101010D0A627447726F7570010101010D0A6274436F6C75
      6D6E010101010D0A627450726576696577010101010D0A6274457863656C0145
      78706F7274206772696420746F2053707265616473686565740101010D0A5061
      6E656C38010101010D0A50616E656C36010101010D0A706E6C73646A68666B73
      6468666A6B73646866010101010D0A7374446973706C61794C6162656C730D0A
      7374466F6E74730D0A5462727746726D506172656E74427277015461686F6D61
      0101010D0A6C626C557365724E616D6501417269616C0101010D0A4C6162656C
      313501417269616C0101010D0A627443616E63656C015461686F6D610101010D
      0A6274436C6F7365015461686F6D610101010D0A627446697273745265630141
      7269616C0101010D0A62745072696F7252656301417269616C0101010D0A6274
      4E65787452656301417269616C0101010D0A62744C6173745265630141726961
      6C0101010D0A6C626C5375624D656E750156657264616E610101010D0A6C626C
      4D656E750156657264616E610101010D0A6C626C4D6F64696669656401536D61
      6C6C20466F6E74730101010D0A4C6162656C4E616D65015461686F6D61010101
      0D0A73744D756C74694C696E65730D0A7175466F726D2E46696C746572466965
      6C6473010101010D0A7175466F726D2E46696C74657256616C75657301010101
      0D0A466F726D436F6E6669672E446570656E64656E745461626C654B65797301
      0101010D0A466F726D436F6E6669672E446570656E64656E745461626C657301
      0101010D0A466F726D436F6E6669672E52657175697265644669656C64730101
      01010D0A466F726D436F6E6669672E556E697175654669656C6473010101010D
      0A717542726F7773652E46696C7465724669656C6473010101010D0A71754272
      6F7773652E46696C74657256616C756573010101010D0A7374446C6773436170
      74696F6E730D0A5761726E696E67015761726E696E670101010D0A4572726F72
      014572726F720101010D0A496E666F726D6174696F6E01496E666F726D617469
      6F6E0101010D0A436F6E6669726D01436F6E6669726D0101010D0A5965730126
      5965730101010D0A4E6F01264E6F0101010D0A4F4B014F4B0101010D0A43616E
      63656C0143616E63656C0101010D0A41626F7274012641626F72740101010D0A
      5265747279012652657472790101010D0A49676E6F7265012649676E6F726501
      01010D0A416C6C0126416C6C0101010D0A4E6F20546F20416C6C014E266F2074
      6F20416C6C0101010D0A59657320546F20416C6C0159657320746F2026416C6C
      0101010D0A48656C70012648656C700101010D0A7374537472696E67730D0A73
      744F74686572537472696E67730D0A7175466F726D2E436F6D6D616E64546578
      74010101010D0A7175466F726D2E436F6E6E656374696F6E537472696E670101
      01010D0A7175466F726D2E46696C746572010101010D0A7175466F726D2E496E
      6465784669656C644E616D6573010101010D0A7175466F726D2E4B6579466965
      6C6473010101010D0A466F726D436F6E6669672E456E7469646164654E6F6D65
      010101010D0A5462727746726D506172656E744272772E48656C7046696C6501
      0101010D0A717542726F7773652E436F6D6D616E6454657874010101010D0A71
      7542726F7773652E436F6E6E656374696F6E537472696E67010101010D0A7175
      42726F7773652E46696C746572010101010D0A717542726F7773652E496E6465
      784669656C644E616D6573010101010D0A717542726F7773652E4B6579466965
      6C6473010101010D0A53442E46696C746572014D6963726F736F667420457863
      656C7C2A2E786C730101010D0A53442E5469746C65010101010D0A73744C6F63
      616C65730D0A43757272656E637920537472696E6701240101010D0A54686F75
      73616E6420536570617261746F72012C0101010D0A446563696D616C20536570
      617261746F72012E0101010D0A4461746520536570617261746F72012F010101
      0D0A53686F7274204461746520466F726D6174014D2F642F797979790101010D
      0A4C6F6E67204461746520466F726D617401646464642C204D4D4D4D2064642C
      20797979790101010D0A54696D6520536570617261746F72013A0101010D0A54
      696D6520414D20537472696E6701414D0101010D0A54696D6520504D20537472
      696E6701504D0101010D0A53686F72742054696D6520466F726D617401683A6D
      6D20414D504D0101010D0A4C6F6E672054696D6520466F726D617401683A6D6D
      3A737320414D504D0101010D0A53686F7274204D6F6E7468204E616D6573014A
      616E2C4665622C4D61722C4170722C4D61792C4A756E2C4A756C2C4175672C53
      65702C4F63742C4E6F762C4465630101010D0A4C6F6E67204D6F6E7468204E61
      6D6573014A616E756172792C46656272756172792C4D617263682C417072696C
      2C4D61792C4A756E652C4A756C792C4175677573742C53657074656D6265722C
      4F63746F6265722C4E6F76656D6265722C446563656D6265720101010D0A5368
      6F727420446179204E616D65730153756E2C4D6F6E2C5475652C5765642C5468
      752C4672692C5361740101010D0A4C6F6E6720446179204E616D65730153756E
      6461792C4D6F6E6461792C547565736461792C5765646E65736461792C546875
      72736461792C4672696461792C53617475726461790101010D0A7374436F6C6C
      656374696F6E730D0A737443686172536574730D0A5462727746726D50617265
      6E7442727701414E53495F434841525345540101010D0A6C626C557365724E61
      6D650144454641554C545F434841525345540101010D0A4C6162656C31350144
      454641554C545F434841525345540101010D0A6274436C6F736501414E53495F
      434841525345540101010D0A6C626C4D656E7501414E53495F43484152534554
      0101010D0A6C626C5375624D656E7501414E53495F434841525345540101010D
      0A627443616E63656C01414E53495F434841525345540101010D0A6274466972
      737452656301414E53495F434841525345540101010D0A62745072696F725265
      6301414E53495F434841525345540101010D0A62744E65787452656301414E53
      495F434841525345540101010D0A62744C61737452656301414E53495F434841
      525345540101010D0A6C626C4D6F64696669656401414E53495F434841525345
      540101010D0A4C6162656C4E616D6501414E53495F434841525345540101010D
      0A}
  end
  inherited dsForm: TDataSource
    Left = 81
    Top = 281
  end
  inherited quForm: TPowerADOQuery
    BeforeClose = quFormBeforeClose
    CommandTimeout = 180
    Left = 81
    Top = 232
  end
  inherited FormConfig: TFormConfig
    Left = 211
    Top = 234
  end
  object quBrowse: TPowerADOQuery
    Connection = DM.ADODBConnect
    CommandTimeout = 180
    Parameters = <>
    Left = 147
    Top = 234
  end
  object dsBrowse: TDataSource
    DataSet = quBrowse
    OnStateChange = dsBrowseStateChange
    Left = 147
    Top = 285
  end
  object SD: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel|*.xls'
    InitialDir = 'C:\'
    Left = 263
    Top = 232
  end
  object gridPrinter: TdxComponentPrinter
    CurrentLink = gridPrinterLink
    PreviewOptions.PreviewBoundsRect = {0000000000000000A005000068030000}
    Version = 0
    Left = 265
    Top = 289
    object gridPrinterLink: TdxGridReportLink
      Active = True
      Caption = 'New Report'
      Component = grdBrowse
      DateTime = 43260.956679363430000000
      DesignerHelpContext = 0
      PrinterPage.Footer = 6350
      PrinterPage.Header = 2692
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.MinMargins.Bottom = 0
      PrinterPage.MinMargins.Left = 0
      PrinterPage.MinMargins.Right = 0
      PrinterPage.MinMargins.Top = 0
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsCards.Shadow.Color = clBlack
      BuiltInReportLink = True
    end
  end
  object GridPopupMenu: TcxGridPopupMenu
    Grid = grdBrowse
    PopupMenus = <>
    Left = 315
    Top = 234
  end
end
