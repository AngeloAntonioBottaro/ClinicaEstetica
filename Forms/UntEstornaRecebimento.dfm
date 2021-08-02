inherited FrmEstornaRecebimento: TFrmEstornaRecebimento
  Caption = 'Estorno De Recebimento'
  ClientHeight = 420
  ClientWidth = 653
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 659
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 362
    Width = 647
    Height = 55
    Align = alBottom
    TabOrder = 0
    object ButtonEstornar: TButton
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 158
      Height = 32
      Align = alLeft
      Caption = 'Estornar Recebimento'
      ImageIndex = 15
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonEstornarClick
    end
  end
  object GroupBoxClient: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 647
    Height = 353
    Align = alClient
    TabOrder = 1
    DesignSize = (
      647
      353)
    object Label1: TLabel
      Left = 9
      Top = 20
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
    object Label3: TLabel
      Left = 217
      Top = 20
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
    object Label2: TLabel
      Left = 9
      Top = 53
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
      Top = 52
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
      Top = 51
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditCodigoClienteExit
    end
    object ButtonConsultar: TButton
      Left = 524
      Top = 72
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
      Top = 15
      Width = 105
      Height = 23
      Date = 43817.630699548610000000
      Time = 43817.630699548610000000
      TabOrder = 2
    end
    object DateTimePickerFinal: TDateTimePicker
      Left = 300
      Top = 15
      Width = 105
      Height = 23
      Date = 43817.630819837960000000
      Time = 43817.630819837960000000
      TabOrder = 3
    end
    object ButtonConsultaCliente: TButton
      Left = 148
      Top = 49
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 4
      OnClick = ButtonConsultaClienteClick
    end
    object RadioButtonVencimento: TRadioButton
      Left = 92
      Top = 86
      Width = 113
      Height = 17
      Caption = 'Vencimento'
      TabOrder = 5
    end
    object RadioButtonEmissao: TRadioButton
      Left = 9
      Top = 86
      Width = 77
      Height = 17
      Caption = 'Emiss'#227'o'
      Checked = True
      TabOrder = 6
      TabStop = True
    end
    object RadioButtonPagamento: TRadioButton
      Left = 184
      Top = 86
      Width = 97
      Height = 17
      Caption = 'Pagamento'
      TabOrder = 7
    end
    object DBGridContaRecebida: TDBGrid
      Left = 2
      Top = 115
      Width = 643
      Height = 236
      Align = alBottom
      DataSource = DM.DSContaRecebida
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Width = 50
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
          FieldName = 'EMISSAO'
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORRECEBIDO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACAO1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACAO2'
          Visible = True
        end>
    end
  end
end
