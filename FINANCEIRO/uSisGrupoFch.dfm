�
 TSISGRUPOFCH 0�  TPF0�TSisGrupoFchSisGrupoFchLeftZTopLHelpContext/CaptionSisGrupoFchClientHeight�ClientWidthEPixelsPerInch`
TextHeight � TLabelLabel1Left!Top0Width/Height	AlignmenttaRightJustifyCaptionGroup :FocusControlDBEdit1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  �TLabelLabel56LeftlTop/WidthHeightCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	  �TPanelEspacamentoEsquerdoHeight,TabOrder  �TPanelEspacamentoDireitoLeftBHeight,TabOrder  �TPanelEspacamentoSuperiorWidthETabOrder  �TPanelpnlEspacamentoInferirorTop�WidthETabOrder  �TPanel	pnlPBarraTop�WidthETabOrder �TPanelpnlPBarraRightAlignLeft8  �TPanel	pnlPLinhaWidthE   �TPanel
pnlPTituloWidthETabOrder �TLabellblPTituloShadowWidth� Caption
User Group  �TLabel
lblPTituloWidth� Caption
User Group  �TPanel
pnlAutoIncLeft#   �TDBEditDBEdit1LeftUTop-WidthHeight	DataFieldGrupo
DataSourcedsFormTabOrder   �TPanelpnlBottomAlignTopNWidthEHeight5TabOrder �TPanelpnlLeftSpaceHeight5  �TPanelpnlRightSpaceLeftBHeight5  �TPageControlPPageControlWidth?Height5
ActivePage	tsUsuarioOnChangePPageControlChange 	TTabSheet	tsUsuarioCaptionUser TLabelLabel9LeftTopWidthlHeightCaptionMember of the group :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TLabelLabel10LeftYTopWidthAHeightCaptionNot member :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TButtonbtIncluiLeft� TopFWidthoHeightCaption< AddTabOrder OnClickbtIncluiClick  TButtonbtExcluiTodosLeft� Top� WidthoHeightCaptionRemove all >>TabOrderOnClickbtExcluiTodosClick  TButtonbtExcluiLeft� Top� WidthoHeightCaptionRemove >TabOrderOnClickbtExcluiClick  TButtonbtIncluiTodosLeft� TopdWidthoHeightCaption<<  Add allTabOrderOnClickbtIncluiTodosClick  	TdxDBGrid	grdMembroLeftTopWidth� Height� Bands  DefaultLayout	HeaderPanelRowCountKeyFieldIDGrupoSummaryGroups SummarySeparator, TabOrder
OnDblClickgrdMembroDblClick
DataSourcedsMembroFilter.Criteria
       HideFocusRect		OptionsDBedgoCanNavigationedgoUseBookmarksedgoUseLocate OptionsViewedgoAutoWidthedgoBandHeaderWidthedgoDrawEndEllipsisedgoHideFocusRectedgoRowSelectedgoUseBitmap ShowGrid
ShowHeader TdxDBGridMaskColumngrdMembroUsuarioDisableEditor	ReadOnly	Width� 	BandIndex RowIndex 	FieldNameUsuario   	TdxDBGridgrdNaoMembroLeftYTopWidth� Height� Bands  DefaultLayout	HeaderPanelRowCountKeyFieldIDGrupoSummaryGroups SummarySeparator, TabOrder
OnDblClickgrdNaoMembroDblClick
DataSourcedsNaoMembroFilter.Criteria
       HideFocusRect		OptionsDBedgoCanNavigationedgoUseBookmarksedgoUseLocate OptionsViewedgoAutoWidthedgoBandHeaderWidthedgoDrawEndEllipsisedgoHideFocusRectedgoRowSelectedgoUseBitmap ShowGrid
ShowHeader TdxDBGridMaskColumngrdNaoMembroUsuarioWidth� 	BandIndex RowIndex 	FieldNameUsuario    	TTabSheettsEmpresaEspacoCaptionCompany TLabelLabel2LeftTopWidth4HeightCaption	Company :Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  	TdxDBGrid
grdEmpresaLeftTopWidthHeight� Bands  DefaultLayout	HeaderPanelRowCountKeyFieldIDGrupoSummaryGroups SummarySeparator, TabOrder 
DataSource	dsEmpresaFilter.Criteria
       HideFocusRect		OptionsDBedgoCanNavigationedgoUseBookmarksedgoUseLocate OptionsViewedgoAutoWidthedgoBandHeaderWidthedgoDrawEndEllipsisedgoHideFocusRectedgoUseBitmap ShowGrid
ShowHeader TdxDBGridCheckColumngrdEmpresaPermissaoWidth	BandIndex RowIndex 	FieldName	PermissaoValueCheckedTrueValueUncheckedFalse  TdxDBGridMaskColumngrdEmpresaEmpresaDisableEditor	ReadOnly	Width� 	BandIndex RowIndex 	FieldNameEmpresa      �	TsiLangRTsiLangStorageFileOM_SisGrupoFch.sil  �TDataSourcedsFormLeft�Top  �TPowerADOQueryquForm	AfterOpenquFormAfterOpenBeforeClosequFormBeforeClose
BeforePostquFormBeforePostCommandText~SELECT 
	G.IDGrupo,
	G.Grupo,
	G.Hidden,
	G.Desativado,
	G.System
FROM 
	Sis_Grupo G
WHERE 
	( G.IDGrupo = :IDGrupo )
ParametersNameIDGrupo
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left�Top/ TIntegerFieldquFormIDGrupo	FieldNameIDGrupoOriginSis_Grupo.IDGrupo  TStringFieldquFormGrupo	FieldNameGrupoOriginSis_Grupo.GrupoSize#  TBooleanFieldquFormHidden	FieldNameHiddenOriginSis_Grupo.Hidden  TBooleanFieldquFormDesativado	FieldName
DesativadoOriginSis_Grupo.Desativado  TBooleanFieldquFormSystem	FieldNameSystemOriginSis_Grupo.System   �TFormConfig
FormConfigPostOnInsert	AutoIncFieldIDGrupoRequiredFields.StringsGrupo DependentTables.StringsSis_GrupoMainMenu Sis_GrupoMainMenuPaginaSis_GrupoMainMenuOperacaoSis_GrupoEmpresa DependentTableKeys.StringsIDGrupoIDGrupoIDGrupoIDGrupo LeftFTop  �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 Left5Top#DockControlHeights       �
TImageListilSmallButtonsLeftTop-  �TPrintDialogPrintFchLeft5Top<  TRCADOQuery	quEmpresa
ConnectionDM.DBADOConnectionBeforeCloseAutoSave
BeforeEditquEmpresaBeforeEdit
ParametersNameIDGrupo
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT 	GE.IDGrupo,	GE.IDEmpresa,	GE.Empresa,	GE.PermissaoFROM 	dbo.vw_Sis_GrupoEmpresa GEWHERE 	GE.IDGrupo = :IDGrupo 	AND	GE.IDEmpresa <> 0  Left�Top�  TIntegerFieldquEmpresaIDGrupo	FieldNameIDGrupoOriginvw_Sis_GrupoEmpresa.IDGrupo  TIntegerFieldquEmpresaIDEmpresa	FieldName	IDEmpresaOriginvw_Sis_GrupoEmpresa.IDEmpresa  TStringFieldquEmpresaEmpresa	FieldNameEmpresaOriginvw_Sis_GrupoEmpresa.EmpresaSize#  TBooleanFieldquEmpresaPermissaoDisplayLabel 	FieldName	PermissaoOriginvw_Sis_GrupoEmpresa.Permissao   TDataSource	dsEmpresaDataSet	quEmpresaLeft�Top�   TRCADOQueryquMembro
ConnectionDM.DBADOConnection
ParametersNameIDGrupo
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT 	UG.IDGrupo,	UG.IDUsuario, "	U.CodSystemUser as CodigoUsuario,	U.SystemUser as UsuarioFROM 	dbo.Sis_UsuarioGrupo UG5	JOIN dbo.SystemUser U ON ( U.IDUser = UG.IDUsuario )WHERE 	UG.IDGrupo = :IDGrupo 	AND	U.Desativado = 0 	AND	U.Hidden = 0 	ORDER BY 	U.SystemUser Left2Top TIntegerFieldquMembroIDGrupo	FieldNameIDGrupoOriginSis_UsuarioGrupo.IDGrupo  TIntegerFieldquMembroIDUsuario	FieldName	IDUsuarioOriginSis_UsuarioGrupo.IDUsuario  TStringFieldquMembroCodigoUsuario	FieldNameCodigoUsuarioOriginSis_Usuario.CodigoUsuario  TStringFieldquMembroUsuario	FieldNameUsuarioOriginSis_Usuario.UsuarioSize#   TDataSourcedsMembroDataSetquMembroOnDataChangedsMembroDataChangeLeft2TopE  TRCADOQueryquNaoMembro
ConnectionDM.DBADOConnection
ParametersNameIDGrupoDataType	ftIntegerSize�Value   SQL.Strings
SELECT    	U.IDUser as IDUsuario,	U.SystemUser as Usuario FROM	SystemUser U 
WHERE     	U.Hidden = 0	AND	U.Desativado = 0	AND        NOT EXISTS   ()                       SELECT   IDUsuario0                       FROM     Sis_UsuarioGrupo2                       WHERE    IDGrupo = :IDGrupo#                                AND4                                IDUsuario = U.IDUser                     )
ORDER BY  	U.SystemUser Left�Top	 TIntegerFieldquNaoMembroIDUsuario	FieldName	IDUsuario  TStringFieldquNaoMembroUsuario	FieldNameUsuarioSize#   TDataSourcedsNaoMembroDataSetquNaoMembroOnDataChangedsNaoMembroDataChangeLeft�Top;   