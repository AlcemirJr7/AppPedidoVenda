unit uFrmPedidoVenda;

interface

uses
  uPedidoVendaController, uAppDataSet, uClienteModel, uPedidoVendaModel,
  uPedidoVendaItemModel, uProdutoModel, uEnums,

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao,Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls,System.UITypes, Vcl.Mask, Vcl.DBCtrls, Vcl.DdeMan, Vcl.ValEdit,
  Vcl.Imaging.pngimage, Vcl.NumberBox, ShellAPI;

type

  TEnumPedidoEstado     = EEstadoPedido;
  TEnumPedidoEstadoItem = EEstadoPedidoItem;

  TfrmPedidoVenda = class(TfrmPadrao)
    pnPedidoVenda: TPanel;
    gbPedidoVenda: TGroupBox;
    pnGridPedidoVendaItens: TPanel;
    pnPedidoVendaTotals: TPanel;
    gbPedidoVendaItens: TGroupBox;
    grPedidoVendaItens: TDBGrid;
    pnPedidoVendaItensAcoes: TPanel;
    btProdutoIncluir: TBitBtn;
    pnPedidoVendaAcoes: TPanel;
    btPedidoVendaCancelar: TBitBtn;
    btPedidoVendaNovo: TBitBtn;
    pnCliente: TPanel;
    gbCliente: TGroupBox;
    btPedidoVendaGravar: TBitBtn;
    dsPedidoVendaItens: TDataSource;
    dsPedidoVenda: TDataSource;
    gbProdutoCodigo: TGroupBox;
    gbClienteNome: TGroupBox;
    edClienteNome: TEdit;
    gbClienteCidade: TGroupBox;
    edClienteCidade: TEdit;
    gbClienteUF: TGroupBox;
    edClienteUF: TEdit;
    gbPedidoNumeroPedido: TGroupBox;
    gbPedidoDataEmissao: TGroupBox;
    imgAjuda: TImage;
    edNumeroPedido: TNumberBox;
    edClienteCodigo: TNumberBox;
    edPedidoDataEmissao: TEdit;
    edPedidoValorTotal: TNumberBox;
    lbPedidoValorTotal: TLabel;
    Label1: TLabel;
    edPedidoQtdItens: TNumberBox;
    procedure btPedidoVendaNovoClick(Sender: TObject);
    procedure btPedidoVendaCancelarClick(Sender: TObject);
    procedure btProdutoIncluirClick(Sender: TObject);
    procedure grPedidoVendaItensKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btPedidoVendaGravarClick(Sender: TObject);

  strict private
    const cmdAddDriverODBCMySQL = 'CONFIGDSN "MySQL ODBC 8.0 Unicode Driver" "DSN=MySQLWK|Server=localhost"';
  private

    _PedidoVendaController : TPedidoVendaController;
    _ClienteModel          : TClienteModel;
    _PedidoVendaModel      : TPedidoVendaModel;
    _PedidoVendaItemModel  : TPedidoVendaItemModel;
    _DataSetPedido         : TAppDataSet;
    _DataSetPedidoItem     : TAppDataSet;

    function AdicionaDriverODBC : Boolean;
    procedure DestrorObjetosAsEscopo;
    procedure CriarObejetosAsEscopo;

    //Cliente Metodos
    function  ClienteAbrirPesquisaModal : Boolean;
    procedure ClienteAlteraEstadoView(stView : boolean);
    procedure ClientePopularCamposView(Model : TClienteModel);
    procedure ClienteLimparCampos;

    //Pedido Metodos
    procedure PedidoVendaAlteraEstado(Estado : TEnumPedidoEstado);
    procedure PedidoLimparCampos;
    procedure SetPedidoVendaEstadoNone;
    procedure SetPedidoVendaEstadoGrava;
    procedure SetPedidoVendaEstadoNovo;
    procedure SetPedidoVendaEstadoCancela;
    procedure PedidoVendaAdicionar;
    procedure PedidoVendaPopularCampos;
    procedure PedidoItemAtualizarDadosView;
    procedure PedidoVendaAtualizarValorTotal;
    procedure PedidoVendaAtualizarQtdItens;

    procedure GravarPedido;

    // Pedido Item Metodos
    procedure PedidoVendaInserirItem(Model : TPedidoVendaItemModel);
    procedure PedidoVendaEditarItem(Model : TPedidoVendaItemModel);
    procedure PedidoVendaSetItemModel;
    procedure PedidoVendaDeletarItem;
    procedure PedidoVendaItemExecutaAcao(Enum : TEnumPedidoEstadoItem);
    function  AbrirTelaPedidoItem(Enum : TEnumPedidoEstadoItem) : Boolean;
  public
    destructor Destroy; override;


  end;

