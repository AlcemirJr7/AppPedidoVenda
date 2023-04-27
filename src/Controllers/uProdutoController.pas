unit uProdutoController;

interface
uses
  uProdutoPesquisaModel ,uProdutoRepositorio, uAppDataSet,uProdutoModel,
  System.Classes, System.SysUtils;
type

  TProdutoController = class
  strict private
    _Repositorio : TProdutoRepositorio;
  public
    constructor Create(AOwner : TComponent);
    destructor Destroy; override;

    procedure ProdutoPesquisaGenerica(Model : TProdutoPesquisa; var DataSet : TAppDataSet);
    procedure ProdutoBuscarPeloCodigo(Model : TProdutoModel; var DataSet : TAppDataSet);



end;

implementation

{ TProdutoController }

constructor TProdutoController.Create(AOwner: TComponent);
begin
  _Repositorio := TProdutoRepositorio.Create(AOwner);
end;

destructor TProdutoController.Destroy;
begin
  FreeAndNil(_Repositorio);
  inherited;
end;

procedure TProdutoController.ProdutoBuscarPeloCodigo(Model : TProdutoModel; var DataSet : TAppDataSet);
begin

  try
    _Repositorio.Consultar(Model,DataSet);
  except
    raise;
  end;

end;

procedure TProdutoController.ProdutoPesquisaGenerica(Model: TProdutoPesquisa;
                                                     var DataSet: TAppDataSet);
begin

  _Repositorio.PesquisaGenerica(Model,DataSet);

end;

end.
