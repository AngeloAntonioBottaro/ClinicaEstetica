object FrmRelatorioCadastroCliente: TFrmRelatorioCadastroCliente
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relatorio Cadastro Cliente'
  ClientHeight = 312
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 470
    Height = 247
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 213
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
    object Label4: TLabel
      AlignWithMargins = True
      Left = 32
      Top = 128
      Width = 53
      Height = 16
      Caption = 'Cliente.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelNomeCliente: TLabel
      AlignWithMargins = True
      Left = 188
      Top = 128
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
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 23
      Top = 54
      Width = 418
      Height = 57
      Caption = 'Data Cadastro'
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
      Width = 81
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 1
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'ATIVO'
        'INATIVO')
    end
    object GroupBox4: TGroupBox
      Left = 23
      Top = 165
      Width = 418
      Height = 68
      Caption = 'Ordernar Por'
      TabOrder = 2
      object RadioButtonNome: TRadioButton
        Left = 24
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Nome'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButtonCidade: TRadioButton
        Left = 161
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Cidade'
        TabOrder = 1
      end
      object RadioButtonDataCadastro: TRadioButton
        Left = 280
        Top = 23
        Width = 113
        Height = 17
        Caption = 'Data Cadastro'
        TabOrder = 2
      end
    end
    object ButtonConsultaCliente: TButton
      AlignWithMargins = True
      Left = 147
      Top = 125
      Width = 30
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      ParentFont = False
      TabOrder = 3
      OnClick = ButtonConsultaClienteClick
    end
    object EditCodigoCliente: TEdit
      AlignWithMargins = True
      Left = 91
      Top = 125
      Width = 50
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 4
      OnExit = EditCodigoClienteExit
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 256
    Width = 470
    Height = 53
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 222
    object ButtonGerarRelatorio: TButton
      AlignWithMargins = True
      Left = 338
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
