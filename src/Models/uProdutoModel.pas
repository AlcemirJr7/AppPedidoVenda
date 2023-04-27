unit uProdutoModel;

interface

uses
  System.SysUtils, uModelBase;

type
  TProdutoModel = class(TModelBase)
  private
    FCodigo        : integer;
    FDescricao     : string;
    FPrecoVenda    : Extended;
    FCodigoStr     : string;
    FPrecoVendaStr : string;
    FPrecoVendaSQL : string;
  public

    property Codigo        : integer  read FCodigo          write FCodigo;
    property Descricao     : string   read FDescricao       write FDescricao;
    property PrecoVenda    : Extended read FPrecoVenda      write FPrecoVenda;
    property CodigoStr     : string   read FCodigoStr       write FCodigoStr;
    property PrecoVendaStr : string   read FPrecoVendaStr   write FPrecoVendaStr;
    property PrecoVendaSQL : string   read FPrecoVendaSQL   write FPrecoVendaSQL;

    procedure SetCampos(Codigo : integer; Descricao : string; PrecoVenda : Extended);
    procedure LimparCampos;
    constructor Create;
    destructor Destroy; override;


end;

implementation

{ TProdutoModel }

constructor TProdutoModel.Create;
begin
  LimparCampos;
end;

destructor TProdutoModel.Destroy;
begin
  inherited;
end;

procedure TProdutoModel.LimparCampos;
begin
  FCodigo        := varEmpty;
  FDescricao     := EmptyStr;
  FPrecoVenda    := varEmpty;
  FCodigoStr     := EmptyStr;
  FPrecoVendaStr := EmptyStr;
end;

procedure TProdutoModel.SetCampos(Codigo     : integer;
                                  Descricao  : string;
                                  PrecoVenda : Extended);
begin
  FCodigo     := Codigo;
  FDescricao  := Descricao;
  FPrecoVenda := PrecoVenda;
  FCodigoStr  := IntToStr(FCodigo);
end;

end.
