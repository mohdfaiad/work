�
 TFINDOCUMENTOTIPOFCH 0�  TPF0�TFinDocumentoTipoFchFinDocumentoTipoFchLeftIToprHelpContext"CaptionFinDocumentoTipoFchClientHeight~ClientWidthPixelsPerInch`
TextHeight �TPanelEspacamentoEsquerdoHeight  �TPanelEspacamentoDireitoLeftHeight  �TPanelEspacamentoSuperiorWidth  �TPanelpnlEspacamentoInferirorTopTWidth  �TPanel	pnlPBarraTopYWidthTabOrder �TPanelpnlPBarraRightAlignLeft�   �TPanel	pnlPLinhaWidth   �TPanel
pnlPTituloWidth �TLabellblPTituloShadowWidth� CaptionTipo de Documento  �TLabel
lblPTituloWidth� CaptionType of Document  �TPanel
pnlAutoIncLeft�   �TPanelpnlBottomAlignTop%WidthHeight/TabOrder �TPanelpnlRightSpaceLeftHeight/  �TPanelpnlLeftSpaceHeight/  �TPageControlPPageControlWidth�Height/
ActivePage
tsCadastro � 	TTabSheet
tsCadastroCaptionRegistration TLabelLabel2LeftOTop5Width<Height	AlignmenttaRightJustifyCaptionDescription :FocusControlDBEdit2  TLabelLabel12Left�Top3WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  TLabelLabel4Left"TopWidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  TLabelLabel1LeftyTopWidthHeight	AlignmenttaRightJustifyCaptionID :FocusControlDBEdit1  TLabelLabel5LeftATopXWidthLHeight	AlignmenttaRightJustifyCaptionDoc. Identifier :FocusControlDBEdit3  TLabelLabel6Left,TopWWidth� HeightAutoSizeCaptionLeave blank if not known.Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameTahoma
Font.Style 
ParentFontWordWrap	  TDBEditDBEdit2Left� Top2Width� Height	DataFieldDocumentoTipo
DataSourcedsFormTabOrder  TDBEditDBEdit1Left� TopWidth� Height	DataFieldCodigoDocumentoTipo
DataSourcedsFormTabOrder   TDBEditDBEdit3Left� TopUWidth� Height	DataFieldIdentificadorDocumento
DataSourcedsFormTabOrder  TDBCheckBoxDBCheckBox2Left� TopuWidth� HeightCaptionDocument number required	DataFieldNumDocumentoObrigatorio
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalseOnClickcbPossuiDesdobramentoClick  	TGroupBox	GroupBox1Left
Top� Width�HeighteCaption Disbursements config TabOrder TLabelLabel8LeftTopGWidthrHeight	AlignmenttaRightJustifyCaptionDefault disbursements :  TDBCheckBoxcbPossuiDesdobramentoLeft� TopWidthHeightCaption+Document type has one or more disbursements	DataFieldPossuiDesdobramento
DataSourcedsFormTabOrder ValueCheckedTrueValueUncheckedFalseOnClickcbPossuiDesdobramentoClick  TDBCheckBoxDBCheckBox1Left� Top(Width� HeightCaptionDisbursement required	DataFieldDesdobramentoObrigatorio
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalse  TDBSuperComboADOscDesdobramentoTipoLeft� TopDWidth� HeightTabOrderTextscDesdobramentoTipoLookUpSourceDM.dsLUDesdobramentoTipoDropDownRows	DataFieldIDDesdobramentoTipoDefault
DataSourcedsForm   TDBCheckBoxDBCheckBox3Left� Top� Width� HeightCaptionIssue date required	DataFieldDataEmissaoObrigatoria
DataSourcedsFormTabOrderValueCheckedTrueValueUncheckedFalse   �	TTabSheettsBrowseCaptionDisbursements �TPanelpnlBrwWidth�Height �TPanel	pnlBrwCmdLeft�Height�  �TImageImgTrashTop�   �TImage	imgFolderTop�    �TPanelpnlBrwTitleTopWidth�  �TPanelpnlBrwTitleWidth�Caption  Disbursement types  �	TdxDBGrid	grbFchBrwWidth�Height� KeyFieldIDDocumentoTipoFilter.Criteria
        TdxDBGridMaskColumn grbFchBrwCodigoDesdobramentoTipoCaptionIDWidth� 	BandIndex RowIndex 	FieldNameCodigoDesdobramentoTipo  TdxDBGridMaskColumngrbFchBrwDesdobramentoTipoCaptionDescriptionWidth� 	BandIndex RowIndex 	FieldNameDesdobramentoTipo   �TPanelpnlBrwTitleBottonTopWidth�  �TPanelpnlBrwEspacoEsquerdoHeight�       �	TsiLangRTsiLangStorageFileOM_FinDocumentoTipoFch.sil  �TDataSourcedsFormLeft� Top  �TPowerADOQueryquForm
BeforePostquFormBeforePostOnNewRecordquFormNewRecordCommandTextZ  SELECT 
	DT.IDDocumentoTipo,
	DT.CodigoDocumentoTipo , 
	DT.DocumentoTipo,
	DT.IdentificadorDocumento , 
	DT.PossuiDesdobramento , 
	DT.IDDesdobramentoTipoDefault , 
	DT.DataEmissaoObrigatoria , 
	DT.NumDocumentoObrigatorio , 
	DT.DesdobramentoObrigatorio
FROM 
	Fin_DocumentoTipo DT
WHERE 
	( DT.IDDocumentoTipo = :IDDocumentoTipo )
ParametersNameIDDocumentoTipo
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Top  TIntegerFieldquFormIDDocumentoTipo	FieldNameIDDocumentoTipoOrigin!Fin_DocumentoTipo.IDDocumentoTipo  TStringFieldquFormCodigoDocumentoTipo	FieldNameCodigoDocumentoTipoOrigin%Fin_DocumentoTipo.CodigoDocumentoTipo  TStringFieldquFormDocumentoTipo	FieldNameDocumentoTipoOriginFin_DocumentoTipo.DocumentoTipoSize#  TStringFieldquFormIdentificadorDocumento	FieldNameIdentificadorDocumentoOrigin!Fin_DocumentoTipo.IDDocumentoTipo  TBooleanFieldquFormPossuiDesdobramento	FieldNamePossuiDesdobramentoOrigin!Fin_DocumentoTipo.IDDocumentoTipo  TIntegerField quFormIDDesdobramentoTipoDefault	FieldNameIDDesdobramentoTipoDefaultOrigin!Fin_DocumentoTipo.IDDocumentoTipo  TBooleanFieldquFormDataEmissaoObrigatoria	FieldNameDataEmissaoObrigatoriaOrigin(Fin_DocumentoTipo.DataEmissaoObrigatoria  TBooleanFieldquFormNumDocumentoObrigatorio	FieldNameNumDocumentoObrigatorioOrigin)Fin_DocumentoTipo.NumDocumentoObrigatorio  TBooleanFieldquFormDesdobramentoObrigatorio	FieldNameDesdobramentoObrigatorioOrigin*Fin_DocumentoTipo.DesdobramentoObrigatorio   �TFormConfig
FormConfigAutoIncFieldIDDocumentoTipoDependentTables.StringsFin_DesdobramentoTipo DependentTableKeys.StringsIDDocumentoTipo LeftxTop  �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 LeftTopDockControlHeights       �
TImageListilSmallButtonsLeft�Top
  �TPrintDialogPrintFchLeftTopA  �TBrowseConfigFormBrwConfigLeft�Top  �TPowerADOQueryquFchBrwCommandText�SELECT 
	DT.IDDesdobramentoTipo,
	DT.IDDocumentoTipo, 
	DT.DesdobramentoTipo, 
	DT.CodigoDesdobramentoTipo
FROM 
	dbo.Fin_DesdobramentoTipo DT
WHERE 
	( DT.IDDocumentoTipo = :IDDocumentoTipo )
ParametersNameIDDocumentoTipo
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Top TIntegerFieldquFchBrwIDDesdobramentoTipo	FieldNameIDDesdobramentoTipoOrigin)Fin_DesdobramentoTipo.IDDesdobramentoTipo  TIntegerFieldquFchBrwIDDocumentoTipo	FieldNameIDDocumentoTipoOrigin%Fin_DesdobramentoTipo.IDDocumentoTipo  TStringFieldquFchBrwDesdobramentoTipoDisplayLabel	Descri��o	FieldNameDesdobramentoTipoOrigin'Fin_DesdobramentoTipo.DesdobramentoTipoSize#  TStringFieldquFchBrwCodigoDesdobramentoTipoDisplayLabelC�digo	FieldNameCodigoDesdobramentoTipoOrigin-Fin_DesdobramentoTipo.CodigoDesdobramentoTipo   �TDataSourcedsFchBrwLeft@Top   