inherited FrmContasPagasEntrePeriodo: TFrmContasPagasEntrePeriodo
  Caption = 'Contas Pagas Entre Periodo'
  ClientHeight = 296
  ClientWidth = 475
  OnShow = FormShow
  ExplicitWidth = 481
  ExplicitHeight = 325
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 469
    Height = 231
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 465
    ExplicitHeight = 222
    object Label13: TLabel
      Left = 31
      Top = 99
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
    object LabelNomeFornecedor: TLabel
      Left = 208
      Top = 100
      Width = 107
      Height = 13
      Caption = 'LabelNomeFornecedor'
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 23
      Top = 20
      Width = 418
      Height = 57
      Caption = 'Data'
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 28
        Width = 70
        Height = 13
        Caption = 'Data Inicial.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 224
        Top = 28
        Width = 62
        Height = 13
        Caption = 'Data Final.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DateTimePickerInicial: TDateTimePicker
        Left = 100
        Top = 24
        Width = 101
        Height = 21
        Date = 43855.933285462960000000
        Time = 43855.933285462960000000
        TabOrder = 0
      end
      object DateTimePickerfinal: TDateTimePicker
        Left = 292
        Top = 24
        Width = 101
        Height = 21
        Date = 43855.933285462960000000
        Time = 43855.933285462960000000
        TabOrder = 1
      end
    end
    object GroupBox4: TGroupBox
      Left = 23
      Top = 133
      Width = 418
      Height = 60
      Caption = 'Tipo Pesquisa'
      TabOrder = 1
      object RadioButtonEmissao: TRadioButton
        Left = 24
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Emissao'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButtonVencimento: TRadioButton
        Left = 153
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Vencimento'
        TabOrder = 1
      end
      object RadioButtonPagamento: TRadioButton
        Left = 280
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Pagamento'
        TabOrder = 2
      end
    end
    object EditCodigoFornecedor: TEdit
      Left = 116
      Top = 97
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      OnExit = EditCodigoFornecedorExit
    end
    object ButtonConsultaFornecedor: TButton
      Left = 172
      Top = 95
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 3
      TabStop = False
      OnClick = ButtonConsultaFornecedorClick
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 240
    Width = 469
    Height = 53
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 231
    ExplicitWidth = 465
    object ButtonGerarRelatorio: TButton
      AlignWithMargins = True
      Left = 337
      Top = 15
      Width = 125
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alRight
      Caption = 'Gerar Relatorio'
      ImageIndex = 14
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonGerarRelatorioClick
      ExplicitLeft = 333
    end
  end
end
