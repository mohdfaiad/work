unit uDMPOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms,
  uDMParent, ADODB, DB, ImgList, ufrmServerInfo, Registry,
  PowerADOQuery, LookUpADOQuery,
  Provider, DBClient;



type

  TDMPOS = class(TDMParent)
    ADOCommand: TADOCommand;
    imgLarge: TImageList;
    dsLookUpCashReg: TDataSource;
    LookUpCashReg: TLookUpADOQuery;
    LookUpCashRegIDCashRegister: TIntegerField;
    LookUpCashRegName: TStringField;
    quSearchPreSale: TADOQuery;
    quSearchCashRegMov: TADOQuery;
    quRun: TADOQuery;
    quSearchPreSaleID: TADOQuery;
    LookUpStore: TLookUpADOQuery;
    dsLookUpStore: TDataSource;
    LookUpStoreIDStore: TIntegerField;
    LookUpStoreName: TStringField;
    procedure DataModuleCreate(Sender: TObject);

  private
    FrmServerInfo: TFrmServerInfo;

    function StartConnection(AForceDialog: Boolean = False):Boolean;
    function StopConnection: Boolean;
    function FomartConnection(sParam: String): String;
  protected
  public
    procedure CloseConnection;
    function OpenConnection(AForceDialog: Boolean = False):Boolean;
    function GetConnectionInfo(sConnection: String): String;
    function GetConnection(AForceDialog: Boolean = False) : String;
  end;

var
  DMPOS: TDMPOS;

implementation

uses uParamFunctions, uSystemConst,
     uDMGlobal, uMainConf, uOperationSystem;

{$R *.dfm}



procedure TDMPOS.DataModuleCreate(Sender: TObject);
var
  buildInfo: String;
begin
  inherited;
  // Abre o registry
  with TRegistry.Create do
  begin

    // to run in windows Vista and Windows 7
    if ( getOS(buildInfo) = osW7 ) then
      RootKey := HKEY_CURRENT_USER
    else
      RootKey := HKEY_LOCAL_MACHINE;

    OpenKey(REGISTRY_PATH, True);
    if not ValueExists('DefaultLanguage') then
      WriteInteger('DefaultLanguage', LANG_ENGLISH);
    DMGlobal.IDLanguage := ReadInteger('DefaultLanguage');
    Free;
  end;
end;


function TDMPOS.GetConnection(AForceDialog: Boolean = False) : String;
var
  b: Boolean;
begin

  //Server Connection
  b := False;

  if FrmServerInfo = nil then
    FrmServerInfo := TFrmServerInfo.Create(self);

  //Server Connection
  Result := FrmServerInfo.Start('4', AForceDialog, '', b);

end;

function TDMPOS.GetConnectionInfo(sConnection:String):String;
var
  sServer, sDBAlias, sUserName, sPW : String;
  bWinLogin, bUseNetLib : String;
begin
  sServer    := ParseParam(sConnection, SV_SERVER);
  sDBAlias   := ParseParam(sConnection, SV_DATABASE);
  sUserName  := ParseParam(sConnection, SV_USER);
  sPW        := ParseParam(sConnection, SV_PASSWORD);
  bWinLogin  := ParseParam(sConnection, SV_WIN_LOGIN);
  bUseNetLib := ParseParam(sConnection, SV_USE_NETLIB);
  Result := 'Server=' + sServer + ';Database=' + sDBAlias + ';User=' +
            sUserName +' ;WinLogin=' + bWinLogin + ';UseNetLib=' + bUseNetLib + ';';
end;


function TDMPOS.StartConnection(AForceDialog: Boolean = False):Boolean;
begin
  Result := OpenConnection(AForceDialog);
end;

function TDMPOS.StopConnection:Boolean;
begin
  CloseConnection;
end;

function TDMPOS.OpenConnection(AForceDialog: Boolean = False):Boolean;
var
  sResult : String;
  b: Boolean;
begin

  Result := False;

   //Connection open, exit
  if ADODBConnect.Connected then
  begin
    Result := True;
    Exit;
  end;

  //Server Connection
  b := False;
  sResult := GetConnection(AForceDialog);

  while not b do
  try
    sResult := FomartConnection(sResult);
    ADODBConnect.ConnectionString := sResult;
    ADODBConnect.Open;
    b := True;
    Result := True;
  except
    on E: Exception do
      sResult := FrmServerInfo.Start('4', True, E.Message, b);
  end;

end;

procedure TDMPOS.CloseConnection;
begin
  if ADODBConnect.Connected then
    ADODBConnect.Close;
end;

function TDMPOS.FomartConnection(sParam: String): String;
var
  sServer, sDBAlias, sUserName, sPW : String;
  bWinLogin, bUseNetLib : Boolean;
begin
  sServer    := ParseParam(sParam, SV_SERVER);
  sDBAlias   := ParseParam(sParam, SV_DATABASE);
  sUserName  := ParseParam(sParam, SV_USER);
  sPW        := ParseParam(sParam, SV_PASSWORD);
  bWinLogin  := (ParseParam(sParam, SV_WIN_LOGIN)[1] in ['Y']);
  bUseNetLib := (ParseParam(sParam, SV_USE_NETLIB)[1] = 'Y');

  if not bWinLogin then
    if bUseNetLib then
      Result := SetConnectionStr(sUserName, sPW, sDBAlias, sServer)
    else
      Result := SetConnectionStrNoNETLIB(sUserName, sPW, sDBAlias, sServer)
  else
    if bUseNetLib then
      Result := SetWinConnectionStr(sDBAlias, sServer)
    else
      Result := SetWinConnectionStrNoNETLIB(sDBAlias, sServer);
end;

end.
