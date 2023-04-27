unit uClienteModel;

interface

uses
  System.SysUtils, System.Classes, uModelBase;

type

  TClienteModel = class(TModelBase)

  private
    FCodigo    : integer;
    FCodigoStr : string;
    FNome      : string;
    FCidade    : string;
    FUF        : string;

    procedure LimparCampos;
  public
    constructor Create;
    destructor Destroy; override;

    property Codigo    : integer read FCodigo    write FCodigo;
    property CodigoStr : string  read FCodigoStr write FCodigoStr;
    property Nome      : string  read FNome      write FNome;
    property Cidade    : string  read FCidade    write FCidade;
    property UF        : string  read FUF        write FUF;

    procedure SetCampos(Codigo : integer; Nome, Cidade, UF : string);

  end;

implementation

{ TClienteModel }

constructor TClienteModel.Create;
begin
  LimparCampos;
end;

destructor TClienteModel.Destroy;
begin
  inherited;
end;

procedure TClienteModel.LimparCampos;
begin
  FCodigo := varEmpty;
  FNome   := EmptyStr;
  FCidade := EmptyStr;
  FUF     := EmptyStr;
  FCodigoStr := EmptyStr;
end;

procedure TClienteModel.SetCampos(Codigo: integer; Nome, Cidade, UF: string);
begin
  FCodigo    := Codigo;
  FNome      := Nome;
  FCidade    := Cidade;
  FUF        := UF;
  FCodigoStr := IntToStr(Codigo);
end;


end.
