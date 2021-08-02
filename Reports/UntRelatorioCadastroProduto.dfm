inherited FrmRelatorioCadastroProduto: TFrmRelatorioCadastroProduto
  Caption = 'Relatorio Cadastro Produto'
  ClientHeight = 378
  ClientWidth = 470
  OnShow = FormShow
  ExplicitWidth = 476
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 464
    Height = 313
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
    object Label4: TLabel
      AlignWithMargins = True
      Left = 25
      Top = 126
      Width = 67
      Height = 16
      Caption = 'Grupo......:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelNomeGrupo: TLabel
      AlignWithMargins = True
      Left = 192
      Top = 126
      Width = 97
      Height = 16
      Caption = 'LabelNomeGrupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 25
      Top = 173
      Width = 71
      Height = 16
      Caption = 'SubGrupo.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelNomeSubgrupo: TLabel
      AlignWithMargins = True
      Left = 192
      Top = 173
      Width = 118
      Height = 16
      Caption = 'LabelNomeSubgrupo'
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
      Top = 47
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
      Width = 101
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
      Top = 205
      Width = 418
      Height = 92
      Caption = 'Ordenar Por'
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
      object RadioButtonGrupo: TRadioButton
        Left = 24
        Top = 56
        Width = 113
        Height = 17
        Caption = 'Grupo'
        TabOrder = 1
      end
      object RadioButtonSubGrupo: TRadioButton
        Left = 205
        Top = 56
        Width = 113
        Height = 17
        Caption = 'SubGrupo'
        TabOrder = 2
      end
      object RadioButtonDataCadastro: TRadioButton
        Left = 205
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Data Cadastro'
        TabOrder = 3
      end
    end
    object EditCodigoGrupo: TEdit
      AlignWithMargins = True
      Left = 100
      Top = 123
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
      TabOrder = 3
      OnExit = EditCodigoGrupoExit
    end
    object ButtonConsultaGrupo: TButton
      AlignWithMargins = True
      Left = 156
      Top = 123
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
      TabOrder = 4
      OnClick = ButtonConsultaGrupoClick
    end
    object EditCodigoSubGrupo: TEdit
      AlignWithMargins = True
      Left = 100
      Top = 170
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
      TabOrder = 5
      OnExit = EditCodigoSubGrupoExit
    end
    object ButtonConsultaSubGrupo: TButton
      AlignWithMargins = True
      Left = 156
      Top = 170
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
      TabOrder = 6
      OnClick = ButtonConsultaSubGrupoClick
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 322
    Width = 464
    Height = 53
    Align = alBottom
    TabOrder = 1
    object ButtonGerarRelatorio: TButton
      AlignWithMargins = True
      Left = 332
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
