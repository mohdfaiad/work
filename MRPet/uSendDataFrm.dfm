inherited SendDataFrm: TSendDataFrm
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Send Pet data'
  ClientHeight = 164
  ClientWidth = 301
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 56
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Date :'
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 136
    Width = 301
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      301
      28)
    object btnOk: TXiButton
      Left = 146
      Top = 3
      Width = 75
      Height = 24
      ColorFace = 14737632
      ColorGrad = 3653375
      ColorDark = 11447982
      ColorLight = 16250871
      ColorBorder = 6447714
      ColorText = clBlack
      OverColorFace = 13619151
      OverColorGrad = 41968
      OverColorDark = 7960953
      OverColorLight = 15658734
      OverColorBorder = 7697781
      OverColorText = clBlack
      DownColorFace = 13882323
      DownColorGrad = 7852799
      DownColorDark = 15329769
      DownColorLight = 8158332
      DownColorBorder = 5131854
      DownColorText = clBlack
      DisabledColorFace = 14869218
      DisabledColorGrad = clWhite
      DisabledColorDark = 14211288
      DisabledColorLight = 15395562
      DisabledColorBorder = 12895428
      DisabledColorText = clGray
      ColorFocusRect = 9079434
      ColorScheme = csSilver
      Ctl3D = True
      Layout = blGlyphLeft
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        1800000000006802000000000000000000000000000000000000EAB3A6C06860
        B05850A05050A05050A050509048509048409048408040408038408038407038
        407038300000D06870F09090E08080B04820403020C0B8B0C0B8B0D0C0C0D0C8
        C0505050A04030A04030A038307038400000D07070FF98A0F08880E080807058
        50404030907870F0E0E0F0E8E0908070A04030A04040A040308038400000D078
        70FFA0A0F09090F08880705850000000404030F0D8D0F0E0D0807860B04840B0
        4840A040408040400000D07880FFA8B0FFA0A0F0909070585070585070585070
        5850706050806860C05850B05050B048408040400000E08080FFB0B0FFB0B0FF
        A0A0F09090F08880E08080E07880D07070D06870C06060C05850B05050904840
        0000E08890FFB8C0FFB8B0D06060C06050C05850C05040B05030B04830A04020
        A03810C06060C058509048400000E09090FFC0C0D06860FFFFFFFFFFFFFFF8F0
        F0F0F0F0E8E0F0D8D0E0D0C0E0C8C0A03810C060609048500000E098A0FFC0C0
        D07070FFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E8E0F0D8D0E0D0C0A04020D068
        60A050500000F0A0A0FFC0C0E07870FFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0
        F0F0E8E0F0D8D0B04830D07070A050500000F0A8A0FFC0C0E08080FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E8E0B05030E07880A050500000F0B0
        B0FFC0C0F08890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0C0
        5040603030B058500000F0B0B0FFC0C0FF9090FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF8F0C05850B05860B058600000F0B8B0F0B8B0F0B0B0F0
        B0B0F0A8B0F0A0A0E098A0E09090E09090E08890E08080D07880D07870D07070
        0000}
      Spacing = 4
      TransparentGlyph = True
      Gradient = False
      HotTrack = True
      Anchors = [akTop, akRight]
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancel: TXiButton
      Left = 224
      Top = 3
      Width = 75
      Height = 24
      ColorFace = 14737632
      ColorGrad = 3653375
      ColorDark = 11447982
      ColorLight = 16250871
      ColorBorder = 6447714
      ColorText = clBlack
      OverColorFace = 13619151
      OverColorGrad = 41968
      OverColorDark = 7960953
      OverColorLight = 15658734
      OverColorBorder = 7697781
      OverColorText = clBlack
      DownColorFace = 13882323
      DownColorGrad = 7852799
      DownColorDark = 15329769
      DownColorLight = 8158332
      DownColorBorder = 5131854
      DownColorText = clBlack
      DisabledColorFace = 14869218
      DisabledColorGrad = clWhite
      DisabledColorDark = 14211288
      DisabledColorLight = 15395562
      DisabledColorBorder = 12895428
      DisabledColorText = clGray
      ColorFocusRect = 9079434
      ColorScheme = csSilver
      Ctl3D = True
      Layout = blGlyphLeft
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        1800000000006802000000000000000000000000000000000000FF00FF8487AB
        40447E4147994047974049974047983E4A9A3E499B3E499B3E4A9D3D3B83787D
        A3FF00FF00008E93B23D42914D50E84A66E54A6AE24A6CE64A6EEA4A6FEE4971
        F24971F34971F34B70F3414FAB787DA40000474B85594EDB5B4EDF553ACD5536
        C75138CB553AD7553EE2523FEA523FE65542EE5542ED5646F03D3E830000383C
        7D6A68E66866E05C4ED34A42A77A76B14B39CF503BE0635CB3625AA84D3FE154
        46EE5546F041429B0000383B807976E47573DF7470DBCDCBD2E2E2DF7F79B75A
        54B3DDDDDBDDDDD96B62DB5242EE5546F041419B00003E3F8F8984E48480DF85
        82DFDEDEE7E9E8E7EBEAE9E2E2E4E9E8E8E5E4E86F62E95142ED5546EF4645A7
        000042429F948EE38F8ADF8E8ADF8984DEE1E2EBF3F3F4F3F3F4EBECEF6157D3
        503BE05542E25542E64A46B000004646AFA197E29B92DF998FDDA09ED2F1F2F5
        F5F6F7F5F6F7F5F6F78883BF4939CB523AD75039D94D47BA00004C4BC3A89DE1
        A298E0ABA2E1F3F4F6F7F8F8F3F4F7E9E9F4F7F8F8F7F8F89F96DB7B6AD99E93
        E16663CB0000514DD2ACA0E2A69BE1A195DFDEDBF1F4F5F8AEA5E3A095DFEEED
        F5EEEDF5A79DE1A89DE1AB9FE16862D60000514DD2ACA0E3A59AE2A59AE2A094
        E0ADA4E4A398E1A499E1A69BE2A69BE2A499E1A59AE2A99EE26965D600006461
        D5AAA1E3B1A8E4AFA6E3AFA6E3AEA4E3AFA6E3AFA6E3AFA5E3AFA5E3AFA6E3B0
        A7E4B0A6E35752D30000BBBEE36A67D8C6C1ECD8D2F0D6D1F0D6D1F0D6D1F0D6
        D1F0D6D1F0D6D1F0D8D2F0CCC7EE6966D89C9CDE0000FF00FFBEBFE4635FD64F
        4AD34F4AD34F4AD34F4AD34F4AD34F4AD34F4AD34F4AD35C58D4A8A7E0FF00FF
        0000}
      Spacing = 4
      TransparentGlyph = True
      Gradient = False
      HotTrack = True
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object dDate: TcxDateEdit
    Left = 104
    Top = 52
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.StyleController = DMPetCenter.cxStyleController
    TabOrder = 1
  end
end
