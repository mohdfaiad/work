�
 TFINBANCOAGENCIAFCH 0|  TPF0�TFinBancoAgenciaFchFinBancoAgenciaFchLeftuTop� HelpContextCaptionFinBancoAgenciaFchClientHeightClientWidth�PixelsPerInch`
TextHeight � TLabelLabel1Left&Top:Width9Height	AlignmenttaRightJustifyCaptionBranche ID:FocusControlDBEdit1  �TLabelLabel2Left#Top]Width<Height	AlignmenttaRightJustifyCaptionDescription :FocusControlDBEdit2  �TLabelLabel3Left1Top� Width.Height	AlignmenttaRightJustifyCaption	Address :FocusControlDBEdit3  �TLabelLabel4LeftETop� WidthHeight	AlignmenttaRightJustifyCaptionCity :FocusControlDBEdit4  �TLabelLabel5LeftATop� WidthHeight	AlignmenttaRightJustifyCaptionBank :FocusControlDBEdit3  �TLabelLabel7Left� Top8WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel6Left_Top[WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TLabelLabel8Left_Top~WidthHeight	AlignmenttaCenterAutoSizeCaption*Font.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFontParentShowHintShowHint	Transparent	  �TPanelEspacamentoEsquerdoHeight� TabOrder  �TPanelEspacamentoDireitoLeft�Height� TabOrder  �TPanelEspacamentoSuperiorWidth�TabOrder  �TPanelpnlEspacamentoInferirorTop� Width�TabOrder  �TPanel	pnlPBarraTop� Width�TabOrder	 �TPanelpnlPBarraRightAlignLeft�   �TPanel	pnlPLinhaWidth�   �TPanel
pnlPTituloWidth�TabOrder
 �TLabellblPTituloShadowWidth� CaptionBank Branches  �TLabel
lblPTituloLeft	Width� CaptionBank Branches  �TPanel
pnlAutoIncLeft�   �TDBEditDBEdit1LeftdTop7Width� Height	DataFieldCodigoBancoAgencia
DataSourcedsFormTabOrder   �TDBEditDBEdit2LeftdTopZWidth� Height	DataFieldBancoAgencia
DataSourcedsFormTabOrder  �TDBEditDBEdit3LeftdTop� WidthbHeight	DataFieldEndereco
DataSourcedsFormTabOrder  �TDBEditDBEdit4LeftdTop� Width� Height	DataFieldBairro
DataSourcedsFormTabOrder  �TDBSuperComboADODBSuperCombo1LeftdTop}Width� HeightTabOrderTextDBSuperCombo1
CodeLengthFLookUpSourceDM.dsLUBancoDropDownRowsShowEditCode		DataFieldIDBanco
DataSourcedsForm  �	TsiLangRTsiLangStorageFileOM_FinBancoAgenciaFch.sil  �TDataSourcedsFormLeft2Top)  �TPowerADOQueryquFormOnNewRecordquFormNewRecordCommandText�SELECT 
	BA.IDBancoAgencia,
	BA.CodigoBancoAgencia, 
	BA.BancoAgencia,
	BA.IDBanco,
	BA.Endereco,
	BA.Bairro, 
	BA.System,
	BA.Hidden,
	BA.Desativado
FROM 
	Fin_BancoAgencia BA
WHERE 
	( BA.IDBancoAgencia = :IDBancoAgencia )
ParametersNameIDBancoAgencia
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left_Top* TIntegerFieldquFormIDBancoAgencia	FieldNameIDBancoAgencia  TStringFieldquFormCodigoBancoAgencia	FieldNameCodigoBancoAgenciaOrigin#Fin_BancoAgencia.CodigoBancoAgencia  TStringFieldquFormBancoAgencia	FieldNameBancoAgenciaSize#  TIntegerFieldquFormIDBanco	FieldNameIDBanco  TStringFieldquFormEndereco	FieldNameEnderecoSize2  TStringFieldquFormBairro	FieldNameBairro  TBooleanFieldquFormSystem	FieldNameSystem  TBooleanFieldquFormHidden	FieldNameHidden  TBooleanFieldquFormDesativado	FieldName
Desativado   �TFormConfig
FormConfigAutoIncFieldIDBancoAgenciaLeft�Top,  �TdxBarManagerbmMDICategories.ItemsVisibles Categories.Visibles	 Left6Top� DockControlHeights       �
TImageListilSmallButtonsLeft�Top�   �TPrintDialogPrintFchLeft
Topx   