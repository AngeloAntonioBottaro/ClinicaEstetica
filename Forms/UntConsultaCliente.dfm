inherited FrmConsultaCliente: TFrmConsultaCliente
  Caption = 'Consulta De Cliente'
  ClientHeight = 471
  ClientWidth = 626
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 632
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 620
    Height = 98
    Align = alTop
    Caption = 'Pesquisar Por'
    TabOrder = 0
    DesignSize = (
      620
      98)
    object RadioButtonCPF: TRadioButton
      Left = 16
      Top = 68
      Width = 113
      Height = 17
      Caption = 'CPF'
      TabOrder = 0
    end
    object RadioButtonNome: TRadioButton
      Left = 16
      Top = 45
      Width = 113
      Height = 17
      Caption = 'NOME'
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
    object EditConsultaCliente: TEdit
      Left = 328
      Top = 22
      Width = 153
      Height = 21
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 3
      OnExit = EditConsultaClienteExit
    end
    object ButtonConsultarCliente: TButton
      AlignWithMargins = True
      Left = 487
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
    end
  end
  object GroupBoxGrid: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 107
    Width = 620
    Height = 302
    Align = alClient
    TabOrder = 1
    object DBGridConsultaCliente: TDBGrid
      Left = 2
      Top = 15
      Width = 616
      Height = 285
      Align = alClient
      DataSource = DM.DSCliente
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
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 167
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Width = 167
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CELULAR'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Visible = True
        end>
    end
  end
  object GroupBoxFooter: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 415
    Width = 620
    Height = 53
    Align = alBottom
    TabOrder = 2
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
      Left = 540
      Top = 18
      Width = 75
      Height = 30
      Align = alRight
      Caption = 'Fechar'
      ImageIndex = 1
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonFecharClick
    end
  end
end
