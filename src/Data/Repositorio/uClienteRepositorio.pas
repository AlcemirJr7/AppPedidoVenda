unit uClienteRepositorio;

interface

uses
  uRepositorioBase, uClienteModel, uClienteDBContexto, uClientePesquisaModel,
  System.Classes, System.SysUtils, uAppDataSet;

type
  TClienteRepositorio = class(TRepositorioBase<TClienteModel,TAppDataSet>)

  private
    _Contexto : TClienteDBContexto;
    function RetornaSQLPesquisaGenerica : string;

  public

    constructor Create(AOwner : TComponent);
    destructor Destroy; override;

    procedure Criar(Model : TClienteModel; var DataSet : TAppDataSet);override;
    procedure Atualizar(Model : TClienteModel; var DataSet : TAppDataSet);override;
    procedure Excluir(Model : TClienteModel; var DataSet : TAppDataSet);override;
    procedure Consultar(Model : TClienteModel; var DataSet : TAppDataSet);override;
    function  IniciarTransacao : integer;override;
    function  inTransacao : Boolean;override;
    procedure Rollback;override;
    procedure Commit;override;

    procedure PesquisaGenerica(Model : TClientePesquisa; var DataSet: TAppDataSet);

end;

implementation

{ TClienteRepositorio }

procedure TClienteRepositorio.Atualizar(Model: TClienteModel;
  var DataSet: TAppDataSet);
begin
  inherited;

end;

procedure TClienteRepositorio.Commit;
begin
  inherited;

  try
    _Contexto.MySQL.CommitTrans;
  except on e:Exception do
    raise Exception.Create('Não foi possível commitar transação. '+#13+' ERRO: '+e.Message);
  end;

end;

procedure TClienteRepositorio.Consultar(Model: TClienteModel; var DataSet: TAppDataSet);
begin
  inherited;

end;

constructor TClienteRepositorio.Create(AOwner : TComponent);
begin
  _Contexto := TClienteDBContexto.Create(AOwner);
  _Contexto.MySQL.Open;
end;

procedure TClienteRepositorio.Criar(Model: TClienteModel; var DataSet: TAppDataSet);
begin
  inherited;

end;

destructor TClienteRepositorio.Destroy;
begin
  FreeAndNil(_Contexto);
  inherited;
end;

procedure TClienteRepositorio.Excluir(Model: TClienteModel; var DataSet: TAppDataSet);
begin
  inherited;

end;

function TClienteRepositorio.IniciarTransacao: integer;
begin

  try
    Result := _Contexto.MySQL.BeginTrans;
  except on e:Exception do
    raise Exception.Create('Não foi possível iniciar a transação. '+#13+' ERRO: '+e.Message);
  end;

end;

procedure TClienteRepositorio.Rollback;
begin
  inherited;

  try
    _Contexto.MySQL.RollbackTrans;
  except on e:Exception do
    raise Exception.Create('Error Message'+#13+e.Message);
  end;

end;

function TClienteRepositorio.inTransacao: Boolean;
begin

  try
    Result := _Contexto.MySQL.InTransaction;
  except on e:Exception do
    raise Exception.Create('Não foi possível verificar a transação. '+#13+' ERRO: '+e.Message);
  end;

end;

procedure TClienteRepositorio.PesquisaGenerica(Model: TClientePesquisa; var DataSet : TAppDataSet);
var
  SQL : string;
begin

  try

    SQL := RetornaSQLPesquisaGenerica;
    SQL := SQL.Replace(':valor', Model.Valor);

    DataSet.Close;
    DataSet.Connection := _Contexto.MySQL;
    DataSet.SQL.Clear;
    DataSet.SQL.Add(SQL);
    DataSet.Open;

  except on e:Exception do
    raise Exception.Create('Erro ao fazer pesquisa generica do cliente. ERRO '+#13+e.Message);
  end;

end;

function TClienteRepositorio.RetornaSQLPesquisaGenerica : string;
begin

  Result := 'select con.codigo,' +
            '       con.nome,  ' +
            '       con.cidade,' +
            '       con.uf     ' +
            '  from (select c.codigo, ' +
            '               c.nome,   ' +
            '               c.cidade, ' +
            '               c.uf,     ' +
            '               concat(c.nome,";",c.cidade,";",c.uf) as valor' +
            '          from tb_cliente as c) con                         ' +
            ' where lower(con.valor) like lower( :valor )                ' +
            '    or con.codigo = :valor                                  ';
end;

end.
