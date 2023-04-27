unit uPedidoVendaModel;

interface

uses
  uPedidoVendaItemModel, System.Generics.Collections,System.SysUtils, uModelBase;

type

  TTipoData = (tdView, tdInsert);

  TPedidoVendaModel = class(TModelBase)

  private
    FNumeroPedido      : integer;
    FDataEmissao       : TDate;
    FCodigoCliente     : integer;
    FValorTotal        : Extended;
    FValorTotalSQL     : string;

    procedure LimparCampos;
  public
    constructor Create;
    destructor Destroy; override;

    procedure SetCampos(NumeroPedido : integer; CodigoCliente : integer;ValorTotal : Extended);

    property NumeroPedido  : integer  read FNumeroPedido  write FNumeroPedido;
    property DataEmissao   : TDate    read FDataEmissao   write FDataEmissao;
    property CodigoCliente : integer  read FCodigoCliente write FCodigoCliente;
    property ValorTotal    : Extended read FValorTotal    write FValorTotal;
    property ValorTotalSQL : string   read FValorTotalSQL;

end;

implementation

{ TPedidoVendaModel }

constructor TPedidoVendaModel.Create;
begin
  LimparCampos;
end;

destructor TPedidoVendaModel.Destroy;
begin
  inherited;
end;

procedure TPedidoVendaModel.LimparCampos;
begin
  FNumeroPedido  := varEmpty;
  FDataEmissao   := varNull;
  FCodigoCliente := varEmpty;
  FValorTotal    := varEmpty;
  FValorTotalSQL := '0';
end;

procedure TPedidoVendaModel.SetCampos(NumeroPedido: integer;CodigoCliente: integer;
                                      ValorTotal: Extended);
begin
  FNumeroPedido  := NumeroPedido;
  FDataEmissao   := Now;
  FCodigoCliente := CodigoCliente;
  FValorTotal    := ValorTotal;
  AppUtils.FormataFloatToSQL(ValorTotal,FValorTotalSQL);
end;

end.

