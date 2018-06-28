#if !defined(AFX_APAX_H__EA988ABC_158B_4D7B_8DB0_609E2D689DC8__INCLUDED_)
#define AFX_APAX_H__EA988ABC_158B_4D7B_8DB0_609E2D689DC8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


// Dispatch interfaces referenced by this interface
class COleFont;

/////////////////////////////////////////////////////////////////////////////
// CApax wrapper class

class CApax : public CWnd
{
protected:
	DECLARE_DYNCREATE(CApax)
public:
	CLSID const& GetClsid()
	{
		static CLSID const clsid
			= { 0x28e7f3b1, 0x59c2, 0x4b1c, { 0x9d, 0x8e, 0x6, 0x10, 0xb2, 0x80, 0x89, 0x8d } };
		return clsid;
	}
	virtual BOOL Create(LPCTSTR lpszClassName,
		LPCTSTR lpszWindowName, DWORD dwStyle,
		const RECT& rect,
		CWnd* pParentWnd, UINT nID,
		CCreateContext* pContext = NULL)
	{ return CreateControl(GetClsid(), lpszWindowName, dwStyle, rect, pParentWnd, nID); }

    BOOL Create(LPCTSTR lpszWindowName, DWORD dwStyle,
		const RECT& rect, CWnd* pParentWnd, UINT nID,
		CFile* pPersist = NULL, BOOL bStorage = FALSE,
		BSTR bstrLicKey = NULL)
	{ return CreateControl(GetClsid(), lpszWindowName, dwStyle, rect, pParentWnd, nID,
		pPersist, bStorage, bstrLicKey); }

// Attributes
public:

// Operations
public:
	long PortOpen();
	long TapiDial();
	long TapiAnswer();
	long WinsockConnect();
	long WinsockListen();
	long Close();
	void AddStringToLog(LPCTSTR S);
	void FlushInBuffer();
	void FlushOutBuffer();
	void PutData(const VARIANT& Data);
	void PutString(LPCTSTR S);
	void PutStringCRLF(LPCTSTR S);
	void SendBreak(long Ticks, BOOL Yield);
	long AddDataTrigger(LPCTSTR TriggerString, long PacketSize, long Timeout, BOOL IncludeStrings, BOOL IgnoreCase);
	void DisableDataTrigger(long Index);
	void EnableDataTrigger(long Index);
	void RemoveDataTrigger(long Index);
	void Clear();
	void ClearAll();
	void CopyToClipboard();
	long GetAttributes(long aRow, long aCol);
	void SetAttributes(long aRow, long aCol, long Value);
	CString GetLine(long Index);
	void SetLine(long Index, LPCTSTR Value);
	void TerminalSetFocus();
	void TerminalWriteString(LPCTSTR S);
	void TerminalWriteStringCRLF(LPCTSTR S);
	void TapiAutoAnswer();
	void TapiCancelCall();
	void TapiConfigAndOpen();
	void TapiSelectDevice();
	void TapiSendTone(LPCTSTR Digits);
	void TapiSetRecordingParams(long NumChannels, long NumSamplesPerSecond, long NumBitsPerSample);
	void TapiShowConfigDialog(BOOL AllowEdit);
	void TapiPlayWaveFile(LPCTSTR FileName);
	void TapiRecordWaveFile(LPCTSTR FileName, BOOL Overwrite);
	void TapiStopWaveFile();
	CString TapiTranslatePhoneNo(LPCTSTR CanonicalAddr);
	void CancelProtocol();
	long EstimateTransferSecs(long Size);
	void StartTransmit();
	void StartReceive();
	long GetBaud();
	void SetBaud(long nNewValue);
	long GetComNumber();
	void SetComNumber(long nNewValue);
	long GetDeviceType();
	void SetDeviceType(long nNewValue);
	long GetDataBits();
	void SetDataBits(long nNewValue);
	BOOL GetDtr();
	void SetDtr(BOOL bNewValue);
	long GetLogging();
	void SetLogging(long nNewValue);
	BOOL GetLogHex();
	void SetLogHex(BOOL bNewValue);
	CString GetLogName();
	void SetLogName(LPCTSTR lpszNewValue);
	long GetParity();
	void SetParity(long nNewValue);
	BOOL GetPromptForPort();
	void SetPromptForPort(BOOL bNewValue);
	BOOL GetRS485Mode();
	void SetRS485Mode(BOOL bNewValue);
	BOOL GetRts();
	void SetRts(BOOL bNewValue);
	long GetStopBits();
	void SetStopBits(long nNewValue);
	long GetWinsockMode();
	void SetWinsockMode(long nNewValue);
	CString GetWinsockAddress();
	void SetWinsockAddress(LPCTSTR lpszNewValue);
	CString GetWinsockPort();
	void SetWinsockPort(LPCTSTR lpszNewValue);
	long GetAnswerOnRing();
	void SetAnswerOnRing(long nNewValue);
	BOOL GetEnableVoice();
	void SetEnableVoice(BOOL bNewValue);
	long GetMaxAttempts();
	void SetMaxAttempts(long nNewValue);
	CString GetSelectedDevice();
	void SetSelectedDevice(LPCTSTR lpszNewValue);
	CString GetTapiNumber();
	void SetTapiNumber(LPCTSTR lpszNewValue);
	unsigned long GetColor();
	void SetColor(unsigned long newValue);
	long GetColumns();
	void SetColumns(long nNewValue);
	long GetEmulation();
	void SetEmulation(long nNewValue);
	COleFont GetFont();
	void SetFont(LPDISPATCH newValue);
	void SetRefFont(LPDISPATCH* newValue);
	long GetRows();
	void SetRows(long nNewValue);
	BOOL GetScrollbackEnabled();
	void SetScrollbackEnabled(BOOL bNewValue);
	long GetScrollbackRows();
	void SetScrollbackRows(long nNewValue);
	BOOL GetTerminalActive();
	void SetTerminalActive(BOOL bNewValue);
	BOOL GetTerminalHalfDuplex();
	void SetTerminalHalfDuplex(BOOL bNewValue);
	BOOL GetTerminalWantAllKeys();
	void SetTerminalWantAllKeys(BOOL bNewValue);
	CString GetVersion();
	void SetVersion(LPCTSTR lpszNewValue);
	BOOL GetVisible();
	void SetVisible(BOOL bNewValue);
	CString GetDataTriggerString();
	void SetDataTriggerString(LPCTSTR lpszNewValue);
	BOOL GetProtocolStatusDisplay();
	void SetProtocolStatusDisplay(BOOL bNewValue);
	long GetProtocol();
	void SetProtocol(long nNewValue);
	BOOL GetHonorDirectory();
	void SetHonorDirectory(BOOL bNewValue);
	BOOL GetIncludeDirectory();
	void SetIncludeDirectory(BOOL bNewValue);
	CString GetReceiveDirectory();
	void SetReceiveDirectory(LPCTSTR lpszNewValue);
	CString GetReceiveFileName();
	void SetReceiveFileName(LPCTSTR lpszNewValue);
	CString GetSendFileName();
	void SetSendFileName(LPCTSTR lpszNewValue);
	CString GetCaption();
	void SetCaption(LPCTSTR lpszNewValue);
	long GetCaptionAlignment();
	void SetCaptionAlignment(long nNewValue);
	long GetCaptionWidth();
	void SetCaptionWidth(long nNewValue);
	long GetLightWidth();
	void SetLightWidth(long nNewValue);
	unsigned long GetLightsLitColor();
	void SetLightsLitColor(unsigned long newValue);
	unsigned long GetLightsNotLitColor();
	void SetLightsNotLitColor(unsigned long newValue);
	BOOL GetShowLightCaptions();
	void SetShowLightCaptions(BOOL bNewValue);
	BOOL GetShowLights();
	void SetShowLights(BOOL bNewValue);
	BOOL GetShowStatusBar();
	void SetShowStatusBar(BOOL bNewValue);
	BOOL GetShowToolBar();
	void SetShowToolBar(BOOL bNewValue);
	BOOL GetShowDeviceSelButton();
	void SetShowDeviceSelButton(BOOL bNewValue);
	BOOL GetShowConnectButtons();
	void SetShowConnectButtons(BOOL bNewValue);
	BOOL GetShowProtocolButtons();
	void SetShowProtocolButtons(BOOL bNewValue);
	BOOL GetShowTerminalButtons();
	void SetShowTerminalButtons(BOOL bNewValue);
	long DrawTextBiDiModeFlagsReadingOnly();
	void InitiateAction();
	BOOL IsRightToLeft();
	BOOL UseRightToLeftReading();
	BOOL UseRightToLeftScrollBar();
	short GetCursor();
	void SetCursor(short nNewValue);
	void AboutBox();
	void RemoveAllDataTriggers();
	CString TapiStatusMsg(long Message, long State, long Reason);
	BOOL GetTapiStatusDisplay();
	void SetTapiStatusDisplay(BOOL bNewValue);
	BOOL GetMSCommCompatible();
	void SetMSCommCompatible(BOOL bNewValue);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_APAX_H__EA988ABC_158B_4D7B_8DB0_609E2D689DC8__INCLUDED_)
