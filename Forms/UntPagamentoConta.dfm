inherited FrmPagamentoContas: TFrmPagamentoContas
  Caption = 'Pagamento De Contas'
  ClientHeight = 647
  ClientWidth = 593
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 599
  ExplicitHeight = 676
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxTop: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 587
    Height = 414
    Align = alTop
    TabOrder = 0
    DesignSize = (
      587
      414)
    object Label1: TLabel
      Left = 10
      Top = 20
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
      Left = 185
      Top = 21
      Width = 107
      Height = 13
      Caption = 'LabelNomeFornecedor'
    end
    object DBGridPagamento: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 96
      Width = 577
      Height = 313
      Align = alBottom
      DataSource = DM.DSContaPagar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGridPagamentoCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PARCELA'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
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
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Width = 82
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
    object EditCodigoFornecedor: TEdit
      Left = 93
      Top = 18
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditCodigoFornecedorExit
    end
    object ButtonConsultaFornecedor: TButton
      Left = 149
      Top = 16
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 3
      TabStop = False
      OnClick = ButtonConsultaFornecedorClick
    end
    object ButtonConsultar: TButton
      Left = 459
      Top = 42
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
    object RadioButtonVencimento: TRadioButton
      Left = 93
      Top = 55
      Width = 113
      Height = 17
      Caption = 'Vencimento'
      Checked = True
      TabOrder = 4
      TabStop = True
    end
    object RadioButtonEmissao: TRadioButton
      Left = 10
      Top = 55
      Width = 77
      Height = 17
      Caption = 'Emiss'#227'o'
      TabOrder = 5
    end
  end
  object GroupBoxClient: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 423
    Width = 587
    Height = 221
    Align = alClient
    TabOrder = 1
    DesignSize = (
      587
      221)
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 108
      Height = 15
      Caption = 'TOTAL DE CONTAS..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 53
      Width = 108
      Height = 15
      Caption = 'VALOR TOTAL .........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelTotalContas: TLabel
      Left = 135
      Top = 24
      Width = 6
      Height = 13
      Caption = '0'
    end
    object LabelValorTotalContas: TLabel
      Left = 135
      Top = 53
      Width = 38
      Height = 13
      Caption = 'R$ 0,00'
    end
    object Label6: TLabel
      Left = 344
      Top = 88
      Width = 63
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'VALOR RECEBIDO..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 378
    end
    object Label4: TLabel
      Left = 24
      Top = 120
      Width = 163
      Height = 15
      Caption = 'DOCUMENTO SELECIONADO..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 149
      Width = 164
      Height = 15
      Caption = 'VALOR CONTA SELECIONADA.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelNumeroDocumento: TLabel
      Left = 193
      Top = 120
      Width = 4
      Height = 13
      Caption = '-'
    end
    object LabelValorContaSelecionada: TLabel
      Left = 194
      Top = 149
      Width = 38
      Height = 13
      Caption = 'R$ 0,00'
    end
    object ButtonRecebimento: TButton
      Left = 383
      Top = 124
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Baixar'
      ImageIndex = 19
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonRecebimentoClick
    end
    object EditValorAReceber: TEdit
      Left = 413
      Top = 97
      Width = 90
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
    object RadioButtonBaixa: TRadioButton
      Left = 309
      Top = 26
      Width = 56
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Baixa'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object RadioButtonAmortizacaoIndividual: TRadioButton
      Left = 371
      Top = 22
      Width = 152
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'Amortiza'#231#227'o Individual'
      TabOrder = 3
    end
    object RadioButtonAmortizacaoGeral: TRadioButton
      Left = 309
      Top = 54
      Width = 129
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Amortiza'#231#227'o Geral'
      TabOrder = 4
      OnClick = RadioButtonAmortizacaoGeralClick
    end
    object PanelTroco: TPanel
      Left = 360
      Top = 168
      Width = 208
      Height = 33
      TabOrder = 5
      Visible = False
      object Label7: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 77
        Height = 25
        Align = alLeft
        Alignment = taCenter
        Caption = 'TROCO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 24
      end
      object LabelTroco: TLabel
        AlignWithMargins = True
        Left = 116
        Top = 4
        Width = 88
        Height = 25
        Align = alClient
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 39
        ExplicitHeight = 24
      end
      object Label9: TLabel
        AlignWithMargins = True
        Left = 87
        Top = 4
        Width = 23
        Height = 25
        Align = alLeft
        Alignment = taCenter
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 24
      end
    end
  end
end
