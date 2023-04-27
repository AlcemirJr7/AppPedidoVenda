unit uPedidoVendaRepositorio;

interface
uses
  uRepositorioBase, uPedidoVendaModel, uPedidoVendaItemModel, uPedidoVendaDBContexto, uAppDataSet,

  System.SysUtils, System.Classes;

type
  TPedidoVendaRepositorio = class(TRepositorioBase<TPedidoVendaModel, TAppDataSet>)

  strict private
    _Contexto : TPedidoVendaDBContexto;

    function RetornaSQLInsertItem(params : TPedidoVendaItemModel)           : string;
    function RetornaSQLInsertPedido(params : TPedidoVendaModel)             : string;
    function RetornaSQLConsultaItemPedido(params : TPedidoVendaItemModel)   : string;
    function RetornaSQLDeletarItem(params : TPedidoVendaItemModel)          : string;
    function RetornaSQLAtualizarItem(params : TPedidoVendaItemModel)        : string;
    function RetornaSQLAtualizaValorTotalPedido(params : TPedidoVendaModel) : string;
    function RetornaSQLConsultaPedido(params : TPedidoVendaModel)           : string;

  public
    constructor Create(AOwner : TComponent);
    destructor  Destroy; override;

    procedure Criar(Model     : TPedidoVendaModel; var DataSet : TAppDataSet);override;
    procedure Atualizar(Model : TPedidoVendaModel; var DataSet : TAppDataSet);override;
    procedure Excluir(Model   : TPedidoVendaModel; var DataSet : TAppDataSet);override;
    procedure Consultar(Model : TPedidoVendaModel; var DataSet : TAppDataSet);override;
    function  IniciarTransacao : integer;override;
    function  inTransacao : Boolean;override;
    procedure Rollback;override;
    procedure Commit;override;

    procedure AtualizarItem(Model : TPedidoVendaItemModel);
    procedure ExcluirItem(Model : TPedidoVendaItemModel);
    procedure ConsultarItems(Model : TPedidoVendaItemModel; var DataSet : TAppDataSet);
    procedure InserirItem(Model : TPedidoVendaItemModel);
    procedure AtualizarTotalPedido(Model : TPedidoVendaModel);


end;

implementation

{ TPedidoVendaRepositorio }

procedure TPedidoVendaRepositorio.InserirItem(Model : TPedidoVendaItemModel);
var
  aux : TAppDataSet;
