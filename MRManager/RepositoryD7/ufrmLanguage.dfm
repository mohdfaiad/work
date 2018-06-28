object frmLanguage: TfrmLanguage
  Left = 292
  Top = 208
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Language'
  ClientHeight = 185
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  DesignSize = (
    352
    185)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 3
    Width = 118
    Height = 25
    Caption = 'Main Retail'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 222
    Top = 113
    Width = 94
    Height = 13
    Cursor = crHandPoint
    Caption = 'www.mainretail.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = Label3Click
  end
  object Label4: TLabel
    Left = 12
    Top = 113
    Width = 202
    Height = 13
    Caption = 'Download now the dictionary translator at'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 12
    Top = 36
    Width = 329
    Height = 68
    AutoSize = False
    Caption = 
      'Main Retail and Office Manager support multi-language. You can c' +
      'ustomize your application with the language you wish. '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object btnClose: TButton
    Left = 282
    Top = 150
    Width = 66
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object btnPath: TButton
    Left = 210
    Top = 150
    Width = 66
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Local Files'
    TabOrder = 1
    OnClick = btnPathClick
  end
  object btnDownload: TButton
    Left = 138
    Top = 150
    Width = 66
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Download'
    TabOrder = 2
    OnClick = Label3Click
  end
  object OD: TsiOpenDialog
    DefaultExt = '*.sil'
    Filter = 'MainRetail files|*.sil'
    Title = 'Translation Files'
    Left = 25
    Top = 70
  end
  object siLang: TsiLangRT
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
    StorageFile = 'MR_frmLanguage.sil'
    StorageDelimiter = '~!@#'
    ExtendedTranslations = <>
    RTEditorActionsOptions = []
    Left = 24
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
      6E67730D0A73744F74686572537472696E67730D0A5446726D506172656E742E
      48656C7046696C65010101010D0A73744C6F63616C65730D0A43757272656E63
      7920537472696E6701240101010D0A54686F7573616E6420536570617261746F
      72012C0101010D0A446563696D616C20536570617261746F72012E0101010D0A
      4461746520536570617261746F72012F0101010D0A53686F7274204461746520
      466F726D6174014D2F642F797979790101010D0A4C6F6E67204461746520466F
      726D617401646464642C204D4D4D4D2064642C20797979790101010D0A54696D
      6520536570617261746F72013A0101010D0A54696D6520414D20537472696E67
      01414D0101010D0A54696D6520504D20537472696E6701504D0101010D0A5368
      6F72742054696D6520466F726D617401683A6D6D20414D504D0101010D0A4C6F
      6E672054696D6520466F726D617401683A6D6D3A737320414D504D0101010D0A
      53686F7274204D6F6E7468204E616D6573014A616E2C4665622C4D61722C4170
      722C4D61792C4A756E2C4A756C2C4175672C5365702C4F63742C4E6F762C4465
      630101010D0A4C6F6E67204D6F6E7468204E616D6573014A616E756172792C46
      656272756172792C4D617263682C417072696C2C4D61792C4A756E652C4A756C
      792C4175677573742C53657074656D6265722C4F63746F6265722C4E6F76656D
      6265722C446563656D6265720101010D0A53686F727420446179204E616D6573
      0153756E2C4D6F6E2C5475652C5765642C5468752C4672692C5361740101010D
      0A4C6F6E6720446179204E616D65730153756E6461792C4D6F6E6461792C5475
      65736461792C5765646E65736461792C54687572736461792C4672696461792C
      53617475726461790101010D0A7374436F6C6C656374696F6E730D0A73744368
      6172536574730D0A}
  end
end