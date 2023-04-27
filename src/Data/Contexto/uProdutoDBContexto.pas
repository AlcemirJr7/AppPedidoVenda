unit uProdutoDBContexto;

interface

uses
  System.SysUtils, System.Classes, uAppDBContexto, Data.DB, Data.Win.ADODB;

type
  TProdutoDBContexto = class(TAppDBContexto)
  private
    { Private declarations }
  public
    destructor Destroy; override;



    { Public declarations }
  end;

var
  ProdutoDBContexto: TProdutoDBContexto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TProdutoDBContexto }

destructor TProdutoDBContexto.Destroy;
begin

  inherited;
end;

end.
