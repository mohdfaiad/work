object frmSelectDate: TfrmSelectDate
  Left = 138
  Top = 180
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Select Import Date'
  ClientHeight = 135
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblDate: TLabel
    Left = 42
    Top = 40
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = 'Date :'
  end
  object edtDate: TDateBox
    Left = 76
    Top = 36
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 94
    Width = 250
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      250
      41)
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 250
      Height = 6
      Align = alTop
      Shape = bsTopLine
    end
    object btnOK: TBitBtn
      Left = 89
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      Left = 169
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelClick
    end
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
    Left = 96
    TranslationData = {
      737443617074696F6E730D0A5466726D53656C656374446174650153656C6563
      7420496D706F727420446174650153656C6563696F6E61722061204461746120
      646520496D706F727461E7E36F0153656C656363696F6E65204C612046656368
      61204465206C6120496D706F7274616369F36E010D0A6C626C44617465014461
      74650144617461014665636861010D0A737448696E74730D0A5466726D53656C
      6563744461746501010D0A6C626C44617465010101010D0A6564744461746501
      0101010D0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A54
      66726D53656C65637444617465014D532053616E732053657269660101010D0A
      73744D756C74694C696E65730D0A7374446C677343617074696F6E730D0A5761
      726E696E67015761726E696E670101010D0A4572726F72014572726F72010101
      0D0A496E666F726D6174696F6E01496E666F726D6174696F6E0101010D0A436F
      6E6669726D01436F6E6669726D0101010D0A59657301265965730101010D0A4E
      6F01264E6F0101010D0A4F4B014F4B0101010D0A43616E63656C0143616E6365
      6C0101010D0A41626F7274012641626F72740101010D0A526574727901265265
      7472790101010D0A49676E6F7265012649676E6F72650101010D0A416C6C0126
      416C6C0101010D0A4E6F20546F20416C6C014E266F20746F20416C6C0101010D
      0A59657320546F20416C6C0159657320746F2026416C6C0101010D0A48656C70
      012648656C700101010D0A7374537472696E67730D0A73744F74686572537472
      696E67730D0A5466726D53656C656374446174652E48656C7046696C65010101
      010D0A5466726D53656C656374446174652E48656C704B6579776F7264010101
      010D0A6C626C446174652E48656C704B6579776F7264010101010D0A65647444
      6174652E456469744D61736B010101010D0A656474446174652E48656C704B65
      79776F7264010101010D0A656474446174652E496D654E616D65010101010D0A
      656474446174652E54657874010101010D0A73744C6F63616C65730D0A437572
      72656E637920537472696E6701240101010D0A54686F7573616E642053657061
      7261746F72012C0101010D0A446563696D616C20536570617261746F72012E01
      01010D0A4461746520536570617261746F72012F0101010D0A53686F72742044
      61746520466F726D6174014D2F642F797979790101010D0A4C6F6E6720446174
      6520466F726D617401646464642C204D4D4D4D2064642C20797979790101010D
      0A54696D6520536570617261746F72013A0101010D0A54696D6520414D205374
      72696E6701414D0101010D0A54696D6520504D20537472696E6701504D010101
      0D0A53686F72742054696D6520466F726D617401683A6D6D20414D504D010101
      0D0A4C6F6E672054696D6520466F726D617401683A6D6D3A737320414D504D01
      01010D0A53686F7274204D6F6E7468204E616D6573014A616E2C4665622C4D61
      722C4170722C4D61792C4A756E2C4A756C2C4175672C5365702C4F63742C4E6F
      762C4465630101010D0A4C6F6E67204D6F6E7468204E616D6573014A616E7561
      72792C46656272756172792C4D617263682C417072696C2C4D61792C4A756E65
      2C4A756C792C4175677573742C53657074656D6265722C4F63746F6265722C4E
      6F76656D6265722C446563656D6265720101010D0A53686F727420446179204E
      616D65730153756E2C4D6F6E2C5475652C5765642C5468752C4672692C536174
      0101010D0A4C6F6E6720446179204E616D65730153756E6461792C4D6F6E6461
      792C547565736461792C5765646E65736461792C54687572736461792C467269
      6461792C53617475726461790101010D0A7374436F6C6C656374696F6E730D0A
      737443686172536574730D0A5466726D53656C65637444617465014445464155
      4C545F434841525345540101010D0A}
  end
end
