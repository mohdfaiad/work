�
 TFINCONTACORRENTEFCH 0�.  TPF0�TFinContaCorrenteFchFinContaCorrenteFchLeft� ToppHelpContextCaptionFinContaCorrenteFchClientHeight�ClientWidth3OnClose	FormClosePixelsPerInch`
TextHeight �TPanelEspacamentoEsquerdoHeightTabOrder  �TPanelEspacamentoDireitoLeft0HeightTabOrder  �TPanelEspacamentoSuperiorWidth3TabOrder  �TPanelpnlEspacamentoInferirorTopkWidth3TabOrder  �TPanel	pnlPBarraTopoWidth3TabOrder �TPanelpnlPBarraRightAlignLeft&  �TPanel	pnlPLinhaWidth3   �TPanel
pnlPTituloWidth3TabOrder �TLabellblPTituloShadowWidth� CaptionConta Corrente  �TLabel
lblPTituloWidth� CaptionChecking Account  �TPanel
pnlAutoIncLeft   �TPanelpnlBottomAlignTop#Width3HeightHTabOrder  �TPanelpnlLeftSpaceHeightH  �TPanelpnlRightSpaceLeft0HeightH  �TPageControlPPageControlWidth-HeightH
ActivePage
tsCadastroOnChangePPageControlChange 	TTabSheet
tsCadastroCaptionRegister TLabelLabel1LeftRTopWidthHeight	AlignmenttaRightJustifyCaptionID :FocusControlDBEdit1  TLabelLabel2Left+Top&Width9Height	AlignmenttaRightJustifyCaptionAccount # :FocusControlDBEdit2  TLabelLabel3LeftFTop� WidthHeight	AlignmenttaRightJustifyCaptionBank :  TLabelLabel8LeftATop� Width#Height	AlignmenttaRightJustifyCaptionMemo :FocusControlDBEdit8  TLabelLabel9LeftTop� WidthIHeight	AlignmenttaRightJustifyCaptionOpening Date :  TLabelLabel4LeftETopDWidthHeight	AlignmenttaRightJustifyCaptionType :  TLabelLabel6Left0TopbWidth4Height	AlignmenttaRightJustifyCaption	Company :  TLabelLabel10Left� TopBWidthHeightCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	  TLabelLabel11Left� Top#WidthHeightCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	  TLabelLabel12Left� TopWidthHeightCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	  TLabelLabel13LefthTop`WidthHeightCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	  TLabelLabel5LeftiTopWidthHeightCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	  TLabellbOwnNumberLeftTopWidthUHeight	AlignmenttaRightJustifyCaptionInternal Number :FocusControlDBEdit6Visible  TLabelLabel15Left� TopWidth
Height	AlignmenttaRightJustifyCaption - FocusControlDBEdit6Visible  TLabellbBankBranchLeft"Top� WidthBHeight	AlignmenttaRightJustifyCaptionBank Branch :  TLabellbPortfolioNumLeft*Top� Width:Height	AlignmenttaRightJustifyCaptionPortfolio # :FocusControlDBEdit9  TDBEditDBEdit1LeftiTopWidth� Height	DataFieldCodigoContaCorrente
DataSourcedsFormTabOrder   TDBEditDBEdit2LeftiTop#Width� Height	DataFieldNumero
DataSourcedsFormTabOrder  TDBEditDBEdit8LeftiTop� Width� Height	DataFieldGerente
DataSourcedsFormTabOrder  TDBSuperComboADODBSuperCombo2LeftiTop_Width� HeightTabOrderTextDBSuperCombo2
CodeLength=LookUpSourceDM.dsLookUpEmpresaDropDownRowsShowEditCode		DataField	IDEmpresa
DataSourcedsForm  TDBSuperComboADOscBancoLeftiTop}Width� HeightTabOrderTextscBanco
CodeLength=LookUpSourceDM.dsLUBancoDropDownRowsShowEditCode		DataFieldIDBanco
DataSourcedsForm  TDBComboBoxcmbTipoLeftiTopAWidth� Height	DataFieldTipo
DataSourcedsForm
ItemHeightTabOrder  
TDBDateBox
DBDateBox1LeftiTop� Width� HeightReadOnlyTabOrder	DataFieldDataAbertura
DataSourcedsForm  TDBEditDBEdit6LeftiTopWidthQHeight	DataFieldNossoNumero
DataSourcedsFormTabOrderVisible  TDBEditDBEdit7Left� TopWidth2Height	DataFieldNossoNumeroDigito
DataSourcedsFormTabOrder	Visible  TDBSuperComboADOscBankAccountLeftiTop� Width� HeightTabOrderTextscBankAccount
CodeLength=LookUpSourceDM.dsLUBancoAgenciaDropDownRowsShowBtnAddNewShowBtnUpdateShowEditCode		DataFieldIDBancoAgencia
DataSourcedsForm  TDBEditDBEdit9LeftiTop� WidthQHeight	DataFieldCarteira
DataSourcedsFormTabOrder
   	TTabSheettsSaldoCaptionBalance TPanel	pnlFiltroLeft Top Width%HeightMAlignalTop