var
  frmPedidoVenda: TfrmPedidoVenda;

implementation
  uses
    uFrmPesquisaClienteModal,uFrmPedidoVendaItemModal;

{$R *.dfm}

function TfrmPedidoVenda.ClienteAbrirPesquisaModal : Boolean;
begin

  frmPesquisaClienteModal := TfrmPesquisaClienteModal.Create(self);

  Result := False;

  try

    frmPesquisaClienteModal.ShowModal;

    if IsPositiveResult(frmPesquisaClienteModal.ModalResult) then
    begin
      ClientePopularCamposView(frmPesquisaClienteModal.ClienteModelResult);
      Result := True;
    end;

  finally
    frmPesquisaClienteModal.Close;
    frmPesquisaClienteModal.DisposeOf;
  end;

end;


function TfrmPedidoVenda.AbrirTelaPedidoItem(Enum : TEnumPedidoEstadoItem): Boolean;
begin

  Result := False;

  frmPedidoVendaItemModal := TfrmPedidoVendaItemModal.Create(self);

  try

    frmPedidoVendaItemModal.SetPedidoNumero(edNumeroPedido.ValueInt);

    case Enum of
      stInclui: frmPedidoVendaItemModal.AlteraEstadoView(Enum);
      stEdita: begin
        frmPedidoVendaItemModal.PedidoItemSetContexto(_PedidoVendaItemModel);
        frmPedidoVendaItemModal.AlteraEstadoView(Enum);
      end;
    end;

    frmPedidoVendaItemModal.ShowModal;

    if IsPositiveResult(frmPedidoVendaItemModal.ModalResult) then
    begin

      if Assigned(frmPedidoVendaItemModal.PedidoVendaItemModelResult) then
      begin

        case Enum of
          stInclui: PedidoVendaInserirItem(frmPedidoVendaItemModal.PedidoVendaItemModelResult);
          stEdita : PedidoVendaEditarItem(frmPedidoVendaItemModal.PedidoVendaItemModelResult);
        end;

        Result := True;

      end;

    end;

  finally
    frmPedidoVendaItemModal.DisposeOf;
  end;

end;

procedure TfrmPedidoVenda.btPedidoVendaCancelarClick(Sender: TObject);
begin
  inherited;
  PedidoVendaAlteraEstado(stCancela);
end;

procedure TfrmPedidoVenda.btPedidoVendaGravarClick(Sender: TObject);
begin
  inherited;

  try

    if IsDataSetValido(_DataSetPedidoItem) and IsDataSetValido(_DataSetPedido) then
    begin
      GravarPedido;
      PedidoVendaAlteraEstado(stGrava);
    end;

  except
    raise;
  end;


end;

procedure TfrmPedidoVenda.btPedidoVendaNovoClick(Sender: TObject);
begin
  inherited;
  PedidoVendaAlteraEstado(stNovo);
end;

procedure TfrmPedidoVenda.btProdutoIncluirClick(Sender: TObject);
begin
  inherited;
  PedidoVendaItemExecutaAcao(stInclui);
end;

