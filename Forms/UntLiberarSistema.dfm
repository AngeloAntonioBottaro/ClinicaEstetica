inherited FrmLiberarSistema: TFrmLiberarSistema
  Caption = 'Liberar Sistema'
  ClientHeight = 170
  ClientWidth = 359
  ExplicitWidth = 365
  ExplicitHeight = 199
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 353
    Height = 164
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 343
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'Libera'#231#227'o do Sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 211
    end
    object Label2: TLabel
      Left = 24
      Top = 80
      Width = 102
      Height = 15
      Caption = 'Codigo Libera'#231#227'o..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditCodigoHash: TEdit
      Left = 136
      Top = 77
      Width = 177
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object ButtonLiberarSistema: TButton
      Left = 112
      Top = 120
      Width = 113
      Height = 30
      Caption = 'Liberar Sistema'
      ImageAlignment = iaRight
      ImageIndex = 18
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonLiberarSistemaClick
    end
  end
end
