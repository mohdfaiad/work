�
 TFORM1 0�  TPF0TForm1Form1Left� ToplWidth�Height�CaptionExSapiB
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OnCreate
FormCreatePixelsPerInch`
TextHeight TLabelLabel2LeftTopWidthqHeight!AutoSizeCaptionnThis demonstration program shows using SAPI voice synthesis and recognition in a simple telephony application.WordWrap	  TButtonButton1LeftTop0WidthQHeightCaptionAnswerTabOrder OnClickButton1Click  TMemoMemo1LeftTopPWidthqHeight�Lines.Strings  TabOrder  TApdSapiEngineApdSapiEngine1CharSetcsText	Dictation
SRAutoGain 
TTSOptions OnPhraseFinishApdSapiEngine1PhraseFinishLeftTopX  TApdSapiPhoneApdSapiPhone1NoAnswerMax NoAnswerTime 	NumDigits Options 
SapiEngineApdSapiEngine1ComPortApdComPort1ShowTapiDevices		ShowPorts	EnableVoice	OnTapiConnectApdSapiPhone1TapiConnectLeft0TopX  TApdComPortApdComPort1	TraceNameAPRO.TRCLogNameAPRO.LOGLeftPTopX   