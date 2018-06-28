unit uDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, Db, ADODB, uDMParent;

type
  TDM = class(TDMParent)
    imgLarge: TImageList;
    imgSmall: TImageList;
    qryFreeSQL: TADODataSet;
    Connection: TADOConnection;
    cmdFreeSQL: TADOCommand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

end.