BevelOuterbvNoneTabOrder  TLabelLabel19Left� TopWidthpHeightAnchorsakTopakRight CaptionShow last days balanceVisible  TLabelLabel21LeftsTop;WidthJHeight	AlignmenttaRightJustifyAnchorsakTopakRight CaptionActual balance:FocusControlDBEdit3  TLabelLabel7LeftYTop#WidthdHeight	AlignmenttaRightJustifyAnchorsakTopakRight CaptionLast reconciled date:FocusControlDBEdit4  TLabelLabel14LeftLTop
WidthrHeight	AlignmenttaRightJustifyAnchorsakTopakRight CaptionLast reconciled amount:FocusControlDBEdit5  TEditspinDiaLeft� TopWidth&HeightAnchorsakTopakRight TabOrder Text0VisibleOnChangespinDiaChange  TDBEditDBEdit3TagLeft�Top8WidthXHeightAnchorsakTopakRight 	DataField
SaldoAtual
DataSourcedsFormParentColor	ReadOnly	TabOrder  	TCheckBoxcbValorLeftTopWidthaHeightCaptionShow AmountTabOrderVisibleOnClickcbValorClick  TUpDownudDiaLeft� TopWidthHeightAnchorsakTopakRight 	AssociatespinDiaMin Position TabOrderVisibleWrap  TDBEditDBEdit4TagLeft�TopWidthXHeightAnchorsakTopakRight 	DataFieldUltimaReconciliacao
DataSourcedsFormParentColor	ReadOnly	TabOrder  TDBEditDBEdit5TagLeft�TopWidthXHeightAnchorsakTopakRight 	DataFieldUltimoSaldoBancario
DataSourcedsFormParentColor	ReadOnly	TabOrder   TDBChartDBChart1Left� TopMWidth�Height� AnimatedZoom	BackImageInside	BackImageMode	pbmCenterBackWall.Brush.ColorclWhiteBackWall.Brush.StylebsClearGradient.EndColor��� Title.Text.StringsTDBChart Title.VisibleBottomAxis.DateTimeFormatdd/mmBottomAxis.Increment       ��?BottomAxis.LabelsAngleZLeftAxis.Axis.VisibleLeftAxis.ExactDateTimeLeftAxis.Increment       �@LeftAxis.TickLength Legend.AlignmentlaLeftLegend.VisibleScaleLastPageView3DView3DWallsAlignalClient
BevelOuterbvNoneTabOrder TLineSeriesSeries1Marks.ArrowLengthMarks.StylesmsValueMarks.Visible
DataSourcequSaldoSeriesColorclRedPointer.HorizSizePointer.InflateMarginsPointer.StylepsRectanglePointer.VertSizePointer.VisibleXValues.DateTime	XValues.NameXXValues.Multiplier       ��?XValues.OrderloAscendingXValues.ValueSourceDataYValues.DateTimeYValues.NameYYValues.Multiplier       ��?YValues.OrderloNoneYValues.ValueSourceSaldo   	TdxDBGridgrdValorLeft TopMWidth� Height� Bands  DefaultLayout	HeaderPanelRowCountKeyFieldDataSummaryGroups SummarySeparator, AlignalLeftTabOrderArrowsColorclBlue
DataSourcedsSaldoFilter.Criteria
       HeaderColor	cl3DLightLookAndFeellfFlatOptionsBehavioredgoAutoSortedgoDragScrolledgoEnterShowEditoredgoImmediateEditoredgoTabThroughedgoVertThrough 	OptionsDBedgoCancelOnExitedgoCanInsertedgoCanNavigationedgoLoadAllRecordsedgoUseBookmarks OptionsViewedgoAutoWidthedgoBandHeaderWidthedgoDrawEndEllipsisedgoRowSelectedgoUseBitmap ShowGrid TdxDBGridDateColumngrdValorDataCaptionDateWidthQ	BandIndex RowIndex 	FieldNameData  TdxDBGridMaskColumngrdValorSaldoCaptionBalanceWidthQ	BandIndex RowIndex 	FieldNameSaldo      �	TsiLangRTsiLangStorageFileOM_FinContaCorrenteFch.sil  �TDataSourcedsFormLeftTop  �TPowerADOQueryquForm	AfterOpenquFormAfterOpenOnNewRecordquFormNewRecordCommandText�  SELECT 
	CC.IDContaCorrente,
	CC.CodigoContaCorrente, 
	CC.IDMoeda,
	CC.IDCentroCusto, 
	CC.Tipo,
	CC.IDEmpresa,
	CC.Numero, 
	CC.Gerente,
	CC.DataAbertura,
	CC.OBS,
	CC.System, 
	CC.Desativado,
	CC.Hidden,
	CC.IDBanco, 
	CC.IDBancoAgencia, 
	CC.UltimaReconciliacao, 
	CC.UltimoSaldoBancario, 
	CC.SaldoAtual,
	CC.NossoNumero,
	CC.NossoNumeroDigito,
	CC.Carteira
