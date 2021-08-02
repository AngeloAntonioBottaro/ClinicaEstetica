inherited FrmConsultaVenda: TFrmConsultaVenda
  Caption = 'Consulta De Vendas'
  ClientHeight = 492
  ClientWidth = 552
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 558
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 546
    Height = 94
    Align = alTop
    Caption = 'Pesquisar Por'
    TabOrder = 0
    DesignSize = (
      546
      94)
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
    object Label3: TLabel
      Left = 9
      Top = 56
      Width = 77
      Height = 15
      Caption = 'CLIENTE..........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelNomeCliente: TLabel
      AlignWithMargins = True
      Left = 184
      Top = 55
      Width = 102
      Height = 16
      Caption = 'LabelNomeCliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EditCodigoCliente: TEdit
      Left = 92
      Top = 54
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditCodigoClienteExit
    end
    object ButtonConsultar: TButton
      Left = 426
      Top = 50
      Width = 90
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Consultar'
      ImageAlignment = iaRight
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonConsultarClick
    end
    object DateTimePickerInicial: TDateTimePicker
      Left = 92
      Top = 16
      Width = 105
      Height = 23
      Date = 43817.630699548610000000
      Time = 43817.630699548610000000
      TabOrder = 2
    end
    object DateTimePickerFinal: TDateTimePicker
      Left = 300
      Top = 16
      Width = 105
      Height = 23
      Date = 43817.630819837960000000
      Time = 43817.630819837960000000
      TabOrder = 3
    end
    object ButtonConsultaCliente: TButton
      Left = 148
      Top = 52
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 4
      OnClick = ButtonConsultaClienteClick
    end
  end
  object GroupBoxFooter: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 434
    Width = 546
    Height = 55
    Align = alBottom
    TabOrder = 2
    object ButtonFechar: TButton
      AlignWithMargins = True
      Left = 466
      Top = 18
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'Fechar'
      ImageIndex = 1
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonFecharClick
    end
    object CheckBoxFinalizadas: TCheckBox
      AlignWithMargins = True
      Left = 135
      Top = 18
      Width = 97
      Height = 32
      Align = alLeft
      Caption = 'Finalizadas'
      TabOrder = 1
    end
    object ButtonEstornarVenda: TButton
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 124
      Height = 32
      Align = alLeft
      Caption = 'Estornar Venda'
      ImageIndex = 15
      Images = FrmComponentes.ImageListButtons
      TabOrder = 2
      OnClick = ButtonEstornarVendaClick
    end
  end
  object GroupBoxGrid: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 103
    Width = 546
    Height = 325
    Align = alClient
    TabOrder = 1
    object DBGridVenda: TDBGrid
      Left = 2
      Top = 15
      Width = 542
      Height = 308
      Align = alClient
      DataSource = DM.DSConsultaVenda
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
          Title.Caption = 'ID VENDA'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECLIENTE'
          Title.Caption = 'NOME'
          Width = 226
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORTOTAL'
          Title.Caption = 'VALOR TOTAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIFORMAPAGTO'
          Title.Caption = 'FORMA PAGAMENTO'
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
