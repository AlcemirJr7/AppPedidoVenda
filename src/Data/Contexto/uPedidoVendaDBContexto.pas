unit uPedidoVendaDBContexto;

interface

uses
  System.SysUtils, System.Classes, uAppDBContexto, Data.DB, Data.Win.ADODB;

type
  TPedidoVendaDBContexto = class(TAppDBContexto)
  private

    { Private declarations }
  public
    destructor Destroy; override;

    { Public declarations }
  end;

var
  PedidoVendaDBContexto: TPedidoVendaDBContexto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TPedidoVendaDBContexto }

destructor TPedidoVendaDBContexto.Destroy;
begin
  inherited;
end;

end.
