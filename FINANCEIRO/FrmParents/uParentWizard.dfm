inherited ParentWizard: TParentWizard
  Left = 131
  Top = 127
  Caption = 'ParentWizard'
  ClientHeight = 414
  ClientWidth = 609
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object bvBottom: TBevel [0]
    Left = 0
    Top = 368
    Width = 609
    Height = 3
    Align = alBottom
    Shape = bsTopLine
  end
  object pgOption: TPageControl [1]
    Left = 90
    Top = 79
    Width = 642
    Height = 303
    Style = tsFlatButtons
    TabOrder = 6
  end
  inherited EspacamentoEsquerdo: TPanel
    Top = 68
    Height = 294
    Visible = False
  end
  inherited EspacamentoDireito: TPanel
    Left = 606
    Top = 68
    Height = 294
    Visible = False
  end
  inherited EspacamentoSuperior: TPanel
    Width = 609
    Visible = False
  end
  inherited pnlEspacamentoInferiror: TPanel
    Top = 362
    Width = 609
    Visible = False
  end
  object PTitle: TPanel [6]
    Left = 0
    Top = 6
    Width = 609
    Height = 62
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 4
    object ShapeImage: TShape
      Left = 561
      Top = 12
      Width = 38
      Height = 38
      Brush.Color = clBtnFace
      Pen.Color = clBtnShadow
      Pen.Width = 3
    end
    object lbEditName: TLabel
      Left = 9
      Top = 9
      Width = 63
      Height = 13
      Caption = 'lbEditName'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbEditDescription: TLabel
      Left = 27
      Top = 27
      Width = 527
      Height = 26
      AutoSize = False
      Caption = 'lbEditDescription'
      WordWrap = True
    end
    object ImageClass: TImage
      Left = 568
      Top = 19
      Width = 24
      Height = 24
      Transparent = True
    end
  end
  object Panel1: TPanel [7]
    Left = 0
    Top = 371
    Width = 609
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 5
    object BPrev: TButton
      Left = 354
      Top = 10
      Width = 80
      Height = 23
      Caption = '< &Back'
      TabOrder = 1
      OnClick = BPrevClick
    end
    object BNext: TButton
      Left = 436
      Top = 10
      Width = 80
      Height = 23
      Caption = '&Next >'
      TabOrder = 0
      OnClick = BNextClick
    end
    object BClose: TButton
      Left = 521
      Top = 10
      Width = 80
      Height = 23
      Caption = 'Close'
      TabOrder = 2
      OnClick = BCloseClick
    end
    object BHelp: TButton
      Left = 269
      Top = 10
      Width = 80
      Height = 23
      Caption = '&Help'
      TabOrder = 3
    end
  end
  object imgSmall: TImageList
    Left = 256
    Top = 6
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042104210421042104210421042
      1042104210421042104210421042104210420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042FF7FFF7FFF7F60156A3EEA15
      6A3EEA6AFF7FFF7FFF7FFF7FFF7FFF7F1042BD19000000000000000000000000
      00000000000000000000000000000000BD190000000000000000000000001042
      1042000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042FE7FF53EEA296A3EF53EF53E
      EA29EA296A3EF556FF7FFF7FFF7FFF7F1042BD1900006602A514E07F86198619
      C0306666861939336C3239336C320000BD190000000000000000000000400040
      1042104200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042000000000000000000000000
      000000000000000000000000000000001042BD19000066026602207F6666C030
      C030267F664E6C326C326C326C320000BD19000000000000004000400040007C
      0040104210420000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000104200000000000000000000FF7F
      0000FF7FFF7F0000FF7FFF7F0000FF7F1042BD19000066026602864DE07F807D
      207F267FC6306C326C326C326C320000BD19000000001042E07F0040E07FE07F
      E07F007C10421042000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042000000000000000000000000
      FF7FFF7FFF7F0000FF7FFF7F0000FF7F1042BD1900008619C6308065607E607E
      664E861986196C326C32786378630000BD190000000000400040E07FE07FE07F
      E07F007C00401042104210421042000000000000000000000000000000000000
      000000000000000000000000000000000000104200000000000000000000FF7F
      0000FF7FFF7F0000FF7FFF7FFF7F00001042BD190000C00086010064607E807D
      C0306C32861966028619786378630000BD190000000000400040E07FE07FE07F
      E07F007C00401042104210421042000000000000000000000000000000000000
      00000000000000000000000000000000000010420068FF7FFF7F0068FF7F0068
      0068FF7FFF7FFF7F7863FF7FFF7FFF7F1042BD150000661AFF030018607EE07F
      C030C030C030864DC04C786378630000BD190000000000400040E07FFF7FE07F
      E07F007C00400002000200020002000000000000000000000000000000000000
      0000000000000000000000000000000000001042006800680068006800680068
      00680068FF7F7863FF7FFF7FFF7FFF7F1042BD150000C04CC04C864D807D607E
      267F2667C630864D664E9A7378630000BD190000104200400040007CE07FE07F
      007C007C00020002E003E003E003000000000000000000000000000000000000
      00000000000000000000000000000000000010420068FF7FFF7F006800680068
      00680068FF7F006800680068006800681042BD150000267FC04C267F207F607E
      66668C4D337F267F207F660266020000BD19000000021042007C0040007C007C
      007C00020002E003E00300020000000000000000000000000000000000000000
      0000000000000000000000000000000000001042FF7FE0296A2AF53EF53E6A3E
      756BFF7FFF7FFF676A3EF56AFE7FFF7F1042BD150000207F2667C0306C4E267F
      C6309A73F37F2C7F267F660266020000BD190000E0030002007C0040007C0040
      007C0002E003E003E00300020000000000000000000000000000000000000000
      0000000000000000000000000000000000001042FF7FF53EEA15EA296A2AF53E
      6A3E6A3E6A3EEA29EA156A3EF56AFF7F1042BD150000607E267F2C7FC030267F
      864D5877F97FEC7F207F660266020000000000000002E0030002000200400000
      0040E003E0030002000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042FF7FFF7FEA296A15EA156A2A
      F53EF53E6A2A6A2AEA15EA156A3E756B1042BD150000607E207F267F864DC030
      C630F97FF97F2C7F607E66026602000000000000000000000002000000000000
      0000000210420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042FF7FFF7FFF7FF556E029EA15
      EA156A3EF53E6A2A6A2AEA296A3EEA6A1042BD150000864D607E267F267F2667
      2C7FEC7F2C7F667E864D660266020000BD190000000000000000000010420000
      0040000010421042104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042FF7FFF7FFF7FFF7FFF7F7F6B
      E029EA156A2AEA2994527863FF7FFF7F1042BD150000661A864D607E207F207F
      207F607E667E804D8619660266020000BD190000000000000000000000000000
      0000000000400040000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      753E6A3EEA29EA29EA6AFF7FFF7FFF7F1042BD15000000000000000000000000
      00000000000000000000000000000000BD150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1000100010001000100010001000100010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1000FF7F00000000000000000000FF7F10000000000000000002000200020002
      114700020002000200020000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000001000100010001000100010001000
      1000100000000000000000000000000000000000000000000000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000000000000002000200020002
      775F00020002000200020000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000001000007C007C007C007C007C007C
      007C1000000000000000000000000000000000000000000000000000E07FE07F
      1000FF7F00000000000000000000FF7F100000000000000000020002EE3ADD77
      FF7FDD77EE3A000200020000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000001000007C00000000000000000000
      007C1000000000000000000000000000000000000000000000000000E07F0000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F100000000000000000020002FF7F1F00
      FF7FFF7FFF7F000200020000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000001000007C007C007C007C007C007C
      007C1000000000000000000000000000000000000000000000000000E07FE07F
      1000FF7F00000000FF7F10001000100010000000000000000002FF7F1F001F00
      1F001F001F00FF7F00020000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000001000007C00000000000000000000
      007C1000000000000000000000000000000000000000000000000000E07F0000
      1000FF7FFF7FFF7FFF7F1000FF7F10000000000000000000FF7F1F001F001F00
      1F001F001F00FF7F00020000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000001000007C007C007C007C007C007C
      007C1000000000000000000000000000000000000000000000000000E07FE07F
      1000FF7FFF7FFF7FFF7F10001000000000000000000000000002FF7F1F001F00
      1F001F001F00FF7FFF7F0000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000001000007C00000000007C10001000
      10001000000000000000000000000000000000000000000000000000E07F0000
      10001000100010001000100000000000000000000000000000020002FF7F1F00
      FF7FFF7FFF7F0002007CFF7F000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7F00000000000000000000000000001000007C007C007C007C1000007C
      10000000000000000000000000000000000000000000000000000000E07FE07F
      E07FE07F0000E07F00000000000000000000000000000000000200024412FF7F
      DD77007C007C007C007C007CFF7F00000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7F0000FF7F000000000000000000001000007C007C007C007C10001000
      00000000000000000000000000000000000000000000000000000000E07FE07F
      E07FE07F00000000000000000000000000000000000000000002000200020002
      775F007C007C007C007C007C007CFF7F0000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7F00000000000000000000000000001000100010001000100010000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000200020002
      FF7F007C007C007C007C007CFF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7F007CFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF7F0000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF000000000000FCFF0000
      00000000F87F000000000000E03F000000000000C01F000000000000C0030000
      00000000C003000000000000C003000000000000800300000000000080070000
      000000008007000000000001800F000000000001E03F000000000000F80F0000
      00000000FB8F000000000000FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFE00FFFF
      C007FFFFFE00C007C007FFFFFE00C007C007007FF000C007C007007FF000C007
      C007007FF000C007C007007FF000C007C007007FF001C007C007007FF003C007
      C007007FF007C007C00700FFF00FC003C00F01FFF01FC001C01F03FFF03FC003
      C03FFFFFFFFFC007FFFFFFFFFFFFFFEF00000000000000000000000000000000
      000000000000}
  end
end