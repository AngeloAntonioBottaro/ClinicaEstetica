inherited FrmSenha: TFrmSenha
  Caption = 'Senha'
  ClientHeight = 108
  ClientWidth = 299
  ExplicitWidth = 305
  ExplicitHeight = 137
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 293
    Height = 102
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 39
      Top = 19
      Width = 44
      Height = 15
      Caption = 'SENHA.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditSenha: TEdit
      Left = 88
      Top = 16
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      PasswordChar = '*'
      TabOrder = 0
    end
    object ButtonEntrar: TButton
      Left = 110
      Top = 55
      Width = 75
      Height = 30
      Caption = 'Entrar'
      ImageAlignment = iaRight
      ImageIndex = 2
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonEntrarClick
    end
  end
end
