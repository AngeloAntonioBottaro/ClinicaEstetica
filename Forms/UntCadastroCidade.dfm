inherited FrmCadastroCidade: TFrmCadastroCidade
  Caption = 'Cadastro De Cidades'
  ClientHeight = 343
  ClientWidth = 419
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 425
  ExplicitHeight = 372
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 287
    Width = 413
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
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 413
    Height = 278
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 14
      Top = 60
      Width = 48
      Height = 15
      Caption = 'NOME...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 271
      Top = 60
      Width = 49
      Height = 15
      Caption = 'ESTADO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 14
      Top = 27
      Width = 63
      Height = 15
      Caption = 'CODIGO.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditNome: TEdit
      Left = 68
      Top = 58
      Width = 187
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EditCodigo: TEdit
      Left = 83
      Top = 25
      Width = 50
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 0
    end
    object ComboBoxEstado: TComboBox
      Left = 326
      Top = 58
      Width = 64
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      TabOrder = 2
      OnExit = ComboBoxEstadoExit
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
    end
    object DBGridCidade: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 104
      Width = 403
      Height = 169
      Align = alBottom
      DataSource = DM.DSMCidade
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTADO'
          Width = 65
          Visible = True
        end>
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTCidade
    ScopeMappings = <>
    Left = 304
    Top = 296
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 240
    Top = 296
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ESTADO'
      Control = ComboBoxEstado
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NOME'
      Control = EditNome
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CODIGO'
      Control = EditCodigo
      Track = True
    end
  end
end
