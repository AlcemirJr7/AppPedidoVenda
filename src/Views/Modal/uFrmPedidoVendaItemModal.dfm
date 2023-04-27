inherited frmPedidoVendaItemModal: TfrmPedidoVendaItemModal
  Caption = 'Pedido Venda Item'
  ClientHeight = 271
  ClientWidth = 644
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 650
  ExplicitHeight = 300
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnBotoesModal: TPanel
    Top = 230
    Width = 644
    ExplicitTop = 230
    ExplicitWidth = 644
    inherited btConfirma: TBitBtn
      Left = 219
      OnClick = btConfirmaClick
      ExplicitLeft = 219
    end
    inherited btCancela: TBitBtn
      Left = 325
      OnClick = btCancelaClick
      ExplicitLeft = 325
    end
  end
  object pnNumeroPedido: TPanel
    Left = 0
    Top = 0
    Width = 644
    Height = 27
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object lbNumeroPedido: TLabel
      AlignWithMargins = True
      Left = 7
      Top = 5
      Width = 122
      Height = 17
      Margins.Left = 5
      Align = alLeft
      Caption = 'Numero Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 18
    end
    object edPedidoNumero: TNumberBox
      Left = 132
      Top = 2
      Width = 121
      Height = 23
      TabStop = False
      Align = alLeft
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      StyleElements = []
    end
  end
  object pnPedidoVendaItemProduto: TPanel
    Left = 0
    Top = 27
    Width = 644
    Height = 203
    Align = alClient
    AutoSize = True
    TabOrder = 2
    object gbProduto: TGroupBox
      Left = 1
      Top = 1
      Width = 642
      Height = 201
      Align = alClient
      Caption = 'Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      TabOrder = 0
      object btProdutoBuscar: TBitBtn
        Left = 30
        Top = 32
        Width = 121
        Height = 30
        Cursor = crHandPoint
        Hint = 'Buscar Produto'
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        Font.Quality = fqClearType
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080979797FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878787030303A7A7A7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878787040404A8A8A8FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090040404A9A9A9FFFFFFFFFF
          FFFDFDFDCECECEAEAEAEB2B2B2DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090050505AAAAAAA4A4A41D1D1D
          0202021111110F0F0F000000393939CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A020202040404777777E4E4E4FF
          FFFFFFFFFFCECECE4E4E4E070707ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFA2A2A2040404B4B4B4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF7C7C7C0A0A0ADBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFDFDFD1E1E1E7C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFE3A3A3A606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFCCCCCC010101E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA3A3A3111111FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9
          161616FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3
          D3000000EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE111111FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECE000000
          F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADA000000D5D5D5FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393931F1F1FFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A5E5E5EFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F62323237D7D7DFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C90707078B8B8BFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF6F6F6515151222222F1F1F1FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADAD0B0B0B444444A9A9A9D7D7D7D0D0
          D0959595242424242424D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD5F5F5F131313000000000000242424
          7D7D7DF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2F6F6F6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 2
        TabOrder = 0
        OnClick = btProdutoBuscarClick
      end
      object gbPedidoValorUnitario: TGroupBox
        Left = 157
        Top = 121
        Width = 160
        Height = 47
        Caption = 'Vlr. Unit'#225'rio'
        TabOrder = 5
        object lbItemValorUnitarioCifra: TLabel
          AlignWithMargins = True
          Left = 2
          Top = 18
          Width = 21
          Height = 27
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 2
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 18
        end
        object edItemValorUnitario: TNumberBox
          Left = 25
          Top = 18
          Width = 133
          Height = 27
          Align = alClient
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          CurrencyFormat = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          Mode = nbmCurrency
          MaxLength = 30
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnChange = edItemValorUnitarioChange
          ExplicitHeight = 28
        end
      end
      object gbItemValorUnitario: TGroupBox
        Left = 323
        Top = 121
        Width = 170
        Height = 47
        Caption = 'Vlr. Total'
        TabOrder = 6
        object lbItemValorTotalCifra: TLabel
          AlignWithMargins = True
          Left = 2
          Top = 18
          Width = 21
          Height = 27
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 2
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 18
        end
        object edItemValorTotal: TNumberBox
          Left = 25
          Top = 18
          Width = 143
          Height = 27
          Align = alClient
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          CurrencyFormat = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          Mode = nbmCurrency
          MaxLength = 30
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
      object gbItemQuantidade: TGroupBox
        Left = 30
        Top = 121
        Width = 121
        Height = 47
        Caption = 'Quantidade'
        TabOrder = 4
        object edItemQuantidade: TNumberBox
          Left = 2
          Top = 18
          Width = 117
          Height = 27
          Align = alClient
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          CurrencyFormat = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          Mode = nbmFloat
          MaxLength = 30
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnChange = edItemQuantidadeChange
          ExplicitHeight = 28
        end
      end
      object gbProdutoPrecoVenda: TGroupBox
        Left = 452
        Top = 68
        Width = 160
        Height = 47
        Caption = 'Pre'#231'o Venda'
        TabOrder = 3
        object lbPedidoPrecoVendaCifra: TLabel
          AlignWithMargins = True
          Left = 2
          Top = 18
          Width = 21
          Height = 27
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 2
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 18
        end
        object edProdudoPrecoVenda: TNumberBox
          Left = 25
          Top = 18
          Width = 133
          Height = 27
          Align = alClient
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          CurrencyFormat = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          Mode = nbmCurrency
          MaxLength = 30
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
      object gbPedidoDescrica: TGroupBox
        Left = 157
        Top = 68
        Width = 289
        Height = 47
        Caption = 'Descri'#231#227'o'
        TabOrder = 2
        object edProdutoDescricao: TEdit
          Left = 2
          Top = 18
          Width = 285
          Height = 27
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          MaxLength = 300
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
      object gbProdutoCodigo: TGroupBox
        Left = 30
        Top = 68
        Width = 121
        Height = 47
        Caption = 'C'#243'digo'
        TabOrder = 1
        object edProdutoCodigo: TNumberBox
          Left = 2
          Top = 18
          Width = 117
          Height = 27
          Align = alClient
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          CurrencyFormat = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          MaxLength = 20
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
    end
  end
end
