inherited FrmConsultaSubGrupo: TFrmConsultaSubGrupo
  Caption = 'Consulta De Sub-Grupo'
  ClientHeight = 339
  ClientWidth = 335
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 341
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 329
    Height = 94
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 16
      Width = 59
      Height = 15
      Caption = 'Grupo.......:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 14
      Top = 53
      Width = 65
      Height = 15
      Caption = 'Sub-Grupo.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonConsultaGrupo: TButton
      Left = 135
      Top = 12
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      TabStop = False
      OnClick = ButtonConsultaGrupoClick
    end
    object ButtonConsultar: TButton
      Left = 215
      Top = 46
      Width = 91
      Height = 30
      Caption = 'Consultar'
      ImageAlignment = iaRight
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonConsultarClick
    end
    object EditCodigoGrupo: TEdit
      Left = 85
      Top = 13
      Width = 44
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      OnExit = EditCodigoGrupoExit
    end
    object EditDescricaoSubGrupo: TEdit
      Left = 85
      Top = 50
      Width = 124
      Height = 21
      TabOrder = 3
      OnExit = EditDescricaoSubGrupoExit
    end
  end
  object GroupBoxFooter: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 283
    Width = 329
    Height = 53
    Align = alBottom
    TabOrder = 2
    object ButtonFechar: TButton
      AlignWithMargins = True
      Left = 249
      Top = 18
      Width = 75
      Height = 30
      Align = alRight
      Caption = 'Fechar'
      ImageIndex = 1
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonFecharClick
    end
  end
  object GroupBoxGrid: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 103
    Width = 329
    Height = 174
    Align = alClient
    TabOrder = 1
    object DBGridConsultaSubGrupo: TDBGrid
      Left = 2
      Top = 15
      Width = 325
      Height = 157
      Align = alClient
      DataSource = DM.DSSubGrupo
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
