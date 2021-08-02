inherited FrmContasExcluidas: TFrmContasExcluidas
  Caption = 'Contas Excluidas'
  ClientHeight = 170
  ClientWidth = 480
  OnShow = FormShow
  ExplicitWidth = 486
  ExplicitHeight = 199
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 474
    Height = 105
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -6
    ExplicitWidth = 462
    ExplicitHeight = 103
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
      object DateTimePickerFinal: TDateTimePicker
        Left = 292
        Top = 24
        Width = 101
        Height = 21
        Date = 43855.933285462960000000
        Time = 43855.933285462960000000
        TabOrder = 1
      end
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 114
    Width = 474
    Height = 53
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -6
    ExplicitTop = 112
    ExplicitWidth = 462
    object ButtonGerarRelatorio: TButton
      AlignWithMargins = True
      Left = 342
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
      ExplicitLeft = 330
    end
  end
end
