�
 TPRINTCASHREG 0�  TPF0TPrintCashRegPrintCashRegLeftGTop� BorderStylebsDialogCaptionPrinting ReceiptClientHeightHClientWidth}Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TLabelLabel1Left'Top
Width=HeightCaptionPrinting Ticket, Please WaitFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial Black
Font.StylefsBold 
ParentFont  TPanelPanel1LeftTop-WidthsHeight
BevelOuterbvNoneCaptionNIf printer does not start, check the "On Line" Button or position of the paperColorclBlackFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder   	TADOQueryquCashRegLog
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameIDCashRegLog
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT	IDCashRegLog,	CashRegLog.IDUser,	CashRegMov.IDCashRegMov,		LogTime,		Bill100,	Bill50,	Bill20,	Bill10,	Bill5,	Bill2,	Bill1,	Coin1,		Coin050,		Coin025,		Coin010,		Coin005,		Coin001,	TotalCard,
	OpenTime,	TotalCheck,	TotalOther,	TotalCash,	TotalDebit,	CashRegMov.IDCashRegister,(	( CashRegister.Name )  as CashRegister,(	( SystemUser.SystemUser )  as OpenUser,*	( SystemUser__1.SystemUser )  as LogUser,	TotalCardPreFROM	CashRegLog CashRegLog (NOLOCK)[	JOIN CashRegMov CashRegMov (NOLOCK) ON (CashRegLog.IDCashRegMov = CashRegMov.IDCashRegMov)e	JOIN CashRegister CashRegister (NOLOCK) ON (CashRegMov.IDCashRegister = CashRegister.IDCashRegister)S	JOIN SystemUser SystemUser (NOLOCK) ON (CashRegMov.IDOpenUser = SystemUser.IDUser)U	JOIN SystemUser SystemUser__1 (NOLOCK) ON (CashRegLog.IDUser = SystemUser__1.IDUser)WHERE	IDCashRegLog = :IDCashRegLog LeftATop TIntegerFieldquCashRegLogIDCashRegLog	FieldNameIDCashRegLogOriginCashRegLog.IDCashRegLog  TIntegerFieldquCashRegLogIDUser	FieldNameIDUserOriginCashRegLog.IDUser  TDateTimeFieldquCashRegLogLogTime	FieldNameLogTimeOriginCashRegLog.LogTime  TIntegerFieldquCashRegLogBill100	FieldNameBill100OriginCashRegLog.Bill100  TIntegerFieldquCashRegLogBill50	FieldNameBill50OriginCashRegLog.Bill50  TIntegerFieldquCashRegLogBill20	FieldNameBill20OriginCashRegLog.Bill20  TIntegerFieldquCashRegLogBill10	FieldNameBill10OriginCashRegLog.Bill10  TIntegerFieldquCashRegLogBill5	FieldNameBill5OriginCashRegLog.Bill5  TIntegerFieldquCashRegLogBill2	FieldNameBill2OriginCashRegLog.Bill2  TIntegerFieldquCashRegLogBill1	FieldNameBill1OriginCashRegLog.Bill1  TIntegerFieldquCashRegLogCoin1	FieldNameCoin1OriginCashRegLog.Coin1  TIntegerFieldquCashRegLogCoin050	FieldNameCoin050OriginCashRegLog.Coin050  TIntegerFieldquCashRegLogCoin025	FieldNameCoin025OriginCashRegLog.Coin025  TIntegerFieldquCashRegLogCoin010	FieldNameCoin010OriginCashRegLog.Coin010  TIntegerFieldquCashRegLogCoin005	FieldNameCoin005OriginCashRegLog.Coin005  TIntegerFieldquCashRegLogCoin001	FieldNameCoin001OriginCashRegLog.Coin001  TFloatFieldquCashRegLogTotalCard	FieldName	TotalCardOriginCashRegLog.TotalCard  TDateTimeFieldquCashRegLogOpenTime	FieldNameOpenTimeOriginCashRegMov.OpenTime  TFloatFieldquCashRegLogTotalCheck	FieldName
TotalCheckOriginCashRegLog.TotalCheck  TFloatFieldquCashRegLogTotalOther	FieldName
TotalOtherOriginCashRegLog.TotalOther  TFloatFieldquCashRegLogTotalCash	FieldName	TotalCashOriginCashRegLog.TotalCash  TIntegerFieldquCashRegLogIDCashRegister	FieldNameIDCashRegisterOriginCashRegMov.IDCashRegister  TStringFieldquCashRegLogCashRegister	FieldNameCashRegisterOriginCashRegister.NameSize  TStringFieldquCashRegLogOpenUser	FieldNameOpenUserOriginSystemUser.SystemUserSize2  TStringFieldquCashRegLogLogUser	FieldNameLogUserOriginCashRegLog.IDCashRegLogSize2  TFloatFieldquCashRegLogTotalCardPre	FieldNameTotalCardPreOriginCashRegLog.IDCashRegLog  	TBCDFieldquCashRegLogTotalDebit	FieldName
TotalDebit	Precision  TIntegerFieldquCashRegLogIDCashRegMov	FieldNameIDCashRegMov   	TADOQueryquCashRegMov
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameIDCashRegMov
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT"	SUM(TotalWidraw)  as TotalWidraw, 	SUM(TotalDeposit) as TotalPettyFROM	CashRegMov (NOLOCK)WHERE	IDCashRegMov = :IDCashRegMov Left� Top 	TBCDFieldquCashRegMovTotalWidraw	FieldNameTotalWidrawReadOnly		Precision  	TBCDFieldquCashRegMovTotalPetty	FieldName
TotalPettyReadOnly		Precision    