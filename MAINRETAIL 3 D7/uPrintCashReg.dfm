�
 TPRINTCASHREG 0o  TPF0�TPrintCashRegPrintCashRegLeftHTop� BorderStylebsDialogCaptionPrinting ReceiptClientHeightHClientWidth}OldCreateOrder	OnClose	FormClosePixelsPerInch`
TextHeight � TLabelLabel1Left'Top
Width!HeightCaptionPrinting Ticket, Please WaitFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial Black
Font.StylefsBold 
ParentFont  �TPanelPanel1LeftTop-WidthsHeight
BevelOuterbvNoneCaptionNIf printer does not start, check the "On Line" Button or position of the paperColorclBlackFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder   �	TsiLangRTsiLangStorageFileMR_PrintCashReg.sil  	TADOQueryquCashRegLog
ConnectionDM.ADODBConnect
CursorTypectStatic
ParametersNameIDCashRegLog
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT	CRL.IDCashRegLog,	CRL.IDUser,	CRL.LogTime,	CRL.Bill100,	CRL.Bill50,	CRL.Bill20,	CRL.Bill10,	CRL.Bill5,	CRL.Bill2,	CRL.Bill1,	CRL.Coin1,	CRL.Coin050,	CRL.Coin025,	CRL.Coin010,	CRL.Coin005,	CRL.Coin001,	CRL.TotalCard,	CRM.OpenTime,	CRL.TotalCheck,	CRL.TotalOther,	CRL.TotalCash,	CRL.TotalDebit,	CRM.IDCashRegister,	CR.[Name] CashRegister,	SUO.SystemUser OpenUser,	SUL.SystemUser LogUser,	CRL.TotalCardPre,
	CRLC.Obs,	CRLR.ReasonFROM 	CashRegLog CRL (NOLOCK) G	JOIN CashRegMov CRM (NOLOCK)  ON (CRL.IDCashRegMov = CRM.IDCashRegMov)?	JOIN SystemUser SUO (NOLOCK)  ON (CRM.IDOpenUser = SUO.IDUser)K	JOIN CashRegister CR (NOLOCK)  ON (CRM.IDCashRegister = CR.IDCashRegister);	JOIN SystemUser SUL (NOLOCK)  ON (CRL.IDUser = SUL.IDUser)X	LEFT JOIN CashRegLogComplement CRLC (NOLOCK)  ON (CRL.IDCashRegLog = CRLC.IDCashRegLog)a	LEFT JOIN CashRegLogReason CRLR (NOLOCK)  ON (CRLC.IDCashRegLogReason = CRLR.IDCashRegLogReason)WHERE"	CRL .IDCashRegLog = :IDCashRegLog LeftATop TIntegerFieldquCashRegLogIDCashRegLog	FieldNameIDCashRegLogOriginCashRegLog.IDCashRegLog  TIntegerFieldquCashRegLogIDUser	FieldNameIDUserOriginCashRegLog.IDUser  TDateTimeFieldquCashRegLogLogTime	FieldNameLogTimeOriginCashRegLog.LogTime  TIntegerFieldquCashRegLogBill100	FieldNameBill100OriginCashRegLog.Bill100  TIntegerFieldquCashRegLogBill50	FieldNameBill50OriginCashRegLog.Bill50  TIntegerFieldquCashRegLogBill20	FieldNameBill20OriginCashRegLog.Bill20  TIntegerFieldquCashRegLogBill10	FieldNameBill10OriginCashRegLog.Bill10  TIntegerFieldquCashRegLogBill5	FieldNameBill5OriginCashRegLog.Bill5  TIntegerFieldquCashRegLogBill2	FieldNameBill2OriginCashRegLog.Bill2  TIntegerFieldquCashRegLogBill1	FieldNameBill1OriginCashRegLog.Bill1  TIntegerFieldquCashRegLogCoin1	FieldNameCoin1OriginCashRegLog.Coin1  TIntegerFieldquCashRegLogCoin050	FieldNameCoin050OriginCashRegLog.Coin050  TIntegerFieldquCashRegLogCoin025	FieldNameCoin025OriginCashRegLog.Coin025  TIntegerFieldquCashRegLogCoin010	FieldNameCoin010OriginCashRegLog.Coin010  TIntegerFieldquCashRegLogCoin005	FieldNameCoin005OriginCashRegLog.Coin005  TIntegerFieldquCashRegLogCoin001	FieldNameCoin001OriginCashRegLog.Coin001  TFloatFieldquCashRegLogTotalCard	FieldName	TotalCardOriginCashRegLog.TotalCard  TDateTimeFieldquCashRegLogOpenTime	FieldNameOpenTimeOriginCashRegMov.OpenTime  TFloatFieldquCashRegLogTotalCheck	FieldName
TotalCheckOriginCashRegLog.TotalCheck  TFloatFieldquCashRegLogTotalOther	FieldName
TotalOtherOriginCashRegLog.TotalOther  TFloatFieldquCashRegLogTotalCash	FieldName	TotalCashOriginCashRegLog.TotalCash  TIntegerFieldquCashRegLogIDCashRegister	FieldNameIDCashRegisterOriginCashRegMov.IDCashRegister  TStringFieldquCashRegLogCashRegister	FieldNameCashRegisterOriginCashRegister.NameSize  TStringFieldquCashRegLogOpenUser	FieldNameOpenUserOriginSystemUser.SystemUserSize2  TStringFieldquCashRegLogLogUser	FieldNameLogUserOriginCashRegLog.IDCashRegLogSize2  TFloatFieldquCashRegLogTotalCardPre	FieldNameTotalCardPreOriginCashRegLog.IDCashRegLog  	TBCDFieldquCashRegLogTotalDebit	FieldName
TotalDebit	Precision  TStringFieldquCashRegLogObs	FieldNameObsSize�   TStringFieldquCashRegLogReason	FieldNameReasonSize   TADODataSetquSisProperty
ConnectionDM.ADODBConnectCommandText[SELECT
	Property,
	PropertyValue
FROM
	Sis_PropertyDomain
WHERE
	Property = :Property
ParametersNamePropertyDataTypeftStringNumericScale� 	Precision� Size� Value   Left� Top TStringFieldquSisPropertyPropertyValue	FieldNamePropertyValueSize�     