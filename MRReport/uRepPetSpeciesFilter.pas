unit uRepPetSpeciesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRepParentLookupFilter, DB, DBClient, siComp, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls;

type
  TRepPetSpeciesFilter = class(TRepParentLookupFilter)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDMReport;

{$R *.dfm}

initialization
  RegisterClass(TRepPetSpeciesFilter)

end.
