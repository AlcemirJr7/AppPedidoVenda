unit uPedidoVendaItemController;

interface
uses
  uPedidoVendaItemModel,
  System.SysUtils, System.Classes;

type
  TPedidoVendaItemController = class
  private
//    _Repositorio : TPedidoVendaItemRepositorio;
  public
    constructor Create(AOwner : TComponent);
    destructor Destroy; override;
end;

implementation

end.
