inherited FrmCaixaDiario: TFrmCaixaDiario
  Caption = 'Caixa Diario'
  ClientHeight = 412
  ClientWidth = 836
  OnClose = FormClose
  OnShow = FormShow
  ExplicitLeft = -38
  ExplicitWidth = 842
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 354
    Width = 830
    Height = 55
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -2
    object Label1: TLabel
      AlignWithMargins = True
      Left = 32
      Top = 18
      Width = 74
      Height = 32
      Margins.Left = 30
      Align = alLeft
      Alignment = taCenter
      Caption = 'DEBITO...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 24
      ExplicitHeight = 21
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 202
      Top = 18
      Width = 73
      Height = 32
      Margins.Left = 30
      Align = alLeft
      Alignment = taCenter
      Caption = 'CREDITO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 177
      ExplicitHeight = 21
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 676
      Top = 18
      Width = 59
      Height = 32
      Align = alRight
      Alignment = taCenter
      Caption = 'TOTAL..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 566
      ExplicitTop = 20
    end
    object LabelTotalDebito: TLabel
      AlignWithMargins = True
      Left = 112
      Top = 18
      Width = 57
      Height = 32
      Align = alLeft
      Alignment = taCenter
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 104
      ExplicitHeight = 21
    end
    object LabelTotalCredito: TLabel
      AlignWithMargins = True
      Left = 281
      Top = 18
      Width = 57
      Height = 32
      Align = alLeft
      Alignment = taCenter
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 256
      ExplicitHeight = 21
    end
    object LabelTotal: TLabel
      AlignWithMargins = True
      Left = 741
      Top = 18
      Width = 57
      Height = 32
      Margins.Right = 30
      Align = alRight
      Alignment = taCenter
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 401
      ExplicitHeight = 21
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 830
    Height = 345
    Align = alClient
    TabOrder = 1
    object DBGridCaixaDiario: TDBGrid
      Left = 2
      Top = 15
      Width = 826
      Height = 328
      Align = alClient
      DataSource = DM.DSCaixa
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
          FieldName = 'CLIENTE'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORNECEDOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBITO'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CREDITO'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Width = 319
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
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
