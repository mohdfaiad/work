�
 TSISDEPARTAMENTOLIST 0�  TPF0�TSisDepartamentoListSisDepartamentoListLeft� Top� CaptionSisDepartamentoListPixelsPerInch`
TextHeight �TPanel	pnlBrowse �	TdxDBGridbrwGridKeyFieldIDDepartamento TdxDBGridMaskColumnbrwGridCodigoDepartamento	FieldNameCodigoDepartamentoVisible	Width�   TdxDBGridMaskColumnbrwGridDepartamento	FieldNameDepartamentoVisible	Width�   TdxDBGridMaskColumnbrwGridEmpresa	FieldNameEmpresaVisible	Width�     �TdxBarManagerbmMDIBarsCaptionListaDockedDockingStyledsTop
DockedLeft 	DockedTop DockingStyledsTop	FloatLeft>FloatTop� FloatClientWidth\FloatClientHeight� 	ItemLinksItembbListaNovoUserGlyph.Data
        ItembbListaOpenUserGlyph.Data
        ItembbListaRemoveUserGlyph.Data
        ItembbListaRestoreUserGlyph.Data
        
BeginGroup	ItembbListaImprimeUserGlyph.Data
        
BeginGroup	ItembbDetailProcuraUserGlyph.Data
        
BeginGroup	ItembbListaAgrupamentoUserGlyph.Data
        ItembbListaColunaUserGlyph.Data
        
BeginGroup	ItemZoomUserGlyph.Data
        ItembbListaZoomUserGlyph.Data
         OneOnRow	Row Visible	 CaptionVisaoDockedDockingStyledsTop
DockedLeft 	DockedTopDockingStyledsTop	FloatLeft� FloatTopoFloatClientWidth� FloatClientHeight)	ItemLinksItembbVisaoOrganizaUserGlyph.Data
        ItembbVisaoSalvaUserGlyph.Data
        ItembbVisaoDeleteUserGlyph.Data
         OneOnRow	RowVisible  Categories.ItemsVisibles Categories.Visibles					 DockControlHeights     �TdxBarSubItembsHeaderAlinhamento	ItemLinksItembbHeaderEsquerdaUserGlyph.Data
        ItembbHeaderCentroUserGlyph.Data
        ItembbHeaderDireitaUserGlyph.Data
            �TPowerQueryquBrowseSQL.StringsSELECT IDDepartamento ,  Sis_Departamento.IDEmpresa , % CodigoDepartamento , Departamento ,  Sis_Departamento.Hidden ,  Sis_Departamento.Desativado , " Sis_Departamento.System , EmpresaHFROM dbo.Sis_Departamento Sis_Departamento , dbo.Sis_Empresa Sis_Empresa<WHERE ( Sis_Empresa.IDEmpresa = Sis_Departamento.IDEmpresa )ORDER BY Departamento Data
#  Ver 2.0,QBE - Integra Visual Database Builder,0, 20, 2048, 1442,,,,,
 , , - Distinct & Quote,,,,,
    2, - Number of Tables,-1, -1, 463, 333, 455, 123,,,,
dbo.Sis_Departamento,Sis_Departamento,20, 10, 137, 135,,,,,
dbo.Sis_Empresa,Sis_Empresa,157, 20, 274, 145,,,,,
    8, - Number of Columns,,,,,,
IDDepartamento,Sis_Departamento,                   1,     , ,,,
     , - Number of Criteria,,,,,,
IDEmpresa,Sis_Departamento,                   1,     , ,,,
     , - Number of Criteria,,,,,,
CodigoDepartamento,Sis_Departamento,                   1,     , ,,,
     , - Number of Criteria,,,,,,
Departamento,Sis_Departamento,                  65,     , ,,1,
     , - Number of Criteria,,,,,,
Hidden,Sis_Departamento,                   1,     , ,,,
     , - Number of Criteria,,,,,,
Desativado,Sis_Departamento,                   1,     , ,,,
     , - Number of Criteria,,,,,,
System,Sis_Departamento,                   1,     , ,,,
     , - Number of Criteria,,,,,,
Empresa,Sis_Empresa,                   1,     , ,,,
     , - Number of Criteria,,,,,,
    1, - Number of Joins,,,,,,
IDEmpresa,Sis_Empresa,IDEmpresa,Sis_Departamento,          ,          ,,

"SELECT Statement"
,,,,,,,
SELECT	IDDepartamento , 
	Sis_Departamento.IDEmpresa , 
	CodigoDepartamento , Departamento , 
	Sis_Departamento.Hidden , 
	Sis_Departamento.Desativado , 
	Sis_Departamento.System , Empresa
FROM	dbo.Sis_Departamento Sis_Departamento , dbo.Sis_Empresa Sis_Empresa
WHERE	( Sis_Empresa.IDEmpresa = Sis_Departamento.IDEmpresa )
ORDER BY
	Departamento,,,,,,,
 TIntegerFieldquBrowseIDDepartamento	FieldNameIDDepartamentoOriginSis_Departamento.IDDepartamento  TIntegerFieldquBrowseIDEmpresa	FieldName	IDEmpresaOriginSis_Departamento.IDEmpresa  TStringFieldquBrowseCodigoDepartamentoDisplayLabelC�digo	FieldNameCodigoDepartamentoOrigin#Sis_Departamento.CodigoDepartamento  TStringFieldquBrowseDepartamentoDisplayLabel	Descri��o	FieldNameDepartamentoOriginSis_Departamento.DepartamentoSize#  TStringFieldquBrowseEmpresa	FieldNameEmpresaOriginSis_Empresa.EmpresaSize#   �TQueryquVisaoData
�  Ver 2.0,QBE - Integra Visual Database Builder,0, 10, 2048, 1442,,,,,
 , , - Distinct & Quote,,,,,
    1, - Number of Tables,-1, -1, 712, 423, 704, 184,,,,
dbo.Sis_Visao,Sis_Visao,20, 10, 137, 135,,,,,
    8, - Number of Columns,,,,,,
IDVisao,Sis_Visao,                   1,     , ,,,
     , - Number of Criteria,,,,,,
Visao,Sis_Visao,                  65,     , ,,1,
     , - Number of Criteria,,,,,,
IDUsuario,Sis_Visao,                   1,     , ,,,
     , - Number of Criteria,,,,,,
FormCaption,Sis_Visao,                   1,     , ,,,
    1, - Number of Criteria,,,,,,
:FormCaption,    6,,,,,,
GridStream,Sis_Visao,                   1,     , ,,,
     , - Number of Criteria,,,,,,
Hidden,Sis_Visao,                   1,     , ,,,
     , - Number of Criteria,,,,,,
Desativado,Sis_Visao,                   1,     , ,,,
    1, - Number of Criteria,,,,,,
0,    6,,,,,,
System,Sis_Visao,                   1,     , ,,,
     , - Number of Criteria,,,,,,
     , - Number of Joins,,,,,,

"SELECT Statement"
,,,,,,,
SELECT	IDVisao , Visao , IDUsuario , FormCaption , 
	GridStream , Hidden , Desativado , System
FROM	dbo.Sis_Visao Sis_Visao
WHERE	( ( FormCaption = :FormCaption ) AND
		( Desativado = 0 ) )
ORDER BY
	Visao,,,,,,,
  �TdxBarPopupMenu	bpmDetail	ItemLinksItembbListaOpenUserGlyph.Data
        ItembbListaRemoveUserGlyph.Data
        
BeginGroup	ItembbDetailHelpUserGlyph.Data
        ItembbDetailFiltraCampoUserGlyph.Data
        ItembbDetailFIltraExcluindoCampoUserGlyph.Data
        ItembdcFiltraDataUserGlyph.Data
        ItembeFiltraTextoUserGlyph.Data
        ItembbDetailRemoveFiltroUserGlyph.Data
        
BeginGroup	ItembbDetailClassificacaoCreUserGlyph.Data
        ItembbDetailClassificaoDescUserGlyph.Data
           �TdxBarPopupMenu	bpmHeader	ItemLinksItembbHeaderAgruparUserGlyph.Data
        ItembbListaAgrupamentoUserGlyph.Data
        
BeginGroup	ItembbHeaderRemoveColunaUserGlyph.Data
        ItembbListaColunaUserGlyph.Data
        
BeginGroup	ItembsHeaderAlinhamentoUserGlyph.Data
        ItembbHeaderAjusteUserGlyph.Data
           �TdxBarPopupMenu
bpmSummary	ItemLinksItembbFooterTotalUserGlyph.Data
        ItembbFooterMinUserGlyph.Data
        ItembbFooterMaxUserGlyph.Data
        ItembbFooterAVGUserGlyph.Data
        
BeginGroup	ItembbFooterNenhumUserGlyph.Data
            