unit uFrmPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.UITypes, uUtils, uMsgSistema, Data.DB, uAppDataSet;

type
  TfrmPadrao = class(TForm)
  private
    { Private declarations }

  public
    AppUtils : TAppUtils;
    AppMsg   : TMsgSistema;
    function IsDataSetValido(DataSet : TAppDataSet) : Boolean;
    destructor Destroy; override;

    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

destructor TfrmPadrao.Destroy;
begin
  AppUtils.DisposeOf;
  AppMsg.DisposeOf;
  inherited;
end;

function TfrmPadrao.IsDataSetValido(DataSet: TAppDataSet): Boolean;
begin

  Result := False;

  if DataSet <> nil then
    if not(DataSet.IsEmpty) then
      Result := True;

end;

end.
