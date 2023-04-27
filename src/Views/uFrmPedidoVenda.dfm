inherited frmPedidoVenda: TfrmPedidoVenda
  Caption = 'Pedido Venda'
  ClientHeight = 593
  ClientWidth = 1046
  Font.Name = 'Microsoft Tai Le'
  FormStyle = fsMDIForm
  WindowState = wsMaximized
  OnCreate = FormCreate
  ExplicitWidth = 1062
  ExplicitHeight = 632
  PixelsPerInch = 96
  TextHeight = 16
  object pnPedidoVenda: TPanel
    Left = 0
    Top = 79
    Width = 1046
    Height = 121
    Align = alTop
    TabOrder = 0
    object gbPedidoVenda: TGroupBox
      Left = 1
      Top = 1
      Width = 1044
      Height = 119
      Align = alClient
      Caption = 'Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      TabOrder = 0
      object pnPedidoVendaAcoes: TPanel
        Left = 2
        Top = 73
        Width = 1040
        Height = 44
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        TabOrder = 0
        object btPedidoVendaCancelar: TBitBtn
          AlignWithMargins = True
          Left = 208
          Top = 2
          Width = 120
          Height = 40
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'Cancelar'
          Enabled = False
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
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1F1F1FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFEFEADADAD4C4C4C0909090000000000000909094C4C4CAEAEAEFEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E83E3E3E
            040404585858A7A7A7D3D3D3D2D2D2A6A6A65757570404043F3F3FE9E9E9FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8212121303030DBDBDBFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D92F2F2F222222E9E9E9FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE3F3F3F313131F2F2F2FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F22F2F2F424242FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFB0B0B0070707DCDCDCFFFFFFFFFFFFF1F1F1FFFFFFFFFFFF
            FFFFFFFFFFFFF1F1F1FFFFFFFFFFFFDADADA060606B3B3B3FFFFFFFFFFFFFFFF
            FFFFFFFF4D4D4D636363FFFFFFFFFFFFEEEEEE171717A0A0A0FFFFFFFFFFFF9F
            9F9F171717EFEFEFFFFFFFFFFFFF606060505050FFFFFFFFFFFFFFFFFFFEFEFE
            0A0A0AAFAFAFFFFFFFFFFFFFFFFFFF919191050505AAAAAAA9A9A90505059292
            92FFFFFFFFFFFFFFFFFFACACAC0C0C0CFEFEFEFFFFFFFFFFFFEBEBEB000000D3
            D3D3FFFFFFFFFFFFFFFFFFFFFFFF929292030303030303929292FFFFFFFFFFFF
            FFFFFFFFFFFFD2D2D2000000ECECECFFFFFFFFFFFFEBEBEB000000D3D3D3FFFF
            FFFFFFFFFFFFFFFFFFFFA9A9A9030303030303A9A9A9FFFFFFFFFFFFFFFFFFFF
            FFFFD2D2D2000000ECECECFFFFFFFFFFFFFEFEFE0A0A0AAFAFAFFFFFFFFFFFFF
            FFFFFFA8A8A8050505949494939393050505A8A8A8FFFFFFFFFFFFFFFFFFACAC
            AC0C0C0CFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D636363FFFFFFFFFFFFEEEEEE17
            1717A0A0A0FFFFFFFFFFFF9F9F9F171717EFEFEFFFFFFFFFFFFF606060505050
            FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF070707DDDDDDFFFFFFFFFFFFF1F1F1FFFF
            FFFFFFFFFFFFFFFFFFFFF1F1F1FFFFFFFFFFFFDADADA060606B3B3B3FFFFFFFF
            FFFFFFFFFFFFFFFFFEFEFE404040313131F2F2F2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFF2F2F22F2F2F424242FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFE8E8E8212121303030DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFDBDBDB2F2F2F222222E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE8E8E83E3E3E070707686868B8B8B8D8D8D8D8D8D8B8B8B86767
            670707073F3F3FE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFEFEADADAD4C4C4C0909090000000000000909094C4C4CAFAFAF
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          Spacing = 2
          TabOrder = 0
          OnClick = btPedidoVendaCancelarClick
        end
        object btPedidoVendaNovo: TBitBtn
          AlignWithMargins = True
          Left = 6
          Top = 2
          Width = 91
          Height = 40
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'Novo'
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
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1F1F1FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFEFEADADAD4C4C4C0909090000000000000909094C4C4CAEAEAEFEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E83E3E3E
            040404585858A7A7A7D3D3D3D2D2D2A6A6A65757570404043F3F3FE9E9E9FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8212121303030DBDBDBFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D92F2F2F222222E9E9E9FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE3F3F3F313131F2F2F2FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F22F2F2F424242FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFB0B0B0070707DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB
            EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFDADADA060606B3B3B3FFFFFFFFFFFFFFFF
            FFFFFFFF4D4D4D636363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F5F5F5FFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF606060505050FFFFFFFFFFFFFFFFFFFEFEFE
            0A0A0AAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F5F5F5FFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFACACAC0C0C0CFEFEFEFFFFFFFFFFFFEBEBEB000000D3
            D3D3FFFFFFFFFFFFEBEBEB5F5F5F5F5F5F2323232323235F5F5F5F5F5FEBEBEB
            FFFFFFFFFFFFD2D2D2000000ECECECFFFFFFFFFFFFEBEBEB000000D3D3D3FFFF
            FFFFFFFFEBEBEB5F5F5F5F5F5F2323232323235F5F5F5F5F5FEBEBEBFFFFFFFF
            FFFFD2D2D2000000ECECECFFFFFFFFFFFFFEFEFE0A0A0AAFAFAFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF5F5F5F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACAC
            AC0C0C0CFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D636363FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF5F5F5F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060505050
            FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF070707DDDDDDFFFFFFFFFFFFFFFFFFFFFF
            FFEBEBEBEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFDADADA060606B3B3B3FFFFFFFF
            FFFFFFFFFFFFFFFFFEFEFE404040313131F2F2F2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFF2F2F22F2F2F424242FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFE8E8E8212121303030DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFDBDBDB2F2F2F222222E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE8E8E83E3E3E070707686868B8B8B8D8D8D8D8D8D8B8B8B86767
            670707073F3F3FE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFEFEADADAD4C4C4C0909090000000000000909094C4C4CAFAFAF
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          Spacing = 2
          TabOrder = 1
          OnClick = btPedidoVendaNovoClick
        end
        object btPedidoVendaGravar: TBitBtn
          AlignWithMargins = True
          Left = 103
          Top = 2
          Width = 99
          Height = 40
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'Gravar'
          Enabled = False
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
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3E222222171717
            0404040404040404040404040404040404040404040404041717172222223E3E
            3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020206060605F5F5F0B0B0B5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F0B0B0B5F5F5F606060202020FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020209F9F9F9F9F9F1F1F1FFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F9F9F9F9F9F9F202020FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF2020209F9F9F9F9F9F1F1F1FFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF1F1F1F9F9F9F9F9F9F202020FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF2020209F9F9F9F9F9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF1F1F1F9F9F9F9F9F9F202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2020209F9F9F9F9F9F171717BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BF1717179F9F9F9F9F9F202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20
            20209F9F9F9F9F9F000000000000000000000000000000000000000000000000
            9F9F9F9F9F9F202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020209F9F
            9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
            9F9F202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020209F9F9FFFFFFF
            E7E7E7DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFE7E7E7FFFFFF9F9F9F2020
            20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020209F9F9FFFFFFF3F3F3F00
            00000000000000000000000000000000003F3F3FFFFFFF9F9F9F202020FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020209F9F9FFFFFFF3F3F3F6F6F6FDFDF
            DFDFDFDFDFDFDFDFDFDF6F6F6F3F3F3FFFFFFF7E7E7E202020FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF2020209F9F9FFFFFFF3F3F3F7F7F7FFFFFFFFFFFFF
            5F5F5FD7D7D77F7F7F3F3F3F9D9D9D030303969696FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF2020206A6A6AAAAAAA2A2A2A3535356A6A6A6A6A6A0000004F
            4F4F353535212121030303969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2F2F2F1111111111110606060202020202020202020202020202020202
            02060606969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          Spacing = 2
          TabOrder = 2
          OnClick = btPedidoVendaGravarClick
        end
      end
      object gbPedidoNumeroPedido: TGroupBox
        AlignWithMargins = True
        Left = 11
        Top = 20
        Width = 120
        Height = 47
        BiDiMode = bdLeftToRight
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        object edNumeroPedido: TNumberBox
          Left = 2
          Top = 18
          Width = 116
          Height = 27
          Align = alClient
          Alignment = taRightJustify
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
      object gbPedidoDataEmissao: TGroupBox
        Left = 137
        Top = 20
        Width = 120
        Height = 47
        BiDiMode = bdLeftToRight
        Caption = 'Data Emiss'#227'o'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object edPedidoDataEmissao: TEdit
          Left = 2
          Top = 18
          Width = 116
          Height = 27
          Align = alClient
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
    end
  end
  object pnGridPedidoVendaItens: TPanel
    Left = 0
    Top = 200
    Width = 1046
    Height = 358
    Align = alClient
    Caption = 'pnGridPedidoVendaItens'
    TabOrder = 1
    object gbPedidoVendaItens: TGroupBox
      Left = 1
      Top = 1
      Width = 1044
      Height = 356
      Align = alClient
      Caption = 'Pedido Itens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      TabOrder = 0
      object grPedidoVendaItens: TDBGrid
        Left = 2
        Top = 57
        Width = 1040
        Height = 297
        Align = alClient
        DataSource = dsPedidoVendaItens
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        Font.Quality = fqClearType
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = [fsBold]
        TitleFont.Quality = fqClearType
        OnKeyUp = grPedidoVendaItensKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'produto_codigo'
            Title.Caption = 'C'#243'digo Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = [fsBold]
            Title.Font.Quality = fqClearType
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = [fsBold]
            Title.Font.Quality = fqClearType
            Width = 320
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'quantidade_str'
            Title.Caption = 'Quantidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = [fsBold]
            Title.Font.Quality = fqClearType
            Width = 120
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'valor_unitario_str'
            Title.Caption = 'Vlr. Unit'#225'rio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = [fsBold]
            Title.Font.Quality = fqClearType
            Width = 130
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'valor_total_str'
            Title.Caption = 'Vlr. Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = [fsBold]
            Title.Font.Quality = fqClearType
            Width = 200
            Visible = True
          end>
      end
      object pnPedidoVendaItensAcoes: TPanel
        Left = 2
        Top = 18
        Width = 1040
        Height = 39
        Align = alTop
        TabOrder = 1
        object imgAjuda: TImage
          Left = 1
          Top = 1
          Width = 32
          Height = 37
          Cursor = crHelp
          Hint = 
            'Para Excluir um Item Pressionar a tecla [DEL], Para alterar [ENT' +
            'ER].'
          Align = alLeft
          AutoSize = True
          Center = True
          ParentShowHint = False
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
            8D4944415478DAED96CB4B555114C6D74DA840138A0C127B4961CE72100D82A6
            6108D595C284C0498D7AD07350347110511195350883088ACA9E4650FF42E0C0
            20ED5D66445162548604917E1F6B1D381CF73DFBEEEB15115CF0837BCFDE67AD
            EFECBDF65A3B23936C996901534DC042B0196C048B40853DFF0EFA4127B80FBE
            165BC072701C3482199EB9FFC15D7004BC2D860006BD0A4AC15F701BDC03CFC0
            0F9B3317D4D9EA6C0133C110D80E1E8C47C07E70DAE631F061D0E779A71A9C02
            595B0DFA385788804DB69423E0409A931CB6CF84300673E65188802AD00BE658
            F03381C1233B044E829FA0167CC957C015D0229AD159C7F862FBBA35F6FFA905
            EB77F87F081AC065B0231F014BC13BF0CF54BF4F8CF3F875837989E7836015F8
            9478BE02F4889E9E65C9719780BDE02CB809B639C66F8026D13DDD633EDAC006
            1B6B76BCD3217A3A76830B3E014FC07A0B72CB31FE1954DA36445FB344F47470
            ACCAF10E455D078F4D68AA8037A285874BE72D24B16DE1FEB3222E708CD78097
            E01558E913F01B94899E80A13C82D7D916AC05D7448B4FD2E8EB97F92EF70960
            D05213F1C7139C679D858A09F611AC93B1272158C06BD1E5AFB1DF69F64DB421
            B58A16AAC11CF3B8EC2F44B7A1D627C09784711B49F113B7A024DC25BAA7B98E
            6121C60FD96ABE2FFA04F0187D106D24AE4214BA02DCCEE7A044F22C44B44B60
            A7682BCDC602850A8897E276F3396682CB58689830CCDEA3A2979142EC986882
            0637235AD48E3987B79B1301813326BCD55629B81D4716BF90DC11ED787D9E77
            AAED1DDE8E9847AC15E7D394FA2C7925638BE671EA124D50FA6072AD06F5B672
            B3A44857B2C8E68383A29D72B667EEB07D315761C0E7783CD7721EAF4A7BCE2E
            C8263661D7F209B36901932E6014AFD090210F7ACC960000000049454E44AE42
            6082}
          ShowHint = True
          Transparent = True
          ExplicitLeft = 9
          ExplicitTop = 2
        end
        object btProdutoIncluir: TBitBtn
          AlignWithMargins = True
          Left = 38
          Top = 2
          Width = 95
          Height = 35
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'Incluir'
          Enabled = False
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
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1F1F1FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFEFEADADAD4C4C4C0909090000000000000909094C4C4CAEAEAEFEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E83E3E3E
            040404585858A7A7A7D3D3D3D2D2D2A6A6A65757570404043F3F3FE9E9E9FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8212121303030DBDBDBFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D92F2F2F222222E9E9E9FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE3F3F3F313131F2F2F2FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F22F2F2F424242FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFB0B0B0070707DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB
            EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFDADADA060606B3B3B3FFFFFFFFFFFFFFFF
            FFFFFFFF4D4D4D636363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F5F5F5FFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF606060505050FFFFFFFFFFFFFFFFFFFEFEFE
            0A0A0AAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F5F5F5FFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFACACAC0C0C0CFEFEFEFFFFFFFFFFFFEBEBEB000000D3
            D3D3FFFFFFFFFFFFEBEBEB5F5F5F5F5F5F2323232323235F5F5F5F5F5FEBEBEB
            FFFFFFFFFFFFD2D2D2000000ECECECFFFFFFFFFFFFEBEBEB000000D3D3D3FFFF
            FFFFFFFFEBEBEB5F5F5F5F5F5F2323232323235F5F5F5F5F5FEBEBEBFFFFFFFF
            FFFFD2D2D2000000ECECECFFFFFFFFFFFFFEFEFE0A0A0AAFAFAFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF5F5F5F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACAC
            AC0C0C0CFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D636363FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF5F5F5F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060505050
            FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF070707DDDDDDFFFFFFFFFFFFFFFFFFFFFF
            FFEBEBEBEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFDADADA060606B3B3B3FFFFFFFF
            FFFFFFFFFFFFFFFFFEFEFE404040313131F2F2F2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFF2F2F22F2F2F424242FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFE8E8E8212121303030DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFDBDBDB2F2F2F222222E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE8E8E83E3E3E070707686868B8B8B8D8D8D8D8D8D8B8B8B86767
            670707073F3F3FE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFEFEADADAD4C4C4C0909090000000000000909094C4C4CAFAFAF
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 0
          OnClick = btProdutoIncluirClick
        end
      end
    end
  end
  object pnPedidoVendaTotals: TPanel
    Left = 0
    Top = 558
    Width = 1046
    Height = 35
    Align = alBottom
    TabOrder = 2
    object lbPedidoValorTotal: TLabel
      AlignWithMargins = True
      Left = 220
      Top = 4
      Width = 125
      Height = 27
      Margins.Left = 10
      Align = alLeft
      Caption = 'Total Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Microsoft Tai Le'
      Font.Style = [fsBold, fsUnderline]
      Font.Quality = fqClearType
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 26
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 97
      Height = 27
      Align = alLeft
      Caption = 'Qtd. Itens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Microsoft Tai Le'
      Font.Style = [fsBold, fsUnderline]
      Font.Quality = fqClearType
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 26
    end
    object edPedidoValorTotal: TNumberBox
      AlignWithMargins = True
      Left = 351
      Top = 4
      Width = 200
      Height = 27
      TabStop = False
      Align = alLeft
      AutoSelect = False
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Microsoft Tai Le'
      Font.Style = [fsBold, fsUnderline]
      Font.Quality = fqClearType
      Mode = nbmCurrency
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      StyleElements = []
    end
    object edPedidoQtdItens: TNumberBox
      AlignWithMargins = True
      Left = 107
      Top = 4
      Width = 100
      Height = 27
      TabStop = False
      Align = alLeft
      AutoSelect = False
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Microsoft Tai Le'
      Font.Style = [fsBold, fsUnderline]
      Font.Quality = fqClearType
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      StyleElements = []
    end
  end
  object pnCliente: TPanel
    Left = 0
    Top = 0
    Width = 1046
    Height = 79
    Align = alTop
    TabOrder = 3
    Visible = False
    object gbCliente: TGroupBox
      Left = 1
      Top = 1
      Width = 1044
      Height = 77
      Align = alClient
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      TabOrder = 0
      object gbProdutoCodigo: TGroupBox
        AlignWithMargins = True
        Left = 11
        Top = 19
        Width = 120
        Height = 47
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        ParentFont = False
        TabOrder = 0
        object edClienteCodigo: TNumberBox
          Left = 2
          Top = 18
          Width = 116
          Height = 27
          Align = alClient
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
      object gbClienteNome: TGroupBox
        AlignWithMargins = True
        Left = 137
        Top = 19
        Width = 320
        Height = 47
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        ParentFont = False
        TabOrder = 1
        object edClienteNome: TEdit
          Left = 2
          Top = 18
          Width = 316
          Height = 27
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
      object gbClienteCidade: TGroupBox
        AlignWithMargins = True
        Left = 463
        Top = 19
        Width = 200
        Height = 47
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        ParentFont = False
        TabOrder = 2
        object edClienteCidade: TEdit
          Left = 2
          Top = 18
          Width = 196
          Height = 27
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
      object gbClienteUF: TGroupBox
        AlignWithMargins = True
        Left = 669
        Top = 19
        Width = 60
        Height = 47
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        ParentFont = False
        TabOrder = 3
        object edClienteUF: TEdit
          Left = 2
          Top = 18
          Width = 56
          Height = 27
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          Font.Quality = fqClearType
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
    end
  end
  object dsPedidoVendaItens: TDataSource
    AutoEdit = False
    Left = 881
    Top = 340
  end
  object dsPedidoVenda: TDataSource
    AutoEdit = False
    Left = 881
    Top = 96
  end
end
