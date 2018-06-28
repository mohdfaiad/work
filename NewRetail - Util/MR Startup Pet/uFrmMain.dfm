object FrmMain: TFrmMain
  Left = 98
  Top = 0
  BorderIcons = [biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pet Center Start-Up'
  ClientHeight = 523
  ClientWidth = 609
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 67
    Width = 593
    Height = 7
    Shape = bsTopLine
  end
  object Label1: TLabel
    Left = 12
    Top = 73
    Width = 41
    Height = 18
    AutoSize = False
    Caption = 'Step'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbFindServer: TLabel
    Left = 95
    Top = 78
    Width = 62
    Height = 13
    Caption = 'SQL Server'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbVerifySQL: TLabel
    Left = 115
    Top = 107
    Width = 153
    Height = 13
    Caption = 'Verifying SQL Server installation'
  end
  object imgVerifySQL: TImage
    Left = 94
    Top = 106
    Width = 16
    Height = 16
    AutoSize = True
    Transparent = True
  end
  object imgStep1: TImage
    Left = 36
    Top = 88
    Width = 32
    Height = 29
    AutoSize = True
    Transparent = True
  end
  object imgStep2: TImage
    Left = 36
    Top = 201
    Width = 32
    Height = 29
    AutoSize = True
    Transparent = True
  end
  object Bevel2: TBevel
    Left = 8
    Top = 174
    Width = 593
    Height = 7
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 12
    Top = 185
    Width = 41
    Height = 18
    AutoSize = False
    Caption = 'Step'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 95
    Top = 190
    Width = 54
    Height = 13
    Caption = 'Database'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbInstallDB: TLabel
    Left = 115
    Top = 269
    Width = 230
    Height = 13
    Caption = 'Creating Pet Center database and user account'
  end
  object imgCreateDB: TImage
    Left = 94
    Top = 268
    Width = 16
    Height = 16
    AutoSize = True
    Transparent = True
  end
  object imgStartService: TImage
    Left = 94
    Top = 218
    Width = 16
    Height = 16
    AutoSize = True
    Transparent = True
  end
  object lbStartServer: TLabel
    Left = 115
    Top = 219
    Width = 97
    Height = 13
    Caption = 'Starting SQL service'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object imgStep3: TImage
    Left = 36
    Top = 381
    Width = 32
    Height = 29
    AutoSize = True
    Transparent = True
  end
  object Bevel3: TBevel
    Left = 8
    Top = 354
    Width = 593
    Height = 7
    Shape = bsTopLine
  end
  object Label5: TLabel
    Left = 12
    Top = 365
    Width = 41
    Height = 18
    AutoSize = False
    Caption = 'Step'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 95
    Top = 370
    Width = 52
    Height = 13
    Caption = 'Finalizing'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbDelFiles: TLabel
    Left = 115
    Top = 412
    Width = 88
    Height = 13
    Caption = 'Deleting temp files'
  end
  object imgDelFiles: TImage
    Left = 94
    Top = 411
    Width = 16
    Height = 16
    AutoSize = True
    Transparent = True
  end
  object lbSQLInstallResume: TLabel
    Left = 146
    Top = 131
    Width = 450
    Height = 34
    AutoSize = False
    Caption = 'Not started'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    WordWrap = True
  end
  object lbDBResume: TLabel
    Left = 146
    Top = 290
    Width = 450
    Height = 57
    AutoSize = False
    Caption = 'Not started'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    WordWrap = True
  end
  object imgLogIn: TImage
    Left = 94
    Top = 243
    Width = 16
    Height = 16
    AutoSize = True
    Transparent = True
  end
  object lbLogIn: TLabel
    Left = 115
    Top = 244
    Width = 87
    Height = 13
    Caption = 'SQL Server Log In'
  end
  object lbRunMain: TLabel
    Left = 115
    Top = 434
    Width = 129
    Height = 13
    Caption = 'Starting Pet Center Wizard'
  end
  object imgRunMainRetail: TImage
    Left = 94
    Top = 433
    Width = 16
    Height = 16
    AutoSize = True
    Transparent = True
  end
  object lbFinallResume: TLabel
    Left = 146
    Top = 453
    Width = 450
    Height = 28
    AutoSize = False
    Caption = 'Not started'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    WordWrap = True
  end
  object lbMainRetailInfo: TLabel
    Left = 7
    Top = 3
    Width = 181
    Height = 13
    Caption = 'Checking computer information.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 540
    Top = 6
    Width = 55
    Height = 49
    AutoSize = True
    Picture.Data = {
      07544269746D61705E200000424D5E2000000000000036000000280000003700
      0000310000000100180000000000282000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF081018101829000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF31517B4279AD000000FFFFFFFFFF
      FFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF31517B21304A000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39618C63A6E7
      21304A000000FFFFFF00000018304A000000000000FFFFFFFFFFFF1028395A96
      CE4279AD000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08
      10185286B563A6E731517B000000FFFFFF0818312161A5082042000000FFFFFF
      FFFFFF29415A5A96CE5286B5000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF0000005A96CE63A6E742719C000000FFFFFF1841632161A518
      4984000000FFFFFFFFFFFF31517B5A96CE5A96CE102839000000FFFFFFFFFFFF
      FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1028395A96CE5A96CE5286B5000000FFFF
      FF0820392159942161A5001829FFFFFFFFFFFF29415A5A96CE63A6E731517B00
      0000FFFFFFFFFFFF000000081018000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18304A5A96CE5A96CE
      42719C000000FFFFFF0820392161A52161A518304AFFFFFFFFFFFF29415A5A96
      CE63A6E731517B000000FFFFFFFFFFFF0810184279AD101829000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21
      304A5A96CE63A6E74286BD000000FFFFFF0820392161A5215994082039FFFFFF
      FFFFFF31517B5A96CE5A96CE4286BD000000FFFFFFFFFFFF08101863A6E73961
      8C000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF21416363A6E75A96CE42719C0810180810181841633971AD21
      599410283900000000000031517B63A6E75A96CE5286B5000000FFFFFFFFFFFF
      18304A5A96CE5A96CE081018FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0810185A96CE5A96CE5A96CE5A96CE5A96CE5A96
      CE5A96CE5A96CE5A96CE4286BD31517B29415A4286BD5A96CE5A96CE4286BD00
      0000FFFFFFFFFFFF31517B639EDE5A96CE18304AFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000002141635A96CE5A96CE5A96CE
      5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE63A6E75A96CE5A96CE5A96
      CE5A96CE5A96CE000000000000FFFFFF31517B63A6E75A96CE21304AFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000029415A5A96CE5A
      96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE
      5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE18304A00000039618C63A6E75A96
      CE102839FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2941
      5A63A6E75A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A
      96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE18304A
      39618C5A96CE5A96CE081018FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF1028395A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96
      CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE63A6E763A6E75A96CE5A
      96CE5A96CE5A96CE5A96CE5A96CE4279AD000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000004286BD5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE
      5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE4286BD5A96CE5A96CE5A9EDE3151
      7B2141635A96CE5A96CE5A96CE5A96CE5A96CE63A6E7295173000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29415A5A96CE5A96CE5A96CE5A96CE5A
      96CE5A96CE5A96CE5A96CE4286BD5A96CE5A96CE5A96CE4286BD5A96CE5A96CE
      5A96CE29415A00000000000029415A5A9EDE5A96CE5A96CE5A96CE5A96CE1830
      4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39618C5A96CE5A96
      CE5A96CE5A96CE4286BD5A9EDE4286BD3961943971AD5A96CE5A96CE5A96CE5A
      96CE5A96CE5A96CE39618C0000000000000000000000005286B55A96CE5A96CE
      5A96CE5286B5081018FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      42719C5A9EDE5A96CE4286BD2159944279BD5A96CE5A96CE3971AD4286BD4286
      BD5A96CE5A96CE5A96CE5A96CE5A96CE08101800000000000000000000000042
      79AD63A6E75A96CE5A96CE5286B5000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF3959845A96CE5A96CE5A96CE4286BD5A96CE4286BD5A96CE
      5A96CE5A96CE4279BD3971AD528EC64A8EC65A9EDE31517B0000000000000000
      0000000000000042719C5A96CE5A96CE63A6E731517B000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1028395A96CE639EDE5A96CE5A96CE42
      86BD3169A54279BD5A96CE5A96CE4A8EC65A96CE3971AD3971AD4A8EC6001829
      00000000000000000000000000000039618C5A96CE5A96CE5A96CE31517BFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000021304A4279
      AD5A96CE5A96CE4286BD2159943971AD5A96CE4286BD3971AD4286BD4286BD42
      86BD39619400000000000000000000000000000000000042719C63A6E75A96CE
      5A96CE18304AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
      00000000000031517B5A9EDE5A96CE5286B54286BD4A8EC65A96CE4286BD3971
      AD4286BD5A96CE63A6E731517B00000000000000000000000000000000000042
      719C5A96CE5A96CE5A96CE18304AFFFFFFFFFFFF000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000FFFFFF5A9EDE5A96CE5A96CE528EC65A96CE
      5A96CE5A96CE5A96CE5A96CE5A96CE5A9EDE29415A0000000000000000000000
      0000000000000042719C5A96CE5A96CE5A96CE00000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFF5A96CE5A
      9EDE39618C5286B55A9EDE5A96CE5A96CE5A96CE5A9EDE5286B5081018000000
      0000000000000000000000000000005286B55A96CE5A96CE5A96CE31517B3151
      7B42719C42719C42719C42719C42719C31517B29415A00000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08
      10180000000000000000000000000000000000000810185A96CE5A96CE5A96CE
      5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96
      CE31517B102839000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00000000000000000000000000000000000000000021304A63
      A6E75A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE
      5A96CE5A96CE5A96CE63A6E75A96CE31517B000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      0000000042719C5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A
      96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A9EDE5A9EDE39618C000000
      000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
      0000000000000000000000004286BD5A96CE5A96CE5A96CE5A96CE5A96CE5A96
      CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5286B54279AD52
      86B563A6E7182842000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      00000000000000000000000000000000001028395A96CE5A96CE5A96CE5A96CE
      5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE3961
      8C08081000000008081031517B39618C000000FFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00000000000000000000000000000000000021304A63A6E75A
      96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE
      5A96CE5A96CE08101800000000000000000000000042719C081018FFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      0042719C5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A
      96CE5A96CE5A96CE63A6E739618C000000000000000000000000000000395984
      001829FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
      00000000000018304A5A96CE5A96CE5A96CE5A96CE5A96CE63A6E75A96CE5A96
      CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE4286BD00000000000000000000
      000000000039618C080810FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      000000000000000000000000000042719C5A96CE5A96CE5A96CE5A96CE4286BD
      5286B55A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE2941
      5A00000000000000000021304A395984000000FFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00000000000000000000000010283963A6E75A96CE5A96CE63
      A6E721416300000008101842699C5A9EDE5A96CE5A96CE5A96CE5A96CE5A96CE
      5A96CE5A96CE5A96CE42719C29415A31517B639EDE102839FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000001028394286BD5A96
      CE5A96CE5A96CE5A96CE08101800000000000029415A5A96CE5A96CE5A96CE5A
      96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE639EDE63A6E74279AD000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF31517B214163
      5286B55A9EDE5A96CE5A96CE5A96CE5A96CE18304A00000000000029415A63A6
      E75A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE639EDE42
      79AD000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF29415A63A6E75A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5286B531517B
      31517B5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96
      CE639EDE4279AD102839FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF3959845A96CE5A9EDE5A96CE5A96CE5A96CE5A96CE5A
      96CE5A96CE63A6E75A96CE63A6E742719C00182939618C5A96CE5A96CE5A96CE
      5A96CE5A96CE639EDE39618C001829FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5286B55A96CE5A96
      CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A9EDE39598400000029415A5A
      9EDE5A96CE5A9EDE5A96CE5A96CE31517BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF5A9EDE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96CE5A96
      CE42719C528EC65A9EDE528EC642699C214163101829FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A96CE5A96CE5A96CE5A96CE5A96CE
      5A96CE5A96CE5A96CE5A9EDE5286B539619429415AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000}
  end
  object Label4: TLabel
    Left = 536
    Top = 53
    Width = 60
    Height = 13
    Caption = 'Pet Center'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object imgInstallRep: TImage
    Left = 94
    Top = 388
    Width = 16
    Height = 16
    AutoSize = True
    Transparent = True
  end
  object lbInstallRep: TLabel
    Left = 115
    Top = 389
    Width = 79
    Height = 13
    Caption = 'Installing Report'
  end
  object pnlOpSystem: TPanel
    Left = 12
    Top = 23
    Width = 279
    Height = 43
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    Visible = False
    object Label12: TLabel
      Left = 0
      Top = 2
      Width = 93
      Height = 13
      Alignment = taRightJustify
      Caption = 'Operating System :'
    end
    object lbOpSystem: TLabel
      Left = 98
      Top = 2
      Width = 57
      Height = 13
      Caption = 'lbOpSystem'
    end
    object Label13: TLabel
      Left = 51
      Top = 20
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Version :'
    end
    object lbVersion: TLabel
      Left = 98
      Top = 20
      Width = 57
      Height = 13
      Caption = 'lbOpSystem'
    end
  end
  object pnlAnalyze: TPanel
    Left = 9
    Top = 17
    Width = 234
    Height = 50
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Label11: TLabel
      Left = 67
      Top = 6
      Width = 146
      Height = 28
      AutoSize = False
      Caption = 'Please wait ...'
      WordWrap = True
    end
    object Animate: TAnimate
      Left = 4
      Top = 1
      Width = 55
      Height = 47
      AutoSize = False
      CommonAVI = aviFindComputer
      StopFrame = 8
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 482
    Width = 609
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnClose: TSpeedButton
      Left = 514
      Top = 12
      Width = 81
      Height = 22
      Caption = '&Close'
      OnClick = btnCloseClick
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = TimerTimer
    Left = 473
    Top = 15
  end
end
