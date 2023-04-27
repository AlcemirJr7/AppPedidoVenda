unit uClienteController;

interface

uses
  uClienteRepositorio, uClientePesquisaModel, uAppDataSet,

  System.SysUtils, System.Classes;

type
  TClienteController = class
  strict private
    _Repositorio : TClienteRepositorio;
  public
    constructor Create(AOwner : TComponent);
    destructor Destroy; override;

    procedure PesquisaCliente(Model : TClientePesquisa; var DataSet : TAppDataSet);


end;

implementation

{ TClienteController }

constructor TClienteController.Create(AOwner : TComponent);
begin
  _Repositorio := TClienteRepositorio.Create(AOwner);
end;

destructor TClienteController.Destroy;
begin
  FreeAndNil(_Repositorio);
  inherited;
end;

procedure TClienteController.PesquisaCliente(Model: TClientePesquisa; var DataSet : TAppDataSet);
begin

  _Repositorio.PesquisaGenerica(Model,DataSet);

end;

end.