begin

  if inTransacao then
  begin

    aux := TAppDataSet.Create(nil);

    try

      try

        aux.Close;
        aux.Connection := _Contexto.MySQL;
        aux.SQL.Clear;
        aux.SQL.Add(RetornaSQLInsertItem(Model));
        aux.ExecSQL;


      except on e:Exception do
        raise Exception.Create('Não foi possível incluir item. ERRO:'+#13+e.Message+#13);
      end;

    finally
      aux.DisposeOf;
    end;

  end;


end;

procedure TPedidoVendaRepositorio.AtualizarItem(Model: TPedidoVendaItemModel);
var
  aux : TAppDataSet;
begin

  aux := TAppDataSet.Create(nil);

  try

    try

      aux.Close;
      aux.Connection := _Contexto.MySQL;
      aux.SQL.Clear;
      aux.SQL.Add(RetornaSQLAtualizarItem(Model));
      aux.ExecSQL;

    except on e:Exception do
      raise Exception.Create('Erro ao atualizar item. ERRO: '+#13+e.Message);
    end;

  finally
    aux.DisposeOf;
  end;

end;


procedure TPedidoVendaRepositorio.ExcluirItem(Model: TPedidoVendaItemModel);
var
  aux : TAppDataSet;
begin

  if inTransacao then
  begin

    aux := TAppDataSet.Create(nil);

    try

      try

        aux.Close;
        aux.Connection := _Contexto.MySQL;
        aux.SQL.Clear;
        aux.SQL.Add(RetornaSQLDeletarItem(Model));
        aux.ExecSQL


      except on e:Exception do
        raise Exception.Create('Erro ao Excluir item. ERRO: '+#13+e.Message+#13);
      end;

    finally
      aux.DisposeOf;
    end;

  end;



end;

procedure TPedidoVendaRepositorio.ConsultarItems(Model: TPedidoVendaItemModel;
                                                 var DataSet: TAppDataSet);
begin

  try

    DataSet.Close;
    DataSet.Connection := _Contexto.MySQL;
    DataSet.SQL.Clear;
    DataSet.SQL.Add(RetornaSQLConsultaItemPedido(Model));
    DataSet.Open;

  except on e:Exception do
    raise Exception.Create('Não foi possível consultar items do pedido. ERRO:'+#13+e.Message+#13);
  end;

end;

procedure TPedidoVendaRepositorio.Atualizar(Model: TPedidoVendaModel; var DataSet: TAppDataSet);
var
  aux   : TAppDataSet;
begin
  inherited;

  aux := TAppDataSet.Create(nil);

  try

    try

      aux.Close;
      aux.Connection := _Contexto.MySQL;
      aux.SQL.Clear;
      aux.SQL.Add(RetornaSQLAtualizaValorTotalPedido(Model));
      aux.ExecSQL;

    except on e:Exception do
      raise Exception.Create('Erro ao atualizar valor total do pedido. ERRO: '+#13+e.Message+#13);
    end;

  finally
    aux.DisposeOf;
  end;

end;

procedure TPedidoVendaRepositorio.AtualizarTotalPedido(Model : TPedidoVendaModel);
var
  aux   : TAppDataSet;
begin

  aux := TAppDataSet.Create(nil);

  try

    try

      aux.Close;
      aux.Connection := _Contexto.MySQL;
      aux.SQL.Clear;
      aux.SQL.Add(RetornaSQLAtualizaValorTotalPedido(Model));
      aux.ExecSQL;

    except on e:Exception do
      raise Exception.Create('Erro ao atualizar valor total do pedido. ERRO: '+#13+e.Message+#13);
    end;

  finally
    aux.DisposeOf;
  end;

end;


procedure TPedidoVendaRepositorio.Commit;
begin
  inherited;
  _Contexto.MySQL.CommitTrans;
end;

procedure TPedidoVendaRepositorio.Consultar(Model: TPedidoVendaModel; var DataSet: TAppDataSet);
begin
  inherited;

  try

    DataSet.Close;
    DataSet.Connection := _Contexto.MySQL;
    DataSet.SQL.Clear;
    DataSet.SQL.Add(RetornaSQLConsultaPedido(Model));
    DataSet.Open;

  except on e:Exception do
    raise Exception.Create('Erro ao consultar pedido. ERRO: '+#13+e.Message+#13);
  end;

end;

constructor TPedidoVendaRepositorio.Create(AOwner: TComponent);
begin
  _Contexto := TPedidoVendaDBContexto.Create(AOwner);
  _Contexto.MySQL.Open;
end;

procedure TPedidoVendaRepositorio.Criar(Model: TPedidoVendaModel; var DataSet: TAppDataSet);
begin
  inherited;

  try

    IniciarTransacao;

    DataSet.Close;
    DataSet.Connection := _Contexto.MySQL;
    DataSet.SQL.Clear;
    DataSet.SQL.Add(RetornaSQLInsertPedido(Model));

    if DataSet.ExecSQL > 0 then
    begin
      DataSet.SQL.Clear;
      DataSet.SQL.Add('select current_date() as data_emissao, ifnull(max(numero_pedido),1) as novo_numero_pedido from tb_pedido_venda');
      DataSet.Open;
    end;


  except on e:Exception do
    begin
      Rollback;
      raise Exception.Create('Não foi possível inserir novo pedido. ERRO:'+#13+e.Message+#13);
    end;

  end;

end;

destructor TPedidoVendaRepositorio.Destroy;
begin
  FreeAndNil(_Contexto);
  inherited;
end;

procedure TPedidoVendaRepositorio.Excluir(Model: TPedidoVendaModel; var DataSet: TAppDataSet);
begin
  inherited;

end;

function TPedidoVendaRepositorio.IniciarTransacao: integer;
begin

  try

    Result := _Contexto.MySQL.BeginTrans;

  except on e:Exception do
    raise Exception.Create('Não foi possível iniciar a transação. '+#13+' ERRO: '+e.Message);
  end;

end;

function TPedidoVendaRepositorio.inTransacao: Boolean;
begin

  try
    Result := _Contexto.MySQL.InTransaction;
  except
    Result := False;
  end;

end;

function TPedidoVendaRepositorio.RetornaSQLAtualizarItem(params: TPedidoVendaItemModel): string;
var
  SQL : string;
begin

  SQL := ' UPDATE tb_pedido_venda_item              ' +
         '    SET quantidade     = :quantidade ,    ' +
         '        valor_unitario = :valor_unitario, ' +
         '        valor_total    = :valor_total     ' +
         '  WHERE numero_pedido  = :numero_pedido   ' +
         '    AND id = :id; ';

  SQL := SQL.Replace(':id',params.Id.ToString);
  SQL := SQL.Replace(':numero_pedido',params.NumeroPedidoStr);
  SQL := SQL.Replace(':quantidade',params.QuantidadeSQL);
  SQL := SQL.Replace(':valor_unitario',params.ValorUnitarioSQL);
  SQL := SQL.Replace(':valor_total',params.ValorTotalSQL);

  Result := SQL;

end;

function TPedidoVendaRepositorio.RetornaSQLAtualizaValorTotalPedido(params: TPedidoVendaModel): string;
var
  SQL : string;
begin

  SQL := 'update tb_pedido_venda             ' +
            '   set valor_total = :valor_total  ' +
            ' where numero_pedido = :numero_pedido ';

  SQL := SQL.Replace(':numero_pedido', params.NumeroPedido.ToString);
  SQL := SQL.Replace(':valor_total',   params.ValorTotalSQL);

  Result := SQL;

end;

function TPedidoVendaRepositorio.RetornaSQLConsultaItemPedido(params: TPedidoVendaItemModel): string;
var
  SQL : string;
begin

  SQL := 'select i.id,             ' +
            '       i.numero_pedido,  ' +
            '       i.produto_codigo, ' +
            '       concat(Format(i.quantidade,2,"de_DE")) as quantidade_str, ' +
            '       i.quantidade,     ' +
            '       i.valor_unitario, ' +
            '       concat("R$ ",Format(i.valor_unitario,2,"de_DE")) as valor_unitario_str, ' +
            '       concat("R$ ",Format(i.valor_total,2,"de_DE")) as valor_total_str, ' +
            '       i.valor_total, ' +
            '       p.descricao    ' +
            '  from tb_pedido_venda_item i ' +
            ' left join tb_produto p on (p.codigo = i.produto_codigo) ' +
            ' where i.numero_pedido = :numero_pedido ';

  SQL := SQL.Replace(':numero_pedido',params.NumeroPedidoStr);

  Result := SQL;

end;

function TPedidoVendaRepositorio.RetornaSQLConsultaPedido(params: TPedidoVendaModel): string;
var
  SQL : string;
begin

  SQL := 'SELECT numero_pedido,  ' +
         '       data_emissao,   ' +
         '       codigo_cliente, ' +
         '       valor_total     ' +
         '  FROM tb_pedido_venda ' +
         ' WHERE numero_pedido :numero_pedido ';

  SQL := SQL.Replace(':numero_pedido',params.NumeroPedido.ToString);

  Result := SQL;

end;

function TPedidoVendaRepositorio.RetornaSQLDeletarItem(params: TPedidoVendaItemModel): string;
var
  SQL : string;
begin

  SQL := 'DELETE FROM tb_pedido_venda_item       ' +
         '  WHERE numero_pedido = :numero_pedido ' +
         '    AND id= :id ;';

  SQL := SQL.Replace(':numero_pedido',params.NumeroPedidoStr);
  SQL := SQL.Replace(':id',params.Id.ToString);

  Result := SQL;

end;

function TPedidoVendaRepositorio.RetornaSQLInsertItem(params: TPedidoVendaItemModel): string;
var
  SQL, SQLparams : string;
begin

  Result := EmptyStr;

  SQL := 'INSERT INTO tb_pedido_venda_item ' +
         '(numero_pedido, ' +
         ' produto_codigo,' +
         ' quantidade,    ' +
         ' valor_unitario,' +
         ' valor_total)   ' +
         'VALUES' +
         '( :values );';

  SQLparams := params.NumeroPedidoStr   +', '+
               params.ProdutoCodigoStr  +', '+
               params.QuantidadeSQL     +', '+
               params.ValorUnitarioSQL  +', '+
               params.ValorTotalSQL;

  SQL := SQL.Replace(':values', SQLparams);

  Result := SQL;

end;

function TPedidoVendaRepositorio.RetornaSQLInsertPedido(params: TPedidoVendaModel): string;
var
  SQL, SQLparams  : string;
begin

  SQL := 'INSERT INTO tb_pedido_venda' +
         ' (data_emissao,   ' +
         '  codigo_cliente, ' +
         '  valor_total)    ' +
         ' VALUES           ' +
         ' ((select current_date()), :values );     ';

  SQLparams := params.CodigoCliente.ToString + ', ' + params.ValorTotalSQL;

  SQL := SQL.Replace(':values', SQLparams);

  Result := SQL;

end;

procedure TPedidoVendaRepositorio.Rollback;
begin
  inherited;
  _Contexto.MySQL.RollbackTrans;
end;

end.
