inherited FrmConsultaProduto: TFrmConsultaProduto
  Caption = 'Consulta De Produto'
  ClientHeight = 503
  ClientWidth = 619
  OnShow = FormShow
  ExplicitWidth = 625
  ExplicitHeight = 532
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 613
    Height = 80
    Align = alTop
    Caption = 'Pesquisar Por'
    TabOrder = 0
    DesignSize = (
      613
      80)
    object RadioButtonDescricao: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Descri'#231#227'o'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object ButtonConsultar: TButton
      Left = 463
      Top = 17
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
    object EditConsultaProduto: TEdit
      Left = 288
      Top = 21
      Width = 169
      Height = 21
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 0
      OnExit = EditConsultaProdutoExit
    end
  end
  object GroupBoxFooter: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 450
    Width = 613
    Height = 50
    Align = alBottom
    TabOrder = 2
    object ButtonFechar: TButton
      AlignWithMargins = True
      Left = 533
      Top = 18
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Fechar'
      ImageIndex = 1
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonFecharClick
    end
    object CheckBoxInativos: TCheckBox
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 97
      Height = 27
      Align = alLeft
      Caption = 'INATIVOS'
      TabOrder = 1
    end
  end
  object GroupBoxGrid: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 89
    Width = 613
    Height = 355
    Align = alClient
    TabOrder = 1
    object DBGridConsultaProduto: TDBGrid
      Left = 2
      Top = 15
      Width = 609
      Height = 338
      Align = alClient
      DataSource = DM.DSProduto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRUPO'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBGRUPO'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORVENDA'
          Title.Caption = 'VENDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACAO'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACAO1'
          Title.Caption = 'OBSERVACAO'
          Width = 300
          Visible = True
        end>
    end
  end
end
