inherited FrmConsultaFornecedor: TFrmConsultaFornecedor
  Caption = 'Consulta De Fornecedor'
  ClientWidth = 593
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 599
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 587
    Height = 98
    Align = alTop
    Caption = 'Pesquisar Por'
    TabOrder = 0
    ExplicitLeft = -52
    ExplicitWidth = 620
    DesignSize = (
      587
      98)
    object RadioButtonCNPJ: TRadioButton
      Left = 16
      Top = 68
      Width = 113
      Height = 17
      Caption = 'CNPJ'
      TabOrder = 0
    end
    object RadioButtonNome: TRadioButton
      Left = 16
      Top = 45
      Width = 113
      Height = 17
      Caption = 'NOME FANTASIA'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object RadioButtonCodigo: TRadioButton
      Left = 16
      Top = 22
      Width = 113
      Height = 17
      Caption = 'CODIGO'
      TabOrder = 2
    end
    object EditConsultaFornecedor: TEdit
      Left = 295
      Top = 22
      Width = 153
      Height = 21
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 3
      OnExit = EditConsultaFornecedorExit
      ExplicitLeft = 328
    end
    object ButtonConsultarCliente: TButton
      AlignWithMargins = True
      Left = 454
      Top = 18
      Width = 89
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Consultar'
      ImageAlignment = iaRight
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 4
      OnClick = ButtonConsultarClienteClick
      ExplicitLeft = 487
    end
  end
  object GroupBoxGrid: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 107
    Width = 587
    Height = 237
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -52
    ExplicitTop = 104
    ExplicitWidth = 620
    ExplicitHeight = 302
    object DBGridConsultaFornecedor: TDBGrid
      Left = 2
      Top = 15
      Width = 583
      Height = 220
      Align = alClient
      DataSource = DM.DSFornecedor
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFANTASIA'
          Title.Caption = 'NOME FANTASIA'
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CELULAR'
          Visible = True
        end>
    end
  end
  object GroupBoxFooter: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 350
    Width = 587
    Height = 53
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = -52
    ExplicitTop = 353
    ExplicitWidth = 620
    object CheckBoxInativos: TCheckBox
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 81
      Height = 30
      TabStop = False
      Align = alLeft
      Caption = 'INATIVOS'
      TabOrder = 0
    end
    object ButtonFechar: TButton
      AlignWithMargins = True
      Left = 507
      Top = 18
      Width = 75
      Height = 30
      Align = alRight
      Caption = 'Fechar'
      ImageIndex = 1
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonFecharClick
      ExplicitLeft = 540
    end
  end
end