procedure TfrmPedidoVenda.ClienteAlteraEstadoView(stView : boolean);
begin

  if not(stView) then
    ClienteLimparCampos;

  pnCliente.Visible := stView;

end;

procedure TfrmPedidoVenda.ClienteLimparCampos;
begin
  edClienteCodigo.ValueInt := varEmpty;
  edClienteNome.Clear;
  edClienteCidade.Clear;
  edClienteUF.Clear;
end;

procedure TfrmPedidoVenda.FormCreate(Sender: TObject);
begin
  inherited;

  if not(FileExists('initApp.conf')) then
  begin
    if AdicionaDriverODBC then
      FileCreate('initApp.conf',GENERIC_WRITE)
    else
    begin
      MessageDlg('Erro ao efetuar configurações ODBC MySQL.'+#13+'Verifique se [MySQL ODBC Driver Versão 8.0] esta instalado.',
                 TMsgDlgType.mtError,[TMsgDlgBtn.mbOK],0);
      Application.Terminate;
    end;

  end;

  SetPedidoVendaEstadoNone;

end;

procedure TfrmPedidoVenda.GravarPedido;
begin

  try

    _PedidoVendaModel.SetCampos(edNumeroPedido.ValueInt,
                                edClienteCodigo.ValueInt,
                                edPedidoValorTotal.ValueCurrency);

    _PedidoVendaController.GravarPedido(_PedidoVendaModel);

    MessageDlg('Pedido gravado com sucesso!',TMsgDlgType.mtInformation,[TMsgDlgBtn.mbOK],0);
  except
    raise;
  end;

end;

procedure TfrmPedidoVenda.grPedidoVendaItensKeyUp(Sender: TObject;
                                                  var Key: Word; Shift: TShiftState);
begin
  inherited;

  try

    if Key = VK_RETURN then
    begin
      PedidoVendaSetItemModel;
      PedidoVendaItemExecutaAcao(stEdita);
    end;


    if Key = VK_DELETE then
    begin
      PedidoVendaSetItemModel;
      PedidoVendaItemExecutaAcao(stExclui);
    end;

  except
    raise;
  end;


end;

function TfrmPedidoVenda.AdicionaDriverODBC : Boolean;
var
  sei: TShellExecuteInfoA;
begin

  FillChar(sei, SizeOf(sei), 0);
  sei.cbSize := SizeOf(sei);
  sei.Wnd := Handle;
  sei.fMask := SEE_MASK_FLAG_DDEWAIT or SEE_MASK_FLAG_NO_UI;
  sei.lpFile := PAnsiChar('odbcconf.exe');
  sei.lpParameters := PAnsiChar(cmdAddDriverODBCMySQL);
  sei.nShow := SW_HIDE;
  Result := ShellExecuteExA(@sei);

end;

procedure TfrmPedidoVenda.DestrorObjetosAsEscopo;
begin

  FreeAndNil(_DataSetPedido);
  FreeAndNil(_DataSetPedidoItem);
  FreeAndNil(_PedidoVendaController);
  FreeAndNil(_PedidoVendaModel);
  FreeAndNil(_ClienteModel);
  FreeAndNil(_PedidoVendaItemModel);

end;

destructor TfrmPedidoVenda.Destroy;
begin
  DestrorObjetosAsEscopo;
  inherited;
end;

procedure TfrmPedidoVenda.PedidoItemAtualizarDadosView;
begin

  PedidoVendaAtualizarValorTotal;
  PedidoVendaAtualizarQtdItens;
  grPedidoVendaItens.SetFocus;
  _DataSetPedidoItem.Locate('id',_PedidoVendaItemModel.Id,[loCaseInsensitive])

end;

procedure TfrmPedidoVenda.PedidoLimparCampos;
begin

  edNumeroPedido.ValueInt := varEmpty;
  edPedidoDataEmissao.Clear;
  edPedidoValorTotal.ValueCurrency := varEmpty;
  edPedidoQtdItens.ValueInt := varEmpty;

