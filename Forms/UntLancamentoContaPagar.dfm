inherited FrmLancamentoContaPagar: TFrmLancamentoContaPagar
  Caption = 'Lancamento De Contas A Pagar'
  ClientHeight = 322
  ClientWidth = 431
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 437
  ExplicitHeight = 351
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 266
    Width = 425
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
      TabOrder = 2
      OnClick = ButtonConsultarClick
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
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 425
    Height = 257
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
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
    object Label5: TLabel
      Left = 238
      Top = 103
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
    object Label3: TLabel
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
    object Label8: TLabel
      Left = 16
      Top = 191
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
    object Label7: TLabel
      Left = 164
      Top = 142
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
    object Label4: TLabel
      Left = 17
      Top = 103
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
    object Label2: TLabel
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
    object Label6: TLabel
      Left = 16
      Top = 142
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
    object LabelNomeFornecedor: TLabel
      AlignWithMargins = True
      Left = 194
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
      Left = 102
      Top = 21
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditCodigoFornecedorExit
    end
    object EditValor: TEdit
      Left = 288
      Top = 100
      Width = 113
      Height = 21
      TabOrder = 4
    end
    object EditObservacao: TEdit
      Left = 103
      Top = 174
      Width = 298
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object DateTimePickerVencimento: TDateTimePicker
      Left = 288
      Top = 61
      Width = 113
      Height = 23
      Date = 43841.704293449070000000
      Time = 43841.704293449070000000
      TabOrder = 2
    end
    object ComboBoxFormaPagamento: TComboBox
      Left = 248
      Top = 139
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object EditDocumento: TEdit
      Left = 103
      Top = 100
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 3
    end
    object ButtonConsultaFornecedor: TButton
      Left = 158
      Top = 19
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 8
      TabStop = False
      OnClick = ButtonConsultaFornecedorClick
    end
    object DateTimePickerEmissao: TDateTimePicker
      Left = 78
      Top = 61
      Width = 114
      Height = 23
      Date = 43841.704293622690000000
      Time = 43841.704293622690000000
      TabOrder = 1
    end
    object EditParcela: TEdit
      Left = 77
      Top = 139
      Width = 81
      Height = 21
      TabOrder = 5
    end
    object EditObservacao1: TEdit
      Left = 103
      Top = 203
      Width = 298
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
      OnExit = EditObservacao1Exit
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTContaPagar
    ScopeMappings = <>
    Left = 376
    Top = 272
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 312
    Top = 272
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'PARCELA'
      Control = EditParcela
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'VALOR'
      Control = EditValor
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'VENCIMENTO'
      Control = DateTimePickerVencimento
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'EMISSAO'
      Control = DateTimePickerEmissao
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
      FieldName = 'OBSERVACAO1'
      Control = EditObservacao1
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
      FieldName = 'FORNECEDOR'
      Control = EditCodigoFornecedor
      Track = True
    end
  end
end
