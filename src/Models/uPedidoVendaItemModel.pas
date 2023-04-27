unit uPedidoVendaItemModel;

interface
uses
  Vcl.DBGrids, System.Classes,System.SysUtils, uProdutoModel, uModelBase;

type
  TPedidoVendaItemModel = class(TModelBase)

  private
    FId            : integer;
    FNumeroPedido  : integer;
    FProdutoCodigo : integer;
    FQuantidade    : Extended;
    FValorUnitario : Extended;
    FValorTotal    : Extended;
    FProdutoCodigoStr : string;
    FNumeroPedidoStr  : string;
    FQuantidadeSQL    : string;
    FValorUnitarioSQL : string;
    FValorTotalSQL    : string;

    procedure LimparCampos;
  public

    constructor Create;
    destructor Destroy; override;

    procedure SetCampos(Id, NumeroPedido, ProdutoCodigo : integer; Quantidade, ValorUnitario , ValorTotal : Extended);

    property Id                : integer       read FId;
    property NumeroPedido      : integer       read FNumeroPedido     write FNumeroPedido;
    property ProdutoCodigo     : integer       read FProdutoCodigo    write FProdutoCodigo;
    property Quantidade        : Extended      read FQuantidade       write FQuantidade;
    property ValorUnitario     : Extended      read FValorUnitario    write FValorUnitario;
    property ValorTotal        : Extended      read FValorTotal       write FValorTotal;
    property NumeroPedidoStr   : string        read FNumeroPedidoStr  write FNumeroPedidoStr;
    property ProdutoCodigoStr  : string        read FProdutoCodigoStr write FProdutoCodigoStr;
    property QuantidadeSQL     : string        read FQuantidadeSQL    write FQuantidadeSQL;
    property ValorUnitarioSQL  : string        read FValorUnitarioSQL write FValorUnitarioSQL;
    property ValorTotalSQL     : string        read FValorTotalSQL    write FValorTotalSQL;

end;

implementation

{ TPedidoVendaItemModel }

constructor TPedidoVendaItemModel.Create;
begin
  LimparCampos;
end;

destructor TPedidoVendaItemModel.Destroy;
begin
  inherited;
end;

procedure TPedidoVendaItemModel.LimparCampos;
begin
  FId            := varEmpty;
  FNumeroPedido  := varEmpty;
  FProdutoCodigo := varEmpty;
  FQuantidade    := varEmpty;
  FValorUnitario := varEmpty;
  FValorTotal    := varEmpty;
  FNumeroPedidoStr  := EmptyStr;
  FQuantidadeSQL    := EmptyStr;
  FValorUnitarioSQL := EmptyStr;
  FValorTotalSQL    := EmptyStr;
end;

procedure TPedidoVendaItemModel.SetCampos(Id, NumeroPedido, ProdutoCodigo: integer; Quantidade, ValorUnitario, ValorTotal: Extended);

begin

  FId            := Id;
  FNumeroPedido  := NumeroPedido;
  FProdutoCodigo := ProdutoCodigo;
  FQuantidade    := Quantidade;
  FValorUnitario := ValorUnitario;
  FValorTotal    := ValorTotal;
  FNumeroPedidoStr  := IntToStr(NumeroPedido);
  ProdutoCodigoStr  := IntToStr(ProdutoCodigo);
  AppUtils.FormataFloatToSQL(FQuantidade,FQuantidadeSQL);
  AppUtils.FormataFloatToSQL(FValorUnitario,FValorUnitarioSQL);
  AppUtils.FormataFloatToSQL(FValorTotal,FValorTotalSQL);

end;

end.
