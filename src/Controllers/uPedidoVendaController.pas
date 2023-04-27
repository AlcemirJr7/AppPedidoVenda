unit uPedidoVendaController;

interface

uses
  uControllerBase,uAppDataSet, uPedidoVendaRepositorio, uPedidoVendaModel, uPedidoVendaItemModel,
  System.SysUtils, System.Classes;

type
  TPedidoVendaController = class(TControllerBase)

  strict private
    _Repositorio : TPedidoVendaRepositorio;

    procedure ValidaPedidoItem(Model : TPedidoVendaItemModel);
    procedure ValidaPedido(Model : TPedidoVendaModel);

  public
    constructor Create(AOwner : TComponent);
    destructor Destroy; override;

    //Capa Pedido
    procedure IniciarNovoPedido(Model : TPedidoVendaModel; var DataSet : TAppDataSet);
    procedure GravarPedido(Model : TPedidoVendaModel);

    //Itens
    procedure IncluirItem(Model  : TPedidoVendaItemModel; var DataSet : TAppDataSet);
    procedure DeletarItem(Model  : TPedidoVendaItemModel; var DataSet : TAppDataSet);
    procedure EditarItem(Model   : TPedidoVendaItemModel; var DataSet : TAppDataSet);

end;


implementation

{ TPedidoVendaController }

constructor TPedidoVendaController.Create(AOwner : TComponent);
begin
  _Repositorio := TPedidoVendaRepositorio.Create(AOwner);
end;

procedure TPedidoVendaController.DeletarItem(Model: TPedidoVendaItemModel; var DataSet: TAppDataSet);
begin

  try

    _Repositorio.ExcluirItem(Model);

    _Repositorio.ConsultarItems(Model, DataSet);

  except
    raise;
  end;


end;

destructor TPedidoVendaController.Destroy;
begin
  FreeAndNil(_Repositorio);
  inherited;
end;

procedure TPedidoVendaController.EditarItem(Model: TPedidoVendaItemModel; var DataSet: TAppDataSet);
begin

  try

    ValidaPedidoItem(Model);

    _Repositorio.AtualizarItem(Model);
    _Repositorio.ConsultarItems(Model,DataSet);

  except
    raise;
  end;


end;

procedure TPedidoVendaController.GravarPedido(Model: TPedidoVendaModel);
begin

  try

    ValidaPedido(Model);

    _Repositorio.AtualizarTotalPedido(Model);
    _Repositorio.Commit;

  except
    raise;
  end;

end;

procedure TPedidoVendaController.IncluirItem(Model: TPedidoVendaItemModel; var DataSet : TAppDataSet);
begin

  try

    ValidaPedidoItem(Model);

    _Repositorio.InserirItem(Model);
    _Repositorio.ConsultarItems(Model,DataSet);

  except
    raise;
  end;

end;

procedure TPedidoVendaController.IniciarNovoPedido(Model : TPedidoVendaModel; var DataSet : TAppDataSet);
begin

  try

    _Repositorio.Criar(Model, DataSet);

  except
    raise;
  end;

end;

procedure TPedidoVendaController.ValidaPedido(Model: TPedidoVendaModel);
begin
  AppValidacoes.When((Model.NumeroPedido  = varEmpty),Format(AppMsgSistema.VALIDACAO_MODEL,['Numero Pedido']));
  AppValidacoes.When((Model.CodigoCliente = varEmpty),Format(AppMsgSistema.VALIDACAO_MODEL,['Código Cliente']));
end;

procedure TPedidoVendaController.ValidaPedidoItem(Model: TPedidoVendaItemModel);
begin
  AppValidacoes.When((Model.NumeroPedido  = varEmpty),Format(AppMsgSistema.VALIDACAO_MODEL,['Numero Pedido']));
  AppValidacoes.When((Model.ProdutoCodigo = varEmpty),Format(AppMsgSistema.VALIDACAO_MODEL,['Código Produto']));
  AppValidacoes.When((Model.Quantidade    = varEmpty),Format(AppMsgSistema.VALIDACAO_MODEL,['Quantidade']));
  AppValidacoes.When((Model.ValorUnitario = varEmpty),Format(AppMsgSistema.VALIDACAO_MODEL,['Valor Unitário']));
  AppValidacoes.When((Model.ValorTotal    = varEmpty),Format(AppMsgSistema.VALIDACAO_MODEL,['Valor Total']));
end;

end.
