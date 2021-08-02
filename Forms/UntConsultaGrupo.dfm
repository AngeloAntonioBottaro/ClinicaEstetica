inherited FrmConsultaGrupo: TFrmConsultaGrupo
  Caption = 'Consulta De Grupo'
  ClientHeight = 324
  ClientWidth = 344
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 350
  ExplicitHeight = 353
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 338
    Height = 71
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 27
      Width = 44
      Height = 15
      Caption = 'Grupo..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonConsultar: TButton
      Left = 216
      Top = 21
      Width = 89
      Height = 30
      Caption = 'Consultar'
      ImageAlignment = iaRight
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonConsultarClick
    end
    object EditConsultaGrupo: TEdit
      Left = 63
      Top = 25
      Width = 138
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnExit = EditConsultaGrupoExit
    end
  end
  object GroupBoxFooter: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 268
    Width = 338
    Height = 53
    Align = alBottom
    TabOrder = 2
    object ButtonFecharConsultaGrupo: TButton
      AlignWithMargins = True
      Left = 258
      Top = 18
      Width = 75
      Height = 30
      Align = alRight
      Caption = 'Fechar'
      ImageIndex = 1
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonFecharConsultaGrupoClick
    end
  end
  object GroupBoxGrid: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 80
    Width = 338
    Height = 182
    Align = alClient
    TabOrder = 1
    object DBGridConsultaGrupo: TDBGrid
      Left = 2
      Top = 15
      Width = 334
      Height = 165
      Align = alClient
      DataSource = DM.DSGrupo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
