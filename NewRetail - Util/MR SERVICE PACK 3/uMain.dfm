object FrmMain: TFrmMain
  Left = 228
  Top = 7
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Update Pack for MainRetail and Office Manager'
  ClientHeight = 411
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    509
    411)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 372
    Width = 515
    Height = 7
    Anchors = [akLeft, akRight, akBottom]
    Shape = bsTopLine
  end
  object Label3: TLabel
    Left = 21
    Top = 90
    Width = 141
    Height = 13
    Caption = 'Main Retail update progress :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbDetail: TLabel
    Left = 18
    Top = 171
    Width = 456
    Height = 13
    AutoSize = False
  end
  object lbBuildVerCount: TLabel
    Left = 18
    Top = 154
    Width = 15
    Height = 13
    Caption = '     '
  end
  object sbSendErr: TSpeedButton
    Left = 237
    Top = 382
    Width = 86
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Send &Error'
    Glyph.Data = {
      6E040000424D6E04000000000000360000002800000013000000120000000100
      18000000000038040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF840042840000C60042C66142FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFC66163840042C66142C6A263C6A263C66142FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      840042C6A263CED3D6C60042C6A263C6C363C66142FFFFFF840000FFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFF84616300000000000000000000000000000000
      0000000000000000C60042C6C363F7CBA5840000840000000000000000FFFFFF
      FFFFFF000000FFFFFF846163F7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FB
      FFF7FBFFF7FBFFC60042F7CBA5F7CBA5840000F7FBFF000000FFFFFFFFFFFF00
      0000FFFFFF846163FFFFFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFF
      F7FBFFC60042F7CBA5F7CBA5840000F7FBFF000000FFFFFFFFFFFF000000FFFF
      FF846163FFFFFFFFFFFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFC60042C6
      6142C66142C66142840000F7FBFF000000FFFFFFFFFFFF000000FFFFFF846163
      FFFFFFFFFFFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FB
      FFF7FBFFF7FBFFF7FBFF000000FFFFFFFFFFFF000000FFFFFF846163FFFFFFFF
      FFFFFFFFFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFF
      F7FBFFF7FBFF000000FFFFFFFFFFFF000000FFFFFF846163FFFFFF8400008400
      00840000840000840000F7FBFFF7FBFFF7FBFFF7FBFFF7FBFF0020C6000084F7
      FBFF000000FFFFFFFFFFFF000000FFFFFF846163FFFFFFC60042C66142C6A200
      840000F7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFF8400E70020C6F7FBFF0000
      00FFFFFFFFFFFF000000FFFFFF846163FFFFFFC60042C6A200C6A200C60042F7
      FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFFF7FBFF000000FFFFFF
      FFFFFF000000FFFFFF846163846163C60042C60042C6A200C6C363C600428461
      63846163846163846163846163846163846163846163000000FFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFC60042FFFFFFC66142C6C363F7CBA5C66142CED3D6
      C6A263840042FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6A263C6C363F7CBA5C66142840042C6
      A263FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6A263C6C363F7CBA5F7CBA5FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    Visible = False
    OnClick = sbSendErrClick
  end
  object lblVersion: TLabel
    Left = 162
    Top = 387
    Width = 69
    Height = 13
    Caption = 'Version: 1.4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 25
      Top = 15
      Width = 64
      Height = 16
      Caption = 'Progress'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 65
      Top = 35
      Width = 246
      Height = 16
      Caption = 'Please wait while update finish the actions.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 460
      Top = 15
      Width = 33
      Height = 31
      AutoSize = True
      Picture.Data = {
        07544269746D6170520C0000424D520C00000000000036000000280000002100
        00001F00000001001800000000001C0C0000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF45312E45312E402722FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF45312E45312E5C332D4C2A23FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF8F574C5B4D405E4935463629402621FFFFFFFFFFFFFFFFFF
        FFFFFF64372E512D2661352D6B3E3B7D4D4D8A65656539384827234A2822FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF715449F9C086E08D3ACB6B1B392A28FFFFFFFFFF
        FFFFFFFF0E0F98010EB20D0D856D4456AD8585D4B3B3B6ACACA49C9C8F737365
        3A394727234A2822FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B6756F3B475DB832BB6631D392A28FF
        FFFFFFFFFF24147E0B47FF1257FF1B64F85349A6DCC0C0DABABAB8AAAAADA5A5
        ADA5A5A99E9E8D6F6F613736462521502C25FFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF896756F2B373D98026B0632A
        362927562F286C403C1E127C0F50FF1860FF2270FF37319DDCC0C0D8B6B6B396
        96AFA1A1AFA1A1AFA1A1AFA1A1AA9A9A876363502A27FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E5C4DF2B373D980
        26B0632A4A3837906564C6ADAD3F4EBB1358FF1E69FF2B7CFF362E98D2A8A8CC
        9999A673739C6D6DA58282AF9999B19C9C79E69A998882532A28FFFFFF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF736353EC
        A660D37515B26531A19595EAE2E2E8DEDE4050B91761FF2472FF3285FF33268D
        D1A5A5D5B0B0BB9D9DA882829C6C6C9B6969A47D7DB09292A07F7F532A28FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        998066ECA660D37313B86B42BDBABAEAE2E2E6DADA404FB21C69FF2B7CFF3B90
        FF373194DCC0C0DABABABE9D9DA27575AC8686AE8888A2747499666693656553
        2A28FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF987E64ECA660D37313B96D46B7ABABD7B5B5CC99992F3BA22174FF31
        85FF429AFF373190DCC0C0DABABABF9A9AB38080C28F8FB07F7FAD8282B18888
        986969532A28FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF96795DE6994DD26F11965D3DA88484D9B9B9E4D5D50A2199
        257DFF3890FF4BA4FF37318DDCC0C0DABABAC19797B38080CC9999CC9999C996
        96B17F7F9E6F6F532A28FFFFFF00FFFFFFFFFFFF45312E45312E45312E45312E
        45312E45312E45312E45312EA38363E6994DD370138F5C47BDBABAEAE2E2E8DE
        DE0B23962985FF3D99FF52AFFF37318ADCC0C0DABABAC29494B38080BF8C8CCC
        9999CC9999BF8C8C9D6A6A532A28FFFFFF00FFFFFF6D68752A4B6020465E2048
        5F204960204A62204B63204E65244858C89E74E49648D37013905D4ABDBABAEA
        E2E2E8DEDE0C25932E8EFF44A3FF5BBAFF373187DCC0C0DABABAC49292B38080
        A976769F6C6CB68383BC89899E6969532A28FFFFFF00FFFFFF0583B62AA5D84D
        B4E74DB5E84DB5E84DB6E94DB7EA4DB7EA4697BDC6996DE08D3AD36D15905D4A
        BDBABAEAE2E2E8DEDE0D26902B83EC3078DA3A81DA373183DCC0C0DABABAC58E
        8EB38080B38080B38080B38080AC79799F6666532A28FFFFFF00FFFFFF2293C5
        49B4E66AD0FF6AD0FF6AD0FF6AD0FF6AD0FF6AD0FF4E8199C6996DE08D3AD670
        1D936053ECE8E8EAE2E2E8DEDE383683767683636363404047615592DCC0C0DA
        BABAC78B8BB38080C69393AF7C7CA37070BF8C8CA06565532A28FFFFFF00FFFF
        FF39A4CF48A9D872D5FF6FD5FF6FD5FF6FD5FF6FD5FF6FD5FF518499C49668A0
        6D3AB8652496635DECE8E8EAE2E2E8DEDED7CCD2A6A6A6D2D3D4909091D0B8BE
        DCC0C0DABABAC88888A67373C69393CC9999CC9999BF8C8CA16262532A28FFFF
        FF00FFFFFF42AED23C98C683DCFF75DBFF75DBFF75DBFF75DBFF75DBFF5891A6
        404040D7D7D7707070574A49ECE8E8EAE2E2E8DEDEB9B0B0CCCCCCBFC0C18586
        86DEC4C4DCC0C0DABABACA8585BF7373B26E6EA87171B68383BC8989A2616153
        2A28FFFFFF00FFFFFF48B5D33EA4CC98E3FF78DEFF6EB4CA82B5C65F8F9F5A93
        A674D4F262828C8181816F6F6FBFBEBEECE8E8DED7D7A2A0A0D4D4D4D4D4D4AE
        AFB0B6B7B8A5A4A5968A8ADABABACC8282C87070C87070C87070BF6D6DAE6A6A
        A65F5F532A28FFFFFF00FFFFFF4CBBD546B0D69ADBF466ACBFC1C1C1F4F4F4D4
        BEBEB99393484B4D797979C6C6C6BCBCBCA6A6A6A6A4A4B3B0B0FCFCFCE9E9E9
        CCCCCCBCBDBDC1C2C3DBDCDDE4E4E49F9999F6E8E8E7BFBFD38888C96C6CC96C
        6CC96C6CB05E5E532A28FFFFFF00FFFFFF4FBDD650BCE299D3ED6F8F96D1D1D1
        DEDEDEC7C6C6A89E9E6B6666686767B8B8B8C3C3C3CECECE909090B6B3B3EEEE
        EEF9F9F99393937D7A7AD2D1D1D4D5D6ECECEDC6BFBFF3E6E6F3E6E6F3E6E6F0
        DEDEE3B5B5D68C8CB25A5A5A2F2BFFFFFF00FFFFFF55BED85BC6EC9ED1EB8396
        99BEBEBEB9B9B9C6C6C6CCCCCC808080737373ABABABB6B6B6C0C0C0CBCBCB8F
        8F8F9494948F8F8FA0A0A08C8080999292CBCDCDD5D6D7A49797E3C7C7E3C7C7
        E3C7C7DCBFBFC6A5A5A882828F6464894841FFFFFF00FFFFFF59C0DA6AD0F674
        C0E67D9093D2D2D2B9B9B9F4F4F4F9F9F97070707C7C7C9D9D9DA7A7A7B3B3B3
        BDBDBDC8C8C8C9C9C9A9A9A97E7676D4A8A88E8383BEC0C0868485A57E7EA779
        798E5D5D8852508548449A534BFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF5EC1DB
        78D7FD5DBDEDBBEEF26B8A8C92ABAD8C8C8C6C6C6CA2A2A2BFBFBFB3B3B3A7A7
        A7A6A6A6A9A9A996A9AA6D97997F8C8C918484A47171726565838A8A8F8180FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FF64C3DD81DBFF5DC3F5C9F6FE96FCFF96FCFF96FCFF96FCFF96FCFF96FCFF7E
        CBCC7ECBCC7ECBCC96FCFF96FCFF96FCFF96FCFF84D7D97DE3FE86D9D993F2F2
        CECFD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFF68C4DE88E0FF6BD1FD7FD2FCBCEFFFBFF2FFBFF2FFBFF2FFBFF2FF
        BFF2FFBFF2FFBFF2FFBFF2FFBFF2FFBFF2FFBFF2FFBFF2FFBFF2FFC2EFFFE6FF
        FFE6FFFFE6C6C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF6DC6DF92E8FF7AE0FF76DCFF72D8FF72D8FF72D8FF72D8
        FF72D8FF72D8FF72D8FF72D8FF72D8FF72D8FF72D8FF72D8FF72D8FF72D8FF55
        C5EF343F48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF73C7E19AEDFF81E7FF81E7FF81E7FF81E7FF81
        E7FF81E7FF81E7FFA0EDFFA0EDFFA0EDFFA0EDFFA0EDFFA0EDFFA0EDFFA0EDFF
        A0EDFF78D5F0474B51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF77C9E3B6F7FF8BF1FF8BF1FF8BF1FF
        8BF1FF8BF1FF8BF1FFD3F9FFAFDEEE80CAE380CAE380CAE380CAE380CAE380CA
        E380CAE380CAE36BB9D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF608FA5CAECF5C0FAFFADF9
        FFADF9FFADF9FFADF9FFD6FCFF9FD8EB327994FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF6D8EA080
        CCE680CCE680CCE680CCE680CCE670C6E2618192FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
  end
  object btnClose: TButton
    Left = 415
    Top = 382
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    TabOrder = 1
    OnClick = btnCloseClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 220
    Width = 477
    Height = 142
    Anchors = [akLeft, akRight, akBottom]
    Caption = ' History    '
    TabOrder = 2
    DesignSize = (
      477
      142)
    object lbTotalFiles: TLabel
      Left = 9
      Top = 124
      Width = 3
      Height = 13
    end
    object History: TMemo
      Left = 8
      Top = 13
      Width = 460
      Height = 108
      Anchors = [akLeft, akRight, akBottom]
      BorderStyle = bsNone
      Color = clMenu
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object gridRestore: TStringGrid
    Left = 535
    Top = 305
    Width = 352
    Height = 101
    ColCount = 2
    DefaultColWidth = 140
    DefaultRowHeight = 19
    FixedCols = 0
    RowCount = 3
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
    TabOrder = 3
    ColWidths = (
      127
      218)
  end
  object PBar: TProgressBar
    Left = 66
    Top = 122
    Width = 241
    Height = 16
    Smooth = True
    TabOrder = 4
  end
  object btnStart: TButton
    Left = 332
    Top = 382
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Execute'
    TabOrder = 5
    OnClick = btnStartClick
  end
  object pbScript: TProgressBar
    Left = 17
    Top = 189
    Width = 121
    Height = 16
    Smooth = True
    TabOrder = 6
    Visible = False
  end
  object chkBackup: TCheckBox
    Left = 10
    Top = 385
    Width = 126
    Height = 17
    Caption = 'Backup database'
    TabOrder = 7
  end
  object Email1: TEmail
    ShowDialog = False
    UseAppHandle = False
    Left = 465
    Top = 70
  end
end
