inherited FrmCadastroProduto: TFrmCadastroProduto
  Caption = 'Cadastro De Produto'
  ClientHeight = 441
  ClientWidth = 565
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 571
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxInformacoesPrincipais: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 559
    Height = 376
    Align = alClient
    Caption = 'Informa'#231#245'es Principais'
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 33
      Width = 63
      Height = 15
      Caption = 'CODIGO.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 20
      Top = 67
      Width = 68
      Height = 15
      Caption = 'DESCRI'#199#195'O.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 149
      Top = 97
      Width = 46
      Height = 15
      Caption = 'GRUPO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 298
      Top = 97
      Width = 71
      Height = 15
      Caption = 'SUB-GRUPO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 396
      Top = 67
      Width = 35
      Height = 15
      Caption = 'TIPO..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 386
      Top = 33
      Width = 48
      Height = 15
      Caption = 'STATUS..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 21
      Top = 97
      Width = 66
      Height = 15
      Caption = 'UNIDADE....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 21
      Top = 127
      Width = 95
      Height = 15
      Caption = 'PRE'#199'O COMPRA.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 207
      Top = 127
      Width = 85
      Height = 15
      Caption = 'PRE'#199'O VENDA.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 384
      Top = 127
      Width = 57
      Height = 15
      Caption = 'ESTOQUE.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelObservacao: TLabel
      Left = 21
      Top = 173
      Width = 103
      Height = 15
      Caption = 'OBSERVA'#199#213'ES.......:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditCodigo: TEdit
      Left = 90
      Top = 31
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditCodigoExit
    end
    object EditDescricao: TEdit
      Left = 92
      Top = 65
      Width = 294
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EditCodigoGrupo: TEdit
      Left = 202
      Top = 96
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 4
      OnExit = EditCodigoGrupoExit
    end
    object ButtonConsultaGrupo: TButton
      Left = 258
      Top = 93
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 10
      TabStop = False
      OnClick = ButtonConsultaGrupoClick
    end
    object EditCodigoSubGrupo: TEdit
      Left = 375
      Top = 95
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 5
      OnExit = EditCodigoSubGrupoExit
    end
    object ButtonConsultaSubGrupo: TButton
      Left = 431
      Top = 93
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 11
      TabStop = False
      OnClick = ButtonConsultaSubGrupoClick
    end
    object ComboBoxTipo: TComboBox
      Left = 437
      Top = 65
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 2
      Text = 'PRODUTO'
      Items.Strings = (
        'PRODUTO'
        'SERVICO')
    end
    object ComboBoxStatus: TComboBox
      Left = 440
      Top = 31
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 12
      Text = 'ATIVO'
      Items.Strings = (
        'ATIVO'
        'INATIVO')
    end
    object EditUnidade: TEdit
      Left = 93
      Top = 95
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object EditPrecoCompra: TEdit
      Left = 122
      Top = 125
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object EditPrecoVenda: TEdit
      Left = 298
      Top = 125
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object EditEstoque: TEdit
      Left = 447
      Top = 125
      Width = 87
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 13
    end
    object EditObservacao: TEdit
      Left = 130
      Top = 157
      Width = 404
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
      OnKeyPress = EditObservacaoKeyPress
    end
    object EditObservacao1: TEdit
      Left = 130
      Top = 186
      Width = 404
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
      OnExit = EditObservacao1Exit
      OnKeyPress = EditObservacao1KeyPress
    end
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 5
      Top = 221
      Width = 549
      Height = 150
      ActivePage = TabSheet1
      Align = alBottom
      TabOrder = 14
      object TabSheet1: TTabSheet
        Caption = 'Informa'#231#245'es Adicionais'
        object Label11: TLabel
          Left = 13
          Top = 15
          Width = 109
          Height = 15
          Caption = 'ESTOQUE MINIMO..:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 13
          Top = 42
          Width = 109
          Height = 15
          Caption = 'ESTOQUE MAXIMO.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditEstoqueMinimo: TEdit
          Left = 128
          Top = 13
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object EditEstoqueMaximo: TEdit
          Left = 128
          Top = 40
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          OnExit = EditEstoqueMaximoExit
        end
      end
    end
  end
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 385
    Width = 559
    Height = 53
    Align = alBottom
    TabOrder = 1
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
    object ButtonConsultar: TButton
      AlignWithMargins = True
      Left = 192
      Top = 15
      Width = 89
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alLeft
      Caption = 'Consultar'
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonConsultarClick
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
      TabOrder = 2
      OnClick = ButtonGravarClick
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTProduto
    ScopeMappings = <>
    Left = 432
    Top = 400
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 336
    Top = 400
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
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TIPO'
      Control = ComboBoxTipo
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'UNIDADE'
      Control = EditUnidade
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DESCRICAO'
      Control = EditDescricao
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CODIGO'
      Control = EditCodigo
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'GRUPO'
      Control = EditCodigoGrupo
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SUBGRUPO'
      Control = EditCodigoSubGrupo
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'VALORVENDA'
      Control = EditPrecoVenda
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO'
      Control = EditObservacao
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO1'
      Control = EditObservacao1
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'VALORCOMPRA'
      Control = EditPrecoCompra
      Track = True
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ESTOQUE'
      Control = EditEstoque
      Track = True
    end
    object LinkControlToField11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ESTOQUEMINIMO'
      Control = EditEstoqueMinimo
      Track = True
    end
    object LinkControlToField12: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ESTOQUEMAXIMO'
      Control = EditEstoqueMaximo
      Track = True
    end
  end
end
