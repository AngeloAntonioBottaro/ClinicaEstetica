inherited FrmConsultaFuncionarioServico: TFrmConsultaFuncionarioServico
  Caption = 'Consulta Funcionario'
  ClientHeight = 357
  ClientWidth = 333
  OnShow = FormShow
  ExplicitWidth = 339
  ExplicitHeight = 386
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxFooter: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 301
    Width = 327
    Height = 53
    Align = alBottom
    TabOrder = 0
    object ButtonFechar: TButton
      AlignWithMargins = True
      Left = 247
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
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 327
    Height = 292
    Align = alClient
    TabOrder = 1
    DesignSize = (
      327
      292)
    object Label1: TLabel
      Left = 20
      Top = 24
      Width = 42
      Height = 15
      Caption = 'NOME.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditConsultaFuncionario: TEdit
      Left = 69
      Top = 22
      Width = 153
      Height = 21
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 0
      OnExit = EditConsultaFuncionarioExit
    end
    object ButtonConsultar: TButton
      AlignWithMargins = True
      Left = 228
      Top = 18
      Width = 89
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Consultar'
      ImageAlignment = iaRight
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonConsultarClick
    end
    object DBGridConsultaFuncionario: TDBGrid
      Left = 2
      Top = 74
      Width = 323
      Height = 216
      Align = alBottom
      DataSource = DM.DSFuncionario
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnExit = DBGridConsultaFuncionarioExit
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 252
          Visible = True
        end>
    end
  end
end
