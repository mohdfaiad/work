object FrmPDVTerminal: TFrmPDVTerminal
  Left = 187
  Top = 70
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'POS Info'
  ClientHeight = 488
  ClientWidth = 472
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
  object gbxStore: TGroupBox
    Left = 15
    Top = 306
    Width = 442
    Height = 138
    Caption = 'Stores list to create global files  '
    TabOrder = 3
    object Bevel4: TBevel
      Left = 55
      Top = 18
      Width = 378
      Height = 11
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 122
      Top = 34
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Store :'
    end
    object Label5: TLabel
      Left = 91
      Top = 58
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'IDStore List :'
    end
    object Image3: TImage
      Left = 10
      Top = 18
      Width = 32
      Height = 29
      AutoSize = True
      Picture.Data = {
        07544269746D6170160B0000424D160B00000000000036000000280000002000
        00001D0000000100180000000000E00A0000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDAD6CE
        E8CBBFE8C5C7DCC2C2C9B8BAD3C8C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF93E4A62BCE4D10CE3516CE3B2DCB4D5BCA6FFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE1D9CFF0D8B9
        F8D1BFEFC5C5F7C8C8F4C8C7F2C6C7E3BDBDD2B3B3A68B8CB7A6A7FF00FFAAF0
        BF12D84B00D83D0EDB487FEDA2A7F4C488EEAE43CF6CFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0C7BCF3DDBFFFDFBF
        F8D1C2F2C4C6EFC3C6F3C4C6EFC3C6F2C4C6ECBCBE955E5D9B9B888491702BD9
        6B00DD5306DD5573D393D4D3D1AFEED0AFEED0AFEED055D885FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDACCBEF7DFC2FDDFC1FFDFC0
        F7CFC0F0BEBFEFC0C1F0BDBFEFC0C1F0BFC0E9B8B9925F5D8D938035D87D03E2
        6900E36711DD68A2CEA5D9C1B9E2BFC0D0B7B6C5B9B8AFEED088E1AAFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9CEC3F8E1C9FEE1C7FDE0C7FFE1C7
        F6CFC0EEBCBEEBBDC0EFBCBEEBBDC0EEBDBFE8B7B8916060906A6761D3A002E6
        7C02E67C11E37F65DF9FD7CCC2F0BEC0F2C0C2EABDBEAFEED090EBBBFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFDACFC0FDE6CBFFE2C9FCE2C6FFE2C8FFE4C9
        F5CDC1EBB9B9EBB8B9EAB9B8EAB8B8EAB9B9E4B3B4955F5E905A579095882EEF
        A346DD9E8FBEA1E6C2C0EAB8B9EBB9B9EBB8B9E2B7B7FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFDED4C5FCE6CEFEE4CCFCE5CCFFE4CCFCE5CCFFE6CC
        F3CCC2E7B4B4EAB4B4E5B3B4EAB3B4E7B4B4E3B0B0935E5F8C5858966E6D95A5
        988C6C66AB797AEBB5B6E8B4B4E7B4B4E9B6B6C7B3C595B3E2FF00FFFF00FFFF
        00FFFF00FFFF00FFE5DACAFEEAD3FEE8D2FDE7D3FFE8D1FCE7D2FFE7D2FFE8D2
        F3CBC2E5B1B3E6B0B3E4B2B3E5B0B3E5B2B3E3ADAD945F5F905A5892869A8F60
        638D5856AB7576E7B3B5E4B2B4D2B4BF90A5D72F8AF0117CF294AEDCFF00FFFF
        00FFFF00FFFF00FFF3E3D0FDE8D4FDE7D2FEE8D5FCE6D1FFE8D5FCE7D3FFEAD6
        F0CBC2E2ABACE6ADACE2ABACE5ADACE4ACACE2A9A8935E5D8C5756657CB78B68
        768E5958A97473E6AEAED0B9C764A5ED0D81FB007FFE007DFE3C7EE4FF00FFFF
        00FFFF00FFFF00FFF4E7D8FEEDDAFEEDD9FDEDD9FEEDD9FDEDD9FEEDD9FFEED9
        F0CAC4E1ABADDFAAADE2ACADE0ABADE2ACADE0A8A995605F8F5B5A6B88C05F6B
        B78C5B5EA97674E3ADAFDFB1B4BBB6CF2488FA0074FF0779FD3489F3A6B8E0FF
        00FFFF00FFFF00FFF4E7DBFEEEE0FEEDDFFEEDE0FEEDDFFDEEDFFEEDDFFEF1E0
        EECBC3DFA5A7DEA7A7E1A5A7DFA7A7E0A6A7DCA4A3945E5D8E58578B8197266A
        E8685A96A87980DFA9AADBAAAF889CDC076DFE006AFE3386F9C5DFF9FF00FFFF
        00FFFF00FFFF00FFF4EADFFDF0E3FEEFE3FEF1E2FDEFE3FFF2E3F9F2E2BEC4CF
        C7ACB5DEA2A4DAA1A0DEA2A5DAA2A1DDA2A3DAA0A2935F5F8D595A9161645F8E
        D5185AEF4B61D18E87CC6C82DC1764F7005DFE0765FD9AC0F9FF00FFFF00FFFF
        00FFFF00FFFF00FFF5EBE4FFF2E6FEF0E6FDF2E5F9F2E6C0C8D26B87B73962A6
        4869A9AF8FA5DD9FA0DA9EA0D99DA0DA9EA0D79A9C945F5F9059568F5956966F
        717B9ED32F77F60D5CFC0555FD075AFE216EFB869BDAFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFF6EDE5FDF4EBF7F2E9D2D7DA7891BD496CAB3D65AA4068AA
        4369AC5671AFB18FA2D89899D59A99D59999D59998C48887B87F7FB37A7AA570
        729E71759C84959BA5D185A6E991A5DDB3A1BCD09CA0FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFF5F1E7E1E3E68A9FC44B6FAE4067AD4569AD466BB0466DB1
        496EB24D74B85A76B5BC919ED59593D59696D59695D59696D5989AD59696D598
        9BD19394D29395D59695D59695D59796D59593D296977089B4FF00FFFF00FFFF
        00FFFF00FFC9CFD6879DC2476EAD3F67AA456CB0466DB14C70B24E71B34E74B9
        5278B85479BA557DC15E7FBDB48FA1D39191D29192D19192D19090D19294D290
        90D29294D29091D29192D19192D19190D393957D7BB0A7C1EBFF00FFFF00FFFF
        00FFFF00FF5377B2456CAF466CAF4C70B24C72B44F77B75177B7547ABC547BC0
        577DBF5C82C15D83C56388C8708AC2B38FA1D38F8ED08F8ED1908FD08F8ED290
        90D08F8ED1908FD08F8ED1908DC98E94747BB6A4BDE6FF00FFFF00FFFF00FFFF
        00FFFF00FF6987BD4C71B64C72B65176B65378BA547CBE5A7EBE5B7FC05E81C4
        6185C66388C8678BCB698DCC6B92D07693CBBA8E9CCF8C8AD08D8ECE8C8CD18D
        8FCF8C8DD08D8ED08D8DC48A8C5E72B895B1E0FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF718DBC567BBC587CBC5A7EBD5D82C36185C56286C56688CB
        6A8ECD6A90CD6F93D07295D57598D57A9BD97D9CD8BB8E98CC8787CA8788CD87
        87CA8787CD8987BD858D4069C29FB8E1FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF7A96CC6185C66184C46789C9698CCB698FCF6F90D3
        7195D47597D47999D6799EDC7D9FDC81A2E081A4E48EA4DCB890A1CB8481CA86
        87CE8581A57C933C65C7A2BBE2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF7E9BCC698FCE6B8FCD6F93D27096D37699D7
        789BDA7A9EDA80A2DF80A3E087A6E388A7E38BACE88FAFEC95ACE1BB919FCA81
        809477983765C89DB5DDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF8AA6D6769BDC769BD97CA0DD7FA1E0
        82A3E288A6E288A9E28DADEA8FADEA8FB1EC8FB3F097B7F298BAF39CB7EE8D86
        B32762D3A7BCDFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF90ACDE83A6E487A5E287A7E4
        88ABEA8DAEEA8FB1EA90B1ED96B5F297B6F297BAF29FBCF9A2C0FAA7C5FBA4C1
        ECFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9BB5E58FAFEA8DAFE8
        91B1EF95B4F095B7F09CBAF39EBBF89FBFF9A1C1F8ABC8F6FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA5C0EE94B7F1
        95B8F09BBBF69CBCF7A2BFFBA9C6FAAAC4F5FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAC2EF
        A1BFF8A3C1F8A5C4F8AFC6E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        B4CDF4B8CCEBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      Transparent = True
    end
    object lsbStore: TListBox
      Left = 160
      Top = 56
      Width = 257
      Height = 78
      ItemHeight = 13
      TabOrder = 0
    end
    object btnAddStore: TButton
      Left = 356
      Top = 31
      Width = 62
      Height = 22
      Caption = 'Add'
      TabOrder = 1
      OnClick = btnAddStoreClick
    end
    object scStores: TSuperComboADO
      Left = 161
      Top = 31
      Width = 190
      Height = 21
      TabOrder = 2
      Text = 'scStores'
      LookUpSource = DMPOS.dsLookUpStore
      DropDownRows = 10
      ShowBtnAddNew = False
      ShowBtnUpdate = False
      IDLanguage = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 447
    Width = 472
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      472
      41)
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 472
      Height = 6
      Align = alTop
      Shape = bsTopLine
    end
    object BitBtn1: TBitBtn
      Left = 311
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
      Left = 391
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 77
    Width = 442
    Height = 224
    Caption = 'Cash Register info '
    TabOrder = 1
    object Image1: TImage
      Left = 10
      Top = 18
      Width = 30
      Height = 31
      AutoSize = True
      Picture.Data = {
        07544269746D61705A0B0000424D5A0B00000000000036000000280000001E00
        00001F0000000100180000000000240B00000000000000000000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF999797857D7D817675837574817777
        868282A1A0A0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
        FF00FFFF00FFFF00FFA79E93BB833EBD7E2F957C5F968F8F9791919791919791
        91969090918E8E8A7F7EA99191C4AEAED1BFBFD6C1C1D6BBBBCFB3B2C4A0A0AB
        87868A72718C8989FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
        00FFFF00FFCBA46CDDB479D39E59C2802C9E776B9570709168688C6161724C4C
        A68686D7D0D0DEDADADCD8D8DAD3D3D9CFCFD8C7C6C09D9CB58D8DC6A1A1CEA8
        A8AF84837F7574FF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
        FFE4C99BF5E3BEE3BE88C98C3FB18676AE8787AB84849B7575A38282E1DDDCE8
        E5E4E8E5E4E5E3E1DDDBDBDAD3D3D1BEBED1BBBBA09595A18181B38686CFA6A5
        B38483989696FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFB0A696
        EAD5ACD8B37CAA8356D9D8D8EDEDEDF1F1F1D2D2D2CDB9B7EAE8E7EFEEEEF1F0
        F0ECEAEAE5E2E0DCD8D8C7AEAED6C3C2A88B8BA98989B28E8ECFA8A8C9989797
        8A8AFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FF867E7E8E7D7687
        736870605F8D8C8CA5A5A5C7C7C7D1D1D1C6B6B5EEECECF7F7F7FAFAFAF1F0F0
        E8E6E5DDDADAC8A4A4D1B2B2B08282B18181BA8A89CFA8A8CA9998A79F9FFF00
        FFFF00FF0000FF00FFFF00FFFF00FF9D9A9A8E7B7BAB9393C0A4A4C5A9A8C5A4
        A4BF9C9CAD8A899478787C7171918787E6E0E0F3EEEEEEE2E2F0F0EFE8E6E5DC
        D8D8C89F9FC79696BA7A79BC7776C28484CEA7A6B18F8EFF00FFFF00FFFF00FF
        0000FF00FFFF00FF958383C9B8B8DCD7D7DBD6D6D9D2D2DACDCDD9C5C5CDAEAE
        C29D9DD0AFAEC69D9D977474887C7CB99D9DC68888CD9596D7BBBAD4BEBECC9D
        9DC47E7DC1706FC56E6EC87E7DAF9494FF00FFFF00FFFF00FFFF00FF0000FF00
        FF9A8C8CDAD3D2E4E2E1E5E2E1E2DFDEDCD9D9DAD2D2D4C2C2C5A8A7A18F8FA3
        7D7DBB9191CEA3A39A73739B7A75969B7C87D599C0B19ACC8989C67674C96B6A
        CA6969C86565A97878FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFC7B2B1
        E8E6E5EDECECEEEDEDEAE9E9E3E1DFDCD7D7C9B2B2D7C4C4A68D8DA78B8BAF8B
        8BD0A8A7AE8483B0867E7BA8763FD16F3DD06D64D1819EBB90C98F89C36A69B8
        5954A37877FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFCFBDBBEDECECF5
        F5F5F8F8F8F0EFEFE8E6E4DDDADAC7A5A4D2B8B8AE8484AF8382B78B8BCEA8A8
        A57D79BB938D6DBA7B4AD47647D37442D2713ED06E43CE6F7AC084B29983BA79
        789B8C8CFF00FFFF00FFFF00FFFF00FF0000FF00FFB2A8A8EDEAEAF7F7F7FAF9
        F9F2F1F0E8E6E5DDDADAC8A1A0C89D9CB77C7BB87B7AC08685CCA6A593786EC6
        9B9B68CA8056D87F52D77C4DD57847D37441D1703BCF6C35CD6853C6738EA37B
        B67D78A68F8FFF00FFFF00FF0000FF00FFFF00FFB9B1B1D0B8B8C58686D6ADAD
        E1D6D5D7C8C8CB9F9FC58383BF7272C27070C78180BA9393878075BE979569DC
        8963DC875FDB8358D98051D77B4AD47642D2713BCF6C34CD6830CC6536CA67B8
        837EFF00FFFF00FF0000FF00FFFF00FFFF00FFA38985AB9D87ACC5A2CF9B97C7
        8685C7807FC86E6DC96C6BCA6868AF7676CECDCD9B978DAC9E9175E29371E190
        6CDF8C64DD875CDA8153D77C4AD47641D17139CF6B33CD6737CA65AD7E7EFF00
        FFFF00FF0000FF00FFFF00FFFF00FFAA8B817EA3753DD06D4ED0748DCC95C0A3
        90CA7978C36463BA5956A67977D1D1D1AFA79AA0A79083E79C7FE59978E39570
        E08F67DD885CDA8252D77C48D4753ED16F37CE6949BE66AB8A89FF00FFFF00FF
        0000FF00FFFF00FFFF00FFBA928A70B67A47D37444D27240D16F3DD06E66CB80
        9EAB88C6807AAE7473938F8CCBB3B0A0B99791EBA68BE9A284E79D7BE49770E1
        8F65DD885AD9814ED57944D2723BCF6C5DB56AA59191FF00FFFF00FF0000FF00
        FFFF00FFABACA8C79B9A69C57E53D77C4FD67A4AD47645D2733FD06F39CE6B42
        CB6E79B47C947965CDB6B6A4CDA39EF0AF98EDAA8FEBA584E79D79E3956DE08D
        60DB8454D77D48D4753ED06E6EAA6CFF00FFFF00FFFF00FF0000FF00FFFF00FF
        979790C1999867D88660DB855BDA8155D87E4FD67A48D37440D17039CF6B32C7
        6468A570C1B1B1ACE1B1AAF3B7A2F1B298EEAB8DEAA381E69B73E29266DD8859
        D9804CD57841D1707FA171FF00FFFF00FFFF00FF0000FF00FFFF00FF97968CB1
        9B9272E1906EDF8E68DE8A61DC8559D98151D67B48D37540D16F35C3658CB594
        B5A5A5B8F4BEB3F7BDAAF4B7A0F0B093ECA785E89E78E3946ADF8B5CDA814FD6
        7A43D2728D9A73FF00FFFF00FFFF00FF0000FF00FFFF00FFA7A397A1A48F80E6
        9A7CE49775E2926DDF8D64DD875AD98150D67B46D37437BC63B6C7B6A7A59DC0
        FBC6B9F9C1B0F5BBA4F2B396EDAA88E9A07BE4966CDF8C5EDB8350D67B45D273
        A1987EFF00FFFF00FFFF00FF0000FF00FFFF00FFC8B1AB9FB5968DEAA388E9A0
        81E69B79E3956EE08E63DC8658D9804DD5783AB763D4D6D39F9594A7AC9EADC1
        A8ACD5AEA4E8B097EDAA88E9A07BE4966CDF8C5EDB8351D67B44D273AE9888FF
        00FFFF00FFFF00FF0000FF00FFBAB6B3CEB6B6A2C8A09BEFAC95ECA88CEAA382
        E69C77E3946BDF8C5FDB8353D77C43C76E96C6A5C0C9BFCCC4C4C6BDBCB8A8A8
        AB9595A598919FA89190BB907BCB8B60D8834FD67A45D272A68683FF00FFFF00
        FFFF00FF0000FF00FFA9A39DC5B4B4AADBADA7F3B5A0F0B096EDA98BE9A27FE5
        9972E19165DD8758D87F4BD4773FCD6E749B6AA49D9CBCBCBAB0ACA9B2AEA9C3
        B6B6CDB4B4CBAFAFBFA0A0B391909D958289A17B9B8383FF00FFFF00FFFF00FF
        0000FF00FFA7A29FB8A8A7B5F0BBB1F6BCA9F3B69EF0AF92ECA684E79D77E394
        69DE8A5BDA814ED57943D2728A9D73FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFC6C4C4B1ABABB1A5A5BDA8A7C19B9AA99E9DFF00FFFF00FFFF00FF0000FF00
        FFB7B3B2AAA49FBEFAC5B8F8C0AFF5BAA3F1B296EDA988E9A07AE4966CDF8C5D
        DA8250D67B44D2739B9679FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFD3D0CE
        A19B96B0C6ACB4DBB4AFEFB9A4F2B397EDAA89E9A07BE4976CDF8C5EDB8351D6
        7B45D273AB9988FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFCBCDCACEC9C9C1
        B8B8B2A4A4A59292A59E95A1B09897C09683D2946DDE8C5DDA8250D67A44D272
        AA8A85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFBAB9B8AEAE
        AABBB4AFC6BDB7CBB9B9C9AFAFBC9D9DAF908D9A9A8584A87F70B5789D8281FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBBB8B8B1AAAAB4A6A6C4ACACC8A8A7C19897A09090FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0000}
      Transparent = True
    end
    object Bevel2: TBevel
      Left = 55
      Top = 18
      Width = 378
      Height = 11
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 77
      Top = 34
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cash Register :'
    end
    object Label2: TLabel
      Left = 57
      Top = 60
      Width = 91
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cash Register List :'
    end
    object lstCashReg: TListBox
      Left = 160
      Top = 56
      Width = 257
      Height = 161
      ItemHeight = 13
      TabOrder = 0
    end
    object btnAdd: TButton
      Left = 356
      Top = 31
      Width = 62
      Height = 22
      Caption = 'Add'
      TabOrder = 1
      OnClick = btnAddClick
    end
    object scCashRegister: TSuperComboADO
      Left = 161
      Top = 31
      Width = 190
      Height = 21
      TabOrder = 2
      Text = 'scCashRegister'
      LookUpSource = DMPOS.dsLookUpCashReg
      DropDownRows = 10
      ShowBtnAddNew = False
      ShowBtnUpdate = False
      IDLanguage = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 15
    Top = 1
    Width = 442
    Height = 68
    Caption = 'Cash Register info '
    TabOrder = 2
    object Image2: TImage
      Left = 10
      Top = 18
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        07544269746D6170360C0000424D360C00000000000036000000280000002000
        0000200000000100180000000000000C00000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDED7D6E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EFEFF7C6A6ADC69684BD928CAD827BC6A2A5DECBCEEFEBEFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF7
        C69A94E7AE84EFC394F7E3CEEFE3CEE7CBB5D6BAADD6AEA5C69A9CD6B6B5E7D3
        D6EFEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E3E7CEA69C
        E7B68CEFBE8CEFC79CF7E7D6F7E3CEEFE3CEEFDFC6EFDFC6B58284BD8684BD8A
        8CC6928CBD9294C6A6ADD6C7C6E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E3E7CEA294EFC794
        EFC394EFBE8CEFCB9CF7EBDEF7E7D6F7E3CEEFE3CEEFDFC6A57173AD797BAD7D
        7BC6968CE7D3ADDEBE9CC6A68CB58A7BB59294FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7D3D6D6AA94F7CF9CF7CB9C
        F7CB94EFC394F7CBA5F7EFDEF7EBDEF7E7D6F7E3CEEFE3CE9C65639C696BA56D
        6BB58A84EFD7B5E7D3ADE7CFA5E7CFA5AD8A8CFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DBDEDEBA9CF7DBA5F7D3A5F7CF9C
        F7CB9CF7C794F7CFADF7EFE7F7EFDEF7EBDEF7E7D6F7E3CE9C65639C65639C65
        63AD827BEFD7B5EFD7B5E7D3ADE7CFA5AD8A8CFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBA9CEFCFADF7DBADF7DBA5F7D3A5
        F7CF9CF7CB9CF7D3ADFFF3EFF7EFE7F7EBDEF7E7DEF7E7D69C65639C65639C65
        63AD827BEFDBBDEFD7B5E7D3B5E7D3ADAD8A8CFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBA9CEFD3ADF7E3ADF7DBADF7D7A5
        F7D3A5F7CF9CF7D7B5FFF3EFFFF3EFF7EFE7F7EBDEF7E7DE9C65639C65639C65
        63AD867BEFDBBDEFDBBDEFD7B5E7D3ADAD8A8CFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBA9CEFD7ADF7E3ADF7E3ADF7D3A5
        EFBE8CEFBE8CF7D7ADFFF7F7FFF3EFFFF3EFF7EFE7F7EBDE9C65639C65639C65
        63AD867BEFDFC6EFDBBDEFDBBDEFD7B5AD8A8CFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBA9CEFD7ADFFEBB5F7CF9C94AAC6
        3196FF428EE7CEBEB5FFFFFFFFF7F7FFF3EFFFF3EFF7EFE7E7D3CED6BEB5C6A6
        9CBD9E94EFE3CEEFDFC6EFDBBDEFDBBDAD8A8CFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBA9CEFD7B5E7CB9C73B2E742AAFF
        399EFF3196FF4296EFDEEBFFFFFBFFFFF7F7FFF3EFF7F3E7F7EFE7F7EBDEF7E7
        D6F7E7D6F7E3CEEFDFC6EFDFC6EFDBBDAD8A8CFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBA9CCEB6A56BC7F75ABEFF4AB6FF
        42AAFF39A2FF3196FF4296EFDEEBFFFFFBFFFFF7F7FFF3EFF7F3E7F7EFE7F7EB
        DEF7E7D6F7E7D6F7E3CEEFDFC6EFDBC6C69294E7DBDEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEB6A55AC7FF63CFFF63CBFF5ABEFF
        52B6FF42AAFF39A2FF319AFF4296F7E7F3FFFFFBFFFFF7F7FFF3EFF7F3E7F7EF
        E7F7EBDEF7E7D6F7E7D6EFDFCEBD9AA5C6969CE7DFE7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA5D3FF4AB2FF52BAFF5AC3FF63CBFF63CBFF
        5AC3FF52BAFF4AAEFF39A6FF319AFF5AA6F7F7FBFFFFFBFFFFF7F7FFF3EFF7F3
        E7F7EFE7F7EBDEEFE3D69C92AD9C86A5D6CFD6FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE7FF4AAEFF4AB2FF52BAFF5AC3FF63CBFF
        63CBFF5AC3FF52BAFF4AAEFF39A6FF319AFF5AAAFFF7F7FFFFFBF7FFF7F7FFF3
        EFF7EFE7F7EFE79496BD7B79A5CECBDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE7FF4AAEFF4AB2FF52BAFF5AC3FF
        63CBFF63CFFF5AC7FF52BAFF4AB2FF42A6FF319AFF5AAAFFF7F7FFFFFBF7FFF7
        F7FFF3EF8C9AC65A69ADBDC7DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE7FF4AAAFF4AAEFF52B6FF
        5ABEFF63CBFF63CFFF63C7FF52BAFF4AB2FF42AAFF399EFF5AAEFFF7FBFFFFFB
        F78CA6DE4A6DBDB5BEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE3FF4AAAFF42AEFF
        52B6FF5ABEFF63C7FF63CFFF63C7FF5ABEFF4AB2FF42AAFF399EFF5AAEFF84BA
        F73982DEADC7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE3FF63B6FF
        42AAFF4AB6FF5ABEFF63C7FF63CFFF63CBFF5ABEFF52B6FF42AAFF39A2FF319A
        FF6396EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7EFFF
        5AB2FF42AAFF4AB2FF52BAFF5AC7FF63CBFF63CBFF5ABEFF52B6FF398AEF3171
        EF6382EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E7EFFF52AAFF42AAFF4AB2FF52BAFF6BCBFFA5DFFFC6E7FF7379CE00009C2145
        D66382EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE7EFFFA5D3FFADDBFFDEEFFFFFFFFFFFFFFFFFFFFF7B79CE00009C2145
        D66382EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B6D67B79AD848A
        BDC6C7DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Transparent = True
    end
    object Bevel3: TBevel
      Left = 55
      Top = 18
      Width = 378
      Height = 11
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 85
      Top = 34
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Default Store :'
    end
    object scDefaultStore: TSuperComboADO
      Left = 161
      Top = 31
      Width = 190
      Height = 21
      TabOrder = 0
      Text = 'scDefaultStore'
      LookUpSource = DMPOS.dsLookUpStore
      DropDownRows = 10
      ShowBtnAddNew = False
      ShowBtnUpdate = False
      IDLanguage = 0
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
    Left = 376
    Top = 8
    TranslationData = {
      737443617074696F6E730D0A5446726D5044565465726D696E616C01504F5320
      496E666F01496E666F726D61E7E36F20646F732050445601010D0A50616E656C
      31010101010D0A42697442746E31012653617665012653616C76617201010D0A
      42697442746E32012643616E63656C012643616E63656C617201010D0A4C6162
      656C310143617368205265676973746572203A014361697861203A01010D0A4C
      6162656C320143617368205265676973746572204C697374203A014C69737461
      20646520636169786173203A01010D0A47726F7570426F783201436173682052
      6567697374657220696E666F2001496E666F726D61E7E36F20646F7320636169
      78617301010D0A62746E4164640141646401416469636F6E617201010D0A4772
      6F7570426F7831014361736820526567697374657220696E666F20014C697374
      6167656D20646F732043616978617301010D0A4C6162656C330144656661756C
      742053746F7265203A014C6F6A612070616472E36F203A01010D0A737448696E
      74730D0A5446726D5044565465726D696E616C01010D0A50616E656C31010101
      010D0A426576656C31010101010D0A42697442746E3101010D0A42697442746E
      3201010D0A4C6162656C3101010D0A4C6162656C3201010D0A426576656C3201
      010D0A47726F7570426F783201010D0A496D6167653101010D0A6C7374436173
      68526567010101010D0A62746E416464010101010D0A73634361736852656769
      73746572010101010D0A47726F7570426F7831010101010D0A496D6167653201
      0101010D0A426576656C33010101010D0A4C6162656C33010101010D0A736344
      656661756C7453746F7265010101010D0A7374446973706C61794C6162656C73
      0D0A7374466F6E74730D0A5446726D5044565465726D696E616C014D53205361
      6E732053657269660101010D0A73744D756C74694C696E65730D0A6C73744361
      73685265672E4974656D73010101010D0A73634361736852656769737465722E
      46696C7465724669656C6473010101010D0A7363436173685265676973746572
      2E46696C74657256616C756573010101010D0A736344656661756C7453746F72
      652E46696C7465724669656C6473010101010D0A736344656661756C7453746F
      72652E46696C74657256616C756573010101010D0A7374446C67734361707469
      6F6E730D0A5761726E696E67015761726E696E670101010D0A4572726F720145
      72726F720101010D0A496E666F726D6174696F6E01496E666F726D6174696F6E
      0101010D0A436F6E6669726D01436F6E6669726D0101010D0A59657301265965
      730101010D0A4E6F01264E6F0101010D0A4F4B014F4B0101010D0A43616E6365
      6C0143616E63656C0101010D0A41626F7274012641626F72740101010D0A5265
      747279012652657472790101010D0A49676E6F7265012649676E6F7265010101
      0D0A416C6C0126416C6C0101010D0A4E6F20546F20416C6C014E266F20746F20
      416C6C0101010D0A59657320546F20416C6C0159657320746F2026416C6C0101
      010D0A48656C70012648656C700101010D0A7374537472696E67730D0A73744F
      74686572537472696E67730D0A50616E656C312E48656C704B6579776F726401
      0101010D0A426576656C312E48656C704B6579776F7264010101010D0A426974
      42746E312E48656C704B6579776F7264010101010D0A42697442746E322E4865
      6C704B6579776F7264010101010D0A4C6162656C312E48656C704B6579776F72
      64010101010D0A4C6162656C322E48656C704B6579776F7264010101010D0A42
      6576656C322E48656C704B6579776F7264010101010D0A47726F7570426F7832
      2E48656C704B6579776F7264010101010D0A496D616765312E48656C704B6579
      776F7264010101010D0A5446726D5044565465726D696E616C2E48656C704669
      6C65010101010D0A5446726D5044565465726D696E616C2E48656C704B657977
      6F7264010101010D0A6C7374436173685265672E48656C704B6579776F726401
      0101010D0A6C7374436173685265672E496D654E616D65010101010D0A62746E
      4164642E48656C704B6579776F7264010101010D0A7363436173685265676973
      7465722E456469744D61736B010101010D0A7363436173685265676973746572
      2E48656C704B6579776F7264010101010D0A7363436173685265676973746572
      2E496D654E616D65010101010D0A73634361736852656769737465722E4F7468
      6572436F6C756D6E73010101010D0A73634361736852656769737465722E5370
      635768657265436C61757365010101010D0A7363436173685265676973746572
      2E546578740173634361736852656769737465720101010D0A47726F7570426F
      78312E48656C704B6579776F7264010101010D0A496D616765322E48656C704B
      6579776F7264010101010D0A426576656C332E48656C704B6579776F72640101
      01010D0A4C6162656C332E48656C704B6579776F7264010101010D0A73634465
      6661756C7453746F72652E456469744D61736B010101010D0A73634465666175
      6C7453746F72652E48656C704B6579776F7264010101010D0A73634465666175
      6C7453746F72652E496D654E616D65010101010D0A736344656661756C745374
      6F72652E4F74686572436F6C756D6E73010101010D0A736344656661756C7453
      746F72652E5370635768657265436C61757365010101010D0A73634465666175
      6C7453746F72652E5465787401736353746F72650101010D0A73744C6F63616C
      65730D0A43757272656E637920537472696E6701240101010D0A54686F757361
      6E6420536570617261746F72012C0101010D0A446563696D616C205365706172
      61746F72012E0101010D0A4461746520536570617261746F72012F0101010D0A
      53686F7274204461746520466F726D6174014D2F642F797979790101010D0A4C
      6F6E67204461746520466F726D617401646464642C204D4D4D4D2064642C2079
      7979790101010D0A54696D6520536570617261746F72013A0101010D0A54696D
      6520414D20537472696E6701414D0101010D0A54696D6520504D20537472696E
      6701504D0101010D0A53686F72742054696D6520466F726D617401683A6D6D20
      414D504D0101010D0A4C6F6E672054696D6520466F726D617401683A6D6D3A73
      7320414D504D0101010D0A53686F7274204D6F6E7468204E616D6573014A616E
      2C4665622C4D61722C4170722C4D61792C4A756E2C4A756C2C4175672C536570
      2C4F63742C4E6F762C4465630101010D0A4C6F6E67204D6F6E7468204E616D65
      73014A616E756172792C46656272756172792C4D617263682C417072696C2C4D
      61792C4A756E652C4A756C792C4175677573742C53657074656D6265722C4F63
      746F6265722C4E6F76656D6265722C446563656D6265720101010D0A53686F72
      7420446179204E616D65730153756E2C4D6F6E2C5475652C5765642C5468752C
      4672692C5361740101010D0A4C6F6E6720446179204E616D65730153756E6461
      792C4D6F6E6461792C547565736461792C5765646E65736461792C5468757273
      6461792C4672696461792C53617475726461790101010D0A7374436F6C6C6563
      74696F6E730D0A737443686172536574730D0A5446726D5044565465726D696E
      616C0144454641554C545F434841525345540101010D0A}
  end
end