end;

procedure TfrmPedidoVenda.PedidoVendaAlteraEstado(Estado : TEnumPedidoEstado);
begin

  case Estado of
    stNone    : SetPedidoVendaEstadoNone;
    stNovo    : SetPedidoVendaEstadoNovo;
    stGrava   : SetPedidoVendaEstadoGrava;
    stCancela : SetPedidoVendaEstadoCancela;
  end;

end;

procedure TfrmPedidoVenda.PedidoVendaAtualizarQtdItens;
begin
  edPedidoQtdItens.ValueInt := _DataSetPedidoItem.RecordCount;
end;

procedure TfrmPedidoVenda.PedidoVendaAtualizarValorTotal;
var
  novoValor : Extended;
begin

  novoValor := varEmpty;

  _DataSetPedidoItem.DisableControls;
  _DataSetPedidoItem.First;

  while not(_DataSetPedidoItem.Eof) do
  begin
    novoValor := novoValor + _DataSetPedidoItem.FieldByName('valor_total').AsExtended;
    _DataSetPedidoItem.Next;
  end;

  _DataSetPedidoItem.EnableControls;

  edPedidoValorTotal.ValueCurrency := novoValor;

end;

procedure TfrmPedidoVenda.PedidoVendaDeletarItem;
begin

  if IsDataSetValido(_DataSetPedidoItem) then
  begin
  
    if IsPositiveResult(MessageDlg(Format('Deseja Deletar o item?'+#13+'%s',[_DataSetPedidoItem.FieldByName('produto_codigo').AsString +
                                                                            ' - '+_DataSetPedidoItem.FieldByName('descricao').AsString])
                                  ,TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes,TMsgDlgBtn.mbNo],0)) then
    begin
      try

        _PedidoVendaController.DeletarItem(_PedidoVendaItemModel,_DataSetPedidoItem);
      except
        raise;
      end;
    end;
    
  end;
    
end;

procedure TfrmPedidoVenda.PedidoVendaEditarItem(Model: TPedidoVendaItemModel);
begin

  try

    if IsDataSetValido(_DataSetPedidoItem) then
      _PedidoVendaController.EditarItem(Model, _DataSetPedidoItem);

  except
    raise;
  end;


end;

procedure TfrmPedidoVenda.PedidoVendaAdicionar;
begin

  try

    _PedidoVendaModel.CodigoCliente := edClienteCodigo.ValueInt;
    _PedidoVendaController.IniciarNovoPedido(_PedidoVendaModel,_DataSetPedido);
    PedidoVendaPopularCampos;

  except
    begin
      SetPedidoVendaEstadoNone;
      raise;
    end;
  end;

end;

procedure TfrmPedidoVenda.PedidoVendaInserirItem(Model : TPedidoVendaItemModel);
begin

  try

    _PedidoVendaController.IncluirItem(Model,_DataSetPedidoItem);

    grPedidoVendaItens.SetFocus;

  except
    raise;
  end;


end;

procedure TfrmPedidoVenda.PedidoVendaPopularCampos;
begin
  _PedidoVendaModel.NumeroPedido := dsPedidoVenda.DataSet.FieldByName('novo_numero_pedido').AsInteger;
  _PedidoVendaModel.DataEmissao  := dsPedidoVenda.DataSet.FieldByName('data_emissao').AsDateTime;

  edNumeroPedido.ValueInt   := _PedidoVendaModel.NumeroPedido;
  edPedidoDataEmissao.Text  := DateToStr(_PedidoVendaModel.DataEmissao);
end;

procedure TfrmPedidoVenda.PedidoVendaSetItemModel;
begin

  if IsDataSetValido(_DataSetPedidoItem) then
  begin
    with _DataSetPedidoItem do
      _PedidoVendaItemModel.SetCampos(FieldByName('id').AsInteger,
                                      FieldByName('numero_pedido').AsInteger,
                                      FieldByName('produto_codigo').AsInteger,
                                      FieldByName('quantidade').AsFloat,
                                      FieldByName('valor_unitario').AsFloat,
                                      FieldByName('valor_total').AsFloat);
  end;

