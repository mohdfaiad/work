�
 TFINCONTACORRENTELIST 0�  TPF0�TFinContaCorrenteListFinContaCorrenteListLeft� Top� Width�Height�HelpContextCaptionFinContaCorrenteListPixelsPerInch`
TextHeight �TPanelEspacamentoEsquerdoHeight/  �TPanelEspacamentoDireitoLeft�Height/  �TPanelEspacamentoSuperiorWidth� �TImageimgOnLeft  �TImageimgOffLeftQ�   �TPanelpnlBasicFilterWidth� �TPanel
pnlExecutaLeft~   �TPanelpnlEspacamentoInferirorTop�Width�  �TPanel	pnlBrowseWidth�Height/ �TPanelpnlGenFilterWidth�  �	TdxDBGridbrwGridWidth�HeightKeyFieldIDContaCorrenteShowSummaryFooter	Filter.Criteria
        TdxDBGridMaskColumnbrwGridCodigoContaCorrenteWidth� 	BandIndex RowIndex 	FieldNameCodigoContaCorrente  TdxDBGridMaskColumnbrwGridContaCorrenteTipoWidth� 	BandIndex RowIndex 	FieldNameTipo  TdxDBGridMaskColumnbrwGridEmpresaWidth� 	BandIndex RowIndex 	FieldNameEmpresa  TdxDBGridMaskColumnbrwGridNumeroWidth� 	BandIndex RowIndex 	FieldNameNumero  TdxDBGridMaskColumnbrwGridSaldoAtualVisibleWidth\	BandIndex RowIndex 	FieldName
SaldoAtualSummaryFooterTypecstSumSummaryFooterField
SaldoAtualSummaryFooterFormat#,##0.00   �TPanelpnlCountLineTopWidth� �TPanel
pnlDivisorWidth�    �TdxDBGridPrintdxDBGridPrint  �TTimertrmAviso  �	TsiLangRTsiLangStorageFileOM_FinContaCorrenteList.sil  �	TdxBarManagerbmMDIBarsCaptionListDockedDockingStyledsTop
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
BeginGroup	ItembbMostraSaldoUserGlyph.Data
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
       Visible	    �TdxBarImageCombo	cbxStatusImageIndexes"6   TdxBarButtonbbMostraSaldoCaptionShow BalanceCategory HintShow BalanceVisibleivAlwaysButtonStyle	bsChecked
ImageIndex
PaintStylepsCaptionGlyphOnClickbbMostraSaldoClick   �

TImageListilSmallButtons  �TPowerADOQueryquBrowseCommandText  SELECT
      CC.IDContaCorrente ,
      CC.CodigoContaCorrente ,
      CC.Numero ,
      CC.Tipo ,
      E.Empresa,
      CC.SaldoAtual
FROM
      Fin_ContaCorrente CC
      INNER JOIN Sis_Empresa E ON (CC.IDEmpresa = E.IDEmpresa)
ORDER BY
      CC.Numero
 TIntegerFieldquBrowseIDContaCorrente	FieldNameIDContaCorrenteOrigin!Fin_ContaCorrente.IDContaCorrente  TStringFieldquBrowseCodigoContaCorrenteDisplayLabelID	FieldNameCodigoContaCorrenteOrigin%Fin_ContaCorrente.CodigoContaCorrente  TStringFieldquBrowseTipoDisplayLabelType	FieldNameTipoOriginFin_ContaCorrente.Tipo  TStringFieldquBrowseEmpresaDisplayLabelCompany	FieldNameEmpresaOriginSis_Empresa.EmpresaSize#  TStringFieldquBrowseNumeroDisplayLabelNumber	FieldNameNumeroOrigin!Fin_ContaCorrente.IDContaCorrenteSize#  TFloatFieldquBrowseSaldoAtualDisplayLabelActual Balance	FieldName
SaldoAtualOriginFin_ContaCorrente.SaldoAtualDisplayFormat#,#0.00   �TBrowseConfigBrowseConfigFchClassNameTFinContaCorrenteFch  �TDataSourcedsBrowse  �TSaveDialog
SaveDialog  �TdxBarPopupMenu	bpmDetail	ItemLinksItembbListaOpenUserGlyph.Data
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
       Visible	    �TdxBarPopupMenu	bpmHeader	ItemLinksItembbHeaderAgruparUserGlyph.Data
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
       Visible	    �TdxComponentPrintercpList �TdxDBGridReportLinkcpListGridLinkDateTime X��ϻ�@ PrinterPage._dxMeasurementUnits_ PrinterPage._dxLastMU_BuiltInReportLink	    