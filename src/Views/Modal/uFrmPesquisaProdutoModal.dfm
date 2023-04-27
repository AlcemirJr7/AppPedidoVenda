inherited frmPesquisaProdutoModal: TfrmPesquisaProdutoModal
  Caption = 'Pesquisa Produto'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnBotoesModal: TPanel
    inherited btConfirma: TBitBtn
      OnClick = btConfirmaClick
    end
  end
  inherited pnPesquisa: TPanel
    inherited imgAjuda: TImage
      Height = 39
      ExplicitHeight = 39
    end
    inherited btPesquisa: TBitBtn
      OnClick = btPesquisaClick
    end
  end
  inherited grPesquisa: TDBGrid
    DataSource = dsPesquisaProduto
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Caption = 'C'#243'digo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'preco_venda'
        Visible = False
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'preco_venda_str'
        Title.Caption = 'Pre'#231'o Venda'
        Width = 120
        Visible = True
      end>
  end
  object dsPesquisaProduto: TDataSource
    AutoEdit = False
    Left = 488
    Top = 184
  end
end
