�
 TFORM1 0�  TPF0TForm1Form1Left� ToplWidth�Height�CaptionExFtpDir: FTP Directory Example
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OnCreate
FormCreatePixelsPerInch`
TextHeight TLabelLabel1LeftTopWidthOHeightCaptionFTP Server URL  TLabelLabel2LeftTop<Width5HeightCaption	User Name  TLabelLabel3LeftTop\Width.HeightCaptionPassword  TLabelLabel4LeftTop� WidthOHeightCaptionCurrent DirectoryWordWrap	  TLabelLabel5Left� Top� Width� HeightCaption (double click on item to select)  TButtonbtnLoginLeft@Top WidthKHeightCaptionLog&inTabOrderOnClickbtnLoginClick  TButton	btnLogoutLeft@Top@WidthKHeightCaptionLog&outTabOrderTabStopOnClickbtnLogoutClick  TListBoxlbxCurrentDirLeftpTop� Width� Height� TabStop
ItemHeightTabOrder
OnDblClicklbxCurrentDirDblClickOnMouseDownlbxCurrentDirMouseDown  TEdit	edtServerLeftpTopWidth� HeightTabOrder   TEditedtUserLeftpTop8Width� HeightTabOrder  TEditedtPasswordLeftpTopXWidth� HeightTabOrder  TButtonbtnCloseLeft@TopHWidthKHeightCaption&CloseTabOrderTabStopOnClickbtnCloseClick  TApdFtpClientApdFtpClient1FileTypeftBinaryPasswordusername@some-domain.comServerAddressSome URLTransferTimeoutDUserName	anonymous
OnFtpErrorApdFtpClient1FtpErrorOnFtpStatusApdFtpClient1FtpStatusLogNameAPRO.LOG	TraceNameAPRO.TRCLeftPToph   