�
 TFINCHEQUEBRADESCOQRP 0  TPF0TFinChequeBradescoQrpFinChequeBradescoQrpLeft Top Width�Height:Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSet
quQuitacaoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' Options Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeB4Page.Values                @�
@                @�
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty
SnapToGrid	UnitsInchesZoomd TQRBandDetailBand1Left0Top WidthQHeight Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@      e�
@ BandTyperbDetail 	TQRDBText	QRDBText7LeftATopHWidth*Height%Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values痪�����@~������@      ��@��UUUU9�	@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
quQuitacao	DataFieldExtensoTransparentWordWrap	FontSize
  	TQRDBText	QRDBText1Left�TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ���j�@��UUUUk�	@      ��@�{������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
quQuitacao	DataFieldValorQuitacaoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText2LeftTopsWidthTHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�/UUUU�@�/UUUU�@�{����"�@��UUUU�	@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
quQuitacao	DataField
FavorecidoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText3Left� Top� Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�/UUUU�@      ��@?�UUUU5�@      8�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
quQuitacao	DataFieldpracaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText4Left�Top� WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�/UUUU�@c5����:�	@?�UUUU5�@hUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
quQuitacao	DataFielddiaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText5Left�Top� Width~HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�/UUUU�@      ��	@?�UUUU5�@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
quQuitacao	DataFieldMesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText6LeftgTop� Width$HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�/UUUU�@      f�	@?�UUUU5�@      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
quQuitacao	DataFieldDataQuitacaoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTransparentWordWrap	FontSize   TQuery
quQuitacaoOnCalcFieldsquQuitacaoCalcFieldsDatabaseNameRETAILDBSQL.StringsSELECT      IDQuitacao ,      ValorQuitacao ,      DataQuitacao ,      Favorecido,      'Rio de Janeiro' praca,%      DatePart(dd, DataQuitacao) dia,4      Convert(char, DatePart(yy, DataQuitacao)) ano,%      CASE DatePart(mm, DataQuitacao)        WHEN 1 THEN 'janeiro'        WHEN 2 THEN 'fevereiro'        WHEN 3 THEN 'mar�o'        WHEN 4 THEN 'abril'        WHEN 5 THEN 'maio'        WHEN 6 THEN 'junho'        WHEN 7 THEN 'julho'        WHEN 8 THEN 'agosto'        WHEN 9 THEN 'setembro'        WHEN 10 THEN 'outubro'        WHEN 11 THEN 'novembro'        WHEN 12 THEN 'dezembro'      END Mes "FROM dbo.Fin_Quitacao Fin_Quitacao Left� Top�  TIntegerFieldquQuitacaoIDQuitacao	FieldName
IDQuitacaoOriginFin_Quitacao.IDQuitacao  TFloatFieldquQuitacaoValorQuitacao	FieldNameValorQuitacaoOriginFin_Quitacao.ValorQuitacaoDisplayFormat*#,##0.00 '# # # # # # # # # # # # # # # '   TDateTimeFieldquQuitacaoDataQuitacao	FieldNameDataQuitacaoOriginFin_Quitacao.DataQuitacaoDisplayFormatyyyy  TStringFieldquQuitacaoFavorecido	FieldName
FavorecidoOriginFin_Quitacao.FavorecidoSized  TStringFieldquQuitacaopraca	FieldNamepracaSize  TIntegerFieldquQuitacaodia	FieldNamedia  TStringFieldquQuitacaoMes	FieldNameMesSize	  TStringFieldquQuitacaoExtenso	FieldKindfkCalculated	FieldNameExtensoSize� 
Calculated	  TStringFieldquQuitacaoano	FieldNameanoSize    