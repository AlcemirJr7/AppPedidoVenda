unit uRepositorioBase;

interface
uses
  uIRepositorioBase,System.Classes, uUtils, uValidacoes, uMsgSistema;

type
  TRepositorioBase<TModel,TDataSet> = class abstract(TInterfacedObject,IRepositorioBase<TModel,TDataSet>)

  public
    AppUtils      : TAppUtils;
    AppMsgSistema : TMsgSistema;
    AppValidadoes : TValidacoes;

    procedure Criar(Model     : TModel; var DataSet : TDataSet);virtual;
    procedure Atualizar(Model : TModel; var DataSet : TDataSet);virtual;
    procedure Excluir(Model   : TModel; var DataSet : TDataSet);virtual;
    procedure Consultar(Model : TModel; var DataSet : TDataSet);virtual;
    function  IniciarTransacao : integer;virtual;
    function  inTransacao : Boolean;virtual;
    procedure Rollback;virtual;
    procedure Commit;virtual;

end;

implementation

{ TRepositorioBase<TModel, TDataSet> }

procedure TRepositorioBase<TModel, TDataSet>.Atualizar(Model: TModel;
  var DataSet: TDataSet);
begin

end;

procedure TRepositorioBase<TModel, TDataSet>.Commit;
begin

end;

procedure TRepositorioBase<TModel, TDataSet>.Consultar(Model: TModel;
  var DataSet: TDataSet);
begin

end;

procedure TRepositorioBase<TModel, TDataSet>.Criar(Model: TModel;
  var DataSet: TDataSet);
begin

end;

procedure TRepositorioBase<TModel, TDataSet>.Excluir(Model: TModel;
  var DataSet: TDataSet);
begin

end;

function TRepositorioBase<TModel, TDataSet>.IniciarTransacao: integer;
begin

end;

function TRepositorioBase<TModel, TDataSet>.inTransacao: Boolean;
begin

end;

procedure TRepositorioBase<TModel, TDataSet>.Rollback;
begin

end;

end.
