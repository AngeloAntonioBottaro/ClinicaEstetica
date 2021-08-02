inherited FrmSugestaoCompra: TFrmSugestaoCompra
  Caption = 'Sugest'#227'o De Compra'
  ClientHeight = 89
  ClientWidth = 273
  ExplicitWidth = 279
  ExplicitHeight = 118
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 267
    Height = 83
    Align = alClient
    TabOrder = 0
    object ButtonGerarRelatorio: TButton
      AlignWithMargins = True
      Left = 71
      Top = 23
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