FROM 
	Fin_ContaCorrente CC
WHERE 
	( CC.IDContaCorrente = :IDContaCorrente )
ParametersNameIDContaCorrente
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left$Top TIntegerFieldquFormIDContaCorrente	FieldNameIDContaCorrenteOrigin!Fin_ContaCorrente.IDContaCorrente  TStringFieldquFormCodigoContaCorrenteDisplayLabelID	FieldNameCodigoContaCorrenteOrigin%Fin_ContaCorrente.CodigoContaCorrenteRequired	  TStringFieldquFormNumeroDisplayLabel	Account #	FieldNameNumeroOrigin!Fin_ContaCorrente.IDContaCorrenteRequired	Size#  TStringField
quFormTipoDisplayLabelType	FieldNameTipoOriginFin_ContaCorrente.TipoRequired	  TIntegerFieldquFormIDEmpresaDisplayLabelCompany	FieldName	IDEmpresaOriginFin_ContaCorrente.IDEmpresaRequired	  TIntegerFieldquFormIDBancoDisplayLabelBank	FieldNameIDBancoOrigin!Fin_ContaCorrente.IDContaCorrenteRequired	  TStringFieldquFormGerente	FieldNameGerenteOriginFin_ContaCorrente.GerenteSize#  TDateTimeFieldquFormDataAbertura	FieldNameDataAberturaOriginFin_ContaCorrente.DataAbertura  
TMemoField	quFormOBS	FieldNameOBSOriginFin_ContaCorrente.OBSBlobTypeftMemo  TBooleanFieldquFormSystem	FieldNameSystemOriginFin_ContaCorrente.System  TBooleanFieldquFormDesativado	FieldName
DesativadoOriginFin_ContaCorrente.Desativado  TBooleanFieldquFormHidden	FieldNameHiddenOriginFin_ContaCorrente.Hidden  TFloatFieldquFormSaldoAtual	FieldName
SaldoAtualOrigin!Fin_ContaCorrente.IDContaCorrenteDisplayFormat#,##0.00  TDateTimeFieldquFormUltimaReconciliacao	FieldNameUltimaReconciliacaoDisplayFormatddddd  	TBCDFieldquFormUltimoSaldoBancario	FieldNameUltimoSaldoBancarioDisplayFormat#,##0.00	Precision  TStringFieldquFormNossoNumero	FieldNameNossoNumero  TStringFieldquFormNossoNumeroDigito	FieldNameNossoNumeroDigito	FixedChar	Size  TIntegerFieldquFormIDBancoAgencia	FieldNameIDBancoAgencia  TStringFieldquFormCarteira	FieldNameCarteiraSize
   �TFormConfig
FormConfigAutoCodeGenAutoIncFieldIDContaCorrenteUniqueFields.StringsCodigoContaCorrenteNumero Left�TopE  �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 LeftZTopdDockControlHeights       �
TImageListilSmallButtonsLeft� Topn  �TPrintDialogPrintFchLeft� Top�   	TADOQueryquSaldo
ConnectionDM.DBADOConnection
ParametersNameIDContaCorrente
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NamePeriodo
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT 	CCS.IDContaCorrente,
	CCS.Data,
	CCS.SaldoFROM 	dbo.Fin_ContaCorrenteSaldo CCSWHERE '	CCS.IDContaCorrente = :IDContaCorrente	AND.	DateDiff(day, CCS.Data, GetDate()) < :Periodo	ORDER BY 	CCS.Data Desc Left�Top�  TDateTimeFieldquSaldoDataDisplayWidth
	FieldNameDataOriginFin_ContaCorrenteSaldo.DataDisplayFormatd mmm yy  TFloatFieldquSaldoSaldoDisplayWidth
	FieldNameSaldoOriginFin_ContaCorrenteSaldo.SaldoDisplayFormat#,##0.00  TIntegerFieldquSaldoIDContaCorrenteDisplayWidth
	FieldNameIDContaCorrenteOrigin&Fin_ContaCorrenteSaldo.IDContaCorrenteVisible   TDataSourcedsSaldoDataSetquSaldoLeftfTop�    