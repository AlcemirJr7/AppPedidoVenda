unit uFrmPesquisaClienteModal;

interface

uses
  uClientePesquisaModel, uClienteModel, uClienteController, uAppDataSet,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPesquisaPadraoModal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmPesquisaClienteModal = class(TfrmPesquisaPadraoModal)
    dsPesquisaCliente: TDataSource;
    procedure btConfirmaClick(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

    _DataSet           : TAppDataSet;
    _ClienteController : TClienteController;
    _ClienteModel      : TClienteModel;
    _ClientePesquisa   : TClientePesquisa;

    procedure PesquisaCliente;

    procedure CriarObejetosContexto;
    procedure DestrorObjetosContexto;

    procedure PopulaClienteModelResult;

  public
    destructor Destroy; override;

    property ClienteModelResult : TClienteModel read _ClienteModel;
  end;

var
  frmPesquisaClienteModal : TfrmPesquisaClienteModal;

implementation

{$R *.dfm}

{ TfrmPesquisaClienteModal }

procedure TfrmPesquisaClienteModal.btConfirmaClick(Sender: TObject);
begin
  inherited;
  PopulaClienteModelResult;
end;

procedure TfrmPesquisaClienteModal.btPesquisaClick(Sender: TObject);
begin
  inherited;
  PesquisaCliente;
end;

procedure TfrmPesquisaClienteModal.CriarObejetosContexto;
begin
  inherited;

  if (_ClienteController = nil) or not(Assigned(_ClienteController)) then
    _ClienteController := TClienteController.Create(Self);

  if (_ClienteModel = nil) or not(Assigned(_ClienteModel)) then
    _ClienteModel := TClienteModel.Create;

  if (_ClientePesquisa = nil) or not(Assigned(_ClientePesquisa)) then
    _ClientePesquisa := TClientePesquisa.Create(EmptyStr);

  if (_DataSet = nil) or not(Assigned(_DataSet)) then
  begin
    _DataSet := TAppDataSet.Create(Self);
    dsPesquisaCliente.DataSet := _DataSet;
  end;

end;

procedure TfrmPesquisaClienteModal.DestrorObjetosContexto;
begin
  FreeAndNil(_DataSet);
  FreeAndNil(_ClienteController);
  FreeAndNil(_ClienteModel);
  FreeAndNil(_ClientePesquisa);
end;

destructor TfrmPesquisaClienteModal.Destroy;
begin
  DestrorObjetosContexto;
  inherited;
end;

procedure TfrmPesquisaClienteModal.FormCreate(Sender: TObject);
begin
  inherited;
  CriarObejetosContexto;
end;

procedure TfrmPesquisaClienteModal.PesquisaCliente;

begin

  try

    _ClientePesquisa.SetValor(edPesquisa.Text);
    _ClienteController.PesquisaCliente(_ClientePesquisa, _DataSet);
    grPesquisa.SetFocus;

  except on e:Exception do
    raise Exception.Create('Erro ao pesquisar cliente.'+#13+'ERRO: '+e.Message);
  end;

end;

procedure TfrmPesquisaClienteModal.PopulaClienteModelResult;
begin

  if not(_DataSet.IsEmpty) then
  begin
    _ClienteModel.SetCampos(_DataSet.FieldByName('codigo').AsInteger,
                            _DataSet.FieldByName('nome').AsString,
                            _DataSet.FieldByName('cidade').AsString,
                            _DataSet.FieldByName('uf').AsString);
  end
  else
    ModalResult := mrCancel;

end;

end.
