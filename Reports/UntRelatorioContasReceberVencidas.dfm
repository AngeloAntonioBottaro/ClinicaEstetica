inherited FrmRelatorioContasAReceberVencidas: TFrmRelatorioContasAReceberVencidas
  Caption = 'Relatorio Contas Vencidas'
  ClientHeight = 92
  ClientWidth = 283
  ExplicitWidth = 289
  ExplicitHeight = 121
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 277
    Height = 86
    Align = alClient
    TabOrder = 0
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
