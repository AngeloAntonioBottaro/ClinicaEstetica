inherited FrmConsultaEntradaEstoque: TFrmConsultaEntradaEstoque
  Caption = 'Consulta Entrada De Estoque'
  ClientHeight = 549
  ClientWidth = 643
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 649
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 637
    Height = 86
    Align = alTop
    Caption = 'Pesquisar Por'
    TabOrder = 0
    DesignSize = (
      637
      86)
    object Label1: TLabel
      Left = 9
      Top = 21
      Width = 77
      Height = 15
      Caption = 'DATA INICIAL.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 217
      Top = 21
      Width = 76
      Height = 15
      Caption = 'DATA FINAL...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonConsultar: TButton
      Left = 524
      Top = 46
      Width = 90
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Consultar'
      ImageAlignment = iaRight
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 2
      OnClick = ButtonConsultarClick
    end
    object DateTimePickerInicial: TDateTimePicker
      Left = 92
      Top = 16
      Width = 105
      Height = 23
      Date = 43817.630699548610000000
      Time = 43817.630699548610000000
      TabOrder = 0
    end
    object DateTimePickerFinal: TDateTimePicker
      Left = 300
      Top = 16
      Width = 105
      Height = 23
      Date = 43817.630819837960000000
      Time = 43817.630819837960000000
      TabOrder = 1
    end
    object RadioButtonCompra: TRadioButton
      Left = 108
      Top = 59
      Width = 70
      Height = 17
      Caption = 'Compra'
      TabOrder = 3
    end
    object RadioButtonLancamento: TRadioButton
      Left = 9
      Top = 59
      Width = 93
      Height = 17
      Caption = 'Lan'#231'amento'
      Checked = True
      TabOrder = 4
      TabStop = True
    end
    object RadioButtonRecebimento: TRadioButton
      Left = 184
      Top = 59
      Width = 97
      Height = 17
      Caption = 'Recebimento'
      TabOrder = 5
    end
  end
  object GroupBoxGrid: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 95
    Width = 637
    Height = 392
    Align = alClient
    TabOrder = 1
    object DBGridEntradaEstoque: TDBGrid
      Left = 2
      Top = 15
      Width = 633
      Height = 375
      Align = alClient
      DataSource = DM.DSCabeEntrada
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
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
          FieldName = 'DATACOMPRA'
          Title.Caption = 'DATA COMPRA'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATARECEBIMENTO'
          Title.Caption = 'DATA RECEBIMENTO'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATALANCAMENTO'
          Title.Caption = 'DATA LANCAMENTO'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORTOTAL'
          Title.Caption = 'VALOR TOTAL'
          Width = 79
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
  object GroupBoxFooter: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 493
    Width = 637
    Height = 53
    Align = alBottom
    TabOrder = 2
    object ButtonFechar: TButton
      AlignWithMargins = True
      Left = 557
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
    object ButtonEstornar: TButton
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 158
      Height = 30
      Align = alLeft
      Caption = 'Estornar Lan'#231'amento'
      ImageIndex = 15
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonEstornarClick
    end
    object CheckBoxFinalizadas: TCheckBox
      AlignWithMargins = True
      Left = 169
      Top = 18
      Width = 97
      Height = 30
      Align = alLeft
      Caption = 'Finalizadas'
      TabOrder = 2
    end
  end
end
