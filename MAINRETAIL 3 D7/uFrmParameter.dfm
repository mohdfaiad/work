�
 TFRMPARAMETER 0'  TPF0�TFrmParameterFrmParameterLeft�Top=Width4Height!VertScrollBar.Range BorderStylebsDialogCaptionFrmParameterOnClose	FormClosePixelsPerInch`
TextHeight �TPanelPanel2Width, � TImageImage3Height%  �TImage	imgTopIniHeight%  �TImageImage1WidthIHeight%  �TLabellblMenuLeftX  �TLabelEffect
lblSubMenu  �TImageimgMenu  �TPanelEspacamentoSuperiorTop%Width,Height �TPanelEEEWidth,    �TPanelPanel1Top�Width, �TPanelEspacamentoInferiorWidth, �TPanelPanel3Width,   �TPanelhhhLeft�Width�  � TSpeedButtonspHelpTagLeftTopWidthFHeightCaption&Help
Glyph.Data
    BM      6   (               �  �  �          � �� �� �� �� �� ���������������������������ƭ��� �� �� �� �� �� �  � �� �� �� �������������������־�־���������������ƭ��� �� �� �� �  � �� �� �������������֢��yR�e9�]1�Y)�]1�mJƖ���������ֵ��� �� �� �  � �� �����������í�}R�m9�mB�mB�}c�yc�]1�Y)�U!�a9Φ�������ƾ�� �� �  � �����������í�}J�R�R�yJΞ������ֵ�s�])�a1�Y)�U)Ζ{������ƶ�� �  � �����������R�Z�c�Z�}R޶������絎{�]1�a1�a1�]1�U)Φ�������� �  �����������s�Z�c�c�c�ZކZ΢�����mB�e9�a1�a1�a1�Y)�a9���������  �������ӽ��Z��c��c�c�Z�Rޒk֮�Ɩ��qJ�e9�e9�a1�a1�a1�U!Ζ�������  �����������c��c��c�c�Z�R箜�����޽}c�e1�e9�a1�a1�a1�Y)�qJ������  ��������s��k��c��c�c�Z�Rު������ֽ�s�a1�e9�a1�a1�a1�]1�a1������  ��������s��k��c��c�c�Z�Rގk��������Ƶ�c�a1�a1�a1�a1�]1�a1�ǽ���  ��������{��k��c��c�c�Z�R�yJ֞���������ε�k�]1�a1�a1�]1�a1�ǽ���  �����������k��k��c�Z�R�}J�}J�mBΆc��������ƵmJ�a1�a1�]1�e9������  �������Ü��k��k��c碄綥֢��}R�uJ�e1֒s�����޵�s�Y)�a1�Y)�yR������  �����������s��k��c纥������ƒ{�m9�e1Άc�����筊{�Y)�a1�U)΢���罺�  ��������������k��k���������ƞ�Ɩ��ý�����έqZ�])�Y)�mB������� �  � ������������{��s��k羭�����������������ޭ���]1�])�])ֶ���罾�� �  � �� ���������������s��k箔��������ֽ����{�a9�Y)�]1֮�������� �� �  � �� ��������������Ü��s��c�Z΂c�yR�i9�Y)�])�yR־�������� �� �� �  � �� �� �����������������ǭ��{�c�}R�}ZΒsֶ����������� �� �� �� �  � �� �� �� �� ���������������������������������ֽ��� �� �� �� �� �  � �� �� �� �� �� ������������������������Ƶ��� �� �� �� �� �� �� �  MarginVisibleOnClickspHelpClick  �TButtonbtCloseLeftRWidthFCaptionDoneOnClickbtCloseClick    �TPanelEspacamentoEsquerdoWidth HeightsTabOrderVisible  �TPanelEspacamentoDireitoLeft,Width HeightsTabOrderVisible  �TDBMemomemoDescriptionLeft Top�Width,HeightBAlignalBottomColorclSilver	DataFieldDescription
DataSourcedsParam
ScrollBars
ssVerticalTabOrder  �TcxGridgrdParameterLeft Top(Width,HeightsAlignalClientTabOrderLookAndFeel.KindlfFlat TcxGridDBTableViewgrdParameterDBTVDataController.DataSourcedsParamDataController.Filter.Criteria
	   ����     /DataController.Summary.DefaultGroupSummaryItems )DataController.Summary.FooterSummaryItems $DataController.Summary.SummaryGroups  OptionsCustomize.ColumnFilteringOptionsData.DeletingOptionsData.InsertingOptionsView.ColumnAutoWidth	OptionsView.GroupByBox TcxGridDBColumngrdParameterDBTVIDParamDataBinding.FieldNameIDParamWidth  TcxGridDBColumngrdParameterDBTVSrvParameterDataBinding.FieldNameSrvParameterOptions.EditingOptions.FocusingWidth  TcxGridDBColumngrdParameterDBTVDefaultValueDataBinding.FieldNameDefaultValueOptions.EditingOptions.FocusingWidth{  TcxGridDBColumngrdParameterDBTVSrvValueDataBinding.FieldNameSrvValueWidth~  TcxGridDBColumngrdParameterDBMenuNameDataBinding.FieldNameMenuNameVisible
GroupIndex 	SortOrdersoAscending   TcxGridLevelgrdParameterLevelGridViewgrdParameterDBTV   �	TsiLangRTsiLangStorageFileMR_FrmParameter.sil  TDataSourcedsParamDataSetquParamLeft� Top�   	TADOQueryquParam
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersName
IDLanguage
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameMIDLanguage
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT	P.IDParam,	PL.SrvParameter,	PL.Description,	P.SrvValue,	P.SrvType,	P.DefaultValue,D	(CAST(MIL.IDMenu as varchar(2)) + ' - ' + MIL.MenuName) as MenuNameFROM	Param P2	JOIN ParamLanguage PL ON (P.IDParam = PL.IDParam)+	JOIN MenuMain MI ON (P.IDMenu = MI.IDMenu)6	JOIN MenuMainLanguage MIL ON (MI.IDMenu = MIL.IDMenu)WHERE	PL.IDLanguage = :IDLanguage	AND 	P.Desativado = 0	AND	MIL.IDLanguage = :MIDLanguage Left� Topq TStringFieldquParamSrvParameterDisplayWidth(	FieldNameSrvParameterReadOnly	Size(  TStringFieldquParamSrvValueDisplayWidth	FieldNameSrvValue
OnValidatequParamSrvValueValidateSize  TStringFieldquParamDefaultValueDisplayWidth	FieldNameDefaultValueReadOnly	Size  TStringFieldquParamDescriptionDisplayWidth� 	FieldNameDescriptionReadOnly	VisibleSize�   TStringFieldquParamSrvType	FieldNameSrvTypeReadOnly	Size
  TStringFieldquParamMenuName	FieldNameMenuNameSize  TIntegerFieldquParamIDParamDisplayLabelID	FieldNameIDParam    