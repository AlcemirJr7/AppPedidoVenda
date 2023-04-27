unit uFrmPedidoVendaItemModal;

interface

uses
  uPedidoVendaRepositorio, uPedidoVendaItemModel, uProdutoModel, uEnums,
  uAppDataSet, uProdutoController,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModalPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.NumberBox, System.UITypes;

type

  TEnumPedidoEstadoItem = EEstadoPedidoItem;

  TfrmPedidoVendaItemModal = class(TfrmModalPadrao)
    pnNumeroPedido: TPanel;
    lbNumeroPedido: TLabel;
    edPedidoNumero: TNumberBox;
    pnPedidoVendaItemProduto: TPanel;
    gbProduto: TGroupBox;
    btProdutoBuscar: TBitBtn;
    gbPedidoValorUnitario: TGroupBox;
    lbItemValorUnitarioCifra: TLabel;
    edItemValorUnitario: TNumberBox;
    gbItemValorUnitario: TGroupBox;
    lbItemValorTotalCifra: TLabel;
    edItemValorTotal: TNumberBox;
    gbItemQuantidade: TGroupBox;
    edItemQuantidade: TNumberBox;
    gbProdutoPrecoVenda: TGroupBox;
    lbPedidoPrecoVendaCifra: TLabel;
    edProdudoPrecoVenda: TNumberBox;
    gbPedidoDescrica: TGroupBox;
    edProdutoDescricao: TEdit;
    gbProdutoCodigo: TGroupBox;
    edProdutoCodigo: TNumberBox;
    procedure FormShow(Sender: TObject);
    procedure btProdutoBuscarClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure edItemQuantidadeChange(Sender: TObject);
    procedure edItemValorUnitarioChange(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  strict private

    _ProdutoController      : TProdutoController;
    _PedidoVendaItemModel   : TPedidoVendaItemModel;
    _ProdutoModel           : TProdutoModel;

    procedure DestrorObjetosAsEscopo;
    procedure CriarObejetosAsEscopo;

    //Metodos
    function  ProdutoAbrirPesquisaModal : Boolean;
    procedure ProdutoPopularCampos(Model : TProdutoModel);
    procedure ProdutoBuscar;

    procedure PedidoItemCriarModelResult;
    procedure AlteraValorTotal;
    procedure PedidoItemPopulaCampoValorUnitario;
    procedure SetEstadoViewEdita;
    procedure SetEstadoViewInclui;
    procedure PedidoItemPopularCampos(Model: TPedidoVendaItemModel);

  public
    destructor Destroy; override;

    procedure SetPedidoNumero(Numero : integer);
    procedure AlteraEstadoView(Enum  : TEnumPedidoEstadoItem);
    procedure PedidoItemSetContexto(Model : TPedidoVendaItemModel);

    property  PedidoVendaItemModelResult : TPedidoVendaItemModel read _PedidoVendaItemModel;

  end;

var
  frmPedidoVendaItemModal: TfrmPedidoVendaItemModal;

implementation
uses
  uFrmPesquisaProdutoModal;

{$R *.dfm}

{ TfrmPedidoVendaItemModal }

procedure TfrmPedidoVendaItemModal.AlteraEstadoView(Enum : TEnumPedidoEstadoItem);
begin

  case Enum of
    stInclui: SetEstadoViewInclui;
    stEdita: SetEstadoViewEdita;
  end;

end;

procedure TfrmPedidoVendaItemModal.AlteraValorTotal;
begin

  try

    edItemValorTotal.ValueCurrency := (edItemQuantidade.ValueFloat * edItemValorUnitario.ValueCurrency);

  except on e:Exception do
    raise Exception.Create('Erro ao calcular valor total. ERRO: '+#13+e.Message);
  end;

end;

procedure TfrmPedidoVendaItemModal.btCancelaClick(Sender: TObject);
begin
  DestrorObjetosAsEscopo;
  inherited;
end;

procedure TfrmPedidoVendaItemModal.btConfirmaClick(Sender: TObject);
begin
  inherited;
  PedidoItemCriarModelResult;
end;

procedure TfrmPedidoVendaItemModal.btProdutoBuscarClick(Sender: TObject);
begin
  inherited;

  if ProdutoAbrirPesquisaModal then
  begin
    PedidoItemPopulaCampoValorUnitario;
    edItemQuantidade.SetFocus;
  end;

end;

procedure TfrmPedidoVendaItemModal.CriarObejetosAsEscopo;
begin

  if (_ProdutoController = nil) or not(Assigned(_ProdutoController)) then
    _ProdutoController := TProdutoController.Create(Self);

  if (_ProdutoModel = nil) or not(Assigned(_ProdutoModel)) then
    _ProdutoModel := TProdutoModel.Create;

  if (_PedidoVendaItemModel = nil) or not(Assigned(_PedidoVendaItemModel)) then
    _PedidoVendaItemModel := TPedidoVendaItemModel.Create;

end;

procedure TfrmPedidoVendaItemModal.DestrorObjetosAsEscopo;
begin

  FreeAndNil(_ProdutoController);
  FreeAndNil(_PedidoVendaItemModel);
  FreeAndNil(_ProdutoModel);

end;

destructor TfrmPedidoVendaItemModal.Destroy;
begin
  DestrorObjetosAsEscopo;
  inherited;
end;

procedure TfrmPedidoVendaItemModal.edItemQuantidadeChange(Sender: TObject);
begin
  inherited;
  AlteraValorTotal;
end;

procedure TfrmPedidoVendaItemModal.edItemValorUnitarioChange(Sender: TObject);
begin
  inherited;
  AlteraValorTotal;
end;

procedure TfrmPedidoVendaItemModal.FormCreate(Sender: TObject);
begin
  inherited;
  CriarObejetosAsEscopo;
end;

procedure TfrmPedidoVendaItemModal.FormShow(Sender: TObject);
begin
  inherited;
  edItemQuantidade.SetFocus;
end;

procedure TfrmPedidoVendaItemModal.PedidoItemCriarModelResult;
begin

  _PedidoVendaItemModel.SetCampos(_PedidoVendaItemModel.Id,
                                  edPedidoNumero.ValueInt,
                                  edProdutoCodigo.ValueInt,
                                  edItemQuantidade.ValueFloat,
                                  edItemValorUnitario.ValueCurrency,
                                  edItemValorTotal.ValueCurrency);

end;

procedure TfrmPedidoVendaItemModal.PedidoItemPopulaCampoValorUnitario;
begin
  edItemValorUnitario.ValueCurrency := edProdudoPrecoVenda.ValueCurrency;
end;

procedure TfrmPedidoVendaItemModal.PedidoItemPopularCampos(Model: TPedidoVendaItemModel);
begin

  edItemQuantidade.ValueFloat       := Model.Quantidade;
  edItemValorUnitario.ValueCurrency := Model.ValorUnitario;
  edItemValorTotal.ValueCurrency    := Model.ValorTotal;

end;

procedure TfrmPedidoVendaItemModal.PedidoItemSetContexto(Model: TPedidoVendaItemModel);
begin

  _PedidoVendaItemModel.SetCampos(Model.Id,
                                  Model.NumeroPedido,
                                  Model.ProdutoCodigo,
                                  Model.Quantidade,
                                  Model.ValorUnitario,
                                  Model.ValorTotal);

  PedidoItemPopularCampos(_PedidoVendaItemModel);

end;

function TfrmPedidoVendaItemModal.ProdutoAbrirPesquisaModal: Boolean;
begin

  frmPesquisaProdutoModal := TfrmPesquisaProdutoModal.Create(self);

  Result := False;

  try

    frmPesquisaProdutoModal.ShowModal;

    if IsPositiveResult(frmPesquisaProdutoModal.ModalResult) then
    begin

      if Assigned(frmPesquisaProdutoModal.ProdutoPesquisaResult) then
      begin
        ProdutoPopularCampos(frmPesquisaProdutoModal.ProdutoPesquisaResult);
        Result := True;
      end;

    end;

  finally
    frmPesquisaProdutoModal.DisposeOf;
  end;

end;

procedure TfrmPedidoVendaItemModal.ProdutoBuscar;
var
  aux : TAppDataSet;
begin
  aux := TAppDataSet.Create(Self);

  try

    try

      _ProdutoModel.SetCampos(_PedidoVendaItemModel.ProdutoCodigo,EmptyStr,varEmpty);

      _ProdutoController.ProdutoBuscarPeloCodigo(_ProdutoModel,aux);

      _ProdutoModel.Descricao  := aux.FieldByName('descricao').AsString;
      _ProdutoModel.PrecoVenda := aux.FieldByName('preco_venda').AsExtended;

      ProdutoPopularCampos(_ProdutoModel);

    except
      raise;
    end;

  finally
    FreeAndNil(aux);
  end;

end;

procedure TfrmPedidoVendaItemModal.ProdutoPopularCampos(Model : TProdutoModel);
begin

  edProdutoCodigo.ValueInt          := Model.Codigo;
  edProdutoDescricao.Text           := Model.Descricao;
  edProdudoPrecoVenda.ValueCurrency := Model.PrecoVenda;

end;

procedure TfrmPedidoVendaItemModal.SetEstadoViewEdita;
begin
  ProdutoBuscar;
  btProdutoBuscar.Enabled := False;
  Self.Caption := Self.Caption + '  [** Modo Edição **]';
end;

procedure TfrmPedidoVendaItemModal.SetEstadoViewInclui;
begin
  btProdutoBuscar.Enabled := True;
  Self.Caption := Self.Caption + '  [** Modo Inserção **]';
end;

procedure TfrmPedidoVendaItemModal.SetPedidoNumero(Numero: integer);
begin
  edPedidoNumero.ValueInt := Numero;
end;

end.
