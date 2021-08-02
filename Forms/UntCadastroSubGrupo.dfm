inherited FrmCadastroSubGrupo: TFrmCadastroSubGrupo
  Caption = 'Cadastro De Sub-Grupo'
  ClientHeight = 375
  ClientWidth = 400
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 406
  ExplicitHeight = 404
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxInformacoesPrincipais: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 394
    Height = 369
    Align = alClient
    Caption = 'Informa'#231#245'es Principais'
    TabOrder = 0
    object Label1: TLabel
      Left = 25
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
      Left = 25
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
    object Label3: TLabel
      Left = 176
      Top = 32
      Width = 49
      Height = 15
      Caption = 'GRUPO..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGridSubGrupo: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 107
      Width = 384
      Height = 198
      Align = alBottom
      DataSource = DM.DSMSubGrupo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object EditCodigo: TEdit
      Left = 98
      Top = 29
      Width = 50
      Height = 21
      Enabled = False
      NumbersOnly = True
      TabOrder = 0
    end
    object EditDescricao: TEdit
      Left = 98
      Top = 58
      Width = 281
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnExit = EditDescricaoExit
    end
    object EditCodigoGrupo: TEdit
      Left = 231
      Top = 29
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 1
      OnExit = EditCodigoGrupoExit
    end
    object ButtonConsultaGrupo: TButton
      Left = 287
      Top = 27
      Width = 34
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 4
      OnClick = ButtonConsultaGrupoClick
    end
    object GroupBoxBotton: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 311
      Width = 384
      Height = 53
      Align = alBottom
      TabOrder = 5
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
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTSubGrupo
    ScopeMappings = <>
    Left = 336
    Top = 320
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 256
    Top = 320
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
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'GRUPO'
      Control = EditCodigoGrupo
      Track = True
    end
  end
end
