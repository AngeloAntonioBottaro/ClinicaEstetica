inherited FrmAtualizarSistema: TFrmAtualizarSistema
  Caption = 'Atualizar Sistema'
  ClientHeight = 468
  ClientWidth = 341
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 347
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxTop: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 335
    Height = 246
    Align = alTop
    TabOrder = 0
    object LabelTitulo: TLabel
      Left = 2
      Top = 15
      Width = 331
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'Atualizar Sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 174
    end
    object Memo: TMemo
      Left = 2
      Top = 44
      Width = 331
      Height = 180
      Align = alClient
      Enabled = False
      TabOrder = 0
    end
    object MemoTabelas: TMemo
      Left = 2
      Top = 224
      Width = 331
      Height = 20
      TabStop = False
      Align = alBottom
      Lines.Strings = (
        'Cliente'
        'Grupo'
        'SubGrupo'
        'Produto'
        'FormaPagto'
        'HistoCaixa'
        'Caixa'
        'ContaReceber'
        'ContaRecebida'
        'ContaExcluida'
        'CabeServico'
        'Servico'
        'CabeVenda'
        'Venda'
        'CabeEntrada'
        'Entrada'
        'Usuario'
        'Fornecedor'
        'Funcionario'
        'Cidade'
        'ContaPagar'
        'ContaPaga')
      ReadOnly = True
      TabOrder = 1
      Visible = False
    end
  end
  object GroupBoxClient: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 255
    Width = 335
    Height = 210
    Align = alClient
    TabOrder = 1
    object LabelStatus: TLabel
      Left = 15
      Top = 167
      Width = 75
      Height = 15
      Caption = 'Aguardando...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ProgressBar: TProgressBar
      AlignWithMargins = True
      Left = 5
      Top = 188
      Width = 325
      Height = 17
      Align = alBottom
      BarColor = clBackground
      BackgroundColor = clBackground
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 15
      Width = 331
      Height = 53
      Align = alTop
      TabOrder = 1
      object ButtonAtualizarSistema: TButton
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 116
        Height = 30
        Align = alLeft
        Caption = 'Atualizar Banco'
        ImageIndex = 17
        Images = FrmComponentes.ImageListButtons
        TabOrder = 0
        OnClick = ButtonAtualizarSistemaClick
      end
      object ButtonTestarBanco: TButton
        AlignWithMargins = True
        Left = 224
        Top = 18
        Width = 102
        Height = 30
        Align = alRight
        Caption = 'Testar Banco'
        ImageIndex = 16
        Images = FrmComponentes.ImageListButtons
        TabOrder = 1
        OnClick = ButtonTestarBancoClick
      end
    end
  end
end
