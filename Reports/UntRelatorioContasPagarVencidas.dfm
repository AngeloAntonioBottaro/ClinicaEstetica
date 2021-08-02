inherited FrmContasPagarVencidas: TFrmContasPagarVencidas
  Caption = 'Contas A Pagar Vencidas'
  ClientHeight = 87
  ClientWidth = 273
  ExplicitWidth = 279
  ExplicitHeight = 116
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 267
    Height = 81
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 277
    ExplicitHeight = 86
    object ButtonGerarRelatorio: TButton
      AlignWithMargins = True
      Left = 74
      Top = 25
      Width = 125
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Caption = 'Gerar Relatorio'
      ImageIndex = 14
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonGerarRelatorioClick
    end
  end
end
