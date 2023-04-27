unit uIRepositorioBase;

interface

type

  IRepositorioBase<TModel,TDataSet> = interface

    procedure Criar(Model     : TModel; var DataSet : TDataSet);
    procedure Atualizar(Model : TModel; var DataSet : TDataSet);
    procedure Excluir(Model   : TModel; var DataSet : TDataSet);
    procedure Consultar(Model : TModel; var DataSet : TDataSet);
    function  IniciarTransacao : integer;
    function  inTransacao : Boolean;
    procedure Rollback;
    procedure Commit;


end;

implementation

end.