end;

procedure TfrmPedidoVenda.PedidoVendaItemExecutaAcao(Enum : TEnumPedidoEstadoItem);
begin

  case Enum of
    stInclui : begin
      AbrirTelaPedidoItem(Enum);
      PedidoItemAtualizarDadosView;
    end;
    stEdita  : begin
      if IsDataSetValido(_DataSetPedidoItem) then
      begin
        AbrirTelaPedidoItem(Enum);
        PedidoItemAtualizarDadosView;
      end;
    end;
    stExclui : begin
      begin
        if IsDataSetValido(_DataSetPedidoItem) then
        begin
          PedidoVendaDeletarItem;
          PedidoItemAtualizarDadosView;
        end;

      end;

    end;

  end;

end;

procedure TfrmPedidoVenda.SetPedidoVendaEstadoCancela;
begin
  DestrorObjetosAsEscopo;
  SetPedidoVendaEstadoNone;
end;

procedure TfrmPedidoVenda.SetPedidoVendaEstadoGrava;
begin
  DestrorObjetosAsEscopo;
  SetPedidoVendaEstadoNone;
end;

procedure TfrmPedidoVenda.SetPedidoVendaEstadoNone;
begin
  ClienteAlteraEstadoView(False);
  PedidoLimparCampos;
  btPedidoVendaCancelar.Enabled := False;
  btPedidoVendaGravar.Enabled   := False;
  btProdutoIncluir.Enabled      := False;
  btPedidoVendaNovo.Enabled     := True;
end;

procedure TfrmPedidoVenda.SetPedidoVendaEstadoNovo;
begin

  CriarObejetosAsEscopo;

  if ClienteAbrirPesquisaModal then
  begin
    ClienteAlteraEstadoView(True);
    btPedidoVendaCancelar.Enabled := True;
    btPedidoVendaGravar.Enabled   := True;
    btProdutoIncluir.Enabled      := True;
    btPedidoVendaNovo.Enabled     := False;
    PedidoVendaAdicionar;
  end;

end;

procedure TfrmPedidoVenda.ClientePopularCamposView(Model: TClienteModel);
begin
  Self.edClienteCodigo.ValueInt := Model.Codigo;
  Self.edClienteNome.Text       := Model.Nome;
  Self.edClienteCidade.Text     := Model.Cidade;
  Self.edClienteUF.Text         := Model.UF;
end;

procedure TfrmPedidoVenda.CriarObejetosAsEscopo;
begin

  if (_PedidoVendaController = nil) or not(Assigned(_PedidoVendaController)) then
    _PedidoVendaController := TPedidoVendaController.Create(self);

  if (_PedidoVendaModel = nil) or not(Assigned(_PedidoVendaModel)) then
    _PedidoVendaModel := TPedidoVendaModel.Create;

  if (_PedidoVendaItemModel = nil) or not(Assigned(_PedidoVendaItemModel)) then
    _PedidoVendaItemModel := TPedidoVendaItemModel.Create;

  if (_ClienteModel = nil) or not(Assigned(_ClienteModel)) then
    _ClienteModel := TClienteModel.Create;

  if (_DataSetPedido = nil) or not(Assigned(_DataSetPedido)) then
  begin
    _DataSetPedido := TAppDataSet.Create(Self);
    dsPedidoVenda.DataSet := _DataSetPedido;
  end;


  if (_DataSetPedidoItem = nil) or not(Assigned(_DataSetPedidoItem)) then
  begin
    _DataSetPedidoItem := TAppDataSet.Create(Self);
    dsPedidoVendaItens.DataSet := _DataSetPedidoItem;
  end;

end;

end.
