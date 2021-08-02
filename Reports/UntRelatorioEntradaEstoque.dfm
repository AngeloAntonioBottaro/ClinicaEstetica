inherited FrmRelatorioEntradaEstoque: TFrmRelatorioEntradaEstoque
  Caption = 'Relatorio de Entrada de Estoque'
  ClientHeight = 277
  ClientWidth = 463
  OnShow = FormShow
  ExplicitWidth = 469
  ExplicitHeight = 306
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 457
    Height = 212
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      Left = 257
      Top = 25
      Width = 52
      Height = 16
      Caption = 'Status.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 23
      Top = 54
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
    object ComboBoxStatus: TComboBox
      Left = 315
      Top = 24
      Width = 101
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 1
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'GRAVADO'
        'FINALIZADO')
    end
    object GroupBox4: TGroupBox
      Left = 23
      Top = 125
      Width = 418
      Height = 68
      Caption = 'Tipo Pesquisa'
      TabOrder = 2
      object RadioButtonDataCompra: TRadioButton
        Left = 12
        Top = 32
        Width = 113
        Height = 17
        Caption = 'Data Compra'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButtonDataRecebimento: TRadioButton
        Left = 131
        Top = 32
        Width = 126
        Height = 17
        Caption = 'Data Recebimento'
        TabOrder = 1
      end
      object RadioButtonDataLancamento: TRadioButton
        Left = 280
        Top = 32
        Width = 113
        Height = 17
        Caption = 'Data Lan'#231'amento'
        TabOrder = 2
      end
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 221
    Width = 457
    Height = 53
    Align = alBottom
    TabOrder = 1
    object ButtonGerarRelatorio: TButton
      AlignWithMargins = True
      Left = 325
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
    end
  end
end
