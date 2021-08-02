inherited FrmCadastroFornecedor: TFrmCadastroFornecedor
  Caption = 'Cadastro De Fornecedor'
  ClientHeight = 433
  ClientWidth = 578
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 584
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 377
    Width = 572
    Height = 53
    Align = alBottom
    TabOrder = 0
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
  object GroupBoxClient: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 572
    Height = 368
    Align = alClient
    Caption = 'Informa'#231#245'es Principais'
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 25
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
    object Label16: TLabel
      Left = 6
      Top = 247
      Width = 63
      Height = 15
      Caption = 'E-MAIL.......:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 189
      Top = 193
      Width = 34
      Height = 15
      Caption = 'RG.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 9
      Top = 193
      Width = 62
      Height = 15
      Caption = 'CPF.............:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 380
      Top = 25
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
    object Label2: TLabel
      Left = 7
      Top = 56
      Width = 100
      Height = 15
      Caption = 'NOME FANTASIA..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 110
      Width = 65
      Height = 15
      Caption = 'ENDERE'#199'O.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 328
      Top = 137
      Width = 50
      Height = 15
      Caption = 'CIDADE..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 211
      Top = 137
      Width = 32
      Height = 15
      Caption = 'CEP...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 7
      Top = 137
      Width = 60
      Height = 15
      Caption = 'BAIRRO.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 7
      Top = 166
      Width = 61
      Height = 15
      Caption = 'TELEFONE.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 184
      Top = 166
      Width = 55
      Height = 15
      Caption = 'CELULAR.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 6
      Top = 319
      Width = 85
      Height = 15
      Caption = 'OBSERVA'#199#213'ES.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 7
      Top = 83
      Width = 102
      Height = 15
      Caption = 'RAZ'#194'O SOCIAL......:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 220
      Width = 63
      Height = 15
      Caption = 'CNPJ...........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 188
      Top = 220
      Width = 34
      Height = 15
      Caption = #8237'I.E......:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 6
      Top = 276
      Width = 95
      Height = 15
      Caption = 'REPRESENTANTE.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditCodigo: TEdit
      Left = 75
      Top = 23
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 16
      OnExit = EditCodigoExit
    end
    object EditEmail: TEdit
      Left = 76
      Top = 245
      Width = 246
      Height = 21
      TabOrder = 12
    end
    object EditRG: TEdit
      Left = 228
      Top = 191
      Width = 94
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object EditCPF: TEdit
      Left = 76
      Top = 191
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
      OnExit = EditCPFExit
    end
    object EditNomeFantasia: TEdit
      Left = 113
      Top = 54
      Width = 436
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object EditEndereco: TEdit
      Left = 76
      Top = 108
      Width = 473
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object EditCep: TEdit
      Left = 247
      Top = 135
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnExit = EditCepExit
    end
    object EditBairro: TEdit
      Left = 76
      Top = 135
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object EditTelefone: TEdit
      Left = 76
      Top = 162
      Width = 104
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
      OnExit = EditTelefoneExit
    end
    object EditCelular: TEdit
      Left = 240
      Top = 164
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
      OnExit = EditCelularExit
    end
    object ComboBoxStatus: TComboBox
      Left = 434
      Top = 23
      Width = 115
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      TabOrder = 17
      TabStop = False
      Items.Strings = (
        'ATIVO'
        'INATIVO')
    end
    object EditObservacao: TEdit
      Left = 97
      Top = 305
      Width = 452
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 14
      OnKeyPress = EditObservacaoKeyPress
    end
    object EditObservacao1: TEdit
      Left = 97
      Top = 334
      Width = 452
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 15
      OnExit = EditObservacao1Exit
      OnKeyPress = EditObservacao1KeyPress
    end
    object ComboBoxCidade: TComboBox
      Left = 384
      Top = 135
      Width = 165
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 5
      Text = 'IVAIPORA'
      Items.Strings = (
        'IVAIPORA'
        'JARDIM ALEGRE'
        'ARAPUA'
        'LUNARDELLI'
        'NOVA TEBAS'
        'MANOEL RIBAS'
        'LIDIANOPOLIS'
        'GRANDES RIOS'
        'GODOY MOREIRA'
        'ROSARIO DO IVAI'
        'ARIRANHA DO IVAI'
        'CANDIDO DE ABREU'
        'SAO JOAO DO IVAI'
        'SAO PEDRO DO IVAI'
        'RIO BRANCO DO IVAI')
    end
    object EditRazaoSocial: TEdit
      Left = 113
      Top = 81
      Width = 436
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EditCNPJ: TEdit
      Left = 76
      Top = 218
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 10
      OnExit = EditCNPJExit
    end
    object EditInscricaoEstadual: TEdit
      Left = 227
      Top = 218
      Width = 94
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 11
    end
    object EditRepresentante: TEdit
      Left = 107
      Top = 274
      Width = 442
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 13
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTFornecedor
    ScopeMappings = <>
    Left = 440
    Top = 384
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 368
    Top = 384
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
      FieldName = 'CIDADE'
      Control = ComboBoxCidade
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'EMAIL'
      Control = EditEmail
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO1'
      Control = EditObservacao1
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'RG'
      Control = EditRG
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'REPRESENTANTE'
      Control = EditRepresentante
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TELEFONE'
      Control = EditTelefone
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CELULAR'
      Control = EditCelular
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CNPJ'
      Control = EditCNPJ
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO'
      Control = EditObservacao
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NOMEFANTASIA'
      Control = EditNomeFantasia
      Track = True
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INSCRICAOESTADUAL'
      Control = EditInscricaoEstadual
      Track = True
    end
    object LinkControlToField11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CODIGO'
      Control = EditCodigo
      Track = True
    end
    object LinkControlToField12: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CEP'
      Control = EditCep
      Track = True
    end
    object LinkControlToField13: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'RAZAOSOCIAL'
      Control = EditRazaoSocial
      Track = True
    end
    object LinkControlToField14: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CPF'
      Control = EditCPF
      Track = True
    end
    object LinkControlToField15: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ENDERECO'
      Control = EditEndereco
      Track = True
    end
    object LinkControlToField16: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'BAIRRO'
      Control = EditBairro
      Track = True
    end
  end
end
