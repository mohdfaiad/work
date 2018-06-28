object FrmSchedule: TFrmSchedule
  Left = 135
  Top = 88
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Manage Schedule'
  ClientHeight = 344
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    444
    344)
  PixelsPerInch = 96
  TextHeight = 13
  object lbSchedule: TLabel
    Left = 119
    Top = 281
    Width = 18
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = '      '
  end
  object lbStartat: TLabel
    Left = 119
    Top = 259
    Width = 18
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = '      '
  end
  object Label4: TLabel
    Left = 77
    Top = 163
    Width = 117
    Height = 13
    Alignment = taRightJustify
    Caption = 'Verify schedule (minutes)'
  end
  object Panel1: TPanel
    Left = 0
    Top = 303
    Width = 444
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    DesignSize = (
      444
      41)
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 444
      Height = 6
      Align = alTop
      Shape = bsTopLine
    end
    object BitBtn1: TBitBtn
      Left = 283
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Save'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 363
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object rdOccurs: TRadioGroup
    Left = 10
    Top = 19
    Width = 111
    Height = 126
    Caption = 'Occurs '
    ItemIndex = 0
    Items.Strings = (
      'Daily'
      'Weekly'
      'Monthly')
    TabOrder = 0
    OnClick = rdOccursClick
  end
  object GroupBox1: TGroupBox
    Left = 130
    Top = 20
    Width = 301
    Height = 125
    Caption = 'Frequency '
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 31
      Width = 52
      Height = 13
      Caption = 'Start date :'
    end
    object Label2: TLabel
      Left = 15
      Top = 96
      Width = 33
      Height = 13
      Caption = 'Every :'
    end
    object Label3: TLabel
      Left = 16
      Top = 63
      Width = 51
      Height = 13
      Caption = 'Starting at:'
    end
    object IniDate: TDateBox
      Left = 97
      Top = 27
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = rdOccursClick
      InputTime = False
    end
    object edtTime: TEdit
      Left = 97
      Top = 93
      Width = 105
      Height = 21
      TabOrder = 1
      Text = '1'
      OnChange = rdOccursClick
    end
    object UpDownTime: TUpDown
      Left = 202
      Top = 93
      Width = 15
      Height = 21
      Associate = edtTime
      Min = 1
      Max = 60
      Position = 1
      TabOrder = 2
    end
    object cbxTime: TComboBox
      Left = 220
      Top = 93
      Width = 67
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      OnChange = rdOccursClick
      Items.Strings = (
        'Hour(s)'
        'Minute(s)')
    end
    object edtStartAt: TDateTimePicker
      Left = 97
      Top = 59
      Width = 121
      Height = 21
      Date = 37951.706294201390000000
      Time = 37951.706294201390000000
      Kind = dtkTime
      TabOrder = 4
      OnClick = rdOccursClick
    end
  end
  object edtRefresh: TEdit
    Left = 198
    Top = 159
    Width = 70
    Height = 21
    TabOrder = 2
    Text = '10'
  end
  object udRefresh: TUpDown
    Left = 268
    Top = 159
    Width = 15
    Height = 21
    Associate = edtRefresh
    Min = 1
    Max = 120
    Position = 10
    TabOrder = 3
  end
  object chkDisableSchedule: TCheckBox
    Left = 80
    Top = 229
    Width = 209
    Height = 17
    Caption = 'Disable Schedule'
    TabOrder = 5
  end
  object chkUpdateQty: TCheckBox
    Left = 80
    Top = 194
    Width = 209
    Height = 17
    Caption = 'Disable update system qty'
    TabOrder = 6
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
    Left = 384
    Top = 8
    TranslationData = {
      737443617074696F6E730D0A5446726D5363686564756C65014D616E61676520
      5363686564756C650150726F6772616D617220486F72E172696F01010D0A5061
      6E656C31010101010D0A6C625363686564756C65012020202020200101010D0A
      6C6253746172746174012020202020200101010D0A4C6162656C340156657269
      6679207363686564756C6520286D696E75746573290156657269666963617220
      686F72E172696F2028656D206D696E75746F732901010D0A42697442746E3101
      2653617665012653616C76617201010D0A42697442746E32012643616E63656C
      012643616E63656C617201010D0A72644F6363757273014F636375727320014F
      636F72726501010D0A47726F7570426F7831014672657175656E637920014672
      6571FCEA6E63696101010D0A4C6162656C310153746172742064617465203A01
      4461746120696E6963696F3A01010D0A4C6162656C32014576657279203A0143
      6164613A01010D0A4C6162656C33015374617274696E672061743A01436F6D65
      E7617220656D3A01010D0A63686B44697361626C655363686564756C65014469
      7361626C65205363686564756C65014465736162696C6974617220486F72E172
      696F01010D0A737448696E74730D0A5446726D5363686564756C6501010D0A50
      616E656C31010101010D0A426576656C31010101010D0A6C625363686564756C
      6501010D0A6C625374617274617401010D0A4C6162656C3401010D0A42697442
      746E3101010D0A42697442746E3201010D0A72644F636375727301010D0A4772
      6F7570426F783101010D0A4C6162656C3101010D0A4C6162656C3201010D0A4C
      6162656C3301010D0A496E694461746501010D0A65647454696D6501010D0A55
      70446F776E54696D6501010D0A63627854696D6501010D0A6564745374617274
      417401010D0A6564745265667265736801010D0A75645265667265736801010D
      0A63686B44697361626C655363686564756C6501010D0A7374446973706C6179
      4C6162656C730D0A7374466F6E74730D0A5446726D5363686564756C65014D53
      2053616E732053657269660101010D0A73744D756C74694C696E65730D0A7264
      4F63637572732E4974656D73014461696C792C5765656B6C792C4D6F6E74686C
      79014469E172696F2C53656D616E616C2C4D656E73616C01010D0A6362785469
      6D652E4974656D7301486F75722873292C4D696E75746528732901486F726128
      73292C4D696E75746F28732901010D0A7374446C677343617074696F6E730D0A
      5761726E696E67015761726E696E670101010D0A4572726F72014572726F7201
      01010D0A496E666F726D6174696F6E01496E666F726D6174696F6E0101010D0A
      436F6E6669726D01436F6E6669726D0101010D0A59657301265965730101010D
      0A4E6F01264E6F0101010D0A4F4B014F4B0101010D0A43616E63656C0143616E
      63656C0101010D0A41626F7274012641626F72740101010D0A52657472790126
      52657472790101010D0A49676E6F7265012649676E6F72650101010D0A416C6C
      0126416C6C0101010D0A4E6F20546F20416C6C014E266F20746F20416C6C0101
      010D0A59657320546F20416C6C0159657320746F2026416C6C0101010D0A4865
      6C70012648656C700101010D0A7374537472696E67730D0A73744F7468657253
      7472696E67730D0A50616E656C312E48656C704B6579776F7264010101010D0A
      426576656C312E48656C704B6579776F7264010101010D0A5446726D53636865
      64756C652E48656C7046696C65010101010D0A5446726D5363686564756C652E
      48656C704B6579776F7264010101010D0A6C625363686564756C652E48656C70
      4B6579776F7264010101010D0A6C62537461727461742E48656C704B6579776F
      7264010101010D0A4C6162656C342E48656C704B6579776F7264010101010D0A
      42697442746E312E48656C704B6579776F7264010101010D0A42697442746E32
      2E48656C704B6579776F7264010101010D0A72644F63637572732E48656C704B
      6579776F7264010101010D0A47726F7570426F78312E48656C704B6579776F72
      64010101010D0A4C6162656C312E48656C704B6579776F7264010101010D0A4C
      6162656C322E48656C704B6579776F7264010101010D0A4C6162656C332E4865
      6C704B6579776F7264010101010D0A496E69446174652E456469744D61736B01
      0101010D0A496E69446174652E48656C704B6579776F7264010101010D0A496E
      69446174652E496D654E616D65010101010D0A496E69446174652E5465787401
      0101010D0A65647454696D652E48656C704B6579776F7264010101010D0A6564
      7454696D652E496D654E616D65010101010D0A65647454696D652E5465787401
      310101010D0A5570446F776E54696D652E48656C704B6579776F726401010101
      0D0A63627854696D652E48656C704B6579776F7264010101010D0A6362785469
      6D652E496D654E616D65010101010D0A63627854696D652E5465787401010101
      0D0A656474537461727441742E466F726D6174010101010D0A65647453746172
      7441742E48656C704B6579776F7264010101010D0A656474537461727441742E
      496D654E616D65010101010D0A656474526566726573682E48656C704B657977
      6F7264010101010D0A656474526566726573682E496D654E616D65010101010D
      0A656474526566726573682E546578740131300101010D0A7564526566726573
      682E48656C704B6579776F7264010101010D0A63686B44697361626C65536368
      6564756C652E48656C704B6579776F7264010101010D0A73744C6F63616C6573
      0D0A43757272656E637920537472696E6701240101010D0A54686F7573616E64
      20536570617261746F72012C0101010D0A446563696D616C2053657061726174
      6F72012E0101010D0A4461746520536570617261746F72012F0101010D0A5368
      6F7274204461746520466F726D6174014D2F642F797979790101010D0A4C6F6E
      67204461746520466F726D617401646464642C204D4D4D4D2064642C20797979
      790101010D0A54696D6520536570617261746F72013A0101010D0A54696D6520
      414D20537472696E6701414D0101010D0A54696D6520504D20537472696E6701
      504D0101010D0A53686F72742054696D6520466F726D617401683A6D6D20414D
      504D0101010D0A4C6F6E672054696D6520466F726D617401683A6D6D3A737320
      414D504D0101010D0A53686F7274204D6F6E7468204E616D6573014A616E2C46
      65622C4D61722C4170722C4D61792C4A756E2C4A756C2C4175672C5365702C4F
      63742C4E6F762C4465630101010D0A4C6F6E67204D6F6E7468204E616D657301
      4A616E756172792C46656272756172792C4D617263682C417072696C2C4D6179
      2C4A756E652C4A756C792C4175677573742C53657074656D6265722C4F63746F
      6265722C4E6F76656D6265722C446563656D6265720101010D0A53686F727420
      446179204E616D65730153756E2C4D6F6E2C5475652C5765642C5468752C4672
      692C5361740101010D0A4C6F6E6720446179204E616D65730153756E6461792C
      4D6F6E6461792C547565736461792C5765646E65736461792C54687572736461
      792C4672696461792C53617475726461790101010D0A7374436F6C6C65637469
      6F6E730D0A737443686172536574730D0A5446726D5363686564756C65014445
      4641554C545F434841525345540101010D0A}
  end
end
