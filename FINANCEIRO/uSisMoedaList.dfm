�
 TSISMOEDALIST 0�  TPF0�TSisMoedaListSisMoedaListLeft� Top� CaptionMoedasPixelsPerInch`
TextHeight �TPanel	pnlBrowse �	TdxDBGridbrwGridKeyFieldIDMoedaFilter.Criteria
        TdxDBGridMaskColumnbrwGridSiglaWidth`	BandIndex RowIndex 	FieldNameSigla  TdxDBGridMaskColumnbrwGridMoedaWidth� 	BandIndex RowIndex 	FieldNameMoeda  TdxDBGridMaskColumnbrwGridValorMoedaPadraoWidth� 	BandIndex RowIndex 	FieldNameValorMoedaPadrao  TdxDBGridDateColumnbrwGridDataCotacaoWidth� 	BandIndex RowIndex 	FieldNameDataCotacao  TdxDBGridCheckColumnbrwGridMoedaPadraoWidth_	BandIndex RowIndex 	FieldNameMoedaPadraoValueCheckedTrueValueUncheckedFalse    �TdxDBGridPrintdxDBGridPrint  �TTimertrmAviso  �TBrowseConfigBrowseConfigFchClassNameTSisMoedaFchTop�   �	TdxBarManagerbmMDIBarsCaptionListaDockedDockingStyledsTop
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
BeginGroup	ItemZoomUserGlyph.Data
       Visible	 ItembbListaZoomUserGlyph.Data
       Visible	 ItemsiListaExportaUserGlyph.Data
       Visible	 
BeginGroup	Item	cbxStatusUserGlyph.Data
       Visible	 
BeginGroup	ItembbPadrao
UserDefineudPaintStyle UserGlyph.Data
       UserPaintStylepsCaptionGlyphVisible	  OneOnRow	Row 
UseOwnFontVisible	WholeRow CaptionVisaoDockedDockingStyledsTop
DockedLeft 	DockedTopDockingStyledsTop	FloatLeft� FloatTopoFloatClientWidth� FloatClientHeight)	ItemLinksItembbVisaoOrganizaUserGlyph.Data
       Visible	 ItembbVisaoSalvaUserGlyph.Data
       Visible	 ItembbVisaoDeleteUserGlyph.Data
       Visible	  OneOnRow	Row
UseOwnFontVisibleWholeRow  Categories.ItemsVisibles Categories.Visibles						 DockControlHeights     �TdxBarSubItembsHeaderAlinhamento	ItemLinksItembbHeaderEsquerdaUserGlyph.Data
       Visible	 ItembbHeaderCentroUserGlyph.Data
       Visible	 ItembbHeaderDireitaUserGlyph.Data
       Visible	    �TdxBarSubItemsiListaExporta	ItemLinksItembbExportaExcelUserGlyph.Data
       Visible	 ItembbExportaHTMLUserGlyph.Data
       Visible	 ItembtnXMLUserGlyph.Data
       Visible	 ItembbExportaTextoUserGlyph.Data
       Visible	    �TdxBarImageCombo	cbxStatusImageIndexes"6   TdxBarButtonbbPadraoCaptionChange defaultCategory HintChange defaultVisibleivAlways
ImageIndex'OnClickbbPadraoClick   �

TImageListilSmallButtons  �TSaveDialog
SaveDialog  �TdxBarPopupMenu	bpmDetail	ItemLinksItembbListaOpenUserGlyph.Data
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
       Visible	  Left�Top  �	TsiLangRTsiLangStorageFileOM_SisMoedaList.sil  �TPowerADOQueryquBrowseCommandText�SELECT 
	M.IDMoeda,
	M.CodigoMoeda,
	M.Moeda,
 	M.MoedaPadrao, 
	M.Sigla,
	M.ValorMoedaPadrao,
	M.DataCotacao
FROM 
	dbo.Sis_Moeda M
 TIntegerFieldquBrowseIDMoeda	FieldNameIDMoedaOriginSis_Moeda.IDMoeda  TStringFieldquBrowseCodigoMoedaDisplayLabelC�digo	FieldNameCodigoMoedaOriginSis_Moeda.CodigoMoeda  TStringFieldquBrowseMoedaDisplayLabelCurrency	FieldNameMoedaOriginSis_Moeda.MoedaSize#  TStringFieldquBrowseSiglaDisplayLabelAcronym	FieldNameSiglaOriginSis_Moeda.Sigla  TFloatFieldquBrowseValorMoedaPadraoDisplayLabelActual Quotation	FieldNameValorMoedaPadraoOriginSis_Moeda.ValorMoedaPadraoDisplayFormat#,##0.00  TDateTimeFieldquBrowseDataCotacao	AlignmenttaRightJustifyDisplayLabelQuotation Date	FieldNameDataCotacaoOriginSis_Moeda.DataCotacaoDisplayFormatddddd  TBooleanFieldquBrowseMoedaPadraoDisplayLabelDefault Currency	FieldNameMoedaPadraoOriginSis_Moeda.IDMoeda   �TDataSourcedsBrowse  �TdxBarPopupMenu	bpmHeader	ItemLinksItembbHeaderAgruparUserGlyph.Data
       Visible	 ItembbListaAgrupamentoUserGlyph.Data
       Visible	 
BeginGroup	ItembbHeaderRemoveColunaUserGlyph.Data
       Visible	 ItembbListaColunaUserGlyph.Data
       Visible	 
BeginGroup	ItembsHeaderAlinhamentoUserGlyph.Data
       Visible	 ItembbHeaderAjusteUserGlyph.Data
       Visible	 ItembbHeaderAjusteAllUserGlyph.Data
       Visible	    �TdxBarPopupMenu
bpmSummary	ItemLinksItembbFooterTotalUserGlyph.Data
       Visible	 ItembbFooterMinUserGlyph.Data
       Visible	 ItembbFooterMaxUserGlyph.Data
       Visible	 ItembbFooterAVGUserGlyph.Data
       Visible	 
BeginGroup	ItembbFooterNenhumUserGlyph.Data
       Visible	    �TdxComponentPrintercpList �TdxDBGridReportLinkcpListGridLinkDateTime @L�ջ�@ PrinterPage._dxMeasurementUnits_ PrinterPage._dxLastMU_BuiltInReportLink	   TADOStoredProcspNovaPadrao
ConnectionDM.DBADOConnection
Parameters Left�TopP   