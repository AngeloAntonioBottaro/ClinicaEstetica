inherited FrmRelatorioCaixaDiario: TFrmRelatorioCaixaDiario
  Caption = 'Relatorio Caixa Diario'
  ClientHeight = 87
  ClientWidth = 280
  ExplicitWidth = 286
  ExplicitHeight = 116
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 274
    Height = 81
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
