inherited FrmCadastroUsuario: TFrmCadastroUsuario
  Caption = 'Cadastro De Usuario'
  ClientHeight = 555
  ClientWidth = 389
  OnShow = FormShow
  ExplicitWidth = 395
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxClient: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 383
    Height = 486
    Align = alClient
    Caption = 'Informa'#231#245'es Principais'
    TabOrder = 0
    object Label1: TLabel
      Left = 7
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
      Left = 196
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
      Top = 52
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
    object Label3: TLabel
      Left = 7
      Top = 79
      Width = 63
      Height = 15
      Caption = 'LOGIN........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 196
      Top = 79
      Width = 53
      Height = 15
      Caption = 'SENHA....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 7
      Top = 106
      Width = 62
      Height = 15
      Caption = 'TIPO...........:'
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
      TabOrder = 0
      OnExit = EditCodigoExit
    end
    object ComboBoxStatus: TComboBox
      Left = 250
      Top = 23
      Width = 115
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      TabOrder = 1
      TabStop = False
      Items.Strings = (
        'ATIVO'
        'INATIVO')
    end
    object EditNome: TEdit
      Left = 75
      Top = 50
      Width = 290
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object EditLogin: TEdit
      Left = 75
      Top = 77
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object EditSenha: TEdit
      Left = 255
      Top = 77
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      PasswordChar = '*'
      TabOrder = 4
    end
    object ComboBoxTipo: TComboBox
      Left = 75
      Top = 104
      Width = 150
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      TabOrder = 5
      TabStop = False
      Items.Strings = (
        'SUPERVISOR'
        'GERENTE'
        'FUNCIONARIO')
    end
    object PageControl: TPageControl
      AlignWithMargins = True
      Left = 5
      Top = 144
      Width = 373
      Height = 337
      ActivePage = TabSheet3
      Align = alBottom
      TabOrder = 6
      object TabSheet3: TTabSheet
        Caption = 'Acesso Usuario'
        ImageIndex = 2
        object CategoryPanelGroup1: TCategoryPanelGroup
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 359
          Height = 303
          VertScrollBar.Tracking = True
          Align = alClient
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          ParentBackground = True
          TabOrder = 0
          object CategoryPanelMovimentacao: TCategoryPanel
            Top = 363
            Height = 300
            Caption = 'Movimentacao'
            TabOrder = 0
            object CategoryPanelGroup2: TCategoryPanelGroup
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 332
              Height = 268
              VertScrollBar.Tracking = True
              Align = alClient
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              ParentColor = True
              TabOrder = 0
              object CategoryPanelCaixa: TCategoryPanel
                Top = 424
                Height = 109
                Caption = 'Caixa'
                TabOrder = 0
                object CheckBoxCaixaDiario: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 3
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '2.1- Caixa Diario'
                  TabOrder = 0
                end
                object CheckBoxHistoricoCaixa: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 49
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '2.3- Historicos '
                  TabOrder = 1
                end
                object CheckBoxLancamentoCaixa: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 26
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '2.2- Lan'#231'amento Caixa'
                  TabOrder = 2
                end
              end
              object CategoryPanelContaPaga: TCategoryPanel
                Top = 313
                Height = 111
                Caption = 'Contas Pagas'
                TabOrder = 1
                object CheckBoxLancamentoContaPaga: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 3
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.4.1- Lan'#231'amento De Contas Pagas'
                  TabOrder = 0
                end
                object CheckBoxEstornarContaPaga: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 26
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.4.2- Estornar Conta Paga'
                  TabOrder = 1
                end
                object CheckBoxConsultaContaPaga: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 49
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.4.3- Consultar Contas Pagas'
                  TabOrder = 2
                end
              end
              object CategoryPanelContaPagar: TCategoryPanel
                Top = 209
                Height = 104
                Caption = 'Contas A Pagar'
                TabOrder = 2
                object CheckBoxLancamentoContaPagar: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 3
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.3.1- Lan'#231'amento Contas A Pagar'
                  TabOrder = 0
                end
                object CheckBoxPagamento: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 26
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.3.2- Pagamento'
                  TabOrder = 1
                end
                object CheckBoxConsultaContaPagar: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 49
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.3.3- Consulta De Conta a Pagar'
                  TabOrder = 2
                end
              end
              object CategoryPanelContaRecebida: TCategoryPanel
                Top = 102
                Height = 107
                Caption = 'Contas Recebidas'
                TabOrder = 3
                object CheckBoxConsultarContaRecebida: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 49
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.2.3- Consultar Conta Recebida'
                  TabOrder = 0
                end
                object CheckBoxEstornarContaRecebida: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 26
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.2.2- Estornar Conta Recebida'
                  TabOrder = 1
                end
                object CheckBoxLancarContaRecebida: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 3
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.2.1- Lan'#231'ar Conta Recebida'
                  TabOrder = 2
                end
              end
              object CategoryPanelContaReceber: TCategoryPanel
                Top = 0
                Height = 102
                Caption = 'Contas A Receber'
                TabOrder = 4
                object CheckBoxConsultaContaReceber: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 49
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.1.3- Consulta Conta a Receber'
                  TabOrder = 0
                end
                object CheckBoxLancarContaReceber: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 3
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.1.1- Lan'#231'ar Conta a Receber'
                  TabOrder = 1
                end
                object CheckBoxRecebimento: TCheckBox
                  AlignWithMargins = True
                  Left = 20
                  Top = 26
                  Width = 288
                  Height = 17
                  Margins.Left = 20
                  Align = alTop
                  Caption = '1.1.2- Recebimento'
                  TabOrder = 2
                end
              end
            end
          end
          object CategoryPanelCadastros: TCategoryPanel
            Top = 137
            Height = 226
            Caption = 'Cadastros'
            TabOrder = 1
            object CheckBoxCadastroCidade: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 164
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = '8- Cadastro Cidade'
              TabOrder = 0
            end
            object CheckBoxCadastroCliente: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 3
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = '1- Cadastro Cliente'
              TabOrder = 1
            end
            object CheckBoxCadastroFormaPagto: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 95
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = '5- Cadastro Forma Pagamento'
              TabOrder = 2
            end
            object CheckBoxCadastroFornecedor: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 118
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = '6- Cadastro Fornecedor'
              TabOrder = 3
            end
            object CheckBoxCadastroFuncionario: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 141
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = '7- Cadastro Funcionario'
              TabOrder = 4
            end
            object CheckBoxCadastroGrupo: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 49
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = '3- Cadastro Grupo'
              TabOrder = 5
            end
            object CheckBoxCadastroProduto: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 26
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = '2- Cadastro Produto'
              TabOrder = 6
            end
            object CheckBoxCadastroSubGrupo: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 72
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = '4- Cadastro Sub-Grupo'
              TabOrder = 7
            end
          end
          object CategoryPanelAcessoRapido: TCategoryPanel
            Top = 0
            Height = 137
            Caption = 'Acesso Rapido'
            TabOrder = 2
            object CheckBoxAgenda: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 3
              Width = 315
              Height = 16
              Margins.Left = 20
              Align = alTop
              Caption = 'Agenda'
              TabOrder = 0
            end
            object CheckBoxEntradaEstoque: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 71
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = 'Entrada Estoque'
              TabOrder = 1
            end
            object CheckBoxServico: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 25
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = 'Servi'#231'o'
              TabOrder = 2
            end
            object CheckBoxVenda: TCheckBox
              AlignWithMargins = True
              Left = 20
              Top = 48
              Width = 315
              Height = 17
              Margins.Left = 20
              Align = alTop
              Caption = 'Venda'
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 495
    Width = 383
    Height = 57
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
      Caption = 'Gravar'
      ImageIndex = 9
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonGravarClick
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 272
    Top = 112
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
      FieldName = 'NOME'
      Control = EditNome
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SENHA'
      Control = EditSenha
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CODIGO'
      Control = EditCodigo
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'LOGIN'
      Control = EditLogin
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CADASTROFUNCIONARIO'
      Control = CheckBoxCadastroFuncionario
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CADASTROFORMAPAGTO'
      Control = CheckBoxCadastroFormaPagto
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CAIXADIARIO'
      Control = CheckBoxCaixaDiario
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CADASTROHISTOCAIXA'
      Control = CheckBoxHistoricoCaixa
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CADASTROSUBGRUPO'
      Control = CheckBoxCadastroSubGrupo
      Track = True
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TELAENTRADAESTOQUE'
      Control = CheckBoxEntradaEstoque
      Track = True
    end
    object LinkControlToField11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TELAVENDA'
      Control = CheckBoxVenda
      Track = True
    end
    object LinkControlToField12: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CADASTROGRUPO'
      Control = CheckBoxCadastroGrupo
      Track = True
    end
    object LinkControlToField13: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CADASTROFORNECEDOR'
      Control = CheckBoxCadastroFornecedor
      Track = True
    end
    object LinkControlToField14: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'LANCARCONTARECEBIDA'
      Control = CheckBoxLancarContaRecebida
      Track = True
    end
    object LinkControlToField15: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CONSULTARCONTARECEBER'
      Control = CheckBoxConsultaContaReceber
      Track = True
    end
    object LinkControlToField16: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'LANCAMENTOCAIXA'
      Control = CheckBoxLancamentoCaixa
      Track = True
    end
    object LinkControlToField17: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TELASERVICO'
      Control = CheckBoxServico
      Track = True
    end
    object LinkControlToField18: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CADASTROCLIENTE'
      Control = CheckBoxCadastroCliente
      Track = True
    end
    object LinkControlToField19: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'LANCARCONTARECEBER'
      Control = CheckBoxLancarContaReceber
      Track = True
    end
    object LinkControlToField20: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ESTORNARCONTARECEBIDA'
      Control = CheckBoxEstornarContaRecebida
      Track = True
    end
    object LinkControlToField21: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'RECEBIMENTO'
      Control = CheckBoxRecebimento
      Track = True
    end
    object LinkControlToField22: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CADASTROPRODUTO'
      Control = CheckBoxCadastroProduto
      Track = True
    end
    object LinkControlToField23: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CONSULTARCONTARECEBIDA'
      Control = CheckBoxConsultarContaRecebida
      Track = True
    end
    object LinkControlToField24: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TELAAGENDA'
      Control = CheckBoxAgenda
      Track = True
    end
    object LinkControlToField25: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CADASTROCIDADE'
      Control = CheckBoxCadastroCidade
      Track = True
    end
    object LinkControlToField26: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'LANCARCONTAPAGAR'
      Control = CheckBoxLancamentoContaPagar
      Track = True
    end
    object LinkControlToField27: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'LANCARCONTAPAGA'
      Control = CheckBoxLancamentoContaPaga
      Track = True
    end
    object LinkControlToField28: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'PAGAMENTO'
      Control = CheckBoxPagamento
      Track = True
    end
    object LinkControlToField29: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CONSULTACONTAPAGAR'
      Control = CheckBoxConsultaContaPagar
      Track = True
    end
    object LinkControlToField30: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CONSULTACONTAPAGA'
      Control = CheckBoxConsultaContaPaga
      Track = True
    end
    object LinkControlToField31: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ESTORNARCONTAPAGA'
      Control = CheckBoxEstornarContaPaga
      Track = True
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQUsuario
    ScopeMappings = <>
    Left = 328
    Top = 112
  end
end
