object frmMain: TfrmMain
  Left = 324
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Main Retail'
  ClientHeight = 155
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMinimized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 54
    Top = 41
    Width = 105
    Height = 13
    Caption = 'Application Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 54
    Top = 58
    Width = 65
    Height = 13
    Caption = 'Version 5.4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object imgSystemInfo: TImage
    Left = 6
    Top = 12
    Width = 42
    Height = 41
    Cursor = crHandPoint
    Hint = 'System information'
    AutoSize = True
    ParentShowHint = False
    Picture.Data = {
      07544269746D6170B6140000424DB61400000000000036000000280000002A00
      0000290000000100180000000000801400000000000000000000000000000000
      0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA79A999C8584A18181
      9D7E7EA07D7A9F7A779E78769C79789A7877937676917E7B9C9193FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FFFF00FFFF00FFFF00FFBAACACA38788A98888BEA1A2CCB5B7D5C0C1
      D5C3C5D8C1C1D6BFBFD8BBBDD3B8B8CEB1B1C8A6A5BE9494A87E7E9571718973
      72FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FFFF00FFFF00FFAB8C8DB7999AD0BCBEDDCED0DDD3D6DDD3D6DED2D5
      DED0D3DCCCCDDAC8C7DDC4C5DCC2C4D6BCBCD4B7B6D4B4B4D1AFB0C7A09FB889
      88996F6E857675FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FFFF00FFB79091D2C6C9DEDADDDFDBDEDEDBDEDED9DCDED8DBDED5D8
      DED3D6DED1D4DECCCDDAC5C5CDB1B3B58B8BAC7E7EB78B8DC39D9DCFAAABD2AB
      ABCDA0A1B382828C6C6BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FFBA989AD5C8CBE1DEE1E5E0E4E6E0E4E6E0E4E1DEE1DFDCDFDED9DC
      DED6D9DED3D6DED1D4D9C2C3BA8F90C8AEAFAD9C9F9E8083A57677B18080C59C
      9DD2A7A9CE9E9FB58383917473FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000C49FA0D6C8CAE4E0E4EAE6EAEDE8ECEDE9ECECE8ECEBE7EBE6E2E6E0DDE0
      DEDBDEE1D5D8DED3D6D3BCBDC09A9ADFD5D8ACA0A3A08F93A38C90A47E81AB7A
      7BCC9FA1D2A5A7CE9B9DAD7D7E908282FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000C6A7A6E3DEE2E8E5E8EFEAEEF2ECEFF5EDEFF3ECEFEFEAEDEBE7EBE6E2E6
      E1DCDFDFD8DADED3D6CCB1B2C8A5A7D7C9CBAC969AA78C90A78B90A98A8DAF89
      8BCAA1A4D2A6A8D3A1A3C08D8D9B7977FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000CEB1B1E9E5E9F0EBEEF8F1F2FDFBFBFFFFFFFFFFFFF8F3F4F1EBEFE9E5E9
      E2DEE1DEDADDDFD3D6C5A3A1D4B3B1D3B9BAAF8D8FAC8A8CAD898AAE8887B48B
      8ACDA4A5D1A7A8D4A2A4C792939E7E7CFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000D0B2B3EBE6EAF2ECEFFEFCFCFFFFFFFFFFFFFFFFFFFFFEFEF6F2F4ECE8EC
      E5E1E5DEDADEDBCDD0C59A98DABABBCAAAABB18683B38481B2837EB3827CB888
      83CDA6A5D1A7A8D4A2A4C79393AD8888FF00FFFF00FFFF00FFFF00FFB79C9EB5
      8D8E9D82818C7F80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000D7B5B5E7DBDEF2ECEFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF8F4F5EDE9ED
      E5E2E5DEDADDD6C2C4C69898D9BABAC39492B5807AB67F78B77E77B87D77BD83
      7ECFA5A6D1A7A8D0A0A1C08E8EBFAEAEFF00FFFF00FFB79A9CB99090C6A1A3CC
      ABABABA5A3A493938E78778D8181FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FFD7B9BBEFE5E7FEFEFEFEFCFCFBF5F5FCF8F8FCFAFAF3EFF1EDE9ED
      E5E0E4DEDADDD0B2B4CB9E9ED6B1B1BD847FBA7A74BC7973BC7873BD7873C181
      7DCFA5A6D1A6A7C79697B28F90B2A6A7B89A9CC09999CDA7A7D3B1B1D5B2B4D0
      AFB0AFA7A5ABA5A4AB9F9FA18B8B8F7776918A8BFF00FFFF00FFFF00FFFF00FF
      0000FF00FFFF00FFDCC0C0F1E7E8E7D1D2CB9090CE9595E0C0C1E8DADCE9E5E9
      E2DEE1DBD2D5CAA3A5CFA3A4D09E9FBF7A77BD7473BF7372BF7172C06F6FC47D
      7DCFA3A4C99A9BB18484A78888C39E9ED6B4B4DCBCBBD9BABAD7B5B5D6B3B5CE
      AEAFB0A3A5ABA2A5ABA2A5ABA2A4AB9A9E9F8588857272988E8EFF00FFFF00FF
      0000FF00FFFF00FFFF00FFE2C7C8D2A7A8C98F8FC68682C98B8CCC8F90D3A9AB
      D8C6C9D5BEC0CB9B9CD09D9FCA8B8CC27171C36D6CC46D6CC66C6CCA6A6BC978
      79C89696C69899C9A5A5D6B8B9DCBEC0DEBFC1DCBDBDD8B9BAD7B6B5D6B3B4CC
      ACAEAF9FA3AC9EA4AC9EA5AC9EA5AC9EA5AC9CA3A79296997E7F8D7B7AFF00FF
      0000FF00FFFF00FFFF00FFFF00FFD2A4A4CB8D87E3A26AF3C594E1B4A3CE9492
      C88282C68688C78788CA7F7FC86F6FCA6A6BCB696BCC696ACE6769CD6769CE7D
      7FD4AEB0DEC2C4DEC6C6DEC5C6DEC1C4DEC0C2DCBEBDD9BAB9D5B3B2D5ABACC5
      9A9BA98486AB9499AD9DA3AD9DA4AD9DA4AD9EA4A5ACA0A6ACA1A1868A9B8D8E
      0000FF00FFFF00FFFF00FFFF00FFD1A5A6C78978ED9427FEA419FDB13CF6BE76
      EABA9ED49A93C97E7CC8706FCB6A6BCD6769CC6567CB6365C96161C45E5ECE8A
      8AE2C7CAE3C9CADEC7C6DEC5C6DDC1C4DDBEBFDBB7B7D5ACADD0A1A3CF9C9FC2
      9092A06D6CA06F6FA78487AD9499AF9A9FAE9CA195C29D87D19AA58B8F9D8D8E
      0000FF00FFFF00FFFF00FFFF00FFCFA1A2CB886FF49C23FFA516FFA517FFA71C
      FEAC27FAB95DEEBB85DCA291CF8786C8706FC46564BE5F5CB95753B5544FCB8C
      8AE4CACCE1C8C9DEC6C6DCC0C1D7B4B7D3A7A9CF9D9FCF9D9FD1A3A5D4AAACCB
      A7A9AE8C8EA67A7B9E6A68A06E6DA88282B09192ABA49CA4A998A88A8C9C8D8E
      0000FF00FFFF00FFFF00FFFF00FFCE9D9DCB8B65FAA41FFFA71AFFA920FFA920
      FFAD27FFAB24FEB032F9B74DF1B56EE1A88CD48B83C77472BF615FB95853CD92
      91E4C7CADEBFC0D6B0B1D1A3A5D0A0A2D2A3A5D7ACACD6B2B2D5B3B3D7B3B5CC
      AAACB4989AB29597AE8B8CA67979A06C6BA06E6DAA8383B29293A9898A9D8C8D
      0000FF00FFFF00FFFF00FFD6B8B8CC9B9AD28B5BFFAB24FFAD27FFAF2CFFB02D
      FFB231FFB231FFB231FFB231FFB232FCB43EF5B660E6AA79D89485CD7978CF7E
      7ED49496D09899D1A1A2D4ACAFD9B7B9DDBEBEDDBDBDD9B9B9D6B5B5D6B3B5CC
      A9ACB28D8EA97E7EB18B8CB79192B38789AA7A7AA16C6BA3706FA277779D8C8D
      0000FF00FFFF00FFFF00FFCEA5A5C99898DD9552FFB12FFFB130FFB231FFB232
      FFB335FFB334FFB436FFB335FFB437FFB335FEB436FDB43BF8B34CEBAC6ADD9A
      7ED0817CCD7878D39293D9B0B2DCBDC0DEBFC1DDBEBDDABAB9D6B5B5D6B3B5CF
      A6A9B38586AC7777B27E7FAE7B7AB48587B98D8FB6898BAA7A7A9A6A699B8A8A
      0000FF00FFFF00FFFF00FFCAA2A0C49591E6A049FFB333FFB436FFB538FFB63B
      FFB73DFFB83EFFB940FFB941FFB941FFB940FFB840FFB83EFFB73CFEB63CFBB4
      42F0AC59E29E6DD68678D07A7AD38B8DDCB8B8DCBEBDD9BAB9D6B5B5D6B3B5CE
      A4A6B28284B17C7CCC989AC49092B68182AC7A7BB28385B88B8CA980819C8B8B
      0000FF00FFFF00FFFF00FFD1A8A9C6948AF0AA45FFB63BFFB83EFFB941FFBA41
      FFBB43FFBC45FFBC45FFBB44FFBD46FFBC45FFBB43FFBA43FFBA42FFB941FFB8
      3FFEB63AFCB53FF5AE49E2945BD0736DD7A5A4DDBEBDDABAB9D6B5B5D6B3B5CC
      A3A4B27F80B07D7DCE9A9CCD999BCC989AC59193B98484AD7A79AE83849D8D8E
      0000FF00FFFF00FFFF00FFD4B1B1C59281F6B148FFB940FFBA42FFBD45FFC049
      FFC34DFFC34EFFC44FFFC54FFFC752FFC550FFC44EFFC34DFFC14BFFBE48FFBC
      44FFBB43FFB940FFB73CF3A543D37669D7A8A8DDBDBDD9B9B9D6B5B5D6B3B5CD
      A1A3B27D7CB27C7CCE9A9CCE9A9CCE9A9CCE9A9CCB9698B17B7AAE7D7C9D8C8D
      0000FF00FFFF00FFCFB7B7D1B2B2C9957AFCBA48FFBE47FFC44FFFC550FFC652
      FFC855FFC855FFC956FFC956FFC957FFC957FFC856FFC855FFC752FFC651FFC4
      4FFFC04AFFBC45FFBA42EDA04CD1766EDAB0B1DDBDBDD9B9B9D6B5B5D6B3B5CC
      9D9EB27B7AB27D7EBA8586C69293CC989ACD999BCB9698B07A79AE7C7B9C8D8D
      0000FF00FFFF00FFD0B5B6CDADAED39D75FDC14EFFC651FFC752FFC958FFCB5C
      FFCC5EFFCE61FFCE62FFCE62FFCF63FFCE62FFCE61FFCC5FFFCC5DFFCA59FFC8
      55FFC752FFC44FFFBF49E99A53CE7573DAB7B8DDBDBDD9B9B9D6B5B5D6B3B5CA
      999AB17977B27D7DAC7776A87372B47F7EC18D8ECA9698B17A79AF7B7A9D8C8D
      0000FF00FFFF00FFCFB5B7C6A6A7DBA76EFEC654FFC855FFCC5EFFCE61FFCF64
      FFD065FFD167FFD168FFD169FFD26AFFD168FFD168FFD167FFCF64FFCE62FFCD
      5FFFCA5AFFC856FEC551E4985ACC7777DBBEBFDDBDBDD7B7BAD6B5B5D6B3B5C9
      9898AF7673B57F7FC59192C08B8CB47E7EAB7574B48080AE7876AE7A789D8C8C
      0000FF00FFFF00FFD4B8B9BE9C9AE3B267FFCB5CFFCE61FFD065FFD067FFD26A
      FFD36EFFD471FFD471FFD574FFD574FFD471FFD471FFD470FFD26AFFD168FFCF
      64FFCE62FFCC5DFDC658DD9061CC8283DEC0C1DDBEBDD9B9B9D6B5B5D6B3B5CA
      9797AF7471B47F7FB88383AF7A79BD8889C48F90BF8B8CAF7775AD77749D8C8C
      0000FF00FFD3C3C4DEC5C5BA968DEDBD6BFFCF63FFD066FFD26AFFD370FFD574
      FFD77AFFD87CFFD97DFFDA7EFFD97EFFD97CFFD87CFFD77BFFD577FFD472FFD3
      6CFFD269FFCF64FBC862D58867CF8C8CDEC0C2DDBEBDD9B9B9D6B5B5D6B3B5C9
      9191B17371B57F80CA9697BE8A89B07979AC7676C79394B07674AE74729D8B8C
      0000FF00FFCAB8BBDCC6C6BD9886F3C46AFFD168FFD26DFFD574FFD679FFD97D
      FFDC81FFDE83FFDE83FFDE83FFDE83FFDE83FFDE83FFDD82FFDA7FFFD87BFFD5
      76FFD470FFD26AF9C765CF826AD29594DEC0C1DCBDBDD8B8B9D6B5B5D6B3B5C9
      8C8DB37170B47E7FCE9A9CCD999BCB9798C59091C99698B07776B072719D8B8C
      0000FF00FFC4B2B5D4C1C2C5A182F7CB6BFFD470FFD679FFD87CFFDC80FFDE83
      FFDF85FFE189FFE28BFFE38CFFE28AFFE28BFFE189FFE086FFDF85FFDD82FFDA
      7EFFD67AFFD472F4C36DC87E71D19FA0DCBFC0DCBDBDD7B7BAD6B5B5D6B3B5C9
      8C8DB67070A76D6CB47E7EC08B8CC99496CC989ACA9697B07574B271729D8B8C
      0000FF00FFCCB8BACCBABDD0A97FFCD070FFD578FFD97DFFDD82FFE086FFE18A
      FFE48EFFE591FFE693FFE794FFE794FFE794FFE692FFE590FFE28BFFE087FFDE
      83FFDA7FFFD77BEFBD72C57E75D4A7A9DCC0C1DCBDBDD8B9B9D9B5B5D6B3B5CA
      898BC47576BD7171B46D6DA86C6CAC7474B68283C59192B07575B270719E8A89
      0000D4CBCDD6C7CBC2AEB3D8B47CFED576FFD97DFFDE83FFE188FFE38DFFE693
      FFE796FFE89CFFE9A0FFEAA3FFEAA3FFE9A0FFE89CFFE798FFE694FFE590FFE2
      8AFFDF84FFDB80EAB877C37F7AD5ADAEDDC0C2DDBEBDDABAB9D7B5B5D6B3B5CA
      8081C66E6DC56E6DC76E6CC46D6BBB6B6BB16A6AA86B6AA86A6AB26C6B9C8B8C
      0000C8BFC1DED2D3B8A6A8E7C080FFD77BFFDC81FFDF85FFE38DFFE694FFE899
      FFEAA2FFECA6FFEEA8FFEFA9FFEFA9FFEFA9FFECA6FFEAA3FFE99FFFE795FFE4
      90FFE189FFDD82E4B07BC17F7DD6B2B3DEC0C2DEBEBDDBBABAD7B5B5D7B3B5CA
      7E7DC66D6BC66D6BC66D6BC66D6BC66D6BC56C6BC06C6ABC6C6AB36B6A9D8B8C
      0000C1B9BBE5DCDFAD9FA0F6CD7CFFDA7EFFDF85FFE28AFFE693FFE899FFEAA3
      FFEEA8FFF2ADFFF3AFFFF3B0FFF4B3FFF3B0FFF2ADFFEFAAFFEBA5FFE99EFFE7
      97FFE48FFFDF85DCA77BC28581D9B9BADFC3C3E0C4C4E4CBC9E6D1D1F0E1E2EC
      D1D0DCA2A4D38888CA7575C86D6CC76B6BC76B6BC86B6BC76B6BB46A699D8B8B
      0000C6BEBEE4E1E2AF9C94FCD67EFFDD82FFE086FFE590FFE798FFEAA1FFEFA9
      FFF3AFFFF5B6FFF6BAFFF7BEFFF8BFFFF6BBFFF5B6FFF3B1FFF0AAFFEBA5FFE8
      9BFFE693FFE28BD19C7DC78F8CE5CCCEEEDCDEF3E5E7F8EFF2FBF5F8FBF7F8FB
      F7F8FAF4F4F2E3E5E7C1C3DDA0A2D17D7DCC6C6DCC696BCD696BB868699D8B8B
      0000D0CCCDD5CED0A19693C6AE88D2BA8BE6CA8FEFD792F8E29BFDEBA7FEF2AD
      FFF5B6FFF7BEFFF9C2FFFCC8FFFDCAFFFBC6FFF9C1FFF6BBFFF3B0FFEFA9FFEA
      A3FFE798FDE28FC68E79CE9B99EDDCDEF0E3E5F1E4E6F2E4E6F2E4E6F1E3E5F1
      E4E6F0E3E5F0E2E5F0E2E3F0E1E2EEDCDEE7C6C6DC9F9FD58686BB7071A18E8D
      0000DCD9DBCBC6C79C92949C92939E9393A89693B09B93BEA897CAB59EDCC9A2
      EBDDB2F4EDBFFCF9C9FFFECDFFFFCEFFFECDFFFCC9FFF8BFFFF5B7FFF1ACFFEB
      A5FFE89BFADC90C48B79CDA09DE9D1D3EBD4D6EAD3D5EBD5D5ECD5D5E9D3D4EB
      D4D5EBD4D5EBD3D5EBD4D4EAD3D3E5CDCDE0C5C4D5B2B4C8A3A3BC908FFF00FF
      0000D2D1D2EAE7E8C9C5C8B9B3B5B2A9AAA99EA0A6979AA59194A68E92A78F93
      AA9192B49A97BEA69DD0BEA5DFD4B3EAE1BEF3EDC2F9F0BFFDF4BAFFF3AFFFEE
      A8FFEAA1F1D391C1897BCC9E9CDFC3C3DFC3C4DFC3C4DFC2C3DEC0C1DABEBDD8
      B9BAD6B8B8D4B5B5D1AEB0CDABACCEB1B3D3BFBFFF00FFFF00FFFF00FFFF00FF
      0000B6B4B6BDBBBCCDCACBD9D5D6E0D9DAEAE6E7DED5D5CCC0C2C4B1B4B59EA1
      AB9294A88D91AA8B8EAC8A8CAD8A8CB49392BDA096C9AD9DD8BB9CE4CEA2F5DF
      A1FCE69EE9C98EBC897ECC9C9BDAB3B2D6AEAFD0A7A7CA9F9EC8A1A1D0ADADD8
      BDBDDCC7C7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FFFF00FFFF00FFD5D1D1C8C5C7BEB6B7C5B8B8C8BEC0CEC1C3D9CACD
      DFCDD0DAC7C8D6BEBFCBB0B1C2A4A5B9999AB49193B08C8EAE898AB28683B485
      7FBF8E7FC39481B6827AB9908FD1B1B1FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      CCBFC0C7B7B9C7B3B6CAB3B2D1B7B8D6BDBCD6BABBD3B5B7CBAAACC09C9DBB92
      90B98985B5827CAF807AB1A4A3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFD4C1C1CEB7B9CCB1B3CEB2B3D2B7B8D2B6
      B7D1AFB0C49B98B28883CAC0C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000}
    ShowHint = True
    Transparent = True
  end
  object Label3: TLabel
    Left = 54
    Top = 11
    Width = 133
    Height = 29
    Caption = 'Main Retail'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 54
    Top = 74
    Width = 177
    Height = 11
    Caption = '@2000 Retail Systems. All rights reserved.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 123
    Width = 242
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 242
      Height = 3
      Align = alTop
      Shape = bsTopLine
    end
    object btnConnection: TBitBtn
      Left = 63
      Top = 6
      Width = 87
      Height = 25
      Caption = 'Connection'
      TabOrder = 0
      OnClick = btnConnectionClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF84828400FFFF000000000000FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF84828400FFFF000000000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF848284FFFFFF00FFFF00
        0000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF848284FFFFFF00FFFF000000000000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000FF
        FFFF00FFFF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF848284FFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF848284FFFFFF00FFFF00
        0000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF848284FFFFFF00FFFF000000000000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF848284FFFFFF00
        FFFF00FFFF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF848284FFFFFF00FFFF00FFFF000000000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF84
        8284FFFFFF00FFFF00FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btnUserList: TBitBtn
      Left = 153
      Top = 6
      Width = 87
      Height = 25
      Caption = 'Client(s)'
      TabOrder = 1
      OnClick = btnUserListClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000C65D29C65D29
        C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D
        29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C6
        5D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29984C26
        A24C2DAB5237B55641A85035A04B29AB4D22AF5B31C65D29C65D29C65D29C65D
        29C65D29C65D29C65D29C65D29D0481CEE5C41FF6E58FF7A60E48A5EE66E47F9
        624BAF5026338F331E821E37A9372FA52F2298221E7D209A6324C65D29D65931
        FF6E5AFF856BE67D52FBD4A2EA9569FF775ED6643D56C056ACC9965ABA585EC9
        5E43BC4324A4246F6920C65D29C85E29E8714CF2805ADE9471EAB892EA9D6DFF
        8266AE7C3F64BB62FFFFFBA2CBA071D1715CC95C248E249A6324C65D29C65D29
        7748353F191C06187B0A1C816036588A714162C26081C677D1D6D2A8C0C768AA
        6250AC50A5652FC65D29C65D293D24160A0B0A0A27621441A81444AD0E359C6F
        4243A96D318174391C85DC208BE4147EBF776648C65D29C65D299A4C24141614
        12181A1C5BC11C61CC1C62CE1C5DC518467D9862482B91E6359EFF359EFF359E
        FF227FC39E5C39C65D296F3C202727272226222370D62B83EE2D86F3277CE41E
        58946B67673FA9FF46AEFF46AEFF44ABFF39A1F9755D50C65D299A4C242C2E2C
        3F423F1C44752270DC2D89F23196FD1C5B8E6B67674EB5FF52BAFF52BAFF4EB6
        FF48B0FF6F686AC65D29C65D29543A2D4E4F4E6B6B69666A6B2F3B661A2C5673
        41286B67673198D83397D23D9EDC35A0E83598D86B6360C65D29C65D29C65D29
        5C4033797A79929492737573543A2DC65D2998644E2480B158ABDA8BC5EB7FBC
        DE2684B5A56245C65D29C65D29C65D29C65D29774229774229774229C65D29C6
        5D29C65D299862483D92C156A0C83B91C19C664AC65D29C65D29C65D29C65D29
        C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D
        29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C6
        5D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29C65D29}
    end
  end
end
