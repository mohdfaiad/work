�
 TFINLANCAMENTOTIPOTREEFCH 0�  TPF0�TFinLancamentoTipoTreeFchFinLancamentoTipoTreeFchLeftcTop� CaptionFinLancamentoTipoTreeFchClientHeight�ClientWidthCPixelsPerInch`
TextHeight �	TSplitterspliterFichaLeftoHeightX  �TPanelEspacamentoEsquerdoHeightX  �TPanelEspacamentoDireitoLefttHeightX  �TPanelEspacamentoSuperiorWidthC �TImageimgOffLeft��  �TImageimgOnLeft�    �TPanelpnlEspacamentoInferirorTop�WidthC  �TPanelpnlFichaLeftwWidth� HeightX TLabelLabel3LeftTop2WidthuHeightCaptionChart of account name :FocusControlDBEdit4  TLabelLabel2LeftTopWidthhHeightCaptionChart of accounts # :FocusControlDBEdit2  TDBEditDBEdit4LeftTopAWidth� Height	DataFieldLancamentoTipo
DataSource
dsTreeViewTabOrder   TDBEditDBEdit2LeftTopWidth� Height	DataFieldCodigoContabil
DataSource
dsTreeViewTabOrder  TDBRadioGrouprgTipoLeftTop� Width� Height8	DataFieldPagando
DataSource
dsTreeViewItems.StringsCreditDebit TabOrderValues.StringsFalseTrue   TDBRadioGroupDBRadioGroup1LeftTop_Width� Height8	DataField	Sintetico
DataSource
dsTreeViewItems.StringsDetailed accountSummary account TabOrderValues.StringsFalseTrue   TDBGridDBGrid1Left Top� Width� HeightxAlignalBottom
DataSource
dsTreeViewTabOrderTitleFont.CharsetANSI_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style Visible   �TdxDBTreeViewtvMainWidthkHeightXDisplayFieldCodigoContabil; LancamentoTipoKeyFieldIDLancamentoTipo	ListFieldLancamentoTipoParentFieldIDLancamentoTipoParentImagesilSmallButtons  �	TsiLangRTsiLangStorageFileOM_FinLancamentoTipoTreeFch.sil  �TdxBarManagerbmMDIBarsCaptionTreeDockedDockingStyledsTop
DockedLeft 	DockedTop DockingStyledsTop	FloatLeft�FloatTopFloatClientWidthFloatClientHeightB	ItemLinksItem
bbNovoItemUserGlyph.Data
       Visible	 ItembbNovoSubItemUserGlyph.Data
       Visible	 ItembbRemoveItemUserGlyph.Data
       Visible	 ItembtPrintUserGlyph.Data
       Visible	  OneOnRow	Row 
UseOwnFontVisible	WholeRow	  Categories.ItemsVisibles Categories.Visibles	 DockControlHeights      �	TADOQuery
quTreeViewSQL.StringsSELECT 	LT.IDLancamentoTipo, 	LT.IDLancamentoTipoParent, 	LT.LancamentoTipo, 	LT.IDPessoa,	LT.IDPessoaTipo, 	LT.IDContaCorrenteDefault,	LT.Pagando,	LT.System, 	LT.Hidden,	LT.Desativado,	LT.PermitePessoaNula, 	LT.SugerePessoa,	LT.PessoaFixa, 	LT.SugereContaCorrente, 	LT.ContaCorrenteFixa,	LT.CodigoContabil, 	LT.SinteticoFROM 	dbo.Fin_LancamentoTipo LTORDER BY	LT.IDLancamentoTipoParent Left"Top�  � TIntegerFieldquTreeViewSelectedIndex  �TIntegerFieldquTreeViewImageIndex   �	TADOTableTblTreeViewsIndexFieldNamesIDLancamentoTipo	TableNamedbo.Fin_LancamentoTipoLeft_ TIntegerFieldTblTreeViewsIDLancamentoTipo	FieldNameIDLancamentoTipoRequired	  TStringFieldTblTreeViewsLancamentoTipo	FieldNameLancamentoTipoSizeA  TIntegerFieldTblTreeViewsIDPessoa	FieldNameIDPessoa  TIntegerFieldTblTreeViewsIDPessoaTipo	FieldNameIDPessoaTipo  TStringFieldTblTreeViewsPath	FieldNamePathSize�   TStringFieldTblTreeViewsPathName	FieldNamePathNameSize�   TIntegerField"TblTreeViewsIDContaCorrenteDefault	FieldNameIDContaCorrenteDefault  TBooleanFieldTblTreeViewsPagando	FieldNamePagando  TBooleanFieldTblTreeViewsSystem	FieldNameSystem  TBooleanFieldTblTreeViewsHidden	FieldNameHidden  TBooleanFieldTblTreeViewsDesativado	FieldName
Desativado  TBooleanFieldTblTreeViewsPermitePessoaNula	FieldNamePermitePessoaNula  TBooleanFieldTblTreeViewsSugerePessoa	FieldNameSugerePessoa  TBooleanFieldTblTreeViewsPessoaFixa	FieldName
PessoaFixa  TBooleanFieldTblTreeViewsSugereContaCorrente	FieldNameSugereContaCorrente  TBooleanFieldTblTreeViewsContaCorrenteFixa	FieldNameContaCorrenteFixa  TStringFieldTblTreeViewsCodigoContabil	FieldNameCodigoContabilSize#  TBooleanFieldTblTreeViewsSintetico	FieldName	Sintetico  TIntegerField"TblTreeViewsIDLancamentoTipoParent	FieldNameIDLancamentoTipoParent    