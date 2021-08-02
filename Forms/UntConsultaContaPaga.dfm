inherited FrmConsultaContaPaga: TFrmConsultaContaPaga
  Caption = 'Consulta De Contas Pagas'
  ClientHeight = 426
  ClientWidth = 629
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 635
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 623
    Height = 111
    Align = alTop
    Caption = 'Pesquisar Por'
    TabOrder = 0
    DesignSize = (
      623
      111)
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
      Top = 53
      Width = 81
      Height = 15
      Caption = 'FORNECEDOR.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelNomeFornecedor: TLabel
      AlignWithMargins = True
      Left = 184
      Top = 52
      Width = 128
      Height = 16
      Caption = 'LabelNomeFornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ButtonConsultar: TButton
      Left = 510
      Top = 67
      Width = 90
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Consultar'
      ImageAlignment = iaRight
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonConsultarClick
    end
    object DateTimePickerInicial: TDateTimePicker
      Left = 92
      Top = 16
      Width = 105
      Height = 23
      Date = 43817.630699548610000000
      Time = 43817.630699548610000000
      TabOrder = 1
    end
    object DateTimePickerFinal: TDateTimePicker
      Left = 300
      Top = 16
      Width = 105
      Height = 23
      Date = 43817.630819837960000000
      Time = 43817.630819837960000000
      TabOrder = 2
    end
    object RadioButtonVencimento: TRadioButton
      Left = 92
      Top = 83
      Width = 86
      Height = 17
      Caption = 'Vencimento'
      TabOrder = 3
    end
    object RadioButtonEmissao: TRadioButton
      Left = 9
      Top = 83
      Width = 77
      Height = 17
      Caption = 'Emiss'#227'o'
      Checked = True
      TabOrder = 4
      TabStop = True
    end
    object RadioButtonPagamento: TRadioButton
      Left = 184
      Top = 83
      Width = 97
      Height = 17
      Caption = 'Pagamento'
      TabOrder = 5
    end
    object EditCodigoFornecedor: TEdit
      Left = 92
      Top = 51
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 6
      OnExit = EditCodigoFornecedorExit
    end
    object ButtonConsultaFornecedor: TButton
      Left = 148
      Top = 49
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 7
      OnClick = ButtonConsultaFornecedorClick
    end
  end
  object GroupBoxFooter: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 368
    Width = 623
    Height = 55
    Align = alBottom
    TabOrder = 1
    object ButtonFechar: TButton
      AlignWithMargins = True
      Left = 543
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
  end
  object GroupBoxGrid: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 120
    Width = 623
    Height = 242
    Align = alClient
    TabOrder = 2
    object DBGridContaPaga: TDBGrid
      Left = 2
      Top = 15
      Width = 619
      Height = 225
      Align = alClient
      DataSource = DM.DSContaPaga
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
          FieldName = 'FORNECEDOR'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAPAGAMENTO'
          Title.Caption = 'DATA PAGTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORORIGINAL'
          Title.Caption = 'VALOR ORIGINAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORPAGO'
          Title.Caption = 'VALOR PAGO'
          Width = 75
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
