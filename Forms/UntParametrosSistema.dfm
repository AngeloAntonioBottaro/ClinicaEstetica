inherited FrmParametrosSistema: TFrmParametrosSistema
  Caption = 'Parametros Do Sistema'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 562
    Height = 341
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 548
        Height = 307
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 99
          Height = 13
          Caption = 'Nome Empresa......:'
        end
        object Label2: TLabel
          Left = 16
          Top = 56
          Width = 100
          Height = 13
          Caption = 'Hash de Libera'#231#227'o..:'
        end
        object Label5: TLabel
          Left = 344
          Top = 16
          Width = 94
          Height = 13
          Caption = 'Codigo Liberacao..:'
        end
        object EditNomeEmpresa: TEdit
          Left = 125
          Top = 13
          Width = 200
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object EditHash: TEdit
          Left = 125
          Top = 53
          Width = 200
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 1
        end
        object EditCodigoArquivoLiberacao: TEdit
          Left = 440
          Top = 13
          Width = 50
          Height = 21
          NumbersOnly = True
          TabOrder = 2
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Carn'#234
      ImageIndex = 2
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 548
        Height = 307
        Align = alClient
        TabOrder = 0
        object Label3: TLabel
          Left = 16
          Top = 48
          Width = 79
          Height = 13
          Caption = 'Nome Empresa.:'
        end
        object Label4: TLabel
          Left = 16
          Top = 104
          Width = 79
          Height = 13
          Caption = 'Observa'#231#245'es...:'
        end
        object EditNomeEmpresaCarne: TEdit
          Left = 101
          Top = 45
          Width = 200
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object EditObservacaoCarne: TEdit
          Left = 101
          Top = 85
          Width = 200
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object EditObservacaoCarne1: TEdit
          Left = 101
          Top = 112
          Width = 200
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object CheckBoxImprimeCarne: TCheckBox
          Left = 101
          Top = 11
          Width = 95
          Height = 17
          Caption = 'Imprimir Carn'#234
          TabOrder = 3
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastro Produto'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 548
        Height = 307
        Align = alClient
        TabOrder = 0
        object CheckBoxControleEstoqueManual: TCheckBox
          Left = 16
          Top = 16
          Width = 145
          Height = 17
          Caption = 'Controlar Estoque Manual'
          TabOrder = 0
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Servi'#231'o'
      ImageIndex = 3
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 548
        Height = 307
        Align = alClient
        TabOrder = 0
        object CheckBoxBaixaEstoqueDoServico: TCheckBox
          Left = 16
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Baixar Estoque'
          TabOrder = 0
        end
        object CheckBoxCalcularValorProdutoNoServico: TCheckBox
          Left = 16
          Top = 48
          Width = 193
          Height = 17
          Caption = 'Calcular valor do produto no servi'#231'o'
          TabOrder = 1
        end
      end
    end
    object Venda: TTabSheet
      Caption = 'Venda'
      ImageIndex = 4
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 548
        Height = 307
        Align = alClient
        TabOrder = 0
        object CheckBoxBaixaEstoqueDaVenda: TCheckBox
          Left = 16
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Baixar Estoque'
          TabOrder = 0
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Recebimento'
      ImageIndex = 5
      object GroupBox6: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 548
        Height = 307
        Align = alClient
        TabOrder = 0
        object CheckBoxCalcularTrocoRecebimento: TCheckBox
          Left = 16
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Calcular Troco'
          TabOrder = 0
        end
      end
    end
  end
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 350
    Width = 562
    Height = 53
    Align = alBottom
    TabOrder = 1
    object ButtonGravar: TButton
      AlignWithMargins = True
      Left = 480
      Top = 15
      Width = 75
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alRight
      Caption = 'Gravar'
      ImageIndex = 9
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonGravarClick
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQParametros
    ScopeMappings = <>
    Left = 112
    Top = 360
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 32
    Top = 360
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'HASH'
      Control = EditHash
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CONTROLARESTOQUEMANUAL'
      Control = CheckBoxControleEstoqueManual
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAOCARNE1'
      Control = EditObservacaoCarne1
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAOCARNE'
      Control = EditObservacaoCarne
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'IMPRIMECARNE'
      Control = CheckBoxImprimeCarne
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'BAIXAESTOQUEDOSERVICO'
      Control = CheckBoxBaixaEstoqueDoServico
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'BAIXAESTOQUEDAVENDA'
      Control = CheckBoxBaixaEstoqueDaVenda
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NOMEEMPRESACARNE'
      Control = EditNomeEmpresaCarne
      Track = True
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NOMEEMPRESA'
      Control = EditNomeEmpresa
      Track = True
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CODIGOARQUIVOLIBERACAO'
      Control = EditCodigoArquivoLiberacao
      Track = True
    end
    object LinkControlToField11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CALCULARTROCORECEBIMENTO'
      Control = CheckBoxCalcularTrocoRecebimento
      Track = True
    end
    object LinkControlToField12: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CALCULARVALORPRODUTONOSERVICO'
      Control = CheckBoxCalcularValorProdutoNoServico
      Track = True
    end
  end
end
