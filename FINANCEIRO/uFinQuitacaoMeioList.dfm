�
 TFINQUITACAOMEIOLIST 0]  TPF0�TFinQuitacaoMeioListFinQuitacaoMeioListLeft� TopHelpContext%CaptionMeios de PagamentoPixelsPerInch`
TextHeight �TPanel	pnlBrowse �	TdxDBGridbrwGridKeyField	IDMeioPagFilter.Criteria
        TdxDBGridMaskColumnbrwGridCodigoMeioPagWidth� 	BandIndex RowIndex 	FieldNameCodigoMeioPag  TdxDBGridMaskColumnbrwGridMeioPagWidthm	BandIndex RowIndex 	FieldNameMeioPag  TdxDBGridMaskColumnbrwGridTypeWidth� 	BandIndex RowIndex 	FieldNameType  TdxDBGridMaskColumnbrwGridParent	BandIndex RowIndex 	FieldNameParent    �TdxDBGridPrintdxDBGridPrint  �TdxBarPopupMenu
bpmSummary	ItemLinksItembbFooterTotalUserGlyph.Data
       Visible	 ItembbFooterMinUserGlyph.Data
       Visible	 ItembbFooterMaxUserGlyph.Data
       Visible	 ItembbFooterAVGUserGlyph.Data
       Visible	 
BeginGroup	ItembbFooterNenhumUserGlyph.Data
       Visible	    �TdxBarManagerbmMDIBarsCaptionListDockedDockingStyledsTop
DockedLeft 	DockedTop DockingStyledsTop	FloatLeft>FloatTop� FloatClientWidth\FloatClientHeight� 	ItemLinksItembbListaNovoUserGlyph.Data
       Visible	 ItembbListaOpenUserGlyph.Data
       Visible	 ItembbListaRemoveUserGlyph.Data
       Visible	 ItembbListaRestoreUserGlyph.Data
       Visible	 
BeginGroup	ItembbListaImprimeUserGlyph.Data
       Visible	 
BeginGroup	ItembbListaAgrupamentoUserGlyph.Data
       Visible	 ItembbListaColunaUserGlyph.Data
       Visible	 
BeginGroup	Item	cbxStatusUserGlyph.Data
       Visible	 
BeginGroup	ItemZoomUserGlyph.Data
       Visible	 ItembbListaZoomUserGlyph.Data
       Visible	 ItemsiListaExportaUserGlyph.Data
       Visible	  NameListOneOnRow	Row 
UseOwnFontVisible	WholeRow CaptionViewDockedDockingStyledsTop
DockedLeft 	DockedTopDockingStyledsTop	FloatLeft� FloatTopoFloatClientWidth� FloatClientHeight)	ItemLinksItembbVisaoOrganizaUserGlyph.Data
       Visible	 ItembbVisaoSalvaUserGlyph.Data
       Visible	 ItembbVisaoDeleteUserGlyph.Data
       Visible	  NameViewOneOnRow	Row
UseOwnFontVisibleWholeRow  Categories.ItemsVisibles Categories.Visibles						 DockControlHeights     �TdxBarSubItembsHeaderAlinhamento	ItemLinksItembbHeaderEsquerdaUserGlyph.Data
       Visible	 ItembbHeaderCentroUserGlyph.Data
       Visible	 ItembbHeaderDireitaUserGlyph.Data
       Visible	    �TdxBarSubItemsiListaExporta	ItemLinksItembbExportaExcelUserGlyph.Data
       Visible	 ItembbExportaHTMLUserGlyph.Data
       Visible	 ItembtnXMLUserGlyph.Data
       Visible	 ItembbExportaTextoUserGlyph.Data
       Visible	    �TdxBarImageCombo	cbxStatusImageIndexes"6    �	
TImageListilSmallButtons  �
TBrowseConfigBrowseConfigFchClassNameTFinQuitacaoMeioFch  �TdxBarPopupMenu	bpmHeader	ItemLinksItembbHeaderAgruparUserGlyph.Data
       Visible	 ItembbListaAgrupamentoUserGlyph.Data
       Visible	 
BeginGroup	ItembbHeaderRemoveColunaUserGlyph.Data
       Visible	 ItembbListaColunaUserGlyph.Data
       Visible	 
BeginGroup	ItembsHeaderAlinhamentoUserGlyph.Data
       Visible	 ItembbHeaderAjusteUserGlyph.Data
       Visible	 ItembbHeaderAjusteAllUserGlyph.Data
       Visible	    �	TsiLangRTsiLangStorageFileOM_FinQuitacaoMeioList.sil  �TPowerADOQueryquBrowseCommandText�SELECT
	MP.IDMeioPag,
	MP.CodigoMeioPag,
	MP.MeioPag,
	CASE MP.TIPO
		WHEN 1 THEN 'Cash'
		WHEN 2 THEN 'Credit Card'
		WHEN 3 THEN 'Others'
		WHEN 4 THEN 'Check'
	END Type,
	ParentType as Parent
FROM
	MeioPag MP
ORDER BY
	MP.MeioPag
 TIntegerFieldquBrowseIDMeioPag	FieldName	IDMeioPag  TStringFieldquBrowseCodigoMeioPagDisplayLabelCode	FieldNameCodigoMeioPag  TStringFieldquBrowseMeioPagDisplayLabelName	FieldNameMeioPagSize2  TStringFieldquBrowseType	FieldNameTypeSize  TStringFieldquBrowseParent	FieldNameParent   �TDataSourcedsBrowse  �TSaveDialog
SaveDialog  �TdxBarPopupMenu	bpmDetail	ItemLinksItembbListaOpenUserGlyph.Data
       Visible	 ItembbListaRemoveUserGlyph.Data
       Visible	 
BeginGroup	ItembbDetailHelpUserGlyph.Data
       Visible	 ItembbDetailFiltraCampoUserGlyph.Data
       Visible	 ItembbDetailFIltraExcluindoCampoUserGlyph.Data
       Visible	 ItembdcFiltraDataUserGlyph.Data
       Visible	 ItembeFiltraTextoUserGlyph.Data
       Visible	 ItembbDetailRemoveFiltroUserGlyph.Data
       Visible	 
BeginGroup	ItembbDetailClassificacaoCreUserGlyph.Data
       Visible	 ItembbDetailClassificaoDescUserGlyph.Data
       Visible	    �TdxComponentPrintercpList �TdxDBGridReportLinkcpListGridLinkDateTime ���ӻ�@ PrinterPage._dxMeasurementUnits_ PrinterPage._dxLastMU_BuiltInReportLink	    