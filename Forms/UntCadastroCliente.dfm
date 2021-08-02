inherited FrmCadastroCliente: TFrmCadastroCliente
  Caption = 'Cadastro De Cliente'
  ClientHeight = 631
  ClientWidth = 581
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 587
  ExplicitHeight = 660
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxClient: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 575
    Height = 566
    Align = alClient
    Caption = 'Informa'#231#245'es Principais'
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 25
      Width = 63
      Height = 15
      Caption = 'CODIGO.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 6
      Top = 199
      Width = 63
      Height = 15
      Caption = 'E-MAIL.......:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 186
      Top = 170
      Width = 34
      Height = 15
      Caption = 'RG.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 325
      Top = 170
      Width = 68
      Height = 15
      Caption = 'PROFISS'#195'O.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 6
      Top = 170
      Width = 62
      Height = 15
      Caption = 'CPF.............:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 248
      Top = 199
      Width = 60
      Height = 15
      Caption = 'QUEIXA.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 380
      Top = 25
      Width = 48
      Height = 15
      Caption = 'STATUS..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 54
      Width = 63
      Height = 15
      Caption = 'NOME........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 83
      Width = 65
      Height = 15
      Caption = 'ENDERE'#199'O.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 341
      Top = 112
      Width = 59
      Height = 15
      Caption = 'CIDADE.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 210
      Top = 112
      Width = 32
      Height = 15
      Caption = 'CEP...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 6
      Top = 112
      Width = 60
      Height = 15
      Caption = 'BAIRRO.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 6
      Top = 141
      Width = 61
      Height = 15
      Caption = 'TELEFONE.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 183
      Top = 141
      Width = 55
      Height = 15
      Caption = 'CELULAR.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 352
      Top = 141
      Width = 79
      Height = 15
      Caption = 'ESTADO CIVIL.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 364
      Top = 46
      Width = 81
      Height = 30
      Caption = 'DATA DE NASCIMENTO.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label6: TLabel
      Left = 367
      Top = 83
      Width = 73
      Height = 15
      Caption = 'IDADE............:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelIdade: TLabel
      Left = 452
      Top = 84
      Width = 31
      Height = 13
      Caption = '- Anos'
    end
    object Label18: TLabel
      Left = 6
      Top = 239
      Width = 85
      Height = 15
      Caption = 'OBSERVA'#199#213'ES.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditCodigo: TEdit
      Left = 75
      Top = 23
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 0
      OnExit = EditCodigoExit
    end
    object EditEmail: TEdit
      Left = 75
      Top = 197
      Width = 167
      Height = 21
      TabOrder = 13
    end
    object EditRG: TEdit
      Left = 225
      Top = 168
      Width = 94
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object EditCPF: TEdit
      Left = 74
      Top = 168
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
      OnExit = EditCPFExit
    end
    object EditQueixa: TEdit
      Left = 314
      Top = 197
      Width = 235
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 14
    end
    object EditNome: TEdit
      Left = 75
      Top = 52
      Width = 286
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EditEndereco: TEdit
      Left = 75
      Top = 81
      Width = 286
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object EditCep: TEdit
      Left = 246
      Top = 110
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnExit = EditCepExit
    end
    object EditBairro: TEdit
      Left = 75
      Top = 110
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object EditTelefone: TEdit
      Left = 75
      Top = 139
      Width = 104
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
      OnExit = EditTelefoneExit
    end
    object EditCelular: TEdit
      Left = 239
      Top = 139
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
      OnExit = EditCelularExit
    end
    object EditProfissao: TEdit
      Left = 396
      Top = 168
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 12
    end
    object DateTimePickerDataNascimento: TDateTimePicker
      Left = 445
      Top = 53
      Width = 104
      Height = 23
      Date = 43803.575950798600000000
      Time = 43803.575950798600000000
      TabOrder = 3
      OnChange = DateTimePickerDataNascimentoChange
    end
    object ComboBoxStatus: TComboBox
      Left = 434
      Top = 23
      Width = 115
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      TabOrder = 17
      TabStop = False
      Items.Strings = (
        'ATIVO'
        'INATIVO')
    end
    object ComboBoxEstadoCivil: TComboBox
      Left = 437
      Top = 139
      Width = 112
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 11
      Items.Strings = (
        'SOLTEIRO(A)'
        'CASADO(A)'
        'VIUVO(A)'
        'DIVORCIADO(A)')
    end
    object EditObservacao: TEdit
      Left = 97
      Top = 225
      Width = 452
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 15
      OnKeyPress = EditObservacaoKeyPress
    end
    object GroupBoxInformacoesAdicionais: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 277
      Width = 565
      Height = 284
      Align = alBottom
      Caption = 'Informa'#231#245'es Adicionais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      object PageControl: TPageControl
        Left = 2
        Top = 17
        Width = 561
        Height = 265
        ActivePage = TabSheet4
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Antecedentes Patologicos'
          object Label19: TLabel
            Left = 18
            Top = 165
            Width = 73
            Height = 15
            Caption = 'OUTROS........:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 18
            Top = 191
            Width = 75
            Height = 30
            Caption = 'ESTADO EMOCIONAL.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object CheckBoxAntPatCardiaco: TCheckBox
            Left = 18
            Top = 8
            Width = 100
            Height = 17
            Caption = 'Card'#237'aco'
            TabOrder = 0
            WordWrap = True
          end
          object CheckBoxAntPatAnticoncepcional: TCheckBox
            Left = 141
            Top = 93
            Width = 120
            Height = 30
            Caption = 'Toma Anticoncepcional'
            TabOrder = 1
            WordWrap = True
          end
          object CheckBoxAntPatCancer: TCheckBox
            Left = 18
            Top = 126
            Width = 100
            Height = 17
            Caption = 'C'#226'ncer'
            TabOrder = 2
            WordWrap = True
          end
          object CheckBoxAntPatHipertensao: TCheckBox
            Left = 18
            Top = 39
            Width = 100
            Height = 17
            Caption = 'Hipertens'#227'o'
            TabOrder = 3
            WordWrap = True
          end
          object CheckBoxAntPatDiabetico: TCheckBox
            Left = 18
            Top = 69
            Width = 100
            Height = 17
            Caption = 'Diab'#233'tico'
            TabOrder = 4
            WordWrap = True
          end
          object CheckBoxAntPatGestante: TCheckBox
            Left = 18
            Top = 99
            Width = 100
            Height = 17
            Caption = 'Gestante'
            TabOrder = 5
            WordWrap = True
          end
          object CheckBoxAntPatOvarioPolicistico: TCheckBox
            Left = 141
            Top = 122
            Width = 120
            Height = 26
            Caption = 'Ov'#225'rio Polic'#237'stico'
            TabOrder = 6
            WordWrap = True
          end
          object CheckBoxAntPatHipertirioidismo: TCheckBox
            Left = 141
            Top = 39
            Width = 120
            Height = 17
            Caption = 'Hipertirioidismo'
            TabOrder = 7
            WordWrap = True
          end
          object CheckBoxAntPatHipotireoidismo: TCheckBox
            Left = 141
            Top = 69
            Width = 120
            Height = 17
            Caption = 'Hipotireoidismo'
            TabOrder = 8
            WordWrap = True
          end
          object CheckBoxAntPatExposicaoSolar: TCheckBox
            Left = 141
            Top = 2
            Width = 120
            Height = 30
            Caption = 'Excesso De Exposi'#231#227'o solar'
            TabOrder = 9
            WordWrap = True
          end
          object CheckBoxAntPatLenteContato: TCheckBox
            Left = 269
            Top = 8
            Width = 120
            Height = 17
            Caption = 'Lente De Contato'
            TabOrder = 10
            WordWrap = True
          end
          object CheckBoxAntPatImplanteDentario: TCheckBox
            Left = 269
            Top = 39
            Width = 120
            Height = 17
            Caption = 'Implante Dentario'
            TabOrder = 11
          end
          object CheckBoxAntPatAparelhoOdontologico: TCheckBox
            Left = 269
            Top = 63
            Width = 120
            Height = 30
            Caption = 'Aparelho Odontologico'
            TabOrder = 12
            WordWrap = True
          end
          object CheckBoxAntPatCirurgiaRecente: TCheckBox
            Left = 269
            Top = 99
            Width = 120
            Height = 17
            Caption = 'Cirurgia Recente'
            TabOrder = 13
          end
          object CheckBoxAntPatPreenchimento: TCheckBox
            Left = 269
            Top = 126
            Width = 120
            Height = 17
            Caption = 'Preenchimento'
            TabOrder = 14
          end
          object CheckBoxAntPatDietaBalanceada: TCheckBox
            Left = 419
            Top = 8
            Width = 120
            Height = 17
            Caption = 'Dieta Balanceada'
            TabOrder = 15
          end
          object CheckBoxAntPatFuma: TCheckBox
            Left = 419
            Top = 39
            Width = 120
            Height = 17
            Caption = 'Fuma'
            TabOrder = 16
          end
          object CheckBoxAntPatBotox: TCheckBox
            Left = 419
            Top = 69
            Width = 97
            Height = 17
            Caption = 'Botox'
            TabOrder = 17
          end
          object EditOutrosAntecedentesPatologicos: TEdit
            Left = 97
            Top = 162
            Width = 326
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 18
          end
          object EditEstadoEmocional: TEdit
            Left = 99
            Top = 199
            Width = 326
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 19
          end
        end
        object TabShee2: TTabSheet
          Caption = 'Antecedentes Al'#233'rgicos'
          ImageIndex = 1
          object Label21: TLabel
            Left = 31
            Top = 56
            Width = 48
            Height = 15
            Caption = 'Outros..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CheckBoxAntAlergicosCosmeticos: TCheckBox
            Left = 31
            Top = 16
            Width = 97
            Height = 17
            Caption = 'Cosm'#233'ticos'
            TabOrder = 0
          end
          object CheckBoxAntAlergicosMaquiagem: TCheckBox
            Left = 162
            Top = 16
            Width = 97
            Height = 17
            Caption = 'Maquiagem'
            TabOrder = 1
          end
          object CheckBoxAntAlergicosAlimentacao: TCheckBox
            Left = 290
            Top = 16
            Width = 97
            Height = 17
            Caption = 'Alimenta'#231#227'o'
            TabOrder = 2
          end
          object EditOutrosAntecedentesAlergicos: TEdit
            Left = 86
            Top = 53
            Width = 301
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object GroupBoxTiposDePele: TGroupBox
            Left = 21
            Top = 96
            Width = 508
            Height = 105
            Caption = 'Tipos De Pele'
            TabOrder = 4
            object CheckBoxTipoPeleNormal: TCheckBox
              Left = 24
              Top = 32
              Width = 97
              Height = 17
              Caption = 'Normal'
              TabOrder = 0
            end
            object CheckBoxTipoPeleMista: TCheckBox
              Left = 24
              Top = 64
              Width = 97
              Height = 17
              Caption = 'Mista'
              TabOrder = 1
            end
            object CheckBoxTipoPeleSeca: TCheckBox
              Left = 146
              Top = 32
              Width = 97
              Height = 17
              Caption = 'Seca'
              TabOrder = 2
            end
            object CheckBoxTipoPeleOleosa: TCheckBox
              Left = 146
              Top = 64
              Width = 97
              Height = 17
              Caption = 'Oleosa'
              TabOrder = 3
            end
            object CheckBoxTipoPeleAcneica: TCheckBox
              Left = 287
              Top = 32
              Width = 97
              Height = 17
              Caption = 'Acneica'
              TabOrder = 4
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Areas De Interesse de Tratamento'
          ImageIndex = 2
          object CheckBoxInteresseTratamentoRugasContornoOlhos: TCheckBox
            Left = 42
            Top = 24
            Width = 130
            Height = 30
            Caption = 'Rugas Contorno Dos Olhos'
            TabOrder = 0
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoOlheiras: TCheckBox
            Left = 42
            Top = 60
            Width = 130
            Height = 30
            Caption = 'Olheiras'
            TabOrder = 1
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoVasinhos: TCheckBox
            Left = 43
            Top = 96
            Width = 130
            Height = 30
            Caption = 'Vasinhos'
            TabOrder = 2
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoSardas: TCheckBox
            Left = 43
            Top = 132
            Width = 130
            Height = 30
            Caption = 'Sardas'
            TabOrder = 3
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoVerrugas: TCheckBox
            Left = 211
            Top = 24
            Width = 130
            Height = 30
            Caption = 'Verrugas'
            TabOrder = 4
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoExcessoOleosidade: TCheckBox
            Left = 211
            Top = 60
            Width = 130
            Height = 30
            Caption = 'Excesso De Oleosidade'
            TabOrder = 5
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoPapada: TCheckBox
            Left = 211
            Top = 96
            Width = 130
            Height = 30
            Caption = 'Papada'
            TabOrder = 6
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoRessecamentoPele: TCheckBox
            Left = 211
            Top = 132
            Width = 130
            Height = 30
            Caption = 'Ressecamento Da Pele'
            TabOrder = 7
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoFlacidez: TCheckBox
            Left = 356
            Top = 24
            Width = 130
            Height = 30
            Caption = 'Flacidez'
            TabOrder = 8
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoPescocoColo: TCheckBox
            Left = 356
            Top = 60
            Width = 130
            Height = 30
            Caption = 'Pesco'#231'o/Colo'
            TabOrder = 9
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoRugasTesta: TCheckBox
            Left = 356
            Top = 96
            Width = 130
            Height = 30
            Caption = 'Rugas Testa'
            TabOrder = 10
            WordWrap = True
          end
          object CheckBoxInteresseTratamentoManchas: TCheckBox
            Left = 356
            Top = 132
            Width = 130
            Height = 30
            Caption = 'Manchas'
            TabOrder = 11
            WordWrap = True
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Outras'
          ImageIndex = 3
          object Label22: TLabel
            Left = 31
            Top = 6
            Width = 142
            Height = 15
            Caption = 'TONUS MUSCULAR............:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 31
            Top = 27
            Width = 143
            Height = 30
            Caption = 'TRATAMENTOS EST'#201'TICOS ANTERIORES........................:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label24: TLabel
            Left = 32
            Top = 63
            Width = 96
            Height = 15
            Caption = 'HIGIENE FACIAL...:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 31
            Top = 91
            Width = 97
            Height = 15
            Caption = 'PRODUTOS...........:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 31
            Top = 117
            Width = 97
            Height = 15
            Caption = 'MAQUIAGEM.......:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 31
            Top = 143
            Width = 103
            Height = 15
            Caption = 'PROTETOR SOLAR.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 32
            Top = 199
            Width = 94
            Height = 30
            Caption = 'HIDRATANTE NOTURNO...........:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label29: TLabel
            Left = 31
            Top = 167
            Width = 96
            Height = 30
            Caption = 'HIDRATANTE DIURNO................:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object CheckBoxTonusMuscularNormal: TCheckBox
            Left = 192
            Top = 6
            Width = 97
            Height = 17
            Caption = 'Normal'
            TabOrder = 0
          end
          object CheckBoxTonusMuscularDiminuido: TCheckBox
            Left = 295
            Top = 8
            Width = 97
            Height = 17
            Caption = 'Diminu'#237'do'
            TabOrder = 1
          end
          object EditTratamentosEsteticosAnteriores: TEdit
            Left = 180
            Top = 31
            Width = 325
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object CheckBoxHigieneFacialUmaOuDuasVezes: TCheckBox
            Left = 161
            Top = 63
            Width = 152
            Height = 17
            Caption = 'Lava de 1 a 2 vezes/dia'
            TabOrder = 3
          end
          object CheckBoxHigieneFacialTresOuMais: TCheckBox
            Left = 346
            Top = 63
            Width = 156
            Height = 17
            Caption = 'Lava 3 ou mais vezes/dia'
            TabOrder = 4
          end
          object EditProdutosFaciais: TEdit
            Left = 134
            Top = 88
            Width = 371
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 5
          end
          object CheckBoxMaquiagemBase: TCheckBox
            Left = 163
            Top = 117
            Width = 51
            Height = 17
            Caption = 'Base'
            TabOrder = 6
          end
          object CheckBoxMaquiagemPo: TCheckBox
            Left = 257
            Top = 117
            Width = 45
            Height = 17
            Caption = 'P'#243
            TabOrder = 7
          end
          object CheckBoxMaquiagemPoCompacto: TCheckBox
            Left = 363
            Top = 117
            Width = 97
            Height = 17
            Caption = 'P'#243' Compacto'
            TabOrder = 8
          end
          object EditProtetorSolar: TEdit
            Left = 134
            Top = 140
            Width = 371
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 9
          end
          object EditHidratanteNoturno: TEdit
            Left = 134
            Top = 207
            Width = 371
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 10
          end
          object EditHidratanteDiurno: TEdit
            Left = 134
            Top = 173
            Width = 371
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 11
          end
        end
      end
    end
    object EditObservacao1: TEdit
      Left = 97
      Top = 254
      Width = 452
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 16
      OnExit = EditObservacao1Exit
      OnKeyPress = EditObservacao1KeyPress
    end
    object ComboBoxCidade: TComboBox
      Left = 404
      Top = 110
      Width = 145
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      TabOrder = 6
      Items.Strings = (
        'IVAIPORA'
        'JARDIM ALEGRE'
        'ARAPUA'
        'LUNARDELLI'
        'NOVA TEBAS'
        'MANOEL RIBAS'
        'LIDIANOPOLIS'
        'GRANDES RIOS'
        'GODOY MOREIRA'
        'ROSARIO DO IVAI'
        'ARIRANHA DO IVAI'
        'CANDIDO DE ABREU'
        'SAO JOAO DO IVAI'
        'SAO PEDRO DO IVAI'
        'RIO BRANCO DO IVAI')
    end
  end
  object GroupBoxBotton: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 575
    Width = 575
    Height = 53
    Align = alBottom
    TabOrder = 1
    object ButtonAdicionar: TButton
      AlignWithMargins = True
      Left = 7
      Top = 15
      Width = 90
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alLeft
      Caption = 'Adicionar'
      ImageIndex = 8
      Images = FrmComponentes.ImageListButtons
      TabOrder = 0
      OnClick = ButtonAdicionarClick
    end
    object ButtonConsultar: TButton
      AlignWithMargins = True
      Left = 192
      Top = 15
      Width = 89
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alLeft
      Caption = 'Consultar'
      ImageIndex = 12
      Images = FrmComponentes.ImageListButtons
      TabOrder = 1
      OnClick = ButtonConsultarClick
    end
    object ButtonGravar: TButton
      AlignWithMargins = True
      Left = 107
      Top = 15
      Width = 75
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alLeft
      Caption = 'Gravar'
      ImageIndex = 9
      Images = FrmComponentes.ImageListButtons
      TabOrder = 2
      OnClick = ButtonGravarClick
    end
    object ButtonFichaCliente: TButton
      AlignWithMargins = True
      Left = 443
      Top = 15
      Width = 125
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alRight
      Caption = 'Ficha Cliente'
      ImageIndex = 14
      Images = FrmComponentes.ImageListButtons
      TabOrder = 3
      TabStop = False
      OnClick = ButtonFichaClienteClick
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDMTCliente
    ScopeMappings = <>
    Left = 384
    Top = 584
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 304
    Top = 584
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CODIGO'
      Control = EditCodigo
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CELULAR'
      Control = EditCelular
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'BAIRRO'
      Control = EditBairro
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'EMAIL'
      Control = EditEmail
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CPF'
      Control = EditCPF
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ENDERECO'
      Control = EditEndereco
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CEP'
      Control = EditCep
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'HIDRATANTENOTURNO'
      Control = EditHidratanteNoturno
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NOME'
      Control = EditNome
      Track = True
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ESTADOEMOCIONAL'
      Control = EditEstadoEmocional
      Track = True
    end
    object LinkControlToField11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'HIDRATANTEDIURNO'
      Control = EditHidratanteDiurno
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'STATUS'
      Control = ComboBoxStatus
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ESTADOCIVIL'
      Control = ComboBoxEstadoCivil
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField3: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CIDADE'
      Control = ComboBoxCidade
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField12: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO'
      Control = EditObservacao
      Track = True
    end
    object LinkControlToField13: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TELEFONE'
      Control = EditTelefone
      Track = True
    end
    object LinkControlToField14: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'RG'
      Control = EditRG
      Track = True
    end
    object LinkControlToField15: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'PROFISSAO'
      Control = EditProfissao
      Track = True
    end
    object LinkControlToField16: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'QUEIXA'
      Control = EditQueixa
      Track = True
    end
    object LinkControlToField17: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVACAO1'
      Control = EditObservacao1
      Track = True
    end
    object LinkControlToField18: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OUTROSANTALERGICOS'
      Control = EditOutrosAntecedentesAlergicos
      Track = True
    end
    object LinkControlToField19: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'OUTROSANTPAT'
      Control = EditOutrosAntecedentesPatologicos
      Track = True
    end
    object LinkControlToField20: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TRATAMENTOESTETICOANT'
      Control = EditTratamentosEsteticosAnteriores
      Track = True
    end
    object LinkControlToField21: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'PRODUTOSHIGIENEFACIAL'
      Control = EditProdutosFaciais
      Track = True
    end
    object LinkControlToField22: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'PROTETORSOLAR'
      Control = EditProtetorSolar
      Track = True
    end
    object LinkControlToField23: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DATANASCIMENTO'
      Control = DateTimePickerDataNascimento
      Track = True
    end
    object LinkControlToField24: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'HIGIENEFACIALTRESOUMAISVEZES'
      Control = CheckBoxHigieneFacialTresOuMais
      Track = True
    end
    object LinkControlToField25: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATPREENCHIMENTO'
      Control = CheckBoxAntPatPreenchimento
      Track = True
    end
    object LinkControlToField26: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATIMPLANTEDENTARIO'
      Control = CheckBoxAntPatImplanteDentario
      Track = True
    end
    object LinkControlToField27: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATFLACIDEZ'
      Control = CheckBoxInteresseTratamentoFlacidez
      Track = True
    end
    object LinkControlToField28: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TONUSMUSCULARNORMAL'
      Control = CheckBoxTonusMuscularNormal
      Track = True
    end
    object LinkControlToField29: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATRUGASTESTA'
      Control = CheckBoxInteresseTratamentoRugasTesta
      Track = True
    end
    object LinkControlToField31: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTALERGICOSCOSMETICOS'
      Control = CheckBoxAntAlergicosCosmeticos
      Track = True
    end
    object LinkControlToField32: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TIPOPELEACNEICA'
      Control = CheckBoxTipoPeleAcneica
      Track = True
    end
    object LinkControlToField33: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTALERGICOSMAQUIAGEM'
      Control = CheckBoxAntAlergicosMaquiagem
      Track = True
    end
    object LinkControlToField34: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATOVARIOPOLICISTICO'
      Control = CheckBoxAntPatOvarioPolicistico
      Track = True
    end
    object LinkControlToField35: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATEXCESSOOLEOSIDADE'
      Control = CheckBoxInteresseTratamentoExcessoOleosidade
      Track = True
    end
    object LinkControlToField36: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TONUSMUSCULARDIMINUIDO'
      Control = CheckBoxTonusMuscularDiminuido
      Track = True
    end
    object LinkControlToField37: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TIPOPELEMISTA'
      Control = CheckBoxTipoPeleMista
      Track = True
    end
    object LinkControlToField38: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATCIRURGIARECENTE'
      Control = CheckBoxAntPatCirurgiaRecente
      Track = True
    end
    object LinkControlToField39: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATRUGASCONTORNOOLHOS'
      Control = CheckBoxInteresseTratamentoRugasContornoOlhos
      Track = True
    end
    object LinkControlToField40: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATPESCOCOCOLO'
      Control = CheckBoxInteresseTratamentoPescocoColo
      Track = True
    end
    object LinkControlToField41: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'MAQUIAGEMPO'
      Control = CheckBoxMaquiagemPo
      Track = True
    end
    object LinkControlToField42: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATANTICONCEPCIONAL'
      Control = CheckBoxAntPatAnticoncepcional
      Track = True
    end
    object LinkControlToField43: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATEXPOSICAOSOLAR'
      Control = CheckBoxAntPatExposicaoSolar
      Track = True
    end
    object LinkControlToField45: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATBOTOX'
      Control = CheckBoxAntPatBotox
      Track = True
    end
    object LinkControlToField46: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATDIETABALANCEADA'
      Control = CheckBoxAntPatDietaBalanceada
      Track = True
    end
    object LinkControlToField47: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATCARDIACO'
      Control = CheckBoxAntPatCardiaco
      Track = True
    end
    object LinkControlToField48: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATVASINHOS'
      Control = CheckBoxInteresseTratamentoVasinhos
      Track = True
    end
    object LinkControlToField49: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TIPOPELESECA'
      Control = CheckBoxTipoPeleSeca
      Track = True
    end
    object LinkControlToField50: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TIPOPELENORMAL'
      Control = CheckBoxTipoPeleNormal
      Track = True
    end
    object LinkControlToField51: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATSARDAS'
      Control = CheckBoxInteresseTratamentoSardas
      Track = True
    end
    object LinkControlToField52: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATHIPERTENSAO'
      Control = CheckBoxAntPatHipertensao
      Track = True
    end
    object LinkControlToField53: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATDIABETICO'
      Control = CheckBoxAntPatDiabetico
      Track = True
    end
    object LinkControlToField54: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATGESTANTE'
      Control = CheckBoxAntPatGestante
      Track = True
    end
    object LinkControlToField55: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATMANCHAS'
      Control = CheckBoxInteresseTratamentoManchas
      Track = True
    end
    object LinkControlToField56: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATVERRUGAS'
      Control = CheckBoxInteresseTratamentoVerrugas
      Track = True
    end
    object LinkControlToField57: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'HIGIENEFACIALUMAADUASVEZES'
      Control = CheckBoxHigieneFacialUmaOuDuasVezes
      Track = True
    end
    object LinkControlToField58: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TIPOPELEOLEOSA'
      Control = CheckBoxTipoPeleOleosa
      Track = True
    end
    object LinkControlToField59: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATRESSECAMENTOPELE'
      Control = CheckBoxInteresseTratamentoRessecamentoPele
      Track = True
    end
    object LinkControlToField60: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'MAQUIAGEMPOCOMPACTO'
      Control = CheckBoxMaquiagemPoCompacto
      Track = True
    end
    object LinkControlToField61: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATHIPERTIRIOIDISMO'
      Control = CheckBoxAntPatHipertirioidismo
      Track = True
    end
    object LinkControlToField62: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATLENTECONTATO'
      Control = CheckBoxAntPatLenteContato
      Track = True
    end
    object LinkControlToField63: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTALERGICOSALIMENTACAO'
      Control = CheckBoxAntAlergicosAlimentacao
      Track = True
    end
    object LinkControlToField64: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATPAPADA'
      Control = CheckBoxInteresseTratamentoPapada
      Track = True
    end
    object LinkControlToField65: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATFUMA'
      Control = CheckBoxAntPatFuma
      Track = True
    end
    object LinkControlToField66: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATCANCER'
      Control = CheckBoxAntPatCancer
      Track = True
    end
    object LinkControlToField67: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATAPARELHOODONTOLOGICO'
      Control = CheckBoxAntPatAparelhoOdontologico
      Track = True
    end
    object LinkControlToField68: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'MAQUIAGEMBASE'
      Control = CheckBoxMaquiagemBase
      Track = True
    end
    object LinkControlToField30: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ANTPATHIPOTIREOIDISMO'
      Control = CheckBoxAntPatHipotireoidismo
      Track = True
    end
    object LinkControlToField44: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'INTTRATOLHEIRAS'
      Control = CheckBoxInteresseTratamentoOlheiras
      Track = True
    end
  end
end
