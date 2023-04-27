unit uFrmModalPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao, uUtils, uMsgSistema,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.UITypes;

type
  TfrmModalPadrao = class(TfrmPadrao)
    pnBotoesModal: TPanel;
    btConfirma: TBitBtn;
    btCancela: TBitBtn;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;


    { Public declarations }
  end;

var
  frmModalPadrao: TfrmModalPadrao;

implementation

{$R *.dfm}

{ TfrmModalPadrao }

constructor TfrmModalPadrao.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TfrmModalPadrao.Destroy;
begin
  inherited;
end;

end.
