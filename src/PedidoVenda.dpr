program PedidoVenda;

uses
  Vcl.Forms,
  uFrmPadrao in 'Views\uFrmPadrao.pas' {frmPadrao},
  uFrmModalPadrao in 'Views\Modal\uFrmModalPadrao.pas' {frmModalPadrao},
  uFrmPedidoVenda in 'Views\uFrmPedidoVenda.pas' {frmPedidoVenda},
  uFrmPesquisaProdutoModal in 'Views\Modal\uFrmPesquisaProdutoModal.pas' {frmPesquisaProdutoModal},
  uFrmPesquisaClienteModal in 'Views\Modal\uFrmPesquisaClienteModal.pas' {frmPesquisaClienteModal},
  uFrmPesquisaPadraoModal in 'Views\Modal\uFrmPesquisaPadraoModal.pas' {frmPesquisaPadraoModal},
  uFrmPedidoVendaItemModal in 'Views\Modal\uFrmPedidoVendaItemModal.pas' {frmPedidoVendaItemModal},
  uAppDBContexto in 'Data\Contexto\uAppDBContexto.pas' {AppDBContexto: TDataModule},
  uClienteDBContexto in 'Data\Contexto\uClienteDBContexto.pas' {ClienteDBContexto: TDataModule},
  uProdutoDBContexto in 'Data\Contexto\uProdutoDBContexto.pas' {ProdutoDBContexto: TDataModule},
  uPedidoVendaDBContexto in 'Data\Contexto\uPedidoVendaDBContexto.pas' {PedidoVendaDBContexto: TDataModule},
  uAppDataSet in 'Data\uAppDataSet.pas',
  uIRepositorioBase in 'Data\Repositorio\uIRepositorioBase.pas',
  uRepositorioBase in 'Data\Repositorio\uRepositorioBase.pas',
  uClienteRepositorio in 'Data\Repositorio\uClienteRepositorio.pas',
  uProdutoRepositorio in 'Data\Repositorio\uProdutoRepositorio.pas',
  uPedidoVendaRepositorio in 'Data\Repositorio\uPedidoVendaRepositorio.pas',
  uModelBase in 'Models\uModelBase.pas',
  uClienteModel in 'Models\uClienteModel.pas',
  uProdutoModel in 'Models\uProdutoModel.pas',
  uPedidoVendaModel in 'Models\uPedidoVendaModel.pas',
  uPedidoVendaItemModel in 'Models\uPedidoVendaItemModel.pas',
  uClientePesquisaModel in 'Models\uClientePesquisaModel.pas',
  uProdutoPesquisaModel in 'Models\uProdutoPesquisaModel.pas',
  uControllerBase in 'Controllers\uControllerBase.pas',
  uClienteController in 'Controllers\uClienteController.pas',
  uPedidoVendaController in 'Controllers\uPedidoVendaController.pas',
  uProdutoController in 'Controllers\uProdutoController.pas',
  uEnums in 'Enums\uEnums.pas',
  uUtils in 'Utils\uUtils.pas',
  uMsgSistema in 'Utils\uMsgSistema.pas',
  uValidacoes in 'Utils\uValidacoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Pedido Venda WK';
  Application.CreateForm(TAppDBContexto, AppDBContexto);
  Application.CreateForm(TfrmPedidoVenda, frmPedidoVenda);
  Application.Run;
end.
