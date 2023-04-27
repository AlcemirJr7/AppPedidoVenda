unit uAppDBContexto;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TAppDBContexto = class(TDataModule)
    MySQL: TADOConnection;
    procedure MySQLBeginTransComplete(Connection: TADOConnection;
      TransactionLevel: Integer; const Error: Error;
      var EventStatus: TEventStatus);
    procedure MySQLCommitTransComplete(Connection: TADOConnection;
      const Error: Error; var EventStatus: TEventStatus);
    procedure MySQLRollbackTransComplete(Connection: TADOConnection;
      const Error: Error; var EventStatus: TEventStatus);
  public
    destructor Destroy; override;
end;

var
  AppDBContexto: TAppDBContexto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

destructor TAppDBContexto.Destroy;
begin
  if MySQL.InTransaction then
    MySQL.RollbackTrans;
  MySQL.Close;
  inherited;
end;

procedure TAppDBContexto.MySQLBeginTransComplete(Connection: TADOConnection;
  TransactionLevel: Integer; const Error: Error; var EventStatus: TEventStatus);
begin
  MySQL.Execute('set autocommit = 0');
end;

procedure TAppDBContexto.MySQLCommitTransComplete(Connection: TADOConnection;
  const Error: Error; var EventStatus: TEventStatus);
begin
  MySQL.Execute('set autocommit = 1');
end;

procedure TAppDBContexto.MySQLRollbackTransComplete(Connection: TADOConnection;
  const Error: Error; var EventStatus: TEventStatus);
begin
  MySQL.Execute('set autocommit = 1');
end;

end.
