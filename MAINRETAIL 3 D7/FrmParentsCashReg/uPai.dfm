object FrmPai: TFrmPai
  Left = 94
  Top = 111
  Width = 544
  Height = 375
  Caption = 'FrmPai'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtom: TPanel
    Left = 0
    Top = 307
    Width = 536
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object lblUserName: TLabel
      Left = 48
      Top = 16
      Width = 221
      Height = 15
      AutoSize = False
      Caption = 'lblUserName'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 18
      Top = 15
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'User:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object hhh: TPanel
      Left = 386
      Top = 0
      Width = 150
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object spHelp: TSpeedButton
        Tag = 5
        Left = 7
        Top = 6
        Width = 66
        Height = 31
        Caption = '&Help'
        Glyph.Data = {
          0E060000424D0E06000000000000360000002800000016000000160000000100
          180000000000D8050000C40E0000C40E00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFADA6A5BDBABDCECBCECED3D6D6D7D6D6D7D6D6D3
          D6CECBCEC6C3C6ADAEADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
          FFFF00FFFF00FFFF00FFA5A29CC6C3C6D6D7DEDEDFE7D6D7D6D6CBC6D6BEB5D6
          BEB5D6C7C6D6D7D6DEDFE7D6DBDEC6C7C6ADA6A5FF00FFFF00FFFF00FFFF00FF
          0000FF00FFFF00FFFF00FFB5B2ADD6D7D6E7EBEFE7D7CED6A28CC67952BD6539
          BD5D31BD5929BD5D31BD6D4AC69684D6CBC6DEE3E7D6D7D6B5B6B5FF00FFFF00
          FFFF00FF0000FF00FFFF00FFB5B6B5DEDFDEF7F7F7E7C3ADD67D52CE6D39CE6D
          42CE6D42B57D63AD7963B55D31BD5929B55521BD6139CEA694E7E3E7DEDFDEC6
          BEBDFF00FFFF00FF0000FF00FFBDB2ADDEDFDEFFFFFFF7C3ADDE7D4AE78252E7
          8252DE794ACE9E84D6DBDEC6CFD6B58A73BD5D29BD6131BD5929B55529CE967B
          E7E3E7E7E3E7C6B6B5FF00FF0000FF00FFD6D3D6FFFFFFFFD7C6EF8652EF8A5A
          EF8A63E78A5AE77D52DEB6A5FFFFFFD6DFE7B58E7BC65D31C66131BD6131BD5D
          31B55529CEA694E7E7EFDEDFDEFF00FF0000CEC3C6F7F7F7FFFFF7F79A73EF8A
          5AEF9263EF8E63EF8A63E7865ADE865ACEA294BD9684C66D42C66539C66131BD
          6131BD6131BD5929BD6139DECFC6E7EBEFCEC7C60000DEDBDEFFFFFFFFD3BDF7
          8E5AF79263F79263EF8E63EF8A5AE78652DE926BD6AE9CC69684C6714AC66539
          C66539C66131BD6131BD6131BD5521CE9684E7E7E7DEDBDE0000EFEBEFFFFFFF
          FFAE8CF79263F79263F79263EF8E63EF8A5AE78252E7AE9CFFFFFFCED7DEBD7D
          63CE6531C66539C66131BD6131BD6131BD5929C6714ADEDFDEDEDFDE0000F7FB
          FFFFFFFFFFA273F7966BF79263F79263EF8E63EF8A5AE78252DEAA94FFFFFFD6
          D7D6BD8A73C66131C66539C66131BD6131BD6131BD5D31BD6131DECFCEDEE3E7
          0000FFFFFFFFFBF7FF9E73F7966BF79263F79263EF8E63EF8A5AE78252DE8E6B
          FFFBFFF7F7F7C6C3C6B58263C66131C66131C66131BD6131BD5D31BD6131D6C7
          BDDEE3E70000FFFFFFFFFBF7FFA27BFF966BF79263F79263EF8E63EF8A5AE782
          52DE794AD69E84F7F7F7F7F7FFCECFCEB5866BC65D31C66131BD6131BD5D31BD
          6131D6C7BDDEDFE70000FFFFFFFFFFFFFFAA84FF9A6BF7966BF79263EF8A5AE7
          8252E77D4ADE7D4AD66D42CE8663F7EBE7F7F7F7C6C7C6B56D4AC66131BD6131
          BD5D31BD6539DED3CED6D7DE0000F7F7FFFFFFFFFFC39CFF9A6BF7966BF79263
          E7A284E7B6A5D6A28CD67D52D6754ACE6531D69273FFFFFFD6DFDEB58A73BD59
          29BD6131BD5929C67952DEDFDECECFCE0000EFE7E7FFFFFFFFE3CEFF9E73FF9A
          6BFF9263E7BAA5FFFFFFD6DFE7C6927BD66D39CE6531CE8663EFF3F7D6DFE7AD
          8A7BBD5929BD6131BD5529CEA28CDEE3E7BDBABD0000D6CFCEFFFFFFFFFFFFFF
          BA94FF9E6BFF9A6BEFA284FFFBFFF7F3F7CEC7C6C69E8CC69684CEC3BDE7E7E7
          C6CBCEAD715AC65D29BD5929BD6D42DED7D6D6D7DEFF00FF0000FF00FFEFEFEF
          FFFFFFFFF3E7FFAA7BFF9E73FF9A6BE7BEADFFFFFFF7FBFFE7EBEFDEE7EFE7E7
          EFD6D7DEAD968CB55D31BD5D29BD5D29D6B6ADDEE3E7BDBEBDFF00FF0000FF00
          FFFF00FFFFFFFFFFFFFFFFEBDEFFAE84FFA273FF9A6BE7AE94E7D7D6DEDFDED6
          D3D6BDBAB5AD8A7BB56139BD5929BD5D31D6AE9CE7E7E7CECFCEFF00FFFF00FF
          0000FF00FFFF00FFD6D3D6FFFFFFFFFFFFFFF7EFFFC39CFFA273FF9263E7865A
          CE8263C67952BD6939C65929BD5D29C67952D6BEB5E7E7E7D6D3D6FF00FFFF00
          FFFF00FF0000FF00FFFF00FFFF00FFCECBCEFFFBFFFFFFFFFFFFFFFFEBDEFFC7
          ADF7A27BE78A63D67D52CE7D5ACE9273D6B6A5DEDBDEDEE3E7CECFCEFF00FFFF
          00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFDEDFDEF7F7F7FF
          FFFFFFFFFFFFF7F7EFEBE7E7E3DEE7DFDEDEE3E7DEDFE7D6D7D6BDBEBDFF00FF
          FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          BDB6B5CECBCED6D7D6D6DBDED6DBDED6D7D6CED3D6C6C7C6B5B6B5FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
        Margin = 5
      end
      object btClose: TButton
        Left = 77
        Top = 6
        Width = 66
        Height = 31
        Cancel = True
        Caption = 'Close'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
      end
    end
  end
  object pnlLine: TPanel
    Left = 0
    Top = 305
    Width = 536
    Height = 2
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
  end
  object siLang: TsiLangRT
    Version = '6.1.0.1'
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
    StorageDelimiter = '~!@#'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields')
    RTEditorActionsOptions = []
    Left = 16
    Top = 16
    TranslationData = {
      737443617074696F6E730D0A737448696E74730D0A7374446973706C61794C61
      62656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A737444
      6C677343617074696F6E730D0A5761726E696E67015761726E696E670101010D
      0A4572726F72014572726F720101010D0A496E666F726D6174696F6E01496E66
      6F726D6174696F6E0101010D0A436F6E6669726D01436F6E6669726D0101010D
      0A59657301265965730101010D0A4E6F01264E6F0101010D0A4F4B014F4B0101
      010D0A43616E63656C0143616E63656C0101010D0A41626F7274012641626F72
      740101010D0A5265747279012652657472790101010D0A49676E6F7265012649
      676E6F72650101010D0A416C6C0126416C6C0101010D0A4E6F20546F20416C6C
      014E266F20746F20416C6C0101010D0A59657320546F20416C6C015965732074
      6F2026416C6C0101010D0A48656C70012648656C700101010D0A737453747269
      6E67730D0A73744F74686572537472696E67730D0A73744C6F63616C65730D0A
      43757272656E637920537472696E67015224200101010D0A54686F7573616E64
      20536570617261746F72012E0101010D0A446563696D616C2053657061726174
      6F72012C0101010D0A4461746520536570617261746F72012F0101010D0A5368
      6F7274204461746520466F726D61740164642F4D4D2F79790101010D0A4C6F6E
      67204461746520466F726D617401646464642C20642720646520274D4D4D4D27
      2064652027797979790101010D0A54696D6520536570617261746F72013A0101
      010D0A54696D6520414D20537472696E67010101010D0A54696D6520504D2053
      7472696E67010101010D0A53686F72742054696D6520466F726D61740168683A
      6D6D0101010D0A4C6F6E672054696D6520466F726D61740168683A6D6D3A7373
      0101010D0A53686F7274204D6F6E7468204E616D6573016A616E2C6665762C6D
      61722C6162722C6D61692C6A756E2C6A756C2C61676F2C7365742C6F75742C6E
      6F762C64657A0101010D0A4C6F6E67204D6F6E7468204E616D6573016A616E65
      69726F2C66657665726569726F2C6D6172E76F2C616272696C2C6D61696F2C6A
      756E686F2C6A756C686F2C61676F73746F2C736574656D62726F2C6F75747562
      726F2C6E6F76656D62726F2C64657A656D62726F0101010D0A53686F72742044
      6179204E616D657301646F6D2C7365672C7465722C7175612C7175692C736578
      2C73E1620101010D0A4C6F6E6720446179204E616D657301646F6D696E676F2C
      736567756E64612D66656972612C746572E7612D66656972612C717561727461
      2D66656972612C7175696E74612D66656972612C73657874612D66656972612C
      73E16261646F0101010D0A7374436F6C6C656374696F6E730D0A737443686172
      536574730D0A}
  end
end
