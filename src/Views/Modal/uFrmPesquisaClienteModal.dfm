inherited frmPesquisaClienteModal: TfrmPesquisaClienteModal
  Caption = 'Pesquisa Cliente'
  OnCreate = FormCreate
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
      Hint = 'A Pesquisa pode ser feita por: C'#243'digo, Descri'#231#227'o, Cidade ou UF'
      ExplicitHeight = 39
    end
    inherited btPesquisa: TBitBtn
      OnClick = btPesquisaClick
    end
  end
  inherited grPesquisa: TDBGrid
    DataSource = dsPesquisaCliente
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
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Title.Caption = 'UF'
        Width = 50
        Visible = True
      end>
  end
  object dsPesquisaCliente: TDataSource
    AutoEdit = False
    Left = 440
    Top = 176
  end
end
