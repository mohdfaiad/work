unit uFrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, ADODB, IniFiles, ActiveX,
  AbBase, AbBrowse, AbZBrows, AbUnzper, AbMeter, Email, MsTask, MsTaskUtils,
  AuxProcs, uOperationSystem;

const
  MR_DIR = 'C:\Program Files\MainRetail\Suporte';
  MR_INSTALL = 'C:\Program Files\MainRetail';
  REG_PATH = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Run';
  REG_PATHP_PDV = 'SOFTWARE\AppleNet\POS';


type
  TFrmMain = class(TForm)
    pnlBotton: TPanel;
    imgBotton: TImage;
    btnClose: TBitBtn;
    btnNext: TBitBtn;
    btnPrior: TBitBtn;
    ADODBConnect: TADOConnection;
    pgWizard: TPageControl;
    tsInformation: TTabSheet;
    tsConfiguracao: TTabSheet;
    cmdUpdateMenu: TADOCommand;
    Label3: TLabel;
    edtCliente: TEdit;
    Label4: TLabel;
    Button1: TButton;
    lbMenu: TLabel;
    Label5: TLabel;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    tsConcluir: TTabSheet;
    tsInstalacao1: TTabSheet;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox20: TCheckBox;
    Label2: TLabel;
    UnZipper: TAbUnZipper;
    AbVCLMeterLink1: TAbVCLMeterLink;
    CheckBox30: TCheckBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label6: TLabel;
    edtUsuario: TEdit;
    Label7: TLabel;
    Email1: TEmail;
    Button6: TButton;
    CheckBox31: TCheckBox;
    Button7: TButton;
    Button8: TButton;
    tsPOSServer: TTabSheet;
    tsPDV: TTabSheet;
    tsInstallType: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    AbMeter1: TAbMeter;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    btnExtract: TButton;
    CheckBox8: TCheckBox;
    Panel2: TPanel;
    rgServer: TRadioGroup;
    lbSQLInfo: TLabel;
    btnMSDE: TButton;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    rgTipoInstall: TRadioGroup;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    tsInstalEst: TTabSheet;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    Button9: TButton;
    Label9: TLabel;
    Button10: TButton;
    Button11: TButton;
    CheckBox37: TCheckBox;
    Button12: TButton;
    CheckBox38: TCheckBox;
    Button13: TButton;
    Label10: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    MemoVer: TMemo;
    Label12: TLabel;
    edtRemoteWorkDir: TEdit;
    Button14: TButton;
    Label13: TLabel;
    Label14: TLabel;
    edtServerFileDir: TEdit;
    Label15: TLabel;
    CheckBox36: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    Button15: TButton;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    OD: TOpenDialog;
    rgTipoPDV: TRadioGroup;
    Panel3: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtPOSRemote: TEdit;
    edtPOSServerFiles: TEdit;
    btnRemoteDir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    CheckBox50: TCheckBox;
    Button16: TButton;
    Label20: TLabel;
    edtImpressora: TEdit;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure btnExtractClick(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure rgServerClick(Sender: TObject);
    procedure btnMSDEClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure btnRemoteDirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure rgTipoPDVClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
  private
    FInstacaoFile : TIniFile;
    sPW, sUser, sDBAlias, sServer : String;
    function OpenConnection : Boolean;
    procedure CloseConnection;
    procedure UpdateMenu;

    procedure OnAfterMovNext;
    procedure MovNext;
    procedure MovPrior;
    procedure Finish;
    function ValidatePage : Boolean;
    procedure ForwardEmail;
    function RegisterDLLs : Boolean;
    function ReturnComputerName: string;

    //procedure SaveInstalacao;
    //procedure SaveConfiguracao;

    procedure UnZipFile(DestDir, ZipFileName: String);

    procedure LoadFileInfo;
    procedure SaveFileInfo;

    function BackupScheduleCreate : Boolean;
    procedure ScheduleEdit;

  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;
  SchedulingAgent: ITaskScheduler;
  ScheduledWorkItem: IScheduledWorkItem;
  pIPersistFile: IPersistFile;
  Task: ITask;


implementation

uses Registry, uParamFunctions, uEncryptFunctions, uFileFunctions, ShellAPI,
  uWebFunctions;

{$R *.dfm}

//+--------------------------------------------------------------------------
//
// Function:        Init()
//
// Synopsis:        Called to initialize and instantiate a task
//                  scheduler object.
//
// Arguments:       none
//
// Returns:         HRESULT indicating success or failure.  S_OK on success.
//
// Side effect:     Sets global pointer SchedulingAgent, for use in other
//                  functions.
//
//---------------------------------------------------------------------------

function Init(): HRESULT;
begin
  Result := S_OK;

  if not assigned(SchedulingAgent) then
  begin
    Result := ActiveX.CoInitialize(nil);
    if Result <> S_OK then
    begin
      //ActiveX.CoUninitialize;
      //ShowMessage('Error in ActiveX.CoInitialize.Error Code :' + IntToHex(Result, 8));
      //Application.Terminate;
    end;

    Result := ActiveX.CoCreateInstance(CLSID_CSchedulingAgent,
                                       nil,
                                       CLSCTX_INPROC_SERVER,
                                       IID_ITaskScheduler,
                                       SchedulingAgent);
    if Result <> S_OK then
    begin
      ShowMessage('Error in ActiveX.CoCreateInstance.Error Code :' + IntToHex(Result, 8));
      Application.Terminate;
    end;
  end;
end;

function GetITask(TaskName: string): ITask;
var
  PITask: IUnknown;
  hr: HRESULT;
  riid: TGUID;
begin
  riid := IID_ITask;
  hr := SchedulingAgent.Activate(StrToWide(TaskName), riid, PITask);

  if hr = S_OK then
    Result := ITask(PITask)
  else
  begin
    ShowMessage('Error in SchedulingAgent.Activate.Error Code :' + IntToHex(hr, 8));
    Result := nil;
  end;
end;

function SaveTask: HRESULT;
begin
  Result := -1;
  Task.QueryInterface(IID_IPersistFile, pIPersistFile);

  if pIPersistFile <> nil then
    Result := pIPersistFile.Save(nil, true)
  else
    ShowMessage('Error in  Task.QueryInterface(IID_IPersistFile, pIPersistFile):');
end;

function DeleteTask(JobName: string): HRESULT;
begin
  Result := SchedulingAgent.Delete(StrToWide(JobName));
end;

procedure TFrmMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMain.CloseConnection;
begin

  if ADODBConnect.Connected then
    ADODBConnect.Close;

end;

procedure TFrmMain.Finish;
var
  i : Integer;
begin
  if edtUsuario.Text = '' then
  begin
    ShowMessage('Informar o técnico');
  end
  else
  begin
    SaveFileInfo;

    if tsPOSServer.TabVisible then
    begin
      FInstacaoFile.WriteString('Instalacao', 'POSServer_RemoteWorkDir', edtRemoteWorkDir.Text);
      FInstacaoFile.WriteString('Instalacao', 'POSServer_ServerFileDir', edtServerFileDir.Text);
    end;

    if tsPDV.TabVisible then
    begin
      FInstacaoFile.WriteString('Instalacao', 'PDV_Tipo', rgTipoPDV.Items.Strings[rgTipoPDV.ItemIndex]);
      FInstacaoFile.WriteString('Instalacao', 'PDV_RemoteWorkDir', edtPOSRemote.Text);
      FInstacaoFile.WriteString('Instalacao', 'PDV_ServerFileDir', edtPOSServerFiles.Text);
      FInstacaoFile.WriteString('Instalacao', 'PDV_Impressora', edtImpressora.Text);
    end;

    FInstacaoFile.WriteString('Instalacao', 'Tecnico', edtUsuario.Text);
    FInstacaoFile.WriteDateTime('Instalacao', 'DataTermino', Now);
    for i := 0 to MemoVer.Lines.Count-1 do
      FInstacaoFile.WriteString('Versao', MemoVer.Lines.Strings[i], '');
    ForwardEmail;
    Close;
  end;

end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  pgWizard.Top := -25;
  pgWizard.ActivePageIndex := 0;
end;

procedure TFrmMain.MovNext;
var
  i, iPage : Integer;
begin

  if pgWizard.ActivePage = tsInformation then
  begin
    tsInstalacao1.TabVisible  := (rgTipoInstall.ItemIndex = 1);
    tsConfiguracao.TabVisible := (rgTipoInstall.ItemIndex = 1);
    tsPOSServer.TabVisible    := (rgTipoInstall.ItemIndex = 1);
    tsPDV.TabVisible          := (rgTipoInstall.ItemIndex = 0);
    tsInstalEst.TabVisible    := (rgTipoInstall.ItemIndex = 0);
  end;

  if pgWizard.ActivePageIndex < (pgWizard.PageCount-1) then
  begin
    if ValidatePage then
    begin
      iPage := pgWizard.ActivePageIndex + 1;
      for i := iPage to pgWizard.PageCount-1 do
        if pgWizard.Pages[i].TabVisible then
          Break;

      pgWizard.ActivePageIndex := i;
      btnPrior.Visible := (pgWizard.ActivePageIndex > 0);
    end;
  end
  else
    Finish;

  OnAfterMovNext;

end;

procedure TFrmMain.MovPrior;
var
  i, iPage : Integer;
begin

  if pgWizard.ActivePageIndex > 0 then
  begin
    iPage := pgWizard.ActivePageIndex - 1;
    for i := iPage downto 0 do
      if pgWizard.Pages[i].TabVisible then
        Break;

    pgWizard.ActivePageIndex := i;
  end;

  btnPrior.Visible := (pgWizard.ActivePageIndex > 0);

end;

function TFrmMain.OpenConnection : Boolean;
var
  sResult : String;
  Reg : TRegistry;
  buildInfo: String;
begin

  try
    //Pega as info local
    Reg := TRegistry.Create;

    // aponta para a chave CURRENT_USER se Windows 7
    if ( getOs(buildInfo) = osW7 ) then
      Reg.RootKey := HKEY_CURRENT_USER
    else
      Reg.RootKey := HKEY_LOCAL_MACHINE;

    Reg.OpenKey('SOFTWARE\AppleNet', True);

    sResult := DecodeServerInfo(Reg.ReadString('ServerInfo'), 'Server', CIPHER_TEXT_STEALING, FMT_UU);

    sServer  := ParseParam(sResult, '#SRV#=');
    sDBAlias := ParseParam(sResult, '#DB#=');
    sUser    := ParseParam(sResult, '#USER#=');
    sPW      := ParseParam(sResult, '#PW#=');

    sResult := SetConnectionStr(sUser, sPw, SDBAlias, sServer);

    //Fechar o Registry
    Reg.CloseKey;
    Reg.Free;
  except
    ShowMessage('Connection Error !');
    Abort;
  end;

  if not ADODBConnect.Connected then
  begin
    ADODBConnect.ConnectionString := sResult;
    ADODBConnect.Open;
  end;

  Result := True;

end;

procedure TFrmMain.UpdateMenu;
begin

  if OpenConnection then
    with cmdUpdateMenu do
    begin
      Parameters.ParamByName('Visible').Value := False;
      Execute;
      lbMenu.Visible := True;
    end;

  CloseConnection;

end;

function TFrmMain.ValidatePage: Boolean;
var
  i : Integer;
begin

  if pgWizard.ActivePage = tsInformation then
  begin
    if (edtCliente.Text = '') then
    begin
      ShowMessage('Digite o nome do cliente');
      Result := False;
      Exit;
    end;
  end
  else if pgWizard.ActivePage = tsInstallType then
  begin
    for i := 0 to (ComponentCount-1) do
      if (Components[I] is TCheckBox) then
       if ((Components[I]).GetParentComponent.Name = 'Panel1') or ((Components[I]).GetParentComponent.Name = 'Panel2') then
        if (not TCheckBox(Components[I]).Checked) and (TCheckBox(Components[I]).Visible) then
        begin
          ShowMessage('Todos os itens tem que ser confirmados');
          Result := False;
          Exit;
        end;
  end
  else if pgWizard.ActivePage = tsInstalacao1 then
  begin
    for i := 0 to (ComponentCount-1) do
      if (Components[I] is TCheckBox) and ((Components[I]).GetParentComponent.Name = 'tsInstalacao1') then
        if (not TCheckBox(Components[I]).Checked) then
        begin
          ShowMessage('Todos os itens tem que ser confirmados');
          Result := False;
          Exit;
        end;
  end
  else if pgWizard.ActivePage = tsInstalEst then
  begin
    for i := 0 to (ComponentCount-1) do
      if (Components[I] is TCheckBox) and ((Components[I]).GetParentComponent.Name = 'tsInstalEst') then
        if (not TCheckBox(Components[I]).Checked) and (TCheckBox(Components[I]).Visible) then
        begin
          ShowMessage('Todos os itens tem que ser confirmados');
          Result := False;
          Exit;
        end;
  end
  else if pgWizard.ActivePage = tsConfiguracao then
  begin

    for i := 0 to (ComponentCount-1) do
      if (Components[I] is TCheckBox) and ((Components[I]).GetParentComponent.Name = 'tsConfiguracao') then
        if (not TCheckBox(Components[I]).Checked) then
        begin
          ShowMessage('Todos os itens tem que ser confirmados');
          Result := False;
          Exit;
        end;

  end
  else if pgWizard.ActivePage = tsPOSServer then
  begin

    for i := 0 to (ComponentCount-1) do
      if (Components[I] is TCheckBox) and ((Components[I]).GetParentComponent.Name = 'tsPOSServer') then
        if (not TCheckBox(Components[I]).Checked) then
        begin
          ShowMessage('Todos os itens tem que ser confirmados');
          Result := False;
          Exit;
        end;

  end
  else if pgWizard.ActivePage = tsPDV then
  begin

    for i := 0 to (ComponentCount-1) do
      if (Components[I] is TCheckBox) and ((Components[I]).GetParentComponent.Name = 'tsPDV') then
        if (not TCheckBox(Components[I]).Checked) then
        begin
          ShowMessage('Todos os itens tem que ser confirmados');
          Result := False;
          Exit;
        end;

  end;

  Result := True;
end;

procedure TFrmMain.btnNextClick(Sender: TObject);
begin
  MovNext;
end;

procedure TFrmMain.btnPriorClick(Sender: TObject);
begin
  MovPrior;
end;

procedure TFrmMain.Button1Click(Sender: TObject);
begin
  UpdateMenu;
  FInstacaoFile.WriteBool('Configucao', 'Menu atualizado', True);
end;

procedure TFrmMain.edtClienteExit(Sender: TObject);
var
  bFileExist : Boolean;
begin

  bFileExist := FileExists(ExtractFileDir(Application.ExeName) + '\' + edtCliente.Text + '.ini');

  if (edtCliente.Text <> '') and (FInstacaoFile = nil) then
  begin
    FInstacaoFile := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' + edtCliente.Text + '.ini');
    edtCliente.ReadOnly := True;
    edtCliente.Color := clSilver;
  end;

  if not bFileExist then
    FInstacaoFile.WriteDateTime('Instalacao', 'DataInicio', Now);


  LoadFileInfo;

end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FInstacaoFile <> nil then
    FreeAndNil(FInstacaoFile);
end;

{
procedure TFrmMain.SaveInstalacao;
var
  i : Integer;
begin
  for i := 0 to (ComponentCount-1) do
    if (Components[I] is TCheckBox) and ((Components[I]).GetParentComponent.Name = 'Panel1') then
      if FInstacaoFile <> nil then
        FInstacaoFile.WriteBool('Instalacao', TCheckBox(Components[I]).Caption, TCheckBox(Components[I]).Checked);

  if FInstacaoFile <> nil then
    FInstacaoFile.WriteString('Instalacao', 'BancoDeDados', rgServer.Items.Strings[rgServer.ItemIndex]);

end;
}

procedure TFrmMain.OnAfterMovNext;
begin

  {
  if pgWizard.ActivePage = tsConfiguracao then
    SaveFileInfo
  else if pgWizard.ActivePage = tsConcluir then
    SaveFileInfo
  }

  if pgWizard.ActivePage = tsInstallType then
  begin
    Panel2.Visible     := (rgTipoInstall.ItemIndex = 1);
    CheckBox5.Visible  := Panel2.Visible;
    CheckBox6.Visible  := Panel2.Visible;
    CheckBox7.Visible  := Panel2.Visible;
    CheckBox52.Visible := Panel2.Visible;
  end;

  SaveFileInfo;

end;

{
procedure TFrmMain.SaveConfiguracao;
var
  i : Integer;
begin
  for i := 0 to (ComponentCount-1) do
    if (Components[I] is TCheckBox) and ((Components[I]).GetParentComponent.Name = 'tsConfiguracao') then
      if FInstacaoFile <> nil then
        FInstacaoFile.WriteBool('Instalacao', TCheckBox(Components[I]).Caption, TCheckBox(Components[I]).Checked);
end;
}

procedure TFrmMain.Button2Click(Sender: TObject);
begin
  CheckBox1.Checked  := FileExists(MR_DIR + '\UpdatePack4.zip');
  CheckBox2.Checked  := FileExists(MR_DIR + '\CashRegister.zip');
  CheckBox3.Checked  := FileExists(MR_DIR + '\Instalador.zip');
  CheckBox4.Checked  := FileExists(MR_DIR + '\MRReportInstall.exe');
  CheckBox5.Checked  := FileExists(MR_DIR + '\MSDE.zip');
  CheckBox51.Checked := FileExists(MR_DIR + '\POSServer.zip');
end;

procedure TFrmMain.UnZipFile(DestDir, ZipFileName: String);
begin

  try
    UnZipper.BaseDirectory := DestDir;
    UnZipper.FileName      := ZipFileName;
    try
      UnZipper.ExtractFiles('*.*');
    finally
      UnZipper.CloseArchive;
    end;
  except
  end;

end;

procedure TFrmMain.btnExtractClick(Sender: TObject);
begin

  AbMeter1.Visible := True;
  
  if FileExists(MR_DIR + '\UpdatePack4.zip') then
  begin
    if not DirectoryExists(MR_INSTALL + '\UpdatePack4') then
      ForceDirectories(MR_INSTALL + '\UpdatePack4');
    UnZipFile(MR_INSTALL + '\UpdatePack4', MR_DIR + '\UpdatePack4.zip');
    CopyFolder(MR_INSTALL + '\UpdatePack4\mrfiles\*.*', MR_INSTALL, FO_COPY, True, True);
  end;

  if FileExists(MR_DIR + '\CashRegister.zip') then
  begin
    if not DirectoryExists(MR_INSTALL + '\PDV') then
      ForceDirectories(MR_INSTALL + '\PDV');

    UnZipFile(MR_INSTALL + '\PDV', MR_DIR + '\CashRegister.zip');
  end;

  if FileExists(MR_DIR + '\POSServer.zip') then
  begin
    if not DirectoryExists(MR_INSTALL + '\POSServer') then
      ForceDirectories(MR_INSTALL + '\POSServer');

    UnZipFile(MR_INSTALL + '\POSServer', MR_DIR + '\POSServer.zip');
  end;

  if FileExists(MR_DIR + '\Instalador.zip') then
    UnZipFile(MR_INSTALL, MR_DIR + '\Instalador.zip');

  if FileExists(MR_DIR + '\MRReportInstall.exe') then
    CopyFile(MR_DIR + '\MRReportInstall.exe', MR_INSTALL + '\MRReportInstall.exe', True);

  if (rgTipoInstall.ItemIndex = 1) then
  begin
    if FileExists(MR_DIR + '\MSDE.zip') then
      UnZipFile(MR_INSTALL, MR_DIR + '\MSDE.zip');
  end
  else
  begin
    if FileExists(MR_INSTALL + '\MRDailyMaintenance.exe') then
      FileDelete(MR_INSTALL + '\MRDailyMaintenance.exe');

    if FileExists(MR_INSTALL + '\MRQueryAnalyzer.exe') then
      FileDelete(MR_INSTALL + '\MRQueryAnalyzer.exe');

    if FileExists(MR_INSTALL + '\MRStartup.exe') then
      FileDelete(MR_INSTALL + '\MRStartup.exe');

    if FileExists(MR_INSTALL + '\Wizard.exe') then
      FileDelete(MR_INSTALL + '\Wizard.exe');

    if FileExists(MR_INSTALL + '\scktsrvr.exe') then
      FileDelete(MR_INSTALL + '\scktsrvr.exe');

    if FileExists(MR_INSTALL + '\MRAppServer.exe') then
      FileDelete(MR_INSTALL + '\MRAppServer.exe');

    if FileExists(MR_INSTALL + '\MRBackup.exe') then
      FileDelete(MR_INSTALL + '\MRBackup.exe');

    if FileExists(MR_INSTALL + '\MainRetailDB.dat') then
      FileDelete(MR_INSTALL + '\MainRetailDB.dat');

  end;

  CheckBox8.Checked := True;
  btnExtract.Enabled := False;  

  AbMeter1.Visible := False;
end;

procedure TFrmMain.CheckBox8Click(Sender: TObject);
begin
  btnExtract.Enabled := not CheckBox8.Checked;
end;

procedure TFrmMain.rgServerClick(Sender: TObject);
begin
  lbSQLInfo.Visible := (rgServer.ItemIndex = 1);
end;

procedure TFrmMain.btnMSDEClick(Sender: TObject);
begin

  if FileExists(MR_INSTALL + '\MRStartup.exe') then
    ExecuteFile(MR_INSTALL + '\MRStartup.exe', '', '', 1);

end;

procedure TFrmMain.LoadFileInfo;
var
  i : Integer;
begin

  for i := 0 to (ComponentCount-1) do
  begin
    if (Components[I] is TCheckBox) then
      if FInstacaoFile <> nil then
        TCheckBox(Components[I]).Checked := FInstacaoFile.ReadBool('Instalacao', TCheckBox(Components[I]).Caption, False);
  end;


  Panel1.Visible := True;
end;

procedure TFrmMain.Button3Click(Sender: TObject);
begin

  if FileExists(MR_INSTALL + '\UpdatePack4\MRUpdate.exe') then
  begin
    ExecuteFile(MR_INSTALL + '\UpdatePack4\MRUpdate.exe', '', '', 1);
    CheckBox30.Checked := True;
  end;

end;

procedure TFrmMain.Button4Click(Sender: TObject);
begin

  if FileExists(MR_INSTALL + '\MRWizard.exe') then
  begin
    ExecuteFile(MR_INSTALL + '\MRWizard.exe', '', '', 1);
    CheckBox9.Checked := True;
  end;


end;

procedure TFrmMain.Button5Click(Sender: TObject);
begin

  if FileExists(MR_INSTALL + '\MRReportInstall.exe') then
  begin
    ExecuteFile(MR_INSTALL + '\MRReportInstall.exe', '', '', 1);
    CheckBox12.Checked := True;
  end;

end;

procedure TFrmMain.SaveFileInfo;
var
  i : Integer;
begin

  for i := 0 to (ComponentCount-1) do
    if (Components[I] is TCheckBox) then
      if FInstacaoFile <> nil then
        FInstacaoFile.WriteBool('Instalacao', TCheckBox(Components[I]).Caption, TCheckBox(Components[I]).Checked);

  if FInstacaoFile <> nil then
  begin
    FInstacaoFile.WriteString('Instalacao', 'BancoDeDados', rgServer.Items.Strings[rgServer.ItemIndex]);
    FInstacaoFile.WriteString('Instalacao', 'Tipo', rgTipoInstall.Items.Strings[rgTipoInstall.ItemIndex]);
  end;

end;

procedure TFrmMain.Label7Click(Sender: TObject);
begin
  OpenURL(TLabel(Sender).Caption);
end;

procedure TFrmMain.ForwardEmail;
begin
(*
  with Email1 do
  begin
    AttachedFiles.Clear;
    Recipients.Add('suporte@mainretail.com');
    Recipients.Add('comercial@mainretail.com');

    FromName           := edtUsuario.Text;
    Subject            := 'Instalação e configuração - ' + edtCliente.Text;
    Body               := 'Instalação e configuração do novo cliente ' + edtCliente.Text;

    if FileExists(ExtractFileDir(Application.ExeName) + '\' + edtCliente.Text + '.ini') then
      AttachedFiles.Add(ExtractFileDir(Application.ExeName) + '\' + edtCliente.Text + '.ini');

    //Mostra o Email
    ShowDialog := True;
    SendMail;
  end;
*)
end;

procedure TFrmMain.Button6Click(Sender: TObject);
var
  sFileName : String;
begin

  //Open and save socket info
  sFileName := MR_INSTALL + '\scktsrvr.exe';
  if FileExists(sFileName) then
  begin
    with TRegistry.Create do
    begin
      RootKey := HKEY_LOCAL_MACHINE;
      OpenKey(REG_PATH, False);
      if not ValueExists('SocketSvr') then
         WriteString('SocketSvr', sFileName);
      Free;
    end;

    ShellExecute(handle, 'open', PChar(sFileName), nil, nil, 1);
  end;


  CheckBox13.Checked := True;
end;

function TFrmMain.RegisterDLLs: Boolean;
var
  FileName : String;
begin

  Result := True;

  try
    FileName := MR_INSTALL+'\midas.dll';
    if FileExists(FileName) then
     ShellExecute(handle, 'open', 'regsvr32.exe', PChar(QuotedStr(FileName+' /s')), nil, 1);

    FileName := MR_INSTALL+'\Roboex32.dll';
    if FileExists(FileName) then
     ShellExecute(handle, 'open', 'regsvr32.exe', PChar(QuotedStr(FileName+' /s')), nil, 1);

    FileName := MR_INSTALL+'\crpe32.dll';
    if FileExists(FileName) then
     ShellExecute(handle, 'open', 'regsvr32.exe', PChar(QuotedStr(FileName+' /s')), nil, 1);
  except
    raise;
    Result := False;
    end;

end;

procedure TFrmMain.Button7Click(Sender: TObject);
begin
  RegisterDLLs;
  CheckBox31.Checked := True;
end;

function TFrmMain.ReturnComputerName: string;
var
   CompName: PChar;
   AComputer : string;
   AWritten: Cardinal;
begin

   SetLength(AComputer, MAX_COMPUTERNAME_LENGTH + 1);
   AWritten := Length(AComputer);

   GetMem(CompName, AWritten);
   try
      GetComputerName(CompName, AWritten);
      Result := CompName;
   finally
      FreeMem(CompName);
   end;
end;


procedure TFrmMain.Button8Click(Sender: TObject);
var
  sHostName, ClientID : String;
begin

  if OpenConnection then
  begin
    if (sServer <> '.') and (sServer <> '(local)') and (sServer <> '') then
      sHostName := sServer
    else
      sHostName := ReturnComputerName;

    ClientID := 'MR';

    with TIniFile.Create(MR_INSTALL + '\MRAppServer.ini') do
    try
      WriteString(ClientID, 'DriverName', 'SQLOLEDB.1');
      WriteString(ClientID, 'BlobSize', '-1');
      WriteString(ClientID, 'HostName', sHostName);
      WriteString(ClientID, 'DataBase', sDBAlias);
      WriteString(ClientID, 'User', EncodeServerInfo(sUser, 'User', CIPHER_TEXT_STEALING, FMT_UU));
      WriteString(ClientID, 'Password', EncodeServerInfo(sPW, 'PW', CIPHER_TEXT_STEALING, FMT_UU));
      WriteBool(ClientID, 'UseNetLib', False);
    finally
      Free;
    end;

    with TIniFile.Create(MR_INSTALL + '\MRReport.ini') do
    try
      WriteString('Connection', 'Type', 'SOCKET');
      WriteString('Connection', 'ClientID', ClientID);
      WriteString('Connection', 'Host', sHostName);
      WriteString('Connection', 'Port', '211');

      WriteString('Default', 'ReportPath', MR_INSTALL + '\Reports\');
      WriteString('Default', 'LogoPath', '');
      WriteString('Default', 'UpdateFile', 'http://www.mainretail.com/download/reports/versioncontrol.ini');
      WriteInteger('Default', 'IDLanguage', 1);
    finally
      Free;
    end;

    if not DirectoryExists(MR_INSTALL + '\Reports') then
      ForceDirectories(MR_INSTALL + '\Reports');

    if FileExists(MR_INSTALL + '\MRReport.exe') then
      ExecuteFile(MR_INSTALL + '\MRReport.exe', '', '', 1);

    CheckBox14.Checked := True;
  end
  else
    ShowMessage('Falha ao conectar no servidor!');

end;

procedure TFrmMain.Button9Click(Sender: TObject);
begin
  RegisterDLLs;
  CheckBox35.Checked := True;
end;

procedure TFrmMain.Button10Click(Sender: TObject);
var
  sHostName, ClientID : String;
begin

  if OpenConnection then
  begin
    sHostName := '';

    if (sServer <> '.') and (sServer <> '(local)') and (sServer <> '') then
      sHostName := sServer;

    if sHostName = '' then
      ShowMessage('Falha ao conectar no servidor!');

    ClientID := 'MR';

    with TIniFile.Create(MR_INSTALL + '\MRReport.ini') do
    try
      WriteString('Connection', 'Type', 'SOCKET');
      WriteString('Connection', 'ClientID', ClientID);
      WriteString('Connection', 'Host', sHostName);
      WriteString('Connection', 'Port', '211');

      WriteString('Default', 'ReportPath', MR_INSTALL + '\Reports\');
      WriteString('Default', 'LogoPath', '');
      WriteString('Default', 'UpdateFile', 'http://www.mainretail.com/download/reports/versioncontrol.ini');
      WriteInteger('Default', 'IDLanguage', 1);
    finally
      Free;
    end;

    if not DirectoryExists(MR_INSTALL + '\Reports') then
      ForceDirectories(MR_INSTALL + '\Reports');

    if FileExists(MR_INSTALL + '\MRReport.exe') then
      ExecuteFile(MR_INSTALL + '\MRReport.exe', '', '', 1);

  end
  else
    ShowMessage('Falha ao conectar no servidor!');

end;

procedure TFrmMain.Button11Click(Sender: TObject);
begin

  if FileExists(MR_INSTALL + '\UpdatePack4\MRUpdate.exe') then
  begin
    ExecuteFile(MR_INSTALL + '\UpdatePack4\MRUpdate.exe', '', '', 1);
    CheckBox37.Checked := True;
  end;

end;

procedure TFrmMain.Button12Click(Sender: TObject);
begin

  if FileExists(MR_INSTALL + '\MRReportInstall.exe') then
  begin
    ExecuteFile(MR_INSTALL + '\MRReportInstall.exe', '', '', 1);
    CheckBox38.Checked := True;
  end;

end;

procedure TFrmMain.Button13Click(Sender: TObject);
begin
  if FileExists(MR_INSTALL + '\MRBackup.exe') then
  begin
    if BackupScheduleCreate then
      ScheduleEdit;
    CheckBox11.Checked := True;
  end;
end;

function TFrmMain.BackupScheduleCreate: Boolean;
var
  HR: HRESULT;
  TaskName: string;
  WorkItem: IUnknown;
  riid, riid2: TGUID;
  AppName, AppDir : String;
  piNewTrigger: Word;
  ITTrigger: ITaskTrigger;
  TaskTrig: TTaskTRIGGER;
begin
  Result := False;

  riid  := CLSID_CTask;
  riid2 := IID_IScheduledWorkItem;

  TaskName := 'MRBackup.job';
  Init;
  HR := SchedulingAgent.NewWorkItem(StrToWide(TaskName), riid, riid2, WorkItem);
  Task := ITask(WorkItem); //required for save
  ScheduledWorkItem := IScheduledWorkItem(WorkItem);
  if HR <> S_OK then
  begin
    ShowMessage('Could not create the job ' + taskname + ' Error Code :' + IntTohex(hr, 8));
    Exit;
  end;

  //Application Name
  AppName := '"'+MR_INSTALL + '\MRBackup.exe'+'"';

  HR := Task.SetApplicationName(StrToWide(AppName));
  if HR <> S_OK then
  begin
    showMessage('Error in setting Application Name to :' + (AppName) + 'Error Code:' + IntTohex(HR, 8));
    Exit;
  end;

  //Application Path
  AppDir := '"'+MR_INSTALL+'"';

  hr := Task.SetWorkingDirectory(StrToWide(AppDir));
  if HR <> S_OK then
  begin
    ShowMessage('Error in setting Directory to :' + AppDir + 'Error Code:' + IntTohex(hr, 8));
    Exit;
  end;

  //Comment
  hr := Task.SetComment(StrToWide('Calculate Curve ABC and Computer Auto Request'));
  if hr <> S_OK then
  begin
   ShowMessage('Set Comment failed with errorcode :' + IntTohex(hr, 8) + #13#10);
   Exit;
  end;

  hr := SaveTAsk;
  if (hr <> S_OK) then
  begin
    ShowMessage('Save task failed with error code' + IntTohex(hr, 8) + #13#10);
    Exit;
  end;

  //Schedule
  HR := Task.CreateTrigger(piNewTrigger, ITTrigger);
  if HR <> S_OK then
  begin
    ShowMessage('Error in Create Trigger Error Code:' + IntToHex(HR, 8));
    Exit;
  end;

  // Add code to set trigger structure.
  ZeroMemory(@TaskTrig, sizeof(TASK_TRIGGER));
  TaskTrig.cbTriggerSize := sizeof(TASK_TRIGGER);
  TaskTrig.Reserved1 := 0;

  TaskTrig.wBeginYear := StrToInt(FormatDateTime('yyyy', Now));
  TaskTrig.wBeginMonth := StrToInt(FormatDateTime('mm', Now));
  TaskTrig.wBeginDay := StrToInt(FormatDateTime('dd', Now));
  //TaskTrig.wEndYear := StrToInt(FormatDateTime('yyyy', Now)) + 5;
  //TaskTrig.wEndMonth := 1;
  //TaskTrig.wEndDay := 1;
  TaskTrig.wStartHour := 8;
  TaskTrig.wStartMinute := 0;
  TaskTrig.MinutesDuration := 0;
  TaskTrig.MinutesInterval := 0;
  TaskTrig.rgFlags := TASK_FLAG_HIDDEN;

  TaskTrig.TriggerType := TASK_TIME_TRIGGER_DAILY;
  TaskTrig.wRandomMinutesInterval := 0;
  TaskTrig.Reserved2 := 0;

  hr := ITTrigger.SetTrigger(@TaskTrig);
  if (hr <> S_OK) then
  begin
    //ShowMessage(MessageFromValue(hr));
    //Exit;
  end;

  hr := SaveTAsk;
  if (hr <> S_OK) then
  begin
    ShowMessage('Save task failed with error code' + IntTohex(hr, 8) + #13#10);
    Exit;
  end;

  Result := True;
end;

procedure TFrmMain.ScheduleEdit;
var
  hr: HRESULT;
begin
  Task := GetITask('MRBackup.job');
  hr := Task.EditWorkItem(frmMAin.Handle, 0);
  if hr <> S_OK then
    ShowMessage('EditWorkItem return Code :' + IntTohex(hr, 8) + #13#10);
end;

procedure TFrmMain.Button14Click(Sender: TObject);
begin

  with TRegistry.Create do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKey(REG_PATHP_PDV, False);
    WriteString('ServerFilesDir', edtServerFileDir.Text + '\');
    WriteString('RemoteWorkingDir', edtRemoteWorkDir.Text + '\');
    Free;
  end;

  if not DirectoryExists(edtServerFileDir.Text) then
    ForceDirectories(edtServerFileDir.Text);

  if not DirectoryExists(edtRemoteWorkDir.Text) then
    ForceDirectories(edtRemoteWorkDir.Text);

  if FileExists(MR_INSTALL + '\PDV\POSServer.exe') then
    ExecuteFile(MR_INSTALL + '\PDV\POSServer.exe', '', '', 1);

end;

procedure TFrmMain.btnRemoteDirClick(Sender: TObject);
begin

  if OD.Execute then
    edtPOSRemote.Text := ExtractFileDir(OD.FileName);

end;

procedure TFrmMain.SpeedButton1Click(Sender: TObject);
begin

  if OD.Execute then
    edtPOSServerFiles.Text := ExtractFileDir(OD.FileName);

end;

procedure TFrmMain.Button15Click(Sender: TObject);
begin

  with TRegistry.Create do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKey(REG_PATHP_PDV, False);
    WriteString('ServerFilesDir', edtPOSServerFiles.Text + '\');
    WriteString('RemoteWorkingDir', edtPOSRemote.Text + '\');
    WriteString('LocalWorkingDir', MR_INSTALL + '\PDV\POSSales\');
    WriteInteger('PersistenceType', rgTipoPDV.ItemIndex); 
    Free;
  end;

  if not DirectoryExists(MR_INSTALL + '\PDV\POSSales') then
    ForceDirectories(MR_INSTALL + '\PDV\POSSales');

  if FileExists(MR_INSTALL + '\PDV\CashRegister.exe') then
    ExecuteFile(MR_INSTALL + '\PDV\CashRegister.exe', '', '', 1);

end;

procedure TFrmMain.rgTipoPDVClick(Sender: TObject);
begin
  Panel3.Visible := (rgTipoPDV.ItemIndex = 1);
end;

procedure TFrmMain.Button16Click(Sender: TObject);
begin

  if not DirectoryExists(MR_INSTALL + '\PDV') then
    ForceDirectories(MR_INSTALL + '\PDV');

  with TIniFile.Create(MR_INSTALL + '\PDV\KeyFunction.ini') do
  begin
    WriteInteger('Keys', '112', 8);
    WriteInteger('Keys', '113', 1);
    WriteInteger('Keys', '114', 4);
    WriteInteger('Keys', '115', 3);
    WriteInteger('Keys', '45', 11);
    WriteInteger('Keys', '46', 7);
    WriteInteger('Keys', '116', 13);
    WriteInteger('Keys', '117', 16);
    WriteInteger('Keys', '118', 9);
    WriteInteger('Keys', '119', 14);
    WriteInteger('Keys', '35', 10);
  end;

  CheckBox50.Checked := True;
end;

end.


