unit uProdutoPesquisaModel;

interface

uses
  System.SysUtils, System.Classes,System.Generics.Collections,uModelBase;

type

  TProdutoPesquisa = class(TModelBase)
  private
    FCodigo      : integer;
    FValor       : string;
  public
    constructor Create(Valor : string);
    destructor  Destroy; override;
    procedure   SetValor(Valor : string);

    property Valor       : string         read FValor;

end;

implementation

{ TProdutoPesquisa }

constructor TProdutoPesquisa.Create(Valor: string);
begin
  SetValor(Valor);
end;

destructor TProdutoPesquisa.Destroy;
begin
  inherited;
end;

procedure TProdutoPesquisa.SetValor(Valor: string);
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
