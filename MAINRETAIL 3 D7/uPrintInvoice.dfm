�
 TQRLISTFORM 0h  TPF0TQRListForm
QRListFormLeft Top� Width,Height^HorzScrollBar.Range�VertScrollBar.Range�
AutoScrollCaptionQuickReport List
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style ScaledPixelsPerInch`
TextHeight TQRBandTitleLeft Top Width�Height`AlignalTopBandTyperbTitleColorclWhiteForceNewPageFrame.Width RulerqrrNone TQRShapeQRShape1LeftTop width� Height$Brush.ColorclBlackShapeqrsRectangle  TQRLabelQRLabel5Left�Top�widthheight-CaptionInvoiceAlignToBand
Font.ColorclBlackFont.Height�	Font.NameArial Black
Font.Style 
ParentFont  TQRLabelQRLabel6LeftTop�widthgheight-CaptionTAMAAlignToBand
Font.ColorclWhiteFont.Height�	Font.NameArial Black
Font.Style 
ParentFontTransparent	  TQRLabelQRLabel7LeftTopwidth� height Caption	ComputersAlignToBandColorclBlack
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparent	  TQRLabelQRLabel8Left|Top width~height=	AlignmenttaCenterAutoSizeCaptionW7635 International Drive Orlando, Florida 32819 Fax (407) 370-6420 Phone (407) 370-6410AlignToBand  TQRLabelQRLabel9Left�Top#widthFheightCaption#2225AlignToBand
Font.ColorclBlackFont.Height�	Font.NameArial Black
Font.Style 
ParentFontTransparent	   TQRBand
PageHeaderLeft Top`Width�HeightAlignalTopBandTyperbPageHeaderColorclWhiteForceNewPageFrame.Width RulerqrrNone  TQRBandDetailLeft TopxWidth�HeightAlignalTopBandTyperbDetailColorclWhiteForceNewPageFrame.Width RulerqrrNone  TQRBand
PageFooterLeft Top� Width�HeightAlignalTopBandTyperbPageFooterColorclWhiteForceNewPageFrame.Width RulerqrrNone  TQuickReportQuickReport
DataSourceDataSource1ColumnMarginInches ColumnMarginMM ColumnsDisplayPrintDialogLeftMarginInches LeftMarginMM Orientation
poPortraitReportTitleQuickReport TemplateRestartData	SQLCompatibleTitleBeforeHeader	LeftnTop�   TQueryQuery1DatabaseNameRETAILSQL.StringsSELECT IDInventoryMov7FROM dbo.Model Model , dbo.InventoryMov InventoryMov ,  dbo.Comission Comission:WHERE ( InventoryMov.ComissionID = Comission.IDComission )  AND) ( InventoryMov.ModelID = Model.IDModel ) Left� Top� Data
N  Ver 2.0,QBE - Integra Visual Database Builder,0, 0, 1600, 1106,,,,,
 , , - Distinct & Quote,,,,,
    3, - Number of Tables,-1, -1, 463, 341, 455, 134,,,,
dbo.Model,Model,309, 16, 426, 141,,,,,
dbo.InventoryMov,InventoryMov,156, 17, 284, 142,,,,,
dbo.Comission,Comission,16, 18, 133, 143,,,,,
    1, - Number of Columns,,,,,,
IDInventoryMov,InventoryMov,                   1,     , ,,,
     , - Number of Criteria,,,,,,
    2, - Number of Joins,,,,,,
ComissionID,InventoryMov,IDComission,Comission,          ,          ,,
ModelID,InventoryMov,IDModel,Model,          ,          ,,

"SELECT Statement"
,,,,,,,
SELECT	IDInventoryMov
FROM	dbo.Model Model , dbo.InventoryMov InventoryMov , 
	dbo.Comission Comission
WHERE	( InventoryMov.ComissionID = Comission.IDComission )
		AND
	( InventoryMov.ModelID = Model.IDModel ),,,,,,,
 TIntegerFieldQuery1IDStore	FieldNameIDStore  TStringField
Query1Name	FieldNameNameSize   TDataSourceDataSource1DataSetQuery1Left� Top�   TQRDetailLinkQRDetailLink1PrintBeforeLeftwTop�    