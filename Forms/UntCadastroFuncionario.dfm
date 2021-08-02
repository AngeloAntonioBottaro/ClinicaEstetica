inherited FrmCadastroFuncionario: TFrmCadastroFuncionario
  Caption = 'Cadastro Funcionario'
  ClientHeight = 479
  ClientWidth = 583
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 589
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 423
    Width = 577
    Height = 53
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 406
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
  object GroupBoxInformacoesPrincipais: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 577
    Height = 414
    Align = alClient
    Caption = 'Informa'#231#245'es Principais'
    TabOrder = 1
    ExplicitHeight = 397
    object Label2: TLabel
      Left = 6
      Top = 54
      Width = 63
      Height = 15
      Caption = 'NOME........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 364
      Top = 46
      Width = 81
      Height = 30
      Caption = 'DATA DE NASCIMENTO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object LabelIdade: TLabel
      Left = 452
      Top = 84
      Width = 31
      Height = 13
      Caption = '- Anos'
    end
    object Label6: TLabel
      Left = 367
      Top = 83
      Width = 73
      Height = 15
      Caption = 'IDADE............:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 83
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
    object Label7: TLabel
      Left = 6
      Top = 112
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
    object Label8: TLabel
      Left = 210
      Top = 112
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
    object Label9: TLabel
      Left = 341
      Top = 112
      Width = 59
      Height = 15
      Caption = 'CIDADE.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 6
      Top = 141
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
      Left = 183
      Top = 141
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
    object Label12: TLabel
      Left = 352
      Top = 141
      Width = 79
      Height = 15
      Caption = 'ESTADO CIVIL.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 6
      Top = 170
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
    object Label14: TLabel
      Left = 186
      Top = 170
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
    object Label16: TLabel
      Left = 328
      Top = 170
      Width = 45
      Height = 15
      Caption = 'E-MAIL.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 6
      Top = 209
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
    object EditNome: TEdit
      Left = 75
      Top = 52
      Width = 286
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object DateTimePickerDataNascimento: TDateTimePicker
      Left = 445
      Top = 53
      Width = 104
      Height = 23
      Date = 43803.575950798600000000
      Time = 43803.575950798600000000
      TabOrder = 1
      OnChange = DateTimePickerDataNascimentoChange
    end
    object EditEndereco: TEdit
      Left = 75
      Top = 81
      Width = 286
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object EditBairro: TEdit
      Left = 75
      Top = 110
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object EditCep: TEdit
      Left = 246
      Top = 110
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnExit = EditCepExit
    end
    object ComboBoxCidade: TComboBox
      Left = 404
      Top = 110
      Width = 145
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      TabOrder = 5
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
    object EditTelefone: TEdit
      Left = 75
      Top = 139
      Width = 104
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
      OnExit = EditTelefoneExit
    end
    object EditCelular: TEdit
      Left = 239
      Top = 139
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
      OnExit = EditCelularExit
    end
    object ComboBoxEstadoCivil: TComboBox
      Left = 437
      Top = 139
      Width = 112
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
      Items.Strings = (
        'SOLTEIRO(A)'
        'CASADO(A)'
        'VIUVO(A)'
        'DIVORCIADO(A)')
    end
    object EditCPF: TEdit
      Left = 74
      Top = 168
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
      OnExit = EditCPFExit
    end
    object EditRG: TEdit
      Left = 225
      Top = 168
      Width = 94
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object EditEmail: TEdit
      Left = 379
      Top = 166
      Width = 170
      Height = 21
      TabOrder = 11
    end
    object EditObservacao: TEdit
      Left = 97
      Top = 195
      Width = 452
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 12
      OnKeyPress = EditObservacaoKeyPress
    end
    object EditObservacao1: TEdit
      Left = 97
      Top = 224
      Width = 452
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 13
      OnExit = EditObservacao1Exit
      OnKeyPress = EditObservacao1KeyPress
    end
    object EditCodigo: TEdit
      Left = 75
      Top = 23
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 14
      OnExit = EditCodigoExit
    end
    object ComboBoxStatus: TComboBox
      Left = 434
      Top = 23
      Width = 115
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      TabOrder = 15
      TabStop = False
      Items.Strings = (
        'ATIVO'
        'INATIVO')
    end
    object GroupBoxInformacoesAdicionais: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 278
      Width = 567
      Height = 131
      Align = alBottom
      Caption = 'Informa'#231#245'es Adicionais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      ExplicitTop = 261
      object PageControl: TPageControl
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 557
        Height = 106
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Fun'#231#227'o'
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 543
            Height = 70
            Align = alClient
            TabOrder = 0
            object RadioButtonSecretaria: TRadioButton
              Left = 16
              Top = 24
              Width = 90
              Height = 17
              Caption = 'Secretaria'
              TabOrder = 0
            end
            object RadioButtonEsteticista: TRadioButton
              Left = 112
              Top = 24
              Width = 90
              Height = 17
              Caption = 'Esteticista'
              TabOrder = 1
            end
            object RadioButtonMedico: TRadioButton
              Left = 208
              Top = 24
              Width = 90
              Height = 17
              Caption = 'Medico (a)'
              TabOrder = 2
            end
          end
        end
      end
    end
    object CheckBoxAgenda: TCheckBox
      Left = 97
      Top = 255
      Width = 97
      Height = 17
      Caption = 'AGENDA'
      TabOrder = 17
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTFuncionario
    ScopeMappings = <>
    Left = 392
    Top = 496
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 344
    Top = 496
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
      FieldName = 'CPF'
      Control = EditCPF
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
      FieldName = 'OBSERVACAO'
      Control = EditObservacao
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CELULAR'
      Control = EditCelular
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NOME'
      Control = EditNome
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'EMAIL'
      Control = EditEmail
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CODIGO'
      Control = EditCodigo
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TELEFONE'
      Control = EditTelefone
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CEP'
      Control = EditCep
      Track = True
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ENDERECO'
      Control = EditEndereco
      Track = True
    end
    object LinkControlToField11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'BAIRRO'
      Control = EditBairro
      Track = True
    end
    object LinkControlToField12: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DATANASCIMENTO'
      Control = DateTimePickerDataNascimento
      Track = True
    end
    object LinkControlToField13: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'RG'
      Control = EditRG
      Track = True
    end
    object LinkControlToField14: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'AGENDA'
      Control = CheckBoxAgenda
      Track = True
    end
    object LinkFillControlToField3: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ESTADOCIVIL'
      Control = ComboBoxEstadoCivil
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end
