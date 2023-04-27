unit uClientePesquisaModel;

interface

uses
  System.SysUtils, uModelBase;

type
  TClientePesquisa = class(TModelBase)
  private
    FCodigo    : integer;
    FValor     : string;
  public
    constructor Create(Valor : string);
    destructor Destroy; override;
    procedure SetValor(Valor : string);

    property Valor : string read FValor write FValor;
end;

implementation

{ TClientePesquisa }

constructor TClientePesquisa.Create(Valor: string);
begin
  SetValor(Valor);
end;

destructor TClientePesquisa.Destroy;
begin
  inherited;
end;

procedure TClientePesquisa.SetValor(Valor: string);
begin

  if not(TryStrToInt(Valor,FCodigo)) then
  begin
    FValor  := '"%'+Valor+'%"';
    FCodigo := 0;
  end
  else
    FValor := '"'+Valor+'"';

end;

end.
