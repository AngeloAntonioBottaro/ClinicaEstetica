inherited FrmAgenda: TFrmAgenda
  Caption = 'Agenda'
  ClientHeight = 405
  ClientWidth = 1089
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 1095
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 349
    Width = 1083
    Height = 53
    Align = alBottom
    TabOrder = 0
    object ButtonGravar: TButton
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
      Caption = 'Gravar'
      ImageIndex = 9
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonGravarClick
    end
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
    object ButtonExcluir: TButton
      AlignWithMargins = True
      Left = 192
      Top = 15
      Width = 75
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alLeft
      Caption = 'Excluir'
      ImageIndex = 11
      Images = FrmComponentes.ImageListButtons
      TabOrder = 2
      OnClick = ButtonExcluirClick
    end
  end
  object GroupBoxClient: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1083
    Height = 340
    Align = alClient
    TabOrder = 1
    DesignSize = (
      1083
      340)
    object Label1: TLabel
      Left = 904
      Top = 16
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'DATA..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelDiaMes: TLabel
      Left = 18
      Top = 12
      Width = 50
      Height = 48
      Caption = '77'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelMesAno: TLabel
      Left = 74
      Top = 36
      Width = 93
      Height = 19
      Caption = 'LabelMesAno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelDiaSemana: TLabel
      Left = 74
      Top = 18
      Width = 95
      Height = 16
      Caption = 'LabelDiaSemana'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 672
      Top = 16
      Width = 83
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'FUNCIONARIO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateTimePickerData: TDateTimePicker
      Left = 950
      Top = 13
      Width = 99
      Height = 21
      Anchors = [akTop, akRight]
      Date = 43890.534426539350000000
      Time = 43890.534426539350000000
      TabOrder = 0
      TabStop = False
      OnChange = DateTimePickerDataChange
    end
    object DBGridAgenda: TDBGrid
      Left = 2
      Top = 70
      Width = 1079
      Height = 268
      Align = alBottom
      DataSource = DM.DSAgenda
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGridAgendaCellClick
      OnExit = DBGridAgendaExit
      OnKeyPress = DBGridAgendaKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'HORA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PACIENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACAO'
          Width = 550
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Width = 74
          Visible = True
        end>
    end
    object ComboBoxFuncionario: TComboBox
      Left = 761
      Top = 13
      Width = 128
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      TabOrder = 2
      TabStop = False
      OnExit = ComboBoxFuncionarioExit
      OnSelect = ComboBoxFuncionarioSelect
    end
  end
end
