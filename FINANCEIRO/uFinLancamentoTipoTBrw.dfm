�
 TFINLANCAMENTOTIPOTBRW 0[  TPF0�TFinLancamentoTipoTBrwFinLancamentoTipoTBrwLeft� Top� CaptionFinLancamentoTipoTBrwPixelsPerInch`
TextHeight TDbPowerGridgrdTreeLeftTop=WidthnHeightASelected.Strings"CodigoContabil	27	CodigoContabil	F"LancamentoTipo	46	LancamentoTipo	FSintetico	7	Sintetico	F 
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	AlignalClientBorderStylebsNone
DataSourcedsTree
KeyOptions OptionsdgTitlesdgColumnResizedgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit
dgWordWrap 	PopupMenugrdTree.MyPopUpMenuTabOrder	TitleAlignmenttaLeftJustifyTitleFont.CharsetANSI_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style 
TitleLinesTitleButtons	
UseTFieldsIndicatorColoricBlack  �TDBTreeView
DBTreeView	FieldPathCodigoContabil  �TdxBarManagerbmMDIBarsCaptionTreeDockedDockingStyledsTop
DockedLeft 	DockedTop DockingStyledsTop	FloatLeft�FloatTopFloatClientWidthFloatClientHeightB	ItemLinksItem
bbNovoItemUserGlyph.Data
        Item
bbAbreItemUserGlyph.Data
        ItembbRemoveItemUserGlyph.Data
        ItembtPrintUserGlyph.Data
         OneOnRow	Row Visible	  Categories.ItemsVisibles Categories.Visibles	 DockControlHeights     TdxBarButtonbtPrintCaptionPrintCategory HintPrint
ImageIndexOnClickbtPrintClick   �
TImageListilTreeSmall  �	TwwQuery
quTreeViewOnCalcFieldsquTreeViewCalcFieldsSQL.Strings.SELECT IDLancamentoTipo , Path , Desativado , ) Hidden , LancamentoTipo, CodigoContabil,= Sintetico, CodigoContabil + ' - ' + LancamentoTipo Descricao.FROM dbo.Fin_LancamentoTipo Fin_LancamentoTipoWHERE ( ( Desativado = 0 ) AND  ( Hidden = 0 ) )ORDER BY CodigoContabil  TIntegerFieldquTreeViewIDLancamentoTipo	FieldNameIDLancamentoTipoOrigin#Fin_LancamentoTipo.IDLancamentoTipo  TStringFieldquTreeViewPath	FieldNamePathOriginFin_LancamentoTipo.PathSize�   TBooleanFieldquTreeViewDesativado	FieldName
DesativadoOriginFin_LancamentoTipo.Desativado  TBooleanFieldquTreeViewHidden	FieldNameHiddenOriginFin_LancamentoTipo.Hidden  TStringFieldquTreeViewLancamentoTipo	FieldNameLancamentoTipoOrigin!Fin_LancamentoTipo.LancamentoTipoSizeA  TStringFieldquTreeViewCodigoContabil	FieldNameCodigoContabilOrigin!Fin_LancamentoTipo.CodigoContabilSize#  TBooleanFieldquTreeViewSintetico	FieldName	SinteticoOriginFin_LancamentoTipo.Sintetico  TStringFieldquTreeViewDescricao	FieldName	DescricaoOrigin!Fin_LancamentoTipo.CodigoContabilSizeg   TPrintDialogPrintDialogLeftQTop�   
TDbImpGrid	DbImpGridImpGridgrdTreeItemFont.CharsetANSI_CHARSETItemFont.ColorclWindowTextItemFont.Height�ItemFont.NameTahomaItemFont.Style TitleFont.CharsetANSI_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold ColumnFont.CharsetANSI_CHARSETColumnFont.ColorclWhiteColumnFont.Height�ColumnFont.NameTahomaColumnFont.Style FooterFont.CharsetANSI_CHARSETFooterFont.ColorclWindowTextFooterFont.Height�FooterFont.NameTahomaFooterFont.StylefsBold 
TitleColorclWhiteColumnColorclBlackFooterColorclWhiteMarginRight
MarginLeft	MarginTopMarginBottonPreviewOthersPagesColumn	OthersPagesFooter	Left� Top�   TDataSourcedsTreeDataSet
quTreeViewLeft�Top�    