unit uFrmPesquisaProdutoModal;

interface

uses
  uProdutoPesquisaModel, uProdutoModel ,uProdutoRepositorio, uAppDataSet, uProdutoController,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPesquisaPadraoModal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TfrmPesquisaProdutoModal = class(TfrmPesquisaPadraoModal)
    dsPesquisaProduto: TDataSource;
    procedure btPesquisaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
  private

    _DataSet             : TAppDataSet;
    _ProdutoController   : TProdutoController;
    _ProdutoPequisaModel : TProdutoPesquisa;
    _ProdutoModel        : TProdutoModel;

    procedure PesquisaProduto;
    procedure SetPesquisaResult;

    procedure DestrorObjetosContexto;
    procedure CriarObejetosContexto;
  public
    destructor Destroy; override;

    property ProdutoPesquisaResult : TProdutoModel read _ProdutoModel;

  end;

var
  frmPesquisaProdutoModal: TfrmPesquisaProdutoModal;

implementation

{$R *.dfm}

procedure TfrmPesquisaProdutoModal.btConfirmaClick(Sender: TObject);
begin
  inherited;
  SetPesquisaResult;
end;

procedure TfrmPesquisaProdutoModal.btPesquisaClick(Sender: TObject);
begin
  inherited;
  PesquisaProduto;
end;

procedure TfrmPesquisaProdutoModal.CriarObejetosContexto;
begin

  if (_ProdutoController = nil) or not(Assigned(_ProdutoController)) then
    _ProdutoController := TProdutoController.Create(Self);

  if (_ProdutoModel = nil) or not(Assigned(_ProdutoModel)) then
    _ProdutoModel := TProdutoModel.Create;

  if (_ProdutoPequisaModel = nil) or not(Assigned(_ProdutoPequisaModel)) then
    _ProdutoPequisaModel := TProdutoPesquisa.Create(EmptyStr);

  if (_DataSet = nil) or not(Assigned(_DataSet)) then
  begin
    _DataSet := TAppDataSet.Create(Self);
    dsPesquisaProduto.DataSet := _DataSet;
  end;


end;

procedure TfrmPesquisaProdutoModal.DestrorObjetosContexto;
begin
  FreeAndNil(_DataSet);
  FreeAndNil(_ProdutoController);
  FreeAndNil(_ProdutoPequisaModel);
  FreeAndNil(_ProdutoModel);
end;

destructor TfrmPesquisaProdutoModal.Destroy;
begin
  DestrorObjetosContexto;
  inherited;
end;

procedure TfrmPesquisaProdutoModal.PesquisaProduto;
begin

  CriarObejetosContexto;

  try

    _ProdutoPequisaModel.SetValor(edPesquisa.Text);
    _ProdutoController.ProdutoPesquisaGenerica(_ProdutoPequisaModel,_DataSet);
    grPesquisa.SetFocus;

  except on e:Exception do
    raise Exception.Create('Erro ao pesquisar produto.'+#13+'ERRO: '+e.Message);
  end;

end;

procedure TfrmPesquisaProdutoModal.SetPesquisaResult;
begin

  _ProdutoModel.SetCampos(dsPesquisaProduto.DataSet.FieldByName('codigo').AsInteger,
                          dsPesquisaProduto.DataSet.FieldByName('descricao').AsString,
                          dsPesquisaProduto.DataSet.FieldByName('preco_venda').AsExtended);

end;

end.
