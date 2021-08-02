inherited FrmConsultaContaReceber: TFrmConsultaContaReceber
  Caption = 'Consulta De Conta A Receber'
  ClientHeight = 455
  ClientWidth = 596
  OnShow = FormShow
  ExplicitWidth = 602
  ExplicitHeight = 484
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxHeader: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 590
    Height = 111
    Align = alTop
    Caption = 'Pesquisar Por'
    TabOrder = 0
    DesignSize = (
      590
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
      Top = 57
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
      Left = 184
      Top = 58
      Width = 85
      Height = 13
      Caption = 'LabelNomeCliente'
    end
    object EditCodigoCliente: TEdit
      Left = 92
      Top = 55
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditCodigoClienteExit
    end
    object ButtonConsultar: TButton
      Left = 484
      Top = 70
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
      Top = 53
      Width = 30
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 4
      OnClick = ButtonConsultaClienteClick
    end
    object RadioButtonEmissao: TRadioButton
      Left = 9
      Top = 83
      Width = 77
      Height = 17
      Caption = 'Emiss'#227'o'
      Checked = True
      TabOrder = 5
      TabStop = True
    end
    object RadioButtonVencimento: TRadioButton
      Left = 92
      Top = 83
      Width = 113
      Height = 17
      Caption = 'Vencimento'
      TabOrder = 6
    end
  end
  object GroupBoxGrid: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 120
    Width = 590
    Height = 271
    Align = alClient
    TabOrder = 1
    object DBGridContaReceber: TDBGrid
      Left = 2
      Top = 15
      Width = 586
      Height = 254
      Align = alClient
      DataSource = DM.DSContaReceber
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
          FieldName = 'CLIENTE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
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
          FieldName = 'VALOR'
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
    Top = 397
    Width = 590
    Height = 55
    Align = alBottom
    TabOrder = 2
    object ButtonFechar: TButton
      AlignWithMargins = True
      Left = 510
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
    object ButtonExcluirConta: TButton
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 108
      Height = 32
      Align = alLeft
      Caption = 'Excluir Conta'
      ImageIndex = 11
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonExcluirContaClick
    end
  end
end
