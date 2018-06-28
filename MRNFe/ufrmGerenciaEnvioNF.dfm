object frmGerenciaEnvioNF: TfrmGerenciaEnvioNF
  Left = 146
  Top = 13
  Width = 780
  Height = 656
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'MainRetail - Envio de NFe'
  Color = clBtnFace
  Constraints.MinHeight = 208
  Constraints.MinWidth = 638
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 66
    Width = 656
    Height = 563
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Lista'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 33
        Width = 648
        Height = 504
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dmSQL.dsNotaFiscal
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = clBtnFace
          OptionsView.GroupByBox = False
          Preview.Column = cxGrid1DBTableView1DetalhamentoErro
          Preview.MaxLineCount = 20
          Preview.Visible = True
          Styles.Preview = cxStylePreview
          object cxGrid1DBTableView1IDNotaFiscal: TcxGridDBColumn
            DataBinding.FieldName = 'IDNotaFiscal'
            Visible = False
            Hidden = True
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1Selecionado: TcxGridDBColumn
            Caption = ' '
            DataBinding.FieldName = 'Selecionado'
            Options.Sorting = False
            Width = 48
          end
          object cxGrid1DBTableView1Referencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1NumeroNota: TcxGridDBColumn
            Caption = 'N'#186' Nota'
            DataBinding.FieldName = 'NumeroNota'
            Options.Editing = False
            Options.Focusing = False
            Width = 70
          end
          object cxGrid1DBTableView1Situacao: TcxGridDBColumn
            DataBinding.FieldName = 'Situacao'
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1DataSolicitacao: TcxGridDBColumn
            DataBinding.FieldName = 'DataSolicitacao'
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1DataUltimoEnvio: TcxGridDBColumn
            DataBinding.FieldName = 'DataUltimoEnvio'
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1DataResultado: TcxGridDBColumn
            DataBinding.FieldName = 'DataResultado'
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1DataUltimaImpressao: TcxGridDBColumn
            DataBinding.FieldName = 'DataUltimaImpressao'
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1QtdEnvios: TcxGridDBColumn
            DataBinding.FieldName = 'QtdEnvios'
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1QtdImpressao: TcxGridDBColumn
            DataBinding.FieldName = 'QtdImpressao'
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1XMLEnviado: TcxGridDBColumn
            DataBinding.FieldName = 'XMLEnviado'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1XMLRecebido: TcxGridDBColumn
            DataBinding.FieldName = 'XMLRecebido'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1DetalhamentoErro: TcxGridDBColumn
            DataBinding.FieldName = 'DetalhamentoErro'
            Options.Editing = False
            Options.Focusing = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 648
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          648
          33)
        object lbAmbiente: TLabel
          Left = 594
          Top = 0
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'Ambiente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbAll: TCheckBox
          Left = 5
          Top = 16
          Width = 261
          Height = 17
          Caption = 'Todos / Nenhum'
          TabOrder = 0
          OnClick = cbAllClick
        end
        object cbViewBeforeSend: TCheckBox
          Left = 5
          Top = 0
          Width = 261
          Height = 17
          Caption = 'Visualizar NFe antes de enviar'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'XML Enviado'
      ImageIndex = 1
      object wbEnviado: TWebBrowser
        Left = 0
        Top = 0
        Width = 648
        Height = 445
        Align = alClient
        TabOrder = 0
        ControlData = {
          4C00000048430000FE2D00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object cxDBMemo1: TcxDBMemo
        Left = 0
        Top = 467
        Width = 648
        Height = 70
        TabStop = False
        Align = alBottom
        DataBinding.DataSource = dmSQL.dsNotaFiscal
        DataBinding.DataField = 'DetalhamentoErro'
        Style.BorderStyle = ebs3D
        TabOrder = 1
      end
      object cxDBMemo4: TcxDBMemo
        Left = 0
        Top = 445
        Width = 648
        Height = 22
        TabStop = False
        Align = alBottom
        DataBinding.DataSource = dmSQL.dsNotaFiscal
        DataBinding.DataField = 'Chave'
        Style.BorderStyle = ebs3D
        Style.Color = clSilver
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'XML Recebido'
      ImageIndex = 2
      object wbRecebido: TWebBrowser
        Left = 0
        Top = 0
        Width = 648
        Height = 445
        Align = alClient
        TabOrder = 0
        ControlData = {
          4C00000048430000FE2D00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object cxDBMemo2: TcxDBMemo
        Left = 0
        Top = 467
        Width = 648
        Height = 70
        TabStop = False
        Align = alBottom
        DataBinding.DataSource = dmSQL.dsNotaFiscal
        DataBinding.DataField = 'DetalhamentoErro'
        Style.BorderStyle = ebs3D
        TabOrder = 1
      end
      object cxDBMemo3: TcxDBMemo
        Left = 0
        Top = 445
        Width = 648
        Height = 22
        TabStop = False
        Align = alBottom
        DataBinding.DataSource = dmSQL.dsNotaFiscal
        DataBinding.DataField = 'Chave'
        Style.BorderStyle = ebs3D
        Style.Color = clSilver
        TabOrder = 2
      end
    end
  end
  object pnlBasicFilter: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 18
      Top = 36
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Situacao :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 26
      Top = 11
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Origem :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 207
      Top = 12
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desde :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 354
      Top = 12
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'ate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 200
      Top = 37
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pblGO: TPanel
      Left = 691
      Top = 0
      Width = 81
      Height = 66
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 5
      DesignSize = (
        81
        66)
      object btGO: TButton
        Left = 7
        Top = 18
        Width = 64
        Height = 30
        Anchors = [akTop, akRight]
        Caption = 'IR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btGOClick
      end
    end
    object cmbSituacao: TcxComboBox
      Left = 78
      Top = 33
      Width = 111
      Height = 21
      Properties.OnChange = cmbSituacaoPropertiesChange
      TabOrder = 3
      Text = 'cmbSituacao'
    end
    object cmbOrigem: TcxComboBox
      Left = 78
      Top = 8
      Width = 111
      Height = 21
      TabOrder = 0
      Text = 'cmbOrigem'
    end
    object deInicio: TcxDateEdit
      Left = 250
      Top = 8
      Width = 101
      Height = 21
      TabOrder = 1
    end
    object deFim: TcxDateEdit
      Left = 376
      Top = 8
      Width = 101
      Height = 21
      TabOrder = 2
    end
    object meReferencia: TcxMaskEdit
      Left = 251
      Top = 33
      Width = 56
      Height = 21
      TabOrder = 4
      Text = 'meReferencia'
    end
  end
  object Panel2: TPanel
    Left = 656
    Top = 66
    Width = 116
    Height = 563
    Align = alRight
    TabOrder = 2
    object Bevel1: TBevel
      Left = 3
      Top = 155
      Width = 106
      Height = 3
      Shape = bsTopLine
    end
    object lbVersion: TLabel
      Left = 1
      Top = 549
      Width = 114
      Height = 13
      Align = alBottom
      Alignment = taCenter
      Caption = 'Vers'#227'o'
    end
    object btEnviar: TBitBtn
      Left = 3
      Top = 7
      Width = 109
      Height = 25
      Caption = 'Enviar'
      TabOrder = 0
      OnClick = btEnviarClick
      Glyph.Data = {
        F6030000424DF603000000000000360000002800000013000000100000000100
        180000000000C003000000000000000000000000000000000000FF00FF608090
        607880507080506070405860C0A8907058407050406048306048306048306048
        3060483060483060483060483060483060483000000070889090A0B070B0D000
        90D00090D00090D0C0A890FFF8F0F0E8E0E0D0D0E0D8D0E0D0C0E0D0C0E0C8C0
        E0B090E0C8B0E0C8B0E0C8B060483000000080889080C0D090A8B080E0FF60D0
        FF50C8FFC0A8A0FFFFFFC08060FFF8F0FFF8F0FFF0F0FFF0F0FFF0E0C06840F0
        E0D0FFE8E0E0C8B06048300000008090A080D0F090A8B090C0D070D8FF60D0FF
        C0A8A0FFFFFFB06040E0B0A0FFF8F0FFF8F0FFF0F0FFF0F0C06840D07850F0E0
        D0E0C8B06048300000008090A080D8F080C8E090A8B080E0FF70D0FFC0B0A0FF
        FFFFE0B8A0E08060E08050E07850D07040D06830E06820F09060C07040E0C0B0
        6048300000008098A090E0F090E0FF90A8B090B8C070D8FFC0B0A0FFFFFFF0E0
        D0E0B8A0E0A890E0A080F09870F09060FFB080FFB090E0A070D0805060483000
        00008098A090E0F0A0E8FF80C8E090A8B080E0FFD0B0A0FFFFFFFFFFFFF0E0D0
        F0D8D0E0C0B0E0A890D09070E09060F0A880D08060E0B8A060483000000090A0
        A0A0E8F0A0E8FF90E8FF90B0C090A8C0D0B8A0FFFFFFFFFFFFFFFFFFFFFFFFFF
        F8FFFFF8F0FFF8F0E09060D09070FFF0E0F0D8D060483000000090A0B0A0E8F0
        A0F0FF90E8FF80E0FF60B8E0D0B8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD09070FFFFFFFFFFFFFFF0F060504000000090A0B0A0F0F0B0F0F090
        E8FF70D0F070A8B0D0B8A0D0B8A0D0B8A0C0B0A0C0B0A0C0B0A0C0A8A0C0A8A0
        C0A8A0C0A890C0A890C0A890C0A89000000090A8B0A0D0E0A0F0F080E0F080C0
        D0908070F0E0E0F0F0F0B09890A07870E0C0B08090D02048E0957E68CBC3C0FF
        00FFFF00FFFF00FFFF00FF000000CCD5D990A8B090A8B090A0A0A08070F0E8E0
        FFFFFFF0E8F0B08070E0C8C0F0E8E0E0D0D0957E68CCC4C0FF00FFFF00FFFF00
        FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFD6D2CE9A8671FFFFFFFF
        F8FFF0E8F0FFF8F0F0E8E0957E68D2CECAFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFD7D3CFA8947FFFF8FFFFFF
        FFFFF8F0A48677D3CFCBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD8D4CFA9947FFFF8F0A48E77
        D8D4CFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0C8C0B39D86D4CCC8FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000}
      Margin = 3
    end
    object btConsultar: TBitBtn
      Left = 3
      Top = 36
      Width = 109
      Height = 25
      Caption = 'Consultar'
      TabOrder = 1
      OnClick = btConsultarClick
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        C4201F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C4631
        E86126311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C4639066A
        6872CA7AAA392E4AEE41CC398A314829E620E62028294A294A296A31C8498872
        2C7F4E521F7C2E4A947B4E7BEA72C67286620E42B6521A5BDA52F0396A294C5A
        6E5A48311F7C304AB67BB27F907F6E7F905AF85ADF73BF737E635E5BF039C849
        0A52A4181F7C5052B67BB47FB27F907F524ABE73FF7BDF7BBF737E6BDA528A31
        025AE6201F7C5052D67FD67FB47F927F724ABE73FF7FFF7BDF7BBF731C5BAA39
        025A08291F7C7052D87FD67BD47FB47FF2621863FF7FFF7FFF7BDF73964A0A52
        22624A311F7C7052D87FD67FD67FB47F927BD45A1863BE73BE73D6520E4AA872
        42628A391F7C9252D87FD67FD67FD67BD47F927BF262724A524A8E5AEA72EA7A
        646ACC411F7C925AD87FD87FD87FD87FD67FD67FB47FB27F927F707F4E7F2E7B
        0C7BCC411F7C925A925A925A925A925A925A9252725270527052705270527052
        70521F7C1F7CB25AB67BD67FD67FD67B927B925A1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7CB25AB25AB25AB25AB25A1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      Margin = 3
    end
    object btCancelar: TBitBtn
      Left = 3
      Top = 65
      Width = 109
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btCancelarClick
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        1800000000006802000000000000000000000000000000000000FF00FF8486AD
        42457B42459C42459442499442459C39499C39499C39499C39499C3938847B7D
        A5FF00FF00008C92B53941944A51EF4A65E74A69E74A6DE74A6DEF4A6DEF4A71
        F74A71F74A71F74A71F7424DAD7B7DA500004249845A4DDE5A4DDE5238CE5234
        C65238CE5238D6523CE7523CEF523CE75241EF5241EF5245F7393C840000393C
        7B6B69E76B65E75A4DD64A41A57B75B54A38CE5238E7635DB56359AD4A3CE752
        45EF5245F742419C00003938847B75E77371DE7371DECECBD6E7E3DE7B79B55A
        55B5DEDFDEDEDFDE6B61DE5241EF5245F742419C0000393C8C8C86E78482DE84
        82DEDEDFE7EFEBE7EFEBEFE7E3E7EFEBEFE7E7EF6B61EF5241EF5245EF4245A5
        000042419C948EE78C8ADE8C8ADE8C86DEE7E3EFF7F3F7F7F3F7EFEFEF6355D6
        5238E75241E75241E74A45B500004245ADA596E79C92DE9C8EDEA59ED6F7F3F7
        F7F7F7F7F7F7F7F7F78C82BD4A38CE5238D65238DE4A45BD00004A49C6AD9EE7
        A59AE7ADA2E7F7F7F7F7FBFFF7F7F7EFEBF7F7FBFFF7FBFF9C96DE7B69DE9C92
        E76361CE0000524DD6ADA2E7A59AE7A596DEDEDBF7F7F7FFADA6E7A596DEEFEF
        F7EFEFF7A59EE7AD9EE7AD9EE76B61D60000524DD6ADA2E7A59AE7A59AE7A596
        E7ADA6E7A59AE7A59AE7A59AE7A59AE7A59AE7A59AE7AD9EE76B65D600006361
        D6ADA2E7B5AAE7ADA6E7ADA6E7ADA6E7ADA6E7ADA6E7ADA6E7ADA6E7ADA6E7B5
        A6E7B5A6E75251D60000BDBEE76B65DEC6C3EFDED3F7D6D3F7D6D3F7D6D3F7D6
        D3F7D6D3F7D6D3F7DED3F7CEC7EF6B65DE9C9EDE0000FF00FFBDBEE7635DD64A
        49D64A49D64A49D64A49D64A49D64A49D64A49D64A49D65A59D6ADA6E7FF00FF
        0000}
      Margin = 3
    end
    object btImprimir: TBitBtn
      Left = 3
      Top = 94
      Width = 109
      Height = 25
      Caption = 'Imprimir danfe'
      TabOrder = 3
      OnClick = btImprimirClick
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF00FF00FFFF00FFC8C6C3806850806050806050
        706050705840705840705040705040604830604830604830A29A92FF00FFFF00
        FF00FF00FFC1C4C3A38D85E0D0C0B0A090B0A090B0A090B0A090B0A090B0A090
        B0A090B0A090B0A090B0A090604830FF00FFFF00FF00FF00FFBCB7B0B29C94FF
        E8E0FFF8F0FFF0E0FFE8E0F0D8D0F0D0B0F0C0A000A00000A00000A000705840
        604830857767FF00FF00FF00FFB29485E0D8D0FFFFFFFFFFFFFFFFFFFFFFFFFF
        F0F0F0E0E0F0D8C000FF1000FFB000A000806850705040604830FF00FF00FF00
        FFB09080F0E8E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0E8E000FF1000
        FF1000A000907060706050604830FF00FF00FF00FFB09880D0C0B0D0B8B0C0B0
        A0B0A090B09880A0888090807090706080686080605070585090807080686070
        5840FF00FF00FF00FFC0A090FFF8F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8F0FFF0F0F0F0F0F0E8E0A08880907860806050FF00FF00FF00FFCEC9C3
        B6A18CD0B0A0C0A8A0D0B0A0C0A090B09080A080709070608060507060508070
        60B0A090A08870806050FF00FF00FF00FFFF00FFCBC7C2C0B0A0E0C8C0FFFFFF
        FFF8FFFFF8FFFFF0F0F0F0E0F0E0E0C0A8A0806050A09080C0B0A0806050FF00
        FF00FF00FFFF00FFFF00FFDEDFDDC0B0A0FFFFFFF0E8E0D0C8C0D0C8C0D0B8B0
        D0C0B0E0D0D0806860806050B09890B0A090FF00FF00FF00FFFF00FFFF00FFFF
        00FFD8CBBCF0E8E0FFFFFFFFFFFFFFFFFFFFF8FFFFF0F0F0E0D0D0B8B0806050
        BAADA8FF00FFFF00FF00FF00FFFF00FFFF00FFFF00FFE5E5E6D0B8B0FFFFFFF0
        F0F0D0C8C0D0C8C0D0B8B0C0B0B0E0D8D0807060866859FF00FFFF00FF00FF00
        FFFF00FFFF00FFFF00FFFF00FFDED5D3E0D1D1FFFFFFFFFFFFFFFFFFFFFFFFFF
        F8FFF0E8E0D0B8B0806050FF00FFFF00FF00FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFDFD6D3D0C0B0D0C0B0D0C0B0D0C0B0D0C0B0D0C0B0D0C0B0D0C0B0FF
        00FFFF00FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00}
      Margin = 3
    end
    object btInutilizar: TBitBtn
      Left = 3
      Top = 123
      Width = 109
      Height = 25
      Caption = 'Inutiliza nota'
      TabOrder = 4
      OnClick = btInutilizarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFB0A09060483060483070504070585070605080
        6850807060907860907870907870FF00FFFF00FFFF00FFFF00FFFF00FFB0A090
        E0D0C0E0D0C0E0D0C0A08880706860C0A8A0D0C0B0B0A8A08080904050604050
        60002040D0B0A0206020FF00FFB0A090F0D8D0E0D0D0E0D0D0C0B8B020202050
        48405058604068805098B040B0D02088B020588020501060A860FF00FFB0A090
        F0E0E0D0C0B0E0D0C070707070D0F040607080C8E090E0F070D0F060C8F030A8
        D02088B060904070B070FF00FFB0A090F0E8E0F0E0D0E0D0C0506060A0E8F080
        E0F020404040607010182030B8E030B8E02080A060904080D090FF00FFC0A890
        F0F0F0D0C0B0E0C8C0E0D8D0405860A0E8F06090A090E0F050B0D01010106070
        70C2BABABCC9BD508050FF00FFC0A8A0FFF8F0F0F0F0F0E0E0F0D8D0E0D8D040
        505080D8F050788090E0F050B0D0101010FF00FFFF00FFFF00FFFF00FFC0B0A0
        FFFFFFD0C0B0D0C0B0D0C0B0E0C0B0E0D0D0404850D0C8C06090A090E0F08088
        80303890FF00FFFF00FFFF00FFD0B0A0FFFFFFFFF8FFFFF0F0F0E8E0F0E0D0E0
        D0D0E0C8C0E0C8C0F0D8D06090A0D0B8B06070B0303890FF00FFFF00FFD0B8A0
        FFFFFFE0C8C0E0C8C0D0C0B0D0B8B0D0C0B0E0C0B0E0C8C0E0C8C0A088806070
        B07090E06070B0FF00FFFF00FFD0B8B0FFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0
        E0E0A09080A0807060483077594AFF00FF6070B0FF00FFFF00FFFF00FFD0C0B0
        FFFFFFE0C8C0E0C8C0E0C8C0D0C0B0E0C8C0B0A090D0C8C068513BFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFE0C0B0FFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFF
        F0F0C0B0A0957E68FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0C0B0
        E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0C0B0A0FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Margin = 3
    end
    object btnAbrirNota: TBitBtn
      Left = 3
      Top = 163
      Width = 109
      Height = 25
      Caption = 'Detalhe da Nota'
      TabOrder = 5
      OnClick = btnAbrirNotaClick
      Glyph.Data = {
        66030000424D6603000000000000360000002800000010000000110000000100
        1800000000003003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF70889060809060788050708050607040586040485030
        3840203030202030101820101010101020FF00FFFF00FFFF00FF70889090A0B0
        70B0D00090D00090D00090D00090C01088C01080B01080B02078A02070902048
        60FF00FFFF00FFFF00FF80889080C0D090A8B080E0FF60D0FF50C8FF50C8FF40
        B8F030B0F020A0E02098E01090D0206880596066FF00FFFF00FF8090A080D0F0
        90A8B090C0D070D8FF60D0FF60D0FF50C8FF50C0FF40B8F030B0F020A0E01088
        D0204860FF00FFFF00FF8090A080D8F080C8E090A8B080E0FF70D0FF60D8FF60
        D0FF60D0FF50C8FF40C0F040B8F030B0F0206880698B99FF00FF8098A090E0F0
        90E0FF90A8B090B8C070D8FF60D8FF60D8FF60D8FF60D0FF50D0FF50C8FF40B8
        F030A0E0496776FF00FF8098A090E0F0A0E8FF80C8E090A8B080E0FF80E0FF80
        E0FF80E0FF80E0FF80E0FF80D8FF70D8FF70D0FF60A8D086919C90A0A0A0E8F0
        A0E8FF90E8FF90B0C090A8C080A8B080A0B080909090A0A090A0A0A098A07078
        808090908090A070889090A0B0A0E8F0A0F0FF90E8FF80E0FF60B8E060A0C080
        6850E0C8C0D0C0B0B09880E0B8B0E0B8A06B656CCBC9C6FF00FF90A0B0A0F0F0
        B0F0F090E8FF70D0F070A8B0907060E0D8D0E0D0C0B09080A06860D0B0A06070
        D03050D0856F68FF00FF90A8B0A0D0E0A0F0F080E0F080C0D0908070F0E0E0F0
        F0F0B09890A07870E0C0B08090D02048E0957E68CBC3C0FF00FFCCD5D990A8B0
        90A8B090A0A0A08070F0E8E0FFFFFFF0E8F0B08070E0C8C0F0E8E0E0D0D0957E
        68CCC4C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6D2CE9A8671FFFFFFFF
        F8FFF0E8F0FFF8F0F0E8E0957E68D2CECAFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFD7D3CFA8947FFFF8FFFFFFFFFFF8F0A48677D3CFCBFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD8D4CFA9
        947FFFF8F0A48E77D8D4CFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFD0C8C0B39D86D4CCC8FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF}
      Margin = 3
    end
    object btConf: TBitBtn
      Left = 3
      Top = 193
      Width = 109
      Height = 25
      Caption = 'Configuracoes'
      TabOrder = 6
      OnClick = btConfClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCECBCEAD
        AAADB5B2B59C9E9CADAAADA5A2A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFBDBABDADAEADB5B2B5DED7DEB5B6B5A5A2A5C6BEC69C9E
        A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEDBDEB5B6B5DEDBDEDE
        DBDEE7E3E7DEDFDEDEDBDEBDBEBDA5A2A5A5A6A5FF00FFFF00FFFF00FFFF00FF
        FF00FFB5B2B5B5B6B5DED7DEE7DFE7E7E3E7DEDFDEE7E3E7E7E3E7DEDBDEADAE
        ADA59EA5ADAAADFF00FFFF00FFFF00FFFF00FFADAAADDED7DEDEDFDEE7E3E7A5
        A6A57371737B797BD6D3D6DEDFDEDEDFE7B5B6B5ADAAADFF00FFFF00FFFF00FF
        FF00FFDED7DEBDBABDD6CFD6CECFCE524D525255525A555A949694E7E3E7CECB
        CEADAAADB5B6BDFF00FFFF00FFFF00FFFF00FFB5AEB5B5B6B57BA684ADBAB55A
        595A524D52393C39ADA6ADDEDFDEE7DFE7ADAAADBDBEBDFF00FFFF00FFFF00FF
        D6D3D66B9673218E290896187BA67BCECBCE948E94ADAAADDEDBDEE7E7E7D6CF
        D6B5B2B5BDBABDFF00FFFF00FFB5D7BD42A24A00A21800C72900C329529A52D6
        D7D6EFE7EFE7E3E7EFE7EFCECFCEBDBEBDCECFCEFF00FFFF00FF5AB26310A221
        00C72900CF3100CF3100CF31109A21BDBABDEFEBEFDEDBDEC6C3C6CECBCEC6C3
        C6FF00FFFF00FFFF00FFFF00FF73C37B18BA3100CB3100CF3100CB3108A2217B
        9A7BC6C3C6B5B2B5DED7DEB5B2B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        18A63100CF3100CF3100CF2900AE21639A63ADAAADDED7DEFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFADD7B500B62900CB3100CF3163AA6B63B66B63
        AE6BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B25A
        00CB2900D73910B629FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFBDDFC663BE6B21B23952BE63FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Margin = 3
    end
    object btnAjuda: TBitBtn
      Left = 3
      Top = 222
      Width = 109
      Height = 25
      Caption = 'Ajuda Online'
      TabOrder = 7
      OnClick = btnAjudaClick
      Glyph.Data = {
        06030000424D060300000000000036000000280000000F0000000F0000000100
        180000000000D002000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFF3E1D7F4E3D9F4E3DAF3E2D8F3E1D7FF00FFFF00FFFF00
        FFFF00FFFF00FF000000FF00FFFF00FFFF00FFF4E3D8F8FAFBE4E2E2CFB1A2D4
        AB96DDC6BBECF1F0F6F3F2F2E1D6FF00FFFF00FFFF00FF000000FF00FFFF00FF
        F5EAE2F4FFFFCF9A80B74C15B9643CD9AF9AC05823B95624D5AF9FF7FFFFF4E2
        D9FF00FFFF00FF000000FF00FFF2E1D7F8FFFFC77D58BB450CC64E13C2A495FF
        FFFFD9926FC14A0FB8450BCE9A80F8FFFFF2E0D6FF00FF000000FF00FFFAFAF9
        D8A890BD480DCD622ECD6029CB6B3AD88E68CA5E29CC622DC95D29B94710E0C9
        BDF6EDE8FF00FF000000F3E0D7F8FAFBC56232CA5C26CE6733CB5B23CA8969F7
        E7DFD06B38CA5A23CD6531C3531BC77850F8FCFDDCC8BE000000F3E1D8F2DED6
        C5561ECE6632CC6531CC5A21C28669FFFFFFE8AD91C44A0FCC622DCB5F28C35E
        2BF3F2F1F1DFD5000000F2E1D9F3D8CACD5B22CF6632CC642FCC602BC4551FCF
        B5A8FFFFFFE09C7AC7531ACD602BC65E29F5F1EDEFDED4000000F1E0D7FBEDE6
        DB6A32D36833CA5E28C95821C95419C14B10E2D0C6FFFFFFD0703FCD5A20CE6A
        38FCFBFBEEDDD2000000F1DED4FFFFFFF5986AE2662AC88B6DF0EAE3D77E51BD
        3000D79C7EFFFFFFDA8C65D15314E29A76FEFDFED3BDB2000000FF00FFF6F1EF
        FFEADBFF8A49DE875CEEFFFFFEFCFDE7B9A1FAFFFFF3F9FEE0723CE67035FFF3
        EEF4E7E0FF00FF000000FF00FFF1DED4FFFFFFFFE9CEFFB270ECAF87ECE2DFEB
        F0F4F1E4E0F6A478FE8C4DFFDECAFDFFFFF0DDD2FF00FF000000FF00FFFF00FF
        F0DFD6FFFFFFFFFFFBFFF3C6FEDDA8FCCF98FFC991FFD4A9FFFEF8FCFFFFF1DF
        D4FF00FFFF00FF000000FF00FFFF00FFFF00FFF1DCD3F5E8E4FDFCFDFFFFFFFF
        FFFFFFFFFFFCFBFDF3E6E0F1DDD2FF00FFFF00FFFF00FF000000FF00FFFF00FF
        FF00FFFF00FFFF00FFF1DCD1EFDBD0EFDBD1EFDCD1F1DBD0FF00FFFF00FFFF00
        FFFF00FFFF00FF000000}
      Margin = 3
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 180
    Top = 335
    object cxStylePreview: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clMaroon
    end
  end
end
