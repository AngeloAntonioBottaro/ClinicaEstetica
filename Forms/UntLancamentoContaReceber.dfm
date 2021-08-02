inherited FrmLancamentoContaReceber: TFrmLancamentoContaReceber
  Caption = 'Lan'#231'amento De Conta A Receber'
  ClientHeight = 310
  ClientWidth = 427
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 433
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 421
    Height = 245
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 23
      Width = 50
      Height = 15
      Caption = 'CLIENTE.:'
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
    object LabelNomeCliente: TLabel
      AlignWithMargins = True
      Left = 164
      Top = 22
      Width = 102
      Height = 16
      Caption = 'LabelNomeCliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EditCodigoCliente: TEdit
      Left = 72
      Top = 21
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditCodigoClienteExit
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
    object ButtonConsultaCliente: TButton
      Left = 128
      Top = 19
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 8
      TabStop = False
      OnClick = ButtonConsultaClienteClick
    end
    object DateTimePickerEmissao: TDateTimePicker
      Left = 77
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
    end
  end
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 254
    Width = 421
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
      TabOrder = 2
      OnClick = ButtonLancarClick
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTContaReceber
    ScopeMappings = <>
    Left = 368
    Top = 264
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 304
    Top = 264
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CLIENTE'
      Control = EditCodigoCliente
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DOCUMENTO'
      Control = EditDocumento
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'VALOR'
      Control = EditValor
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'PARCELA'
      Control = EditParcela
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO1'
      Control = EditObservacao1
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'EMISSAO'
      Control = DateTimePickerEmissao
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO'
      Control = EditObservacao
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'VENCIMENTO'
      Control = DateTimePickerVencimento
      Track = True
    end
  end
end
