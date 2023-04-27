unit uFrmPesquisaPadraoModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModalPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmPesquisaPadraoModal = class(TfrmModalPadrao)
    pnPesquisa: TPanel;
    imgAjuda: TImage;
    edPesquisa: TEdit;
    btPesquisa: TBitBtn;
    grPesquisa: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaPadraoModal: TfrmPesquisaPadraoModal;

implementation

{$R *.dfm}

procedure TfrmPesquisaPadraoModal.FormShow(Sender: TObject);
begin
  inherited;
  edPesquisa.SetFocus;
end;

end.
