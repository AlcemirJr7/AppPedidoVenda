unit uModelBase;

interface
uses
  uUtils, uMsgSistema, uValidacoes;

type
  TModelBase = class
  public
    AppUtils : TAppUtils;
    AppMsg   : TMsgSistema;
    AppValidacoes : TValidacoes;

    destructor Destroy; override;

end;
implementation

{ TModelBase }

destructor TModelBase.Destroy;
begin
  AppUtils.DisposeOf;
  AppMsg.DisposeOf;
  AppValidacoes.DisposeOf;
  inherited;
end;

end.
