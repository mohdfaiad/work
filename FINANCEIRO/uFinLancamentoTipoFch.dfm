�
 TFINLANCAMENTOTIPOFCH 0h  TPF0�TFinLancamentoTipoFchFinLancamentoTipoFchLeftATop� HelpContext$CaptionFinLancamentoTipoFchClientHeightVClientWidth�PixelsPerInch`
TextHeight �TPanelEspacamentoEsquerdoHeight	  �TPanelEspacamentoDireitoLeft~Height	  �TPanelEspacamentoSuperiorWidth�  �TPanelpnlEspacamentoInferirorTop+Width�  �TPanel	pnlPBarraTop1Width� �TPanelpnlPBarraRightAlignLeftt  �TPanel	pnlPLinhaWidth�  �TPanelpnlNavigation �TLabellblNavegacaoCaption
Navigation    �TPanel
pnlPTituloWidth� �TLabellblPTituloShadowWidth� CaptionRecord Type  �TLabel
lblPTituloWidth� CaptionRecord Type  �TPanel
pnlAutoIncLeft_   �TPageControlPPageControlLeftTop"Width{Height	
ActivePage
tsCadastroAlignalClientTabOrder 	TTabSheet
tsCadastroCaptionRegistration TLabelLabel2Left	Top7Width HeightCaptionCode :FocusControlDBEdit2  TLabelLabel3Left	TopfWidth<HeightCaptionDescription :FocusControlDBEdit4  TLabelLabel7Left� TopGWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  TLabelLabel5LeftSTopvWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  TLabellbGroupLeftTopWidth$HeightCaptionGroup :FocusControlDBEdit1  TDBEditDBEdit2Left
TopFWidth� Height	DataFieldCodigoContabil
DataSourcedsFormTabOrder  TDBRadioGrouprgTipoLeftTop� Width� Height8CaptionModule	DataFieldPagando
DataSourcedsFormItems.StringsAccount receivableAccount payable TabOrderValues.StringsFalseTrue OnChangergTipoChange  TDBRadioGroupDBRadioGroup1LeftTop'WidthYHeight8	DataField	Sintetico
DataSourcedsFormItems.Strings	Anal�tica	Sint�tica TabOrderValues.StringsFalseTrue VisibleOnChangergTipoChange  TDBEditDBEdit4Left
TopuWidthKHeight	DataFieldLancamentoTipo
DataSourcedsFormTabOrder  TDBEditDBEdit1Left	TopWidth� Height	DataFieldPath
DataSourcedsFormTabOrder    	TTabSheettsLancamentoCaptionRecord's default values 	TGroupBox	GroupBox1Left Top WidthsHeight� AlignalClientCaption5Action occur when including new record of this type :TabOrder  TLabelLabel1LeftTop1Width7Height	AlignmenttaRightJustifyCaptionEntity Type  TLabelLabel4LeftTopOWidth:Height	AlignmenttaRightJustifyCaptionEntity Name  TDBCheckBoxcbSugerePessoaLeft
TopWidth� HeightCaption#Sugere automaticamento o RUN TIME :	DataFieldSugerePessoa
DataSourcedsFormTabOrder ValueCheckedTrueValueUncheckedFalseOnClickcbSugerePessoaClick  TDBCheckBox
cbSugereCCLeft
TopsWidth� HeightCaptionAuto fill account	DataFieldSugereContaCorrente
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalseOnClickcbSugereCCClick  TDBSuperComboADOscCCLeftWTop� Width� HeightTabOrderTextscCC
CodeLengthFLookUpSourceDM.dsLUContaCorrenteDropDownRows	DataFieldIDContaCorrenteDefault
DataSourcedsForm  TDBSuperComboADOscPessoaLeftWTopKWidth� HeightTabOrderTextscPessoa
CodeLengthFLookUpSourceDM.dsLUPessoaDropDownRows	DataFieldIDPessoa
DataSourcedsForm  TPanelPanel1LeftTopiWidthcHeight
BevelOuter	bvLoweredTabOrder  TDBSuperComboADOscPessoaTipoLeftWTop-Width� HeightTabOrderTextscPessoaTipo
CodeLengthFLookUpSourceDM.dsLUPessoaTipoDropDownRowsShowBtnAddNewShowBtnUpdateOnSelectItemscPessoaTipoSelectItem	DataFieldIDPessoaTipo
DataSourcedsForm  TPanelPanel2LeftTop� WidthcHeight
BevelOuter	bvLoweredTabOrder  TDBCheckBoxcbSugereCentroCustoLeft
Top� Width� HeightCaptionAuto fill cost center	DataFieldSugereCentroCusto
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalseOnClickcbSugereCentroCustoClick  TDBSuperComboADOscCentroCustoLeftWTop� Width� HeightTabOrderTextscCentroCusto
CodeLengthFLookUpSourceDM.dsLUCentroCustoDropDownRows	DataFieldIDCentroCusto
DataSourcedsForm     �	TsiLangRTsiLangStorageFileOM_FinLancamentoTipoFch.sil  �TDataSourcedsFormLeft� Top�   �TPowerADOQueryquForm	AfterOpenquFormAfterOpenCommandText�  SELECT 
	LT.IDLancamentoTipo, 
	LT.IDContaCorrenteDefault, 
	LT.CodigoContabil,
	LT.Sintetico, 
	LT.SugereContaCorrente, 
	LT.ContaCorrenteFixa,
	LT.LancamentoTipo,
	LT.Path, 
	LT.PathName,
	LT.PermitePessoaNula, 
	LT.SugerePessoa,
	LT.PessoaFixa,
	LT.System, 
	LT.Hidden, 
	LT.Desativado,
	LT.Pagando,
	LT.IDPessoa , 
	LT.IDPessoaTipo,
	LT.SugereCentroCusto,
	LT.IDCentroCusto
FROM 
	Fin_LancamentoTipo LT
WHERE 
	( LT.IDLancamentoTipo = :IDLancamentoTipo )
ParametersNameIDLancamentoTipo
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LefteTop�  TIntegerFieldquFormIDLancamentoTipo	FieldNameIDLancamentoTipoOrigin#Fin_LancamentoTipo.IDLancamentoTipo  TIntegerFieldquFormIDContaCorrenteDefault	FieldNameIDContaCorrenteDefaultOrigin)Fin_LancamentoTipo.IDContaCorrenteDefault  TStringFieldquFormCodigoContabilDisplayLabelCode	FieldNameCodigoContabilOrigin#Fin_LancamentoTipo.IDLancamentoTipoRequired	Size#  TStringFieldquFormLancamentoTipoDisplayLabelDescription	FieldNameLancamentoTipoOrigin#Fin_LancamentoTipo.IDLancamentoTipoRequired	SizeA  TStringField
quFormPath	FieldNamePathOriginFin_LancamentoTipo.PathSize�   TStringFieldquFormPathName	FieldNamePathNameOriginFin_LancamentoTipo.PathNameSize�   TBooleanFieldquFormSystem	FieldNameSystemOriginFin_LancamentoTipo.System  TBooleanFieldquFormHidden	FieldNameHiddenOriginFin_LancamentoTipo.Hidden  TBooleanFieldquFormDesativado	FieldName
DesativadoOriginFin_LancamentoTipo.Desativado  TBooleanFieldquFormPagando	FieldNamePagandoOrigin#Fin_LancamentoTipo.IDLancamentoTipo  TBooleanFieldquFormPermitePessoaNula	FieldNamePermitePessoaNulaOrigin#Fin_LancamentoTipo.IDLancamentoTipo  TBooleanFieldquFormSugerePessoa	FieldNameSugerePessoaOrigin)Fin_LancamentoTipo.IDContaCorrenteDefault  TBooleanFieldquFormPessoaFixa	FieldName
PessoaFixaOrigin!Fin_LancamentoTipo.LancamentoTipo  TIntegerFieldquFormIDPessoa	FieldNameIDPessoaOriginFin_LancamentoTipo.Path  TBooleanFieldquFormSugereContaCorrente	FieldNameSugereContaCorrenteOrigin#Fin_LancamentoTipo.IDLancamentoTipo  TBooleanFieldquFormContaCorrenteFixa	FieldNameContaCorrenteFixaOrigin)Fin_LancamentoTipo.IDContaCorrenteDefault  TIntegerFieldquFormIDPessoaTipo	FieldNameIDPessoaTipoOrigin#Fin_LancamentoTipo.IDLancamentoTipo  TBooleanFieldquFormSintetico	FieldName	SinteticoOrigin)Fin_LancamentoTipo.IDContaCorrenteDefault  TBooleanFieldquFormSugereCentroCusto	FieldNameSugereCentroCusto  TIntegerFieldquFormIDCentroCusto	FieldNameIDCentroCusto   �TFormConfig
FormConfigSystemReadOnlyAutoIncFieldIDLancamentoTipoUniqueFields.StringsCodigoContabilLancamentoTipo Left+Top  �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 Left� Top� DockControlHeights       �
TImageListilSmallButtonsLeft� Top  �TPrintDialogPrintFchLeft� Top�    