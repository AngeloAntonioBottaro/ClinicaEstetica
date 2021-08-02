inherited FrmCadastroFormaPagamento: TFrmCadastroFormaPagamento
  Caption = 'Cadastro De Forma De Pagamento'
  ClientHeight = 341
  OnClose = FormClose
  OnShow = FormShow
  ExplicitHeight = 370
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxGrid: TGroupBox
    AlignWithMargins = True
    Left = 336
    Top = 3
    Width = 229
    Height = 276
    Align = alRight
    Caption = 'Formas Pagamento'
    TabOrder = 0
    object DBGridFormaPagamento: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 219
      Height = 253
      Align = alClient
      DataSource = DM.DSMFormaPagto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGridFormaPagamentoCellClick
      OnColEnter = DBGridFormaPagamentoColEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Width = 54
          Visible = True
        end>
    end
  end
  object GroupBoxInformacoes: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 327
    Height = 276
    Align = alClient
    TabOrder = 1
    object LabelCodigo: TLabel
      Left = 11
      Top = 20
      Width = 51
      Height = 15
      Caption = 'CODIGO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelDescricao: TLabel
      Left = 11
      Top = 65
      Width = 68
      Height = 15
      Caption = 'DESCRICAO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelStatus: TLabel
      Left = 124
      Top = 20
      Width = 45
      Height = 15
      Caption = 'STATUS.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditCodigo: TEdit
      Left = 68
      Top = 17
      Width = 50
      Height = 21
      Enabled = False
      NumbersOnly = True
      TabOrder = 2
    end
    object EditDescricao: TEdit
      Left = 85
      Top = 62
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object GroupBoxTipoLancamento: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 192
      Width = 317
      Height = 79
      Align = alBottom
      Caption = 'Tipo Lancamento'
      TabOrder = 3
      object RadioButtonCaixa: TRadioButton
        Left = 14
        Top = 24
        Width = 68
        Height = 17
        Caption = 'Caixa'
        TabOrder = 0
      end
      object RadioButtonFinanceiro: TRadioButton
        Left = 127
        Top = 24
        Width = 81
        Height = 17
        Caption = 'Financeiro'
        TabOrder = 1
      end
      object RadioButtonSemControle: TRadioButton
        Left = 14
        Top = 47
        Width = 93
        Height = 17
        Caption = 'Sem Controle'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object RadioButtonLancaParcelado: TRadioButton
        Left = 127
        Top = 47
        Width = 113
        Height = 17
        Caption = 'Parcelado'
        TabOrder = 3
      end
    end
    object ComboBoxStatus: TComboBox
      Left = 172
      Top = 17
      Width = 93
      Height = 21
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 1
      TabStop = False
      Text = 'ATIVO'
      Items.Strings = (
        'ATIVO'
        'INATIVO')
    end
  end
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 285
    Width = 562
    Height = 53
    Align = alBottom
    TabOrder = 2
    object ButtonAdicionar: TButton
      AlignWithMargins = True
      Left = 7
      Top = 15
      Width = 90
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alLeft
      Caption = 'Adicionar'
      ImageIndex = 8
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonAdicionarClick
    end
    object ButtonGravar: TButton
      AlignWithMargins = True
      Left = 107
      Top = 15
      Width = 75
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alLeft
      Caption = 'Gravar'
      ImageIndex = 9
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonGravarClick
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTFormaPagto
    ScopeMappings = <>
    Left = 488
    Top = 296
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 408
    Top = 296
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'STATUS'
      Control = ComboBoxStatus
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DESCRICAO'
      Control = EditDescricao
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CODIGO'
      Control = EditCodigo
      Track = True
    end
  end
end
