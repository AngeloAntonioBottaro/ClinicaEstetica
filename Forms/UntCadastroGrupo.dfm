inherited FrmCadastroGrupo: TFrmCadastroGrupo
  Caption = 'Cadastro De Grupo'
  ClientHeight = 350
  ClientWidth = 397
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 403
  ExplicitHeight = 379
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxInformacoesPrincipais: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 391
    Height = 285
    Align = alClient
    Caption = 'Informa'#231#245'es Principais'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 54
      Height = 15
      Caption = 'CODIGO..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 68
      Height = 15
      Caption = 'DESCRI'#199#195'O.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGridGrupo: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 95
      Width = 381
      Height = 185
      Align = alBottom
      DataSource = DM.DSMGrupo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object EditCodigo: TEdit
      Left = 81
      Top = 29
      Width = 50
      Height = 21
      Enabled = False
      NumbersOnly = True
      TabOrder = 0
    end
    object EditDescricao: TEdit
      Left = 82
      Top = 58
      Width = 281
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnExit = EditDescricaoExit
    end
  end
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 294
    Width = 391
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
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTGrupo
    ScopeMappings = <>
    Left = 336
    Top = 304
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 264
    Top = 304
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CODIGO'
      Control = EditCodigo
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DESCRICAO'
      Control = EditDescricao
      Track = True
    end
  end
end
