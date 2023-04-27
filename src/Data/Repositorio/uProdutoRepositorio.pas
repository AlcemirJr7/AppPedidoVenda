unit uProdutoRepositorio;

interface

uses
  uRepositorioBase, uProdutoModel, uProdutoPesquisaModel, uProdutoDBContexto,
  uAppDataSet, uUtils,
  System.Classes, System.SysUtils;

type
  TProdutoRepositorio = class(TRepositorioBase<TProdutoModel,TAppDataSet>)
  private
    _Contexto : TProdutoDBContexto;
    function RetornaSQLPesquisaGenerica(params : TProdutoPesquisa) : string;
    function RetornaSQLBuscaPeloCodigo(params  : TProdutoModel)    : string;
  public
    constructor Create(AOwner : TComponent);
    destructor Destroy; override;

    procedure Criar(Model     : TProdutoModel; var DataSet : TAppDataSet);override;
    procedure Atualizar(Model : TProdutoModel; var DataSet : TAppDataSet);override;
    procedure Excluir(Model   : TProdutoModel; var DataSet : TAppDataSet);override;
    procedure Consultar(Model : TProdutoModel; var DataSet : TAppDataSet);override;
    function  IniciarTransacao : integer;override;
    function  inTransacao : Boolean;override;
    procedure Rollback;override;
    procedure Commit;override;

    procedure PesquisaGenerica(Model : TProdutoPesquisa; var DataSet: TAppDataSet);

end;


implementation

{ TProdutoRepositorio }

function TProdutoRepositorio.RetornaSQLPesquisaGenerica(params : TProdutoPesquisa) : string;
var
  SQL : string;
begin

  SQL :=  'select codigo ,      ' +
          '	      descricao ,   ' +
          '       preco_venda,  ' +
          '       concat("R$ ",Format(preco_venda,2,"de_DE")) as preco_venda_str ' + // Sera Mostrado no Grid
          '  from tb_produto                            '+
          ' where lower(descricao) like lower( :valor ) '+
          ' 	or  codigo = :valor  ;                    ';

  SQL := SQL.Replace(':valor', params.Valor);

  Result := SQL;

end;

function TProdutoRepositorio.RetornaSQLBuscaPeloCodigo(params : TProdutoModel) : string;
var
  SQL : string;
begin

  SQL := 'select codigo ,      ' +
         '	      descricao ,   ' +
         '       preco_venda   ' +
         '  from tb_produto    ' +
         ' where codigo = :codigo ;';

  SQL := SQL.Replace(':codigo',params.CodigoStr);

  Result := SQL;

end;


procedure TProdutoRepositorio.Atualizar(Model: TProdutoModel;
  var DataSet: TAppDataSet);
begin
  inherited;

end;

procedure TProdutoRepositorio.Commit;
begin
  inherited;
  try
    _Contexto.MySQL.CommitTrans;
  except on e:Exception do
    raise Exception.Create('Erro ao commitar cliente. ERRO: '+#13+e.Message);
  end;

end;

procedure TProdutoRepositorio.Consultar(Model: TProdutoModel; var DataSet: TAppDataSet);
begin
  inherited;

  try

    DataSet.Close;
    DataSet.Connection  := _Contexto.MySQL;
    DataSet.SQL.Clear;
    DataSet.SQL.Add(RetornaSQLBuscaPeloCodigo(Model));
    DataSet.Open;

  except on e:Exception do
    raise Exception.Create('Erro ao fazer pesquisa do produto pelo codigo. ERRO'+#13+e.Message);
  end;

end;

constructor TProdutoRepositorio.Create(AOwner: TComponent);
begin
  _Contexto := TProdutoDBContexto.Create(AOwner);
  _Contexto.MySQL.Open;
end;

procedure TProdutoRepositorio.Criar(Model: TProdutoModel; var DataSet: TAppDataSet);
begin
  inherited;

end;

destructor TProdutoRepositorio.Destroy;
begin
  FreeAndNil(_Contexto);
  inherited;
end;

procedure TProdutoRepositorio.Excluir(Model: TProdutoModel; var DataSet: TAppDataSet);
begin
  inherited;

end;

function TProdutoRepositorio.IniciarTransacao: integer;
begin
  Result := _Contexto.MySQL.BeginTrans;
end;

function TProdutoRepositorio.inTransacao: Boolean;
begin
  Result := _Contexto.MySQL.InTransaction;
end;

procedure TProdutoRepositorio.PesquisaGenerica(Model: TProdutoPesquisa; var DataSet: TAppDataSet);
begin

  try

    DataSet.Close;
    DataSet.Connection  := _Contexto.MySQL;
    DataSet.SQL.Clear;
    DataSet.SQL.Add(RetornaSQLPesquisaGenerica(Model));
    DataSet.Open;

  except on e:Exception do
    raise Exception.Create('Erro ao fazer pesquisa generica do produto. ERRO: '+#13+e.Message);
  end;

end;

procedure TProdutoRepositorio.Rollback;
begin
  inherited;
  _Contexto.MySQL.RollbackTrans;
end;

end.
