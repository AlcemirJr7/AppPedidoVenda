unit uValidacoes;

interface
uses
  System.SysUtils,Vcl.Dialogs;

type

  TValidacoes = class public
    class procedure When(Condicao : Boolean; const Msg : string);static;

end;

implementation

{ TValidacoes }

class procedure TValidacoes.When(Condicao : Boolean; const Msg: string);
begin

  if Condicao then
    raise Exception.Create(Msg);

end;

end.
