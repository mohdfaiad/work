�
 TFSMAIN 0�  TPF0TfsMainfsMainLeft� ToplBorderStylebsSingleCaptionFax Server exampleClientHeight�ClientWidthFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style PositionpoScreenCenterOnCreate
FormCreatePixelsPerInch`
TextHeight TLabelLabel7LeftTop� WidthEHeightCaptionFaxes to send:  TButtonSendFaxLeftTop`WidthIHeight!Caption&Send faxesTabOrder OnClickSendFaxClick  TButtonfsAddLeft(Top`WidthIHeight!Caption&AddDefault	TabOrderOnClick
fsAddClick  TButtonfsExitLeft� Top`WidthIHeight!CaptionE&xitTabOrderOnClickfsExitClick  TPanelPanel1LeftTopWidth	Height� TabOrder TLabelLabel1Left� TophWidthzHeightCaption&Modem initialization string:  TLabelLabel2Left� Top� Width8HeightCaptionFax &header:  TLabelLabel3Left� TopWidth2HeightCaptionStation &ID:  TLabelLabel4Left� Top8Width1HeightCaption&Dial prefix:  TLabelLabel5LeftTopxWidth@HeightCaptionDial a&ttempts:  TLabelLabel6LeftTop� Width2HeightCaptionRetry &wait:  TRadioGroup
fsFaxClassLeftTopWidth� HeightYCaption
Fax &class	ItemIndex Items.Stringsauto detectclass 1class 2	class 2.0 TabOrder OnClickfsFaxClassClick  TEditfsModemInitLeft� TopxWidthAHeightTabOrderOnChangefsModemInitChange  TEditfsHeaderLeft� Top� WidthAHeightTabOrderTextDefault headerOnChangefsHeaderChange  TEditfsStationIDLeft� TopWidth� Height	MaxLengthTabOrderTextAPro SENDFAXOnChangefsStationIDChange  TEditfsDialPrefixLeft� TopHWidthyHeightTabOrderOnChangefsDialPrefixChange  TEditfsDialAttemptsLeftpTopxWidth)HeightTabOrderText3OnChangefsDialAttemptsChange  TEditfsRetryWaitLeftpTop� Width)HeightTabOrderText60OnChangefsRetryWaitChange   TButtonfsModifyLeftxTop`WidthIHeight!Caption&ModifyTabOrderOnClickfsModifyClick  TButtonfsDeleteLeft�Top`WidthIHeight!Caption&DeleteTabOrderOnClickfsDeleteClick  TListBoxfsFaxListBoxLeftTop� Width	HeightiTabStopFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCourier New
Font.Style 
ItemHeight
ParentFontTabOrder  TButtonfsSelectComPortLeftXTop`WidthIHeight!CaptionSelect &portTabOrderOnClickfsSelectComPortClick  TApdComPortApdComPort1InSize  OutSize  AutoOpenHWFlowOptions	hwfUseRTShwfRequireCTS 
BufferFull�BufferResume3TracingtlOn	TraceSize }	TraceNameSENDFAX.TRCLoggingtlOnLogNameSENDFAX.LOGTapiModetmOffLeft�Top  TApdFaxStatusApdFaxStatus1PositionpoScreenCenterCtl3D	VisibleFaxApdSendFax1Caption
Fax StatusLeft�Top.  TApdSendFaxApdSendFax1FaxClass	fcUnknownComPortApdComPort1StatusDisplayApdFaxStatus1FaxLog
ApdFaxLog1
FaxFileExtAPFOnFaxLogApdSendFax1FaxLogOnFaxFinishApdSendFax1FaxFinishEnhTextEnabledEnhHeaderFont.CharsetDEFAULT_CHARSETEnhHeaderFont.ColorclWindowTextEnhHeaderFont.Height�EnhHeaderFont.NameMS Sans SerifEnhHeaderFont.Style EnhFont.CharsetDEFAULT_CHARSETEnhFont.ColorclWindowTextEnhFont.Height�EnhFont.NameMS Sans SerifEnhFont.Style 	OnFaxNextApdSendFax1FaxNextLeft�TopFakeProperty  
TApdFaxLog
ApdFaxLog1FaxHistoryName
APDFAX.HISFaxApdSendFax1Left�Top.  TApdTapiDeviceApdTapiDevice1ComPortApdComPort1ShowTapiDevices		ShowPorts	EnableVoiceOnTapiPortOpenApdTapiDevice1TapiPortOpenOnTapiPortCloseApdTapiDevice1TapiPortCloseLeft�TopP  TApdFaxDriverInterfaceApdFaxDriverInterface1FileNameC:\DEFAULT.APF
OnDocStartApdFaxDriverInterface1DocStartOnDocEndApdFaxDriverInterface1DocEndLeft�TopP   