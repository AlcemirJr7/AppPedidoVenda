unit uControllerBase;

interface
uses
  uValidacoes, uMsgSistema, uAppDataSet, uUtils;
type
  TControllerBase = class
  public
    AppUtils      : TAppUtils;
    AppMsgSistema : TMsgSistema;
    AppValidacoes : TValidacoes;
    destructor Destroy; override;
end;


implementation

{ TControllerBase }

destructor TControllerBase.Destroy;
begin
  AppUtils.DisposeOf;
  AppMsgSistema.DisposeOf;
  AppValidacoes.DisposeOf;
  inherited;
end;

end.
