inherited FrmLancamentoContaPaga: TFrmLancamentoContaPaga
  Caption = 'Lan'#231'amento De Conta Paga'
  ClientHeight = 341
  ClientWidth = 431
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 437
  ExplicitHeight = 370
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 425
    Height = 276
    Align = alClient
    TabOrder = 0
    object Label20: TLabel
      Left = 16
      Top = 23
      Width = 81
      Height = 15
      Caption = 'FORNECEDOR.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelValor: TLabel
      Left = 16
      Top = 171
      Width = 44
      Height = 15
      Caption = 'VALOR.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelVencimento: TLabel
      Left = 201
      Top = 64
      Width = 81
      Height = 15
      Caption = 'VENCIMENTO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelPagamento: TLabel
      Left = 181
      Top = 171
      Width = 78
      Height = 15
      Caption = 'PAGAMENTO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelDocumento: TLabel
      Left = 16
      Top = 136
      Width = 80
      Height = 15
      Caption = 'DOCUMENTO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelEmissao: TLabel
      Left = 16
      Top = 64
      Width = 56
      Height = 15
      Caption = 'EMISSAO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelDataPagamento: TLabel
      Left = 16
      Top = 99
      Width = 109
      Height = 15
      Caption = 'DATA PAGAMENTO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelParcela: TLabel
      Left = 204
      Top = 136
      Width = 55
      Height = 15
      Caption = 'PARCELA.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelObservacao: TLabel
      Left = 16
      Top = 223
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
    object LabelNomeFornecedor: TLabel
      AlignWithMargins = True
      Left = 195
      Top = 22
      Width = 128
      Height = 16
      Caption = 'LabelNomeFornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EditCodigoFornecedor: TEdit
      Left = 103
      Top = 21
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditCodigoFornecedorExit
    end
    object EditValor: TEdit
      Left = 66
      Top = 168
      Width = 95
      Height = 21
      TabOrder = 6
    end
    object DateTimePickerVencimento: TDateTimePicker
      Left = 288
      Top = 61
      Width = 113
      Height = 23
      Date = 43828.438486076390000000
      Time = 43828.438486076390000000
      TabOrder = 3
    end
    object ComboBoxFormaPagamento: TComboBox
      Left = 265
      Top = 168
      Width = 136
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object EditDocumento: TEdit
      Left = 102
      Top = 133
      Width = 93
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object ButtonConsultaFornecedor: TButton
      Left = 159
      Top = 19
      Width = 30
      Height = 25
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 8
      TabStop = False
      OnClick = ButtonConsultaFornecedorClick
    end
    object DateTimePickerEmissao: TDateTimePicker
      Left = 81
      Top = 61
      Width = 114
      Height = 23
      Date = 43828.565812025470000000
      Time = 43828.565812025470000000
      TabOrder = 2
    end
    object DateTimePickerDataPagamento: TDateTimePicker
      Left = 132
      Top = 94
      Width = 117
      Height = 23
      Date = 43828.582539664350000000
      Time = 43828.582539664350000000
      TabOrder = 4
    end
    object EditParcela: TEdit
      Left = 265
      Top = 133
      Width = 83
      Height = 21
      TabOrder = 5
    end
    object EditObservacao: TEdit
      Left = 103
      Top = 206
      Width = 298
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object EditObservacao1: TEdit
      Left = 103
      Top = 235
      Width = 298
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 10
    end
  end
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 285
    Width = 425
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
    object ButtonLancar: TButton
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
      Caption = 'Lan'#231'ar'
      ImageIndex = 10
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonLancarClick
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTContaPaga
    ScopeMappings = <>
    Left = 320
    Top = 288
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 232
    Top = 288
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'VENCIMENTO'
      Control = DateTimePickerVencimento
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'PARCELA'
      Control = EditParcela
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'VALORPAGO'
      Control = EditValor
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO1'
      Control = EditObservacao1
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO'
      Control = EditObservacao
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DATAPAGAMENTO'
      Control = DateTimePickerDataPagamento
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DOCUMENTO'
      Control = EditDocumento
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'EMISSAO'
      Control = DateTimePickerEmissao
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'FORNECEDOR'
      Control = EditCodigoFornecedor
      Track = True
    end
  end
end
