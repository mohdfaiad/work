�
 TFCHHOTEL 0'  TPF0�	TFchHotelFchHotelLeft� TopkCaptionHotelClientHeight�ClientWidth�PixelsPerInch`
TextHeight �TPanelPanel2Width�TabOrder �TImageImage1Widthy  �TPanelEspacamentoSuperiorWidth� �TPanelEEEWidth�   �TPanel
pnlAutoIncLeft\   �TPanelPanel1TopWWidth�TabOrder �TPanelEspacamentoInferiorWidth� �TPanelPanel3Width�   �TPanelhhhLeft� Width�  �TSpeedButtonspHelpLeft  �TSpeedButtonbtnVideoLeft  �TButtonbtCancelLeft{Width4  �TButtonbtCloseLeftDWidth5Caption&OK    �TPanelpnlKeyWidth�Height � TLabelLabel2LeftTop	Width:Height	AlignmenttaRightJustifyCaptionIDLocation :FocusControlDBEdit1  �TPanelPanel4TopWidth�  TDBEditDBEdit1Left[TopWidth@HeightTabStop	DataFieldIDHotel
DataSourcedsFormTabOrder   �TPanel	pnlDetailTopFWidth�HeightTabOrder TPanelPanel5Left Top Width�HeightAlignalClient
BevelOuterbvNoneColor��� TabOrder  TLabelLabel19Left Top Width�HeightAlignalTop	AlignmenttaCenterAutoSizeCaptionLocation InfoColorclBtnShadowFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold ParentColor
ParentFont  TLabelLabel3Left&TopWidth/Height	AlignmenttaRightJustifyCaption
Location :FocusControlDBEdit2  TLabelLabel4Left'Top8Width.Height	AlignmenttaRightJustifyCaption	Address :FocusControlDBEdit3  TLabelLabel5Left;TopVWidthHeight	AlignmenttaRightJustifyCaptionCity :FocusControlDBEdit4  TLabelLabel6Left?ToptWidthHeight	AlignmenttaRightJustifyCaptionZIP :FocusControlDBEdit5  TLabelLabel7Left1Top� Width%Height	AlignmenttaRightJustifyCaptionPhone :FocusControlDBEdit6  TLabelLabel8Left<Top� WidthHeight	AlignmenttaRightJustifyCaptionFax :FocusControlDBEdit7  TLabelLabel1Left2Top� Width#Height	AlignmenttaRightJustifyCaptionNotes :FocusControlDBEdit7  TLabelLabel43Left'TopWidthHeightCaption*Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameVerdana
Font.StylefsBold 
ParentFont  TDBEditDBEdit2LeftXTopWidth� Height	DataFieldHotel
DataSourcedsFormTabOrder   TDBEditDBEdit3LeftXTop3WidthHeight	DataFieldEndereco
DataSourcedsFormTabOrder  TDBEditDBEdit4LeftXTopQWidth� Height	DataFieldCidade
DataSourcedsFormTabOrder  TDBEditDBEdit5LeftXTopoWidthLHeight	DataFieldCEP
DataSourcedsFormTabOrder  TDBEditDBEdit6LeftXTop� Width� Height	DataFieldTelefone
DataSourcedsFormTabOrder  TDBEditDBEdit7LeftXTop� Width� Height	DataFieldFax
DataSourcedsFormTabOrder  TDBMemoDBMemo1LeftWTop� WidthHeightC	DataFieldOBS
DataSourcedsFormTabOrder    �TPanelEspacamentoEsquerdoTopFHeightTabOrder  �TPanelEspacamentoDireitoLeft�TopFHeightTabOrder  �	TsiLangRTsiLangStorageFileMR_FchHotel.sil  �TDataSourcedsFormLeft6Top�   �TPowerADOQueryquForm
CursorTypectStaticCommandText�SELECT
        IDHotel,
        Hotel,
        Endereco,
        Cidade,
        CEP,
        Telefone,
        Fax,
        OBS
FROM
        Hotel Hotel
WHERE
        IDHotel = :IDHotel
ParametersNameIDHotel
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left6Top�  TIntegerFieldquFormIDHotel	FieldNameIDHotelOriginHotel.IDHotel  TStringFieldquFormHotelDisplayLabelLocation	FieldNameHotelOriginHotel.HotelRequired	Size2  TStringFieldquFormEndereco	FieldNameEnderecoOriginHotel.EnderecoSizeP  TStringFieldquFormCidade	FieldNameCidadeOriginHotel.CidadeSize(  TStringField	quFormCEP	FieldNameCEPOrigin	Hotel.CEPSize  TStringFieldquFormTelefone	FieldNameTelefoneOriginHotel.TelefoneSize(  TStringField	quFormFax	FieldNameFaxOrigin	Hotel.FaxSize(  TStringField	quFormOBS	FieldNameOBSOriginHotel.IDHotelSize�    �TFormConfig
FormConfigAutoIncFieldIDHotelLeft1TopB   