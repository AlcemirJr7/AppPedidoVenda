unit uClienteDBContexto;

interface

uses
  System.SysUtils, System.Classes, uAppDBContexto, Data.DB, Data.Win.ADODB;

type
    TClienteDBContexto = class(TAppDBContexto)
  private
    { Private declarations }
  public
    destructor Destroy; override;



  end;

var
  ClienteDBContexto: TClienteDBContexto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TClienteDBContexto }

destructor TClienteDBContexto.Destroy;
begin
  inherited;
end;

end.
