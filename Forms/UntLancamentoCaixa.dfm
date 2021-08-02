inherited FrmLancamentoCaixa: TFrmLancamentoCaixa
  Caption = 'Lan'#231'amento De Caixa'
  ClientHeight = 262
  ClientWidth = 391
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 397
  ExplicitHeight = 291
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 206
    Width = 385
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
  object GroupBoxLancaCaixa: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 385
    Height = 197
    Align = alClient
    TabOrder = 1
    object LabelHistorico: TLabel
      Left = 9
      Top = 45
      Width = 65
      Height = 15
      Caption = 'HISTORICO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelValor: TLabel
      Left = 9
      Top = 77
      Width = 62
      Height = 15
      Caption = 'VALOR.......:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelTipo: TLabel
      Left = 232
      Top = 77
      Width = 32
      Height = 15
      Caption = 'TIPO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelObservacao: TLabel
      Left = 9
      Top = 151
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
    object LabelData: TLabel
      Left = 9
      Top = 13
      Width = 44
      Height = 15
      Caption = 'DATA....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelPagamento: TLabel
      Left = 9
      Top = 106
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
    object EditValor: TEdit
      Left = 80
      Top = 74
      Width = 94
      Height = 21
      TabOrder = 1
    end
    object ComboBoxHistorico: TComboBox
      Left = 80
      Top = 42
      Width = 285
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object DateTimePickerData: TDateTimePicker
      Left = 59
      Top = 9
      Width = 102
      Height = 23
      Date = 43825.580819814820000000
      Time = 43825.580819814820000000
      TabOrder = 6
      TabStop = False
    end
    object EditObservacao: TEdit
      Left = 96
      Top = 132
      Width = 269
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object EditObservacao1: TEdit
      Left = 96
      Top = 161
      Width = 269
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object ComboBoxFormaPagamento: TComboBox
      Left = 96
      Top = 103
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object ComboBoxTipoLanca: TComboBox
      Left = 270
      Top = 74
      Width = 95
      Height = 21
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 2
      Text = 'CREDITO'
      Items.Strings = (
        'CREDITO'
        'DEBITO')
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTCaixa
    ScopeMappings = <>
    Left = 336
    Top = 216
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 256
    Top = 216
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'HISTORICO'
      Control = ComboBoxHistorico
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO'
      Control = EditObservacao
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
      FieldName = 'DATA'
      Control = DateTimePickerData
      Track = True
    end
  end
end
