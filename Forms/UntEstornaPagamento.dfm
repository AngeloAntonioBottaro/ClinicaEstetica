inherited FrmEstornaPagamento: TFrmEstornaPagamento
  Caption = 'Estornar Pagamento'
  ClientHeight = 418
  ClientWidth = 670
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 676
  ExplicitHeight = 447
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 360
    Width = 664
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
      Caption = 'Estornar Pagamento'
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
    Width = 664
    Height = 351
    Align = alClient
    TabOrder = 1
    DesignSize = (
      664
      351)
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
    object EditCodigoFornecedor: TEdit
      Left = 92
      Top = 51
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditCodigoFornecedorExit
    end
    object ButtonConsultar: TButton
      Left = 541
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
    object ButtonConsultaFornecedor: TButton
      Left = 148
      Top = 49
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 4
      OnClick = ButtonConsultaFornecedorClick
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
    object DBGridContaPaga: TDBGrid
      Left = 2
      Top = 113
      Width = 660
      Height = 236
      Align = alBottom
      DataSource = DM.DSContaPaga
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
          FieldName = 'FORNECEDOR'
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
          FieldName = 'VALORPAGO'
          Title.Caption = 'VALOR PAGO'
          Width = 79
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
