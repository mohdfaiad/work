inherited brwCashRegMov: TbrwCashRegMov
  Left = 235
  Top = 50
  Width = 799
  Height = 575
  HelpContext = 1080
  Caption = 'brwCashRegMov'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 783
    inherited Image1: TImage
      Width = 556
    end
    inherited lblMenu: TLabel
      Left = 572
    end
    inherited EspacamentoSuperior: TPanel
      Width = 783
      inherited EEE: TPanel
        Width = 783
      end
    end
  end
  inherited Panel1: TPanel
    Top = 496
    Width = 783
    inherited EspacamentoInferior: TPanel
      Width = 783
      inherited Panel3: TPanel
        Width = 783
      end
    end
    inherited hhh: TPanel
      Left = 635
    end
  end
  inherited EspacamentoEsquerdo: TPanel
    Height = 462
  end
  inherited EspacamentoDireito: TPanel
    Left = 783
    Height = 462
  end
  inherited pnlMain: TPanel
    Width = 783
    Height = 462
    inherited pnlBasicFilter: TPanel
      Width = 783
      Height = 61
      Visible = True
      object lbFrom: TLabel [0]
        Left = 379
        Top = 11
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Open from :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTo: TLabel [1]
        Left = 574
        Top = 11
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCashRegister: TLabel [2]
        Left = 25
        Top = 11
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cash Reg :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object labStores: TLabel [3]
        Left = 45
        Top = 32
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Stores :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited pblGO: TPanel
        Left = 702
        Height = 61
        TabOrder = 3
        Visible = True
        inherited pnlAviso: TPanel
          Left = 7
          inherited btnExec: TSpeedButton
            OnClick = btnExecClick
          end
        end
      end
      object DateInicio: TDateBox
        Left = 448
        Top = 7
        Width = 98
        Height = 21
        TabOrder = 1
        OnChange = DateInicioChange
        InputTime = False
        Language = Portuguese
      end
      object DateFim: TDateBox
        Left = 594
        Top = 7
        Width = 97
        Height = 21
        TabOrder = 2
        OnChange = DateInicioChange
        InputTime = False
        Language = Portuguese
      end
      object scCashRegister: TSuperComboADO
        Left = 96
        Top = 7
        Width = 161
        Height = 21
        TabOrder = 0
        LookUpSource = DM.dsLookUpCashReg
        DropDownRows = 10
        ShowBtnAddNew = False
        ShowBtnUpdate = False
        IDLanguage = 0
      end
      object btCashRegisaterAll: TButton
        Left = 261
        Top = 9
        Width = 34
        Height = 20
        Caption = 'All'
        TabOrder = 4
        OnClick = btCashRegisaterAllClick
      end
      object cbStores: TComboBox
        Left = 97
        Top = 31
        Width = 161
        Height = 21
        ItemHeight = 13
        TabOrder = 5
        Text = 'cbStores'
      end
      object btnAllStore: TButton
        Left = 262
        Top = 33
        Width = 34
        Height = 20
        Caption = 'All'
        TabOrder = 6
        OnClick = btCashRegisaterAllClick
      end
    end
    inherited pnlButton: TPanelRights
      Left = 670
      Top = 61
      Height = 401
      Commands = [btAlt, btPos, btFlt, btImp]
      inherited btRestore: TSpeedButton
        Top = 4
      end
      inherited btDetail: TSpeedButton [1]
        Top = 4
      end
      inherited imgFolder: TImage [2]
        Top = 331
      end
      inherited ImgTrash: TImage [3]
        Top = 366
      end
      inherited btColumn: TSpeedButton [4]
        Top = 116
      end
      inherited btGroup: TSpeedButton [5]
        Top = 91
      end
      inherited btAdd: TSpeedButton [6]
        Left = 26
        Top = 274
        Width = 91
        Enabled = False
        Visible = False
      end
      inherited btRemove: TSpeedButton [7]
        Left = -6
        Top = 269
        Width = 91
        Enabled = False
        Visible = False
      end
      object btInvoice: TSpeedButton [8]
        Tag = 6
        Left = 2
        Top = 198
        Width = 111
        Height = 25
        Caption = '&Invoices'
        Flat = True
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000D40E0000D40E00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF78897B4470524175585065
          55657268939691FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF88918A51785B2C7843148235148F3911A03E53BF7C5DBB8659AB7B
          509B744C8263536D5C6B756CFF00FFFF00FFFF00FFFF00FF8899893075401A7E
          36168A35139337139E3A14A13A139A39169F3B43B36E54B37B50B47959B67E5B
          BA8553B07745875C959B91FF00FFFF00FFFF00FF2F814714983B139B3A10A23B
          11A43F10AD4409C85203E46302F17010F07B28EC8C3BE38B35D17D45BF764DBE
          80418D5F898D86FF00FFFF00FFFF00FF30854A0EB74A09CC5705D86306BE5A0B
          B35C09B75E0CBE64257F5254806A6D7E6D6A8B7736815A15B25D36AC6B6D9775
          FF00FFFF00FFFF00FFFF00FF899E8763A27738A5632966436E7070999698ACA2
          9C7578754243446D6B6D82777983797B5F575B967161E2C39FE1BFB7FF00FFFF
          00FFFF00FFFF00FFE4CCC9FDE6CBF2CBB16A66635C5A5F88898B757D8D666668
          4743466D686B88878A858485616262A47C6EECCAA9E0B9A5FF00FFFF00FFFF00
          FFFF00FFDDBEB6FCE3CAEBC3AC6A6363615D5E7B7A7D6772886D696E57535898
          9495ADAAACA29FA2726D70A1796CEACCAEEFC9AFFF00FFFF00FFFF00FFFF00FF
          F0D3C6F3D9C5ECC9B65F5B5C69636687878998999B7879795451548D81869690
          90968E8EA28F87C29485E6CCB4F9DBBFDEC8C5FF00FFFF00FFEEDEDCF7E7DAEF
          D0C1EBC9B6685B59999294C5BEC1C5BEC29792955E555F285CAE8C7A75E1BBA1
          FFD6B0DBAC96E6D1BBFEE5CCDFBFB7FF00FFFF00FFE1CAC7FCEFE3EED0C2ECCC
          BBD9B8A5A9948F9F89818E8A908592A76387C12071E1265FB3C3AA96F8D4B0D8
          A995D5B7ABEDCFC6DCBABAFF00FFFF00FFDFC7C4FAF0E4EBD0C2EED2C3ECCDBC
          ECC9B4EDC8B1E0C2AEAAC5DE73AFFA4F99F92171E3245EB8BEA796CB988BDDD0
          C7F0DDD8FF00FFFF00FFEDE6E7EBDAD7F4E8DFE8CCC3EED7CBF7E4D4F4DAC7F2
          D3BCF4D0B9E7D5C0AEC5DD73AEFA4F98F92271E32660B8977A78CAB8B3DBC6C4
          FF00FFFF00FFD9C8C9FBF0EEF1E4DFEDD7CCE9CFC5EED6C7F7DECDFDEBD5FEE6
          CEFDE3C9DFC3B1A1BAD671AEFB4E99FA2070E11E58B285747BFF00FFFF00FFFF
          00FFDBC5C5FDFCFBF1E2DDE9D2CCEED9CFF2E0D5FDF0E3F0D0C3F0D1C1F9DFCA
          E1B7A7CBBFB5ACC6E173AFFA5199FB2171E21D5FBAFF00FFFF00FFFF00FFDDBF
          C0F3E2E3F8F0F0F8EFECFAF1EAFCF4EBFBEDE1F3D9CEFAEEE7E3BFBBC9A69EEB
          DDD2DCC7C2AECCE573AFFA4F98FA2272E33268B2FF00FFFF00FFFF00FFF7F0F0
          EBD7D7F1DEDEF1DCD9F8E8DFF7E6DBEED5CFD5B7B3D0C0BAEDE6DDFCF4E8F3D8
          CFDCC9C6A4C2DE73AFFB5DA1F9C7D4E78C8F94FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFE2CACAD7AAABCAAAAADCCBC8F4E1DFF5E2E0F6E2DDE8C1BFD9C8C9
          C8CACCA2BCD3B0B6C0DBE0E8437BCD3B64A3FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF8E93973D84DC2A6ECACED8E4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF4B89CCD1DCE9FF00FF}
        Margin = 6
        Spacing = 7
        OnClick = btInvoiceClick
      end
      object btManage: TSpeedButton [9]
        Tag = 6
        Left = 2
        Top = 172
        Width = 111
        Height = 26
        Caption = '&Manage'
        Flat = True
        Glyph.Data = {
          66070000424D660700000000000036000000280000001A000000170000000100
          18000000000030070000C40E0000C40E00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF413D662D
          2B52494864756F81FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF3323557545585431532E23501E1C4F1B1A4B2C2B
          544E4967717181FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FF7977966F4261EA
          A284EAB38DD89981BD7D729862696C3A504A2C522F23501B1D5215194B29254F
          4B4964727082FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
          FF00FFFF00FFFF00FF363466AD6269FCBA8CFEC894FDCEA1FED5ADFDDDBFFBE2
          CCEBC9C0D59E97BB818199646C6D445C4C2E523124511B1648FF00FFFF00FFFF
          00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FF2F2659D77E71FE
          B280FDB180FCB480FEB98AFCC69AFFD4ADFCE3C4FCD7BDFBD0B6FBD1BCF5CAB8
          E6B7A8C89A996C5E7BFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
          FF00FFFF00FF81809C603F5FED9171FCB17CFEB684FDBB8AFFBF8BFDC08CFDBE
          90FEBF91FEC29DFCCAAAFEDBC5F4E1D5C0ADA5B1ABB6FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF1D19516F3B56F7804CFC
          8C56FC9A62FBA56EFDB17DFCBF8BFCC594FDCA97FEC495FCD3ABFCD8B8F9D3B7
          81797554525EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
          FF00FFFF00FF2F2F620B0A482E1D4A55314B7D4449A8594BC86B4DE37E4FF995
          5DFCA26AFEA875FDAF7CFCB285FDC499A298926A6665767376FF00FFFF00FFFF
          00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF7374950C0F5110175511
          1B57151F5D1422621C25622B2C603B315D5D425C845257A7635BCC7D5CE08B65
          5D43538C8A894C494BFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
          FF00FFA09FA07E7C8C0D1152171F5F1825641828661D2D6820306C21346D2336
          70273C75263E792B3F79243C78304174191E576360697672776A686BFF00FFFF
          00FFFF00FFFF00FF0000FF00FFFF00FF777678908E9074737B181B541B29691E
          2D6A22326D233670253973273C7727417B28457E2E48812F4E852F4F8932538C
          2B417C3937528D8C8E4F4E50FF00FFFF00FFFF00FFFF00FF0000FF00FFBFBFBF
          AEACAEC5D4DBBBD1DE424B7B2E427E2D457E273F7B26417A27457D2D477E2E4B
          85304D8732518A33548E365790395B933A5D941D2356777376838384605C60FF
          00FFFF00FFFF00FF0000FF00FFBDBCBEB2B0B368B6DD1895DC156DB218367823
          407F304C8737518C3B589341639C41659E3F639C40669B3D649A3C64983E669B
          406C9C293F785E5B6B9391925A565A9F9E9FFF00FFFF00FF0000FF00FFBDBCBD
          B2B3B271B5DE1894DB1294DC1394DC128CD4117FC60E74BC0E64A80D53984162
          96585F873E49793B4782344C833E589243679C476BA03A395D9D9D9B74717458
          5358FF00FFFF00FF0000FF00FFBDBDBDB4B0B3DAE0E5C7DAE5B4D2E39FCBE289
          C4E372BBE25FB2E147AAE035A1DC99CAE8D3D2D5A47B55DDA169D29F75CDC8CD
          69677C6D6E88AFAEC1FF00FF7E7B7E676467A8A7A8FF00FF0000FF00FFBCBBBE
          B0B3B4E3E6E4E4E7E4E8E7E8ECE7EAECE9ECECECEEECEEEEEDEBEFEAEEEFEDF3
          F3D6D5D59C5C20C86400CD6301F9F1E7918F90C1BFC1FF00FFFF00FFFF00FF8D
          8A8DFF00FFFF00FF0000FF00FFBCBCBDB5B2B5DDAE83D28740D89251DA9D65DA
          AA7BE1B78CE4C5A0E6D0BAF1E0CFF7F2EED8D9D9A8815ADB9353DB924BFAF5EE
          918E90C8C6C7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFBDBEBC
          B4B3B7D99B66CD6300CD6200CC6400CC6300CB6301CB6300CB6300CF6201E6BB
          8DD6DBDB8E8C8DB8B7BABFC1BFBFC0C07E7D7EFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0000FF00FFC0BFC1B3B2AEDDBA98D48D49D68943D08034D2
          7B2BCF7723D07015CE690ECD6401E9BA90D9DBDA737171D5D4D3D2D2D1CBCCCD
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
          868686ADACAEBBBABBBFBDBECBC8C7CFCBC9DAD5D1DCD6D1EAE3DCE8E0D8F3F0
          ECBBBBBB969797FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFCDCCCDCAC8CABAB9BAB8
          B6B8B1AFB1AFAEAFADABADAAA9AA9E9D9EA7A6A7FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0000}
        Margin = 4
        Spacing = 2
        Visible = False
      end
      inherited btPrint: TSpeedButton
        Top = 34
      end
      inherited btExcel: TSpeedButton
        Top = 60
      end
      inherited btFilter: TSpeedButton
        Top = 141
      end
      object btnPrintOffice: TSpeedButton [13]
        Tag = 7
        Left = 2
        Top = 223
        Width = 111
        Height = 29
        Caption = 'Re-Print'
        Flat = True
        Glyph.Data = {
          A2070000424DA207000000000000360000002800000019000000190000000100
          1800000000006C070000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C69C96949C9694FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBCEBDBA
          BDDEDBDEDEDFDEADAEADB5B2B59C9694BD8E84A58E84ADAEADFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFBDBABDCECFCEEFEFEFEFEFEFDEDBDEADAEADB5B2B58C8E8C4A4D4A63
          61636361638C8A8C9C9694FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFBDBEBDC6C3C6EFEBEFF7F3F7EFEFEFEFEBEFD6D3D6AD
          AAADADAEAD8C8E8C4A4D4A4241426361636361638486848C8E8CADAEADC6C7C6
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFBDBABDDEDFDEFFFBFFFFF7F7EF
          EFEFEFEBEFE7E3E7D6D3D6ADAAADADAAADADAEADADAEADADAAAD8C8A8C737173
          6361638486848C8E8CB5B2B59C9E9CFFFFFFFFFFFF00FFFFFFFFFFFFBDBABDFF
          FFFFFFFBFFFFF7F7EFEFEFEFEBEFDEDBDEB5B2B58C8E8C8482848C8E8CADAAAD
          ADAEADADAEADB5B2B5BDBABDADAEAD9C9E9C636163525152CECBCEFFFFFFFFFF
          FF00FFFFFFFFFFFFADAEADFFFBFFFFF7F7EFEFEFDEDBDE9C9E9C9C9E9CBDBABD
          C6C7C69C9E9C8C8E8C8482848482848C8E8C9C9E9CB5B2B5BDBABDBDBEBDC6C3
          C6BDBABDC6C7C6FFFFFFFFFFFF00FFFFFFFFFFFFADAAADF7F3F7CECFCE9C9694
          9C9E9CD6D3D6DEDBDED6D3D6D6D3D6CECBCEBDBEBDADAAADADAAAD9C9E9C8C8E
          8C8486848C8A8C9C9E9CBDBABD8CBE8C8CBE8CFFFFFFFFFFFF00FFFFFFFFFFFF
          9C9E9C8C8A8C9C9694DEDBDEDEDFDEDEDBDED6D3D6CECBCEEFEBEFE7E7E7E7E7
          E7EFEBEFDEDBDECECBCEBDBABDADAEADADAEAD9C96948486848482849C9694FF
          FFFFFFFFFF00FFFFFFFFFFFF8C8E8CEFEBEFE7E3E7DEDFDEDEDBDED6D3D6CECF
          CEE7E3E7DEDBDEB5B2B5BDBABDBDBABDBDBEBDCECFCEE7E7E7E7E7E7D6D3D6C6
          C7C6BDBEBDBDBABDADAAADFFFFFFFFFFFF00FFFFFFFFFFFF8C8A8CE7E3E7DEDF
          DEDEDBDED6D3D6CECFCEDEDBDEE7E7E7C6C3C6EFEFEFEFEFEFEFEBEFCECFCEBD
          BEBDBDBABDBDBABDBDBEBDD6D3D6E7E3E7DEDFDED6D3D6FFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFD6D3D6DEDBDED6D3D6CECFCEDEDFDECECFCEC6C3C6F7F3F7F7
          F3F7EFEFEFEFEFEFEFEFEFEFEBEFEFEBEFDEDBDEC6C7C6BDBABDBDBABDBDBABD
          CECBCEFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7ADAEADBDBEBDC6
          C3C6D6D3D6C6C7C6CECBCEE7E7E7F7F3F7EFEFEFEFEFEFEFEFEFEFEBEFEFEBEF
          E7E7E7E7E7E7D6D3D6ADAEADFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFADAAADE7E7E7E7E7E7ADAEADB5B2B5BDBABDBDBABDC6C3C6
          CECBCEDEDBDEE7E7E7E7E7E7EFEBEFCECBCEB5B2B5FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADAAADFFFBF7FFF3E7EFDBCE
          D6D3D6C6C7C6C6C7C6BDBABDC6C3C6BDBEBDBDAAA5BDAAA5B5B2B5DEDBDEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFCE9A84FFD7ADFFD7ADFFD7ADFFDFBDFFDFBDFFEBD6F7E3D6EFE7DECEAA
          ADDEDBDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AA94FFDFBDFFD7ADFFDFBDFFD7ADFFDF
          BDFFD7ADFFDFBDF7D3A5BD9A94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3B5FFDF
          BDFFDFBDFFDFBDFFDFBDFFDFBDFFDFBDFFDFBDD6B2ADBD9A94FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFDEC7B5FFE7CEFFE7CEFFE7CEFFE7CEFFE7CEFFE7CEFFE7CEFFE7CEBD
          9A94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD9A94FFEBD6FFEBD6FFEBD6FFEBD6FF
          EBD6FFEBD6FFEBD6EFDBCEBD9A94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDECBC6FF
          F3E7FFF3E7FFF3E7FFF3E7FFF3E7FFF3E7FFF3E7D6B2ADBD9A94FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD6BEBDFFF7EFFFFBEFFFFBEFFFFBEFFFFBEFFFFBEFFFFBEFFFF7EF
          BD9A94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED7D6FFFFFFFFFBFFFFFFFFFFFFFF
          FFFBFFFFFFFFFFFFFFEFEBEFBD9A94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFCEBEB5BD9A94
          BD9A94BD9A94BD9A94BD9A94BD9A94BD9A94BD9A94BD9A94FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00}
        Margin = 6
        Spacing = 7
        OnClick = btnPrintOfficeClick
      end
      inherited panel8: TPanel
        Top = 168
      end
      inherited pnlDivisoria2: TPanel
        Top = 88
        TabOrder = 3
      end
      object pnlTotals: TPanel
        Left = 0
        Top = 263
        Width = 113
        Height = 68
        Align = alBottom
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object btTotals: TSpeedButton
          Tag = 6
          Left = 2
          Top = 2
          Width = 111
          Height = 28
          Hint = 'Reconciled Totals'
          Caption = '&Totals'
          Flat = True
          Glyph.Data = {
            A6030000424DA60300000000000036000000280000000D000000160000000100
            18000000000070030000D40E0000D40E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF00EAB197FBC2A3F1B395FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF00F2B9A0FEC9AAEBB496D4957DDA997FEFB194DDA387FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF00F4BAA4FEC9ADDFAA92F1BAA3ECAD
            92E9AB8ECB9079D3927AE8AA8DE3AB8FDA9486F28DA2FF00FF00F4BAA6FFC9B1
            F0BDA1EDCCB4EFCBB0E1AC92E6B89DF6C4A5E5AB8ED49B84E4A186E3A589D4A4
            8E00F5BDA9FFCAB2F8C1A4DAA992DEAD95F6BE9EE6BBA1EDC9ADE6B496E4B59C
            F8CFB0E8B597D3A68F00F7C0ADFFCBB4E6AF96D79B84DB9C82F6BC9CDCA68CD3
            A188F1B99AEEBA9DE6BCA3EBB99CD6AA9200F8C1AEFFCBB4E0AE97F5C6ABF1BA
            9DE2AC92D29A83DE9F85E8AD90DCA58BCE967EEBB295D8AC9500F8C3B1FFCFB5
            F0C1A3EACDB5EECDB1E5B498E6BDA4F9D0B2E2B095D8A58CF1B89BE6AB92D5A9
            9500F8C7B6FFD1B7F6C5A5D8A88FDEAD93F9C8A8E6BCA1E7C4A9EABC9FE3B99F
            F4D4B8EBBFA4D6AD9500F9CAB8FFD2B8E5AF95D89881DB9D84F5C3A3D5A289CD
            9980EFBD9EF1C2A4DBB49FF2C4A5D9B29A00F9CFBCFFD3B9E3B399F8CCB5F5C4
            A8E5B095DEA68EEEB096E4B2989198B0607DC9ABAAB9D4B19D00FAD1C0FFD4BA
            F0C5A7EBCFB7ECCDB1EABEA1E7C1ABF9D8BDD9B8A4839DC57CA3F894A5CFC7AD
            A100FBD3C4FFD8BEFCD3B1F0C9ABEFC7A8FCD2B1ECC5A9EBC9ADECC6A9AAB4BB
            89B5E3A5B3CACCB0A200FBD7C9FFDBC0FBD1B0F1C2A4F2C4A5F2C8A9F1C6A7F2
            C8A8FBD2B1EBCEB4CEC4BBE3CCBBD9B8A200FBD9CCFEDAC0E6B496EDAE8EF0B4
            92ECB392ECB395E9B194E2B093DFB094EABA9EF7D1B7DCBBA500FBDACEFCD8BE
            E5A07FFDA473FFA674FFA877FFAF83FFB085FFB388FEB58BF6B08EEAB294D6B2
            9B00FBDED1FDDBC0E6A682F7925AFD9257FE945AFF965EFF9A63FF9D66FF9E6A
            FEA06CEFA279D1A89200FBDFD3FEDDC1F6C7A5E9A27BE79064E58759E58757EB
            8853F38A52FB8C4FFC8C4FEC996DD6AD9700FBECE1FEEBD4FEE5C5FDE1C0FBDB
            BAFAD8B6F9D7B5F7CDADEFC0A0E6B395E1AE91F0C6AAE0BFA900F3E4D4F6E9D3
            FAE9CEFDECCFFEEECDFFEDCBFFECCBFFEBCAFFECCBFFE9CAFFE7CBFFE7CBE4C9
            B100FF00FFFF00FFFF00FFFF00FFF0CFB8F0D1B9F0D1BAF0D2BBF0D3BCF2D8BC
            F3DABCF0D7BAFF00FF00}
          Margin = 6
          ParentShowHint = False
          ShowHint = True
          Spacing = 7
          OnClick = btTotalsClick
        end
      end
      object Panel4: TPanel
        Left = 6
        Top = 31
        Width = 104
        Height = 2
        BevelOuter = bvLowered
        TabOrder = 2
      end
    end
    inherited pnlMainBrowse: TPanel
      Top = 61
      Width = 670
      Height = 401
      inherited pnlPage: TPanel
        Top = 382
        Width = 670
        inherited pnlDivisor: TPanel
          Width = 670
        end
      end
      inherited pnlGenFilter: TPanel
        Width = 670
        inherited lblGenFilter: TLabel
          Width = 670
        end
      end
      inherited grdBrowse: TcxGrid
        Width = 670
        Height = 354
        inherited grdBrowseDB: TcxGridDBTableView
          DataController.DataModeController.GridModeBufferCount = 1000
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'IDCashRegMov'
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'Difference'
              Column = grdBrowseDBDifference
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'TotalDeposit'
              Column = grdBrowseDBTotalDeposit
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'TotalSales'
              Column = grdBrowseDBTotalSales
            end>
          object grdBrowseDBIDCashRegMov: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'IDCashRegMov'
            Width = 66
          end
          object grdBrowseDBCashRegister: TcxGridDBColumn
            DataBinding.FieldName = 'CashRegister'
            Width = 91
          end
          object grdBrowseDBSystemUser: TcxGridDBColumn
            Caption = 'Open User'
            DataBinding.FieldName = 'SystemUser'
            Width = 96
          end
          object grdBrowseDBOpenTime: TcxGridDBColumn
            DataBinding.FieldName = 'OpenTime'
            Width = 99
          end
          object grdBrowseDBCashRegStatus: TcxGridDBColumn
            DataBinding.FieldName = 'CashRegStatus'
            Width = 91
          end
          object grdBrowseDBTotalSales: TcxGridDBColumn
            DataBinding.FieldName = 'TotalSales'
            Width = 75
          end
          object grdBrowseDBTotalPetty: TcxGridDBColumn
            DataBinding.FieldName = 'TotalPetty'
            Visible = False
          end
          object grdBrowseDBTotalDeposit: TcxGridDBColumn
            DataBinding.FieldName = 'TotalDeposit'
            Width = 87
          end
          object grdBrowseDBDifference: TcxGridDBColumn
            DataBinding.FieldName = 'Difference'
            Width = 71
          end
          object grdBrowseDBTotalPayIn: TcxGridDBColumn
            DataBinding.FieldName = 'TotalPayIn'
            Visible = False
          end
        end
      end
    end
  end
  inherited siLang: TsiLangRT
    StorageFile = 'MR_brwCashRegMov.sil'
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
      6E67730D0A73744F74686572537472696E67730D0A67726442726F7773652E49
      6E6946696C654E616D65010101010D0A67726442726F7773652E496E69536563
      74696F6E4E616D65010101010D0A67726442726F7773652E4B65794669656C64
      010101010D0A67726442726F7773652E507265766965774669656C644E616D65
      010101010D0A67726442726F7773652E52656769737472795061746801010101
      0D0A67726442726F7773652E53756D6D617279536570617261746F72012C2001
      01010D0A717542726F7773652E436F6D6D616E6454657874010101010D0A7175
      42726F7773652E436F6E6E656374696F6E537472696E67010101010D0A717542
      726F7773652E46696C746572010101010D0A717542726F7773652E496E646578
      4669656C644E616D6573010101010D0A717542726F7773652E4B65794669656C
      6473010101010D0A42726F777365436F6E6669672E44656661756C7442757474
      6F6E01627444657461696C0101010D0A42726F777365436F6E6669672E466368
      436C6173734E616D65010101010D0A42726F777365436F6E6669672E56696577
      44656C6574655461626C65010101010D0A53442E46696C746572014D6963726F
      736F667420457863656C7C2A2E786C730101010D0A53442E5469746C65010101
      010D0A73744C6F63616C65730D0A43757272656E637920537472696E67012401
      01010D0A54686F7573616E6420536570617261746F72012C0101010D0A446563
      696D616C20536570617261746F72012E0101010D0A4461746520536570617261
      746F72012F0101010D0A53686F7274204461746520466F726D6174014D2F642F
      797979790101010D0A4C6F6E67204461746520466F726D617401646464642C20
      4D4D4D4D2064642C20797979790101010D0A54696D6520536570617261746F72
      013A0101010D0A54696D6520414D20537472696E6701414D0101010D0A54696D
      6520504D20537472696E6701504D0101010D0A53686F72742054696D6520466F
      726D617401683A6D6D20414D504D0101010D0A4C6F6E672054696D6520466F72
      6D617401683A6D6D3A737320414D504D0101010D0A53686F7274204D6F6E7468
      204E616D6573014A616E2C4665622C4D61722C4170722C4D61792C4A756E2C4A
      756C2C4175672C5365702C4F63742C4E6F762C4465630101010D0A4C6F6E6720
      4D6F6E7468204E616D6573014A616E756172792C46656272756172792C4D6172
      63682C417072696C2C4D61792C4A756E652C4A756C792C4175677573742C5365
      7074656D6265722C4F63746F6265722C4E6F76656D6265722C446563656D6265
      720101010D0A53686F727420446179204E616D65730153756E2C4D6F6E2C5475
      652C5765642C5468752C4672692C5361740101010D0A4C6F6E6720446179204E
      616D65730153756E6461792C4D6F6E6461792C547565736461792C5765646E65
      736461792C54687572736461792C4672696461792C5361747572646179010101
      0D0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
  inherited quBrowse: TPowerADOQuery
    CommandText = 
      'SELECT'#13#10#9'IDCashRegMov,'#13#10#9'CashRegister.IDCashRegister,'#13#10#9'SystemUs' +
      'er, '#13#10#9'OpenTime,'#13#10#9'CashRegStatus,'#13#10#9'CashregMov.IDCashRegStatus,'#13 +
      #10#9'CashRegister.Name as CashRegister,'#13#10#9'TotalSales,'#13#10#9'('#13#10#9'CASE'#13#10#9 +
      #9'WHEN CashRegMov.IDCashRegStatus < 3 THEN (CashRegMov.TotalWidra' +
      'w + CashRegMov.FinalWidraw)'#13#10#9#9'ELSE CashRegMov.ManagerCount'#13#10#9'EN' +
      'D) as TotalDeposit,'#13#10#9'CashRegMov.TotalPetty,'#13#10#9'CashRegMov.TotalD' +
      'eposit as TotalPayIn,'#13#10#9'('#13#10#9'CASE'#13#10#9#9'WHEN CashRegMov.IDCashRegSta' +
      'tus < 3 THEN (CashRegMov.TotalWidraw + CashRegMov.FinalWidraw + ' +
      'CashRegMov.TotalPetty - TotalSales - CashRegMov.TotalDeposit)'#13#10#9 +
      #9'ELSE CashRegMov.ManagerCount - TotalSales + CashRegMov.TotalPet' +
      'ty - CashRegMov.TotalDeposit'#13#10#9'END) as Difference'#13#10'FROM'#13#10'      C' +
      'ashRegMov CashRegMov (NOLOCK)'#13#10'      JOIN SystemUser SystemUser ' +
      '(NOLOCK) ON ( CashRegMov.IDOpenUser = SystemUser.IDUser )'#13#10'     ' +
      ' JOIN CashRegStatus CashRegStatus (NOLOCK) ON ( CashRegMov.IDCas' +
      'hRegStatus = CashRegStatus.IDCashRegStatus )'#13#10'      JOIN CashReg' +
      'ister CashRegister (NOLOCK) ON ( CashRegMov.IDCashRegister = Cas' +
      'hRegister.IDCashRegister )'
    Left = 62
    Top = 145
    object quBrowseIDCashRegMov: TIntegerField
      DisplayLabel = 'IDMov'
      DisplayWidth = 8
      FieldName = 'IDCashRegMov'
      Origin = 'CashRegMov.IDCashRegMov'
    end
    object quBrowseOpenTime: TDateTimeField
      FieldName = 'OpenTime'
      Origin = 'CashRegMov.OpenTime'
    end
    object quBrowseCashRegister: TStringField
      FieldName = 'CashRegister'
      Origin = 'CashRegMov.IDCashRegMov'
      Size = 15
    end
    object quBrowseSystemUser: TStringField
      DisplayLabel = 'OpenUser'
      FieldName = 'SystemUser'
      Origin = 'SystemUser.SystemUser'
      Size = 50
    end
    object quBrowseCashRegStatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CashRegStatus'
      Origin = 'CashRegStatus.CashRegStatus'
      Size = 30
    end
    object quBrowseTotalSales: TFloatField
      FieldName = 'TotalSales'
      DisplayFormat = '#,##0.00'
      currency = True
    end
    object quBrowseTotalPetty: TBCDField
      DisplayLabel = 'TotalPettyCash'
      FieldName = 'TotalPetty'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object quBrowseTotalDeposit: TFloatField
      FieldName = 'TotalDeposit'
      DisplayFormat = '#,##0.00'
      currency = True
    end
    object quBrowseDifference: TFloatField
      FieldName = 'Difference'
      DisplayFormat = '#,##0.00'
      currency = True
    end
    object quBrowseIDCashRegStatus: TIntegerField
      FieldName = 'IDCashRegStatus'
    end
    object quBrowseIDCashRegister: TIntegerField
      FieldName = 'IDCashRegister'
    end
    object quBrowseTotalPayIn: TBCDField
      FieldName = 'TotalPayIn'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
  end
  inherited dsBrowse: TDataSource
    OnDataChange = dsBrowseDataChange
    Left = 62
    Top = 208
  end
  inherited BrowseConfig: TBrowseConfig
    nOrderByInicial = 1
    MostraDesativado = STD_AMBOSDESATIVADO
    MostraHidden = STD_AMBOSHIDDEN
    AutoOpen = False
    Left = 148
    Top = 208
  end
  inherited SD: TSaveDialog
    Left = 234
    Top = 145
  end
  inherited TimeAviso: TTimer
    Left = 234
    Top = 270
  end
  inherited gridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000002003000058020000}
    Top = 169
    inherited gridPrinterLink: TdxGridReportLink
      DateTime = 37946.589483715280000000
      PrinterPage.Footer = 9220
      PrinterPage.Header = 508
      PrinterPage.Margins.Bottom = 322580
      PrinterPage.Margins.Left = 322580
      PrinterPage.Margins.Right = 322580
      PrinterPage.Margins.Top = 322580
      PrinterPage.PageSize.X = 5334178
      PrinterPage.PageSize.Y = 7543851
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end
