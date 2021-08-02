object DMRelatorios: TDMRelatorios
  OldCreateOrder = False
  Height = 1160
  Width = 728
  object DSCadastroCliente: TfrxDBDataset
    UserName = 'DSCadastroCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'CIDADE=CIDADE'
      'TELEFONE=TELEFONE'
      'CELULAR=CELULAR'
      'CPF=CPF'
      'RG=RG'
      'EMAIL=EMAIL'
      'QUEIXA=QUEIXA'
      'PROFISSAO=PROFISSAO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'STATUS=STATUS'
      'DATANASCIMENTO=DATANASCIMENTO'
      'OBSERVACAO=OBSERVACAO'
      'OBSERVACAO1=OBSERVACAO1'
      'OBSERVACAOSISTEMA=OBSERVACAOSISTEMA'
      'OUTROSANTPAT=OUTROSANTPAT'
      'ESTADOEMOCIONAL=ESTADOEMOCIONAL'
      'ANTPATCARDIACO=ANTPATCARDIACO'
      'ANTPATHIPERTENSAO=ANTPATHIPERTENSAO'
      'ANTPATDIABETICO=ANTPATDIABETICO'
      'ANTPATGESTANTE=ANTPATGESTANTE'
      'ANTPATCANCER=ANTPATCANCER'
      'ANTPATEXPOSICAOSOLAR=ANTPATEXPOSICAOSOLAR'
      'ANTPATHIPERTIRIOIDISMO=ANTPATHIPERTIRIOIDISMO'
      'ANTPATHIPOTIREOIDISMO=ANTPATHIPOTIREOIDISMO'
      'ANTPATANTICONCEPCIONAL=ANTPATANTICONCEPCIONAL'
      'ANTPATOVARIOPOLICISTICO=ANTPATOVARIOPOLICISTICO'
      'ANTPATLENTECONTATO=ANTPATLENTECONTATO'
      'ANTPATIMPLANTEDENTARIO=ANTPATIMPLANTEDENTARIO'
      'ANTPATAPARELHOODONTOLOGICO=ANTPATAPARELHOODONTOLOGICO'
      'ANTPATCIRURGIARECENTE=ANTPATCIRURGIARECENTE'
      'ANTPATPREENCHIMENTO=ANTPATPREENCHIMENTO'
      'ANTPATDIETABALANCEADA=ANTPATDIETABALANCEADA'
      'ANTPATFUMA=ANTPATFUMA'
      'ANTPATBOTOX=ANTPATBOTOX'
      'ANTALERGICOSCOSMETICOS=ANTALERGICOSCOSMETICOS'
      'ANTALERGICOSMAQUIAGEM=ANTALERGICOSMAQUIAGEM'
      'ANTALERGICOSALIMENTACAO=ANTALERGICOSALIMENTACAO'
      'OUTROSANTALERGICOS=OUTROSANTALERGICOS'
      'TIPOPELENORMAL=TIPOPELENORMAL'
      'TIPOPELEMISTA=TIPOPELEMISTA'
      'TIPOPELESECA=TIPOPELESECA'
      'TIPOPELEOLEOSA=TIPOPELEOLEOSA'
      'TIPOPELEACNEICA=TIPOPELEACNEICA'
      'INTTRATRUGASCONTORNOOLHOS=INTTRATRUGASCONTORNOOLHOS'
      'INTTRATOLHEIRAS=INTTRATOLHEIRAS'
      'INTTRATVASINHOS=INTTRATVASINHOS'
      'INTTRATSARDAS=INTTRATSARDAS'
      'INTTRATVERRUGAS=INTTRATVERRUGAS'
      'INTTRATEXCESSOOLEOSIDADE=INTTRATEXCESSOOLEOSIDADE'
      'INTTRATPAPADA=INTTRATPAPADA'
      'INTTRATRESSECAMENTOPELE=INTTRATRESSECAMENTOPELE'
      'INTTRATFLACIDEZ=INTTRATFLACIDEZ'
      'INTTRATPESCOCOCOLO=INTTRATPESCOCOCOLO'
      'INTTRATRUGASTESTA=INTTRATRUGASTESTA'
      'INTTRATMANCHAS=INTTRATMANCHAS'
      'TONUSMUSCULARDIMINUIDO=TONUSMUSCULARDIMINUIDO'
      'TONUSMUSCULARNORMAL=TONUSMUSCULARNORMAL'
      'TRATAMENTOESTETICOANT=TRATAMENTOESTETICOANT'
      'HIGIENEFACIALUMAADUASVEZES=HIGIENEFACIALUMAADUASVEZES'
      'HIGIENEFACIALTRESOUMAISVEZES=HIGIENEFACIALTRESOUMAISVEZES'
      'PRODUTOSHIGIENEFACIAL=PRODUTOSHIGIENEFACIAL'
      'MAQUIAGEMPO=MAQUIAGEMPO'
      'MAQUIAGEMPOCOMPACTO=MAQUIAGEMPOCOMPACTO'
      'MAQUIAGEMBASE=MAQUIAGEMBASE'
      'PROTETORSOLAR=PROTETORSOLAR'
      'HIDRATANTENOTURNO=HIDRATANTENOTURNO'
      'HIDRATANTEDIURNO=HIDRATANTEDIURNO'
      'DATACADASTRO=DATACADASTRO')
    DataSet = FDQCadastroCliente
    BCDToCurrency = False
    Left = 328
    Top = 136
  end
  object DSContasAReceberEntrePeriodo: TfrxDBDataset
    UserName = 'DSContasAReceberEntrePeriodo'
    CloseDataSource = False
    DataSet = FDQContaReceberEntrePeriodo
    BCDToCurrency = False
    Left = 328
    Top = 472
  end
  object DSContasRecebidasEntrePeriodo: TfrxDBDataset
    UserName = 'DSContasRecebidasEntrePeriodo'
    CloseDataSource = False
    DataSet = FDQContaRecebidaEntrePeriodo
    BCDToCurrency = False
    Left = 328
    Top = 520
  end
  object ReportBase: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43857.577414930600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 240
    Top = 32
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559059999999999000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 514.016080000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000010000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        KeepTogether = True
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692913390000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551180000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object DSCaixaDiario: TfrxDBDataset
    UserName = 'DSCaixaDiario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'HORA=HORA'
      'CLIENTE=CLIENTE'
      'HISTORICO=HISTORICO'
      'DOCUMENTO=DOCUMENTO'
      'DEBITO=DEBITO'
      'CREDITO=CREDITO'
      'OBSERVACAO=OBSERVACAO'
      'OBSERVACAO1=OBSERVACAO1'
      'FORMAPAGTO=FORMAPAGTO'
      'DATALANCAMENTO=DATALANCAMENTO'
      'OBSERVACAOSISTEMA=OBSERVACAOSISTEMA'
      'NOME=NOME'
      'DESCRIFORMAPAGTO=DESCRIFORMAPAGTO'
      'FORNECEDOR=FORNECEDOR'
      'NOMEFANTASIA=NOMEFANTASIA')
    DataSet = FDQCaixaDiario
    BCDToCurrency = False
    Left = 328
    Top = 376
  end
  object ReportServico: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43882.559556412040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 232
    Datasets = <
      item
        DataSet = DSRelatorioServico
        DataSetName = 'DSRelatorioServico'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSRelatorioServico."CODIGO"'
        KeepTogether = True
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 34.015770000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioServico."NOME"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 34.015770000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente..:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Do Servi'#231'o..:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioServico."DATA"]')
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 83.149660000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 60.472480000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do item')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo Item')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Item')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 60.472480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559059999999990000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo Servico.:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 7.559060000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioServico."CODIGO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488169450000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade....: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 7.559059999999990000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total..:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 7.559059999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSRelatorioServico."VALORTOTAL"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 34.015770000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es..:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 34.015770000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[DSRelatorioServico."OBSERVACAO"] [DSRelatorioServico."OBSERVACA' +
              'O1"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 52.913420000000030000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        DataSet = DSRelatorioServico
        DataSetName = 'DSRelatorioServico'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'NOMEPRODUTO'
          DataSet = DSRelatorioServico
          DataSetName = 'DSRelatorioServico'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioServico."NOMEPRODUTO"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'TIPOITEM'
          DataSet = DSRelatorioServico
          DataSetName = 'DSRelatorioServico'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioServico."TIPOITEM"]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = DSRelatorioServico
          DataSetName = 'DSRelatorioServico'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSRelatorioServico."VALOR"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = DSRelatorioServico
          DataSetName = 'DSRelatorioServico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSRelatorioServico."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORTOTALPRODUTO'
          DataSet = DSRelatorioServico
          DataSetName = 'DSRelatorioServico'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSRelatorioServico."VALORTOTALPRODUTO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559059999999999000
          Width = 279.685220000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE SERVI'#199'OS'
            ' NO PERIODO DE '
            '[DataInicial] A [DataFinal] - [Status]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551180000000000
        Top = 468.661720000000000000
        Width = 718.110700000000000000
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Registros..:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total...............:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalRegistros]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ValorTotal]')
          ParentFont = False
        end
      end
    end
  end
  object DSRelatorioServico: TfrxDBDataset
    UserName = 'DSRelatorioServico'
    CloseDataSource = False
    DataSet = FDQServico
    BCDToCurrency = False
    Left = 328
    Top = 232
  end
  object ReportVenda: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43880.650367916670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 280
    Datasets = <
      item
        DataSet = DSRelatorioVenda
        DataSetName = 'DSRelatorioVenda'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 612.283860000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSRelatorioVenda."CODIGO"'
        KeepTogether = True
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 41.574830000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioVenda."NOME"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 41.574830000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente..:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 15.118120000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Da Venda..:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioVenda."DATA"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 90.708720000000100000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 68.031540000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do item')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo Item')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Item')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 68.031540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 15.118120000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo Venda..:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioVenda."CODIGO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.267694570000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade....: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779529999999970000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 7.559059999999990000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total..:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 7.559059999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSRelatorioVenda."VALORTOTAL"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es..:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 37.795300000000000000
          Width = 551.811380000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioVenda."OBSERVACAO"] [DSRelatorioVenda."OBSERVACAO1"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        DataSet = DSRelatorioVenda
        DataSetName = 'DSRelatorioVenda'
        RowCount = 0
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'TIPOITEM'
          DataSet = DSRelatorioVenda
          DataSetName = 'DSRelatorioVenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioVenda."TIPOITEM"]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'NOMEPRODUTO'
          DataSet = DSRelatorioVenda
          DataSetName = 'DSRelatorioVenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioVenda."NOMEPRODUTO"]')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = DSRelatorioVenda
          DataSetName = 'DSRelatorioVenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSRelatorioVenda."QUANTIDADE"]')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = DSRelatorioVenda
          DataSetName = 'DSRelatorioVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSRelatorioVenda."VALOR"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORTOTALPRODUTO'
          DataSet = DSRelatorioVenda
          DataSetName = 'DSRelatorioVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSRelatorioVenda."VALORTOTALPRODUTO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559059999999999000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE VENDAS '
            'NO PERIODO DE'
            '[DataInicial] A [DataFinal] - [Status]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551180000000000
        Top = 476.220780000000000000
        Width = 718.110700000000000000
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Registros..:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total...............:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalRegistros]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ValorTotal]')
          ParentFont = False
        end
      end
    end
  end
  object DSRelatorioVenda: TfrxDBDataset
    UserName = 'DSRelatorioVenda'
    CloseDataSource = False
    DataSet = FDQVenda
    BCDToCurrency = False
    Left = 328
    Top = 280
  end
  object ReportEntradaEstoque: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43880.650896412040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 328
    Datasets = <
      item
        DataSet = DSEntradaEstoque
        DataSetName = 'DSEntradaEstoque'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 597.165740000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 105.826840000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSEntradaEstoque."CODIGO"'
        KeepTogether = True
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 102.047310000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559059999999990000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo Entrada..:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 7.559059999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSEntradaEstoque."CODIGO"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Compra.:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 41.574830000000000000
          Width = 79.370086060000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSEntradaEstoque."DATACOMPRA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Entrada.:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 41.574830000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSEntradaEstoque."DATARECEBIMENTO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 41.574830000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Lan'#231'amento.:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 41.574830000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSEntradaEstoque."DATALANCAMENTO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 79.370130000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Produto')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 79.370130000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Item')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 79.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 79.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Compra')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 79.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.251961180000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000020000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559059999999990000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade Itens.:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 7.559059999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 7.559059999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total..:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 7.559059999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSEntradaEstoque."VALORTOTAL"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        DataSet = DSEntradaEstoque
        DataSetName = 'DSEntradaEstoque'
        RowCount = 0
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000020000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'NUMEROITEM'
          DataSet = DSEntradaEstoque
          DataSetName = 'DSEntradaEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSEntradaEstoque."NUMEROITEM"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 3.779530000000020000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DataField = 'NOMEPRODUTO'
          DataSet = DSEntradaEstoque
          DataSetName = 'DSEntradaEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSEntradaEstoque."NOMEPRODUTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 3.779530000000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = DSEntradaEstoque
          DataSetName = 'DSEntradaEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSEntradaEstoque."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 3.779530000000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORCOMPRA'
          DataSet = DSEntradaEstoque
          DataSetName = 'DSEntradaEstoque'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSEntradaEstoque."VALORCOMPRA"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 3.779530000000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORTOTALPRODUTO'
          DataSet = DSEntradaEstoque
          DataSetName = 'DSEntradaEstoque'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSEntradaEstoque."VALORTOTALPRODUTO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559059999999999000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE ENTRADA DE ESTOQUE '
            'NO PERIODO DE '
            '[DataInicial] A [DataFinal] - [Status]'
            '')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551180000000000
        Top = 461.102660000000000000
        Width = 718.110700000000000000
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Registros..:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total...............:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalRegistros]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ValorTotal]')
          ParentFont = False
        end
      end
    end
  end
  object DSEntradaEstoque: TfrxDBDataset
    UserName = 'DSEntradaEstoque'
    CloseDataSource = False
    DataSet = FDQEntradaEstoque
    BCDToCurrency = False
    Left = 328
    Top = 328
  end
  object DSCadastroProduto: TfrxDBDataset
    UserName = 'DSCadastroProduto'
    CloseDataSource = False
    DataSet = FDQCadastroProduto
    BCDToCurrency = False
    Left = 328
    Top = 184
  end
  object DSParametros: TfrxDBDataset
    UserName = 'DSParametros'
    CloseDataSource = False
    DataSet = DM.FDQParametros
    BCDToCurrency = False
    Left = 152
    Top = 32
  end
  object DSCaixaDiarioEntrePeriodo: TfrxDBDataset
    UserName = 'DSCaixaDiarioEntrePeriodo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'HORA=HORA'
      'CLIENTE=CLIENTE'
      'HISTORICO=HISTORICO'
      'DOCUMENTO=DOCUMENTO'
      'DEBITO=DEBITO'
      'CREDITO=CREDITO'
      'OBSERVACAO=OBSERVACAO'
      'OBSERVACAO1=OBSERVACAO1'
      'FORMAPAGTO=FORMAPAGTO'
      'DATALANCAMENTO=DATALANCAMENTO'
      'OBSERVACAOSISTEMA=OBSERVACAOSISTEMA'
      'NOME=NOME'
      'DESCRIFORMAPAGTO=DESCRIFORMAPAGTO'
      'FORNECEDOR=FORNECEDOR'
      'NOMEFANTASIA=NOMEFANTASIA')
    DataSet = FDQCaixaDiarioEntrePeriodo
    BCDToCurrency = False
    Left = 328
    Top = 424
  end
  object ReportCadastroCliente: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43880.629102569400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 136
    Datasets = <
      item
        DataSet = DSCadastroCliente
        DataSetName = 'DSCadastroCliente'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = ''
      end
      item
        Name = 'ValorTotalCredito'
        Value = ''
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = ''
      end
      item
        Name = 'OrdemPesquisa'
        Value = ''
      end
      item
        Name = 'Status'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDash
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 646.299630000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSCadastroCliente."CODIGO"'
        KeepTogether = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente.......:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 49.133890000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."CODIGO"] - [DSCadastroCliente."NOME"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 26.456710000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Cadastro..:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."DATACADASTRO"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status.:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."STATUS"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574866610000000000
        Top = 445.984540000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 154.960730000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        DataSet = DSCadastroCliente
        DataSetName = 'DSCadastroCliente'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o..:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 30.236240000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP...:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade.......:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 7.559060000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."ENDERECO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 30.236240000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."BAIRRO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."CEP"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 30.236240000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."CIDADE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone....:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 52.913420000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."TELEFONE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 52.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Celular..:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 52.913420000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'CELULAR'
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."CELULAR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF............:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 75.590600000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."CPF"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RG.........:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 75.590600000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'RG'
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."RG"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro........:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail........:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 102.047310000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = DSCadastroCliente
          DataSetName = 'DSCadastroCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroCliente."EMAIL"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 128.504020000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es.:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 128.504020000000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[DSCadastroCliente."OBSERVACAO"] [DSCadastroCliente."OBSERVACAO1' +
              '"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385826771653500000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CLIENTES CADASTRADOS NO PERIODO '
            '[DataInicial] A [DataFinal] - [Status]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551180000000000
        Top = 510.236550000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 34.015770000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Registros..:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object ReportCadastroProduto: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43880.557193680600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 184
    Datasets = <
      item
        DataSet = DSCadastroProduto
        DataSetName = 'DSCadastroProduto'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 563.149970000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSCadastroProduto."CODIGO"'
        KeepTogether = True
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Item...:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 18.897650000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroProduto."CODIGO"] - [DSCadastroProduto."DESCRICAO"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795263390000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 105.826840000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = DSCadastroProduto
        DataSetName = 'DSCadastroProduto'
        RowCount = 0
        Stretched = True
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 30.236240000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Compra..:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 56.692950000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Venda.....:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORCOMPRA'
          DataSet = DSCadastroProduto
          DataSetName = 'DSCadastroProduto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroProduto."VALORCOMPRA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORVENDA'
          DataSet = DSCadastroProduto
          DataSetName = 'DSCadastroProduto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroProduto."VALORVENDA"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = DSCadastroProduto
          DataSetName = 'DSCadastroProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Grupo..........:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 56.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Sub Grupo..:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = DSCadastroProduto
          DataSetName = 'DSCadastroProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroProduto."GRUPO"] - [DSCadastroProduto."DESCRIGRUPO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = DSCadastroProduto
          DataSetName = 'DSCadastroProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[DSCadastroProduto."SUBGRUPO"] - [DSCadastroProduto."DESCRISUBGR' +
              'UPO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque..:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'ESTOQUE'
          DataSet = DSCadastroProduto
          DataSetName = 'DSCadastroProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroProduto."ESTOQUE"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo..:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = DSCadastroProduto
          DataSetName = 'DSCadastroProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroProduto."TIPO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Cadastro..:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSCadastroProduto."DATACADASTRO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status..:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = DSCadastroProduto
          DataSetName = 'DSCadastroProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCadastroProduto."STATUS"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 83.149660000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es....:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 83.149660000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[DSCadastroProduto."OBSERVACAO"] [DSCadastroProduto."OBSERVACAO1' +
              '"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE PRODUTOS CADASTRADOS NO PERIODO '
            '[DataInicial] A [DataFinal] - [Status]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551180000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 34.015770000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Registros..:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object ReportContasAReceberEntrePeriodo: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43880.593869432870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 472
    Datasets = <
      item
        DataSet = DSContasAReceberEntrePeriodo
        DataSetName = 'DSContasAReceberEntrePeriodo'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSContasAReceberEntrePeriodo."CLIENTE"'
        KeepTogether = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDashDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Cliente..:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDashDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[DSContasAReceberEntrePeriodo."CLIENTE"] - [DSContasAReceberEntr' +
              'ePeriodo."NOME"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 34.015770000000000000
          Width = 79.370068980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 52.913420000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692913390000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contas..:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DSContasAReceberEntrePeriodo."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor ..:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = DSContasAReceberEntrePeriodo
        DataSetName = 'DSContasAReceberEntrePeriodo'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasAReceberEntrePeriodo."PARCELA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasAReceberEntrePeriodo."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasAReceberEntrePeriodo."EMISSAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasAReceberEntrePeriodo."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSContasAReceberEntrePeriodo."VALOR"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149623390000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 60.472480000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSContasAReceberEntrePeriodo."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 60.472480000000010000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total.....:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 34.015769999999970000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Contas..:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 34.015769999999970000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 26.456709999999990000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 7.559060000000000000
          Width = 275.905690000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CONTAS A RECEBER '
            'COM [TipoPesquisa] NO PERIODO DE'
            '[DataInicial] A [DataFinal]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object ReportContasRecebidasEntrePeriodo: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43880.592831840280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 520
    Datasets = <
      item
        DataSet = DSContasRecebidasEntrePeriodo
        DataSetName = 'DSContasRecebidasEntrePeriodo'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 600.945270000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSContasRecebidasEntrePeriodo."CLIENTE"'
        KeepTogether = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Cliente..:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[DSContasRecebidasEntrePeriodo."CLIENTE"] - [DSContasRecebidasEn' +
              'trePeriodo."NOME"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 37.795300000000000000
          Width = 79.370068980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 37.795300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pagamento')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Recebido')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Original')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 60.472480000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929153390000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 30.236240000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<DSContasRecebidasEntrePeriodo."VALORRECEBIDO">,MasterData1' +
              ')]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 30.236240000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Recebido.:')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<DSContasRecebidasEntrePeriodo."VALORORIGINAL">,MasterData1' +
              ')]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 7.559060000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Original...:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade..:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = DSContasRecebidasEntrePeriodo
        DataSetName = 'DSContasRecebidasEntrePeriodo'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PARCELA'
          DataSet = DSContasRecebidasEntrePeriodo
          DataSetName = 'DSContasRecebidasEntrePeriodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasRecebidasEntrePeriodo."PARCELA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = DSContasRecebidasEntrePeriodo
          DataSetName = 'DSContasRecebidasEntrePeriodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasRecebidasEntrePeriodo."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'EMISSAO'
          DataSet = DSContasRecebidasEntrePeriodo
          DataSetName = 'DSContasRecebidasEntrePeriodo'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasRecebidasEntrePeriodo."EMISSAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = DSContasRecebidasEntrePeriodo
          DataSetName = 'DSContasRecebidasEntrePeriodo'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasRecebidasEntrePeriodo."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'VALORRECEBIDO'
          DataSet = DSContasRecebidasEntrePeriodo
          DataSetName = 'DSContasRecebidasEntrePeriodo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSContasRecebidasEntrePeriodo."VALORRECEBIDO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'DATAPAGAMENTO'
          DataSet = DSContasRecebidasEntrePeriodo
          DataSetName = 'DSContasRecebidasEntrePeriodo'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasRecebidasEntrePeriodo."DATAPAGAMENTO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORORIGINAL'
          DataSet = DSContasRecebidasEntrePeriodo
          DataSetName = 'DSContasRecebidasEntrePeriodo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSContasRecebidasEntrePeriodo."VALORORIGINAL"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 102.047310000000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 52.913420000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total Original.....:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Contas..:')
          ParentFont = False
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 22.677180000000020000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 79.370130000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total Recebido...:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 79.370130000000010000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[SUM(<DSContasRecebidasEntrePeriodo."VALORRECEBIDO">,MasterData1' +
              ')]')
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 52.913419999999970000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[SUM(<DSContasRecebidasEntrePeriodo."VALORORIGINAL">,MasterData1' +
              ')]')
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 26.456709999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 7.559060000000000000
          Width = 275.905690000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CONTAS RECEBIDAS'
            'COM [TipoPesquisa] NO PERIODO DE'
            '[DataInicial] A [DataFinal]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object ReportCaixaDiario: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43906.429633784720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 376
    Datasets = <
      item
        DataSet = DSCaixaDiario
        DataSetName = 'DSCaixaDiario'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 514.016080000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSCaixaDiario."DATA"'
        KeepTogether = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779527560000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente / Fornecedor')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 3.779527559055120000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 3.779527559055120000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 3.779527559055120000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Debito')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 3.779527559055120000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Credito')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 3.779527559055120000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Forma Pagamento')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 702.992116220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.267743390000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 56.692950000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Credito..:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Registros.:')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSCaixaDiario."DEBITO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 56.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSCaixaDiario."CREDITO">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Debito..:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        DataSet = DSCaixaDiario
        DataSetName = 'DSCaixaDiario'
        RowCount = 0
        Stretched = True
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = DSCaixaDiario
          DataSetName = 'DSCaixaDiario'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixaDiario."HORA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = DSCaixaDiario
          DataSetName = 'DSCaixaDiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixaDiario."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRIFORMAPAGTO'
          DataSet = DSCaixaDiario
          DataSetName = 'DSCaixaDiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixaDiario."DESCRIFORMAPAGTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#227'o:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 52.913420000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = DSCaixaDiario
          DataSetName = 'DSCaixaDiario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCaixaDiario."OBSERVACAO"] [DSCaixaDiario."OBSERVACAO1"]')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = DSCaixaDiario
          DataSetName = 'DSCaixaDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCaixaDiario."DEBITO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'CREDITO'
          DataSet = DSCaixaDiario
          DataSetName = 'DSCaixaDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCaixaDiario."CREDITO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCaixaDiario."NOME"][DSCaixaDiario."NOMEFANTASIA"]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Historico..:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'HISTORICO'
          DataSet = DSCaixaDiario
          DataSetName = 'DSCaixaDiario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCaixaDiario."HISTORICO"]')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 7.559060000000000000
          Frame.Typ = []
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 7.559060000000000000
          Width = 275.905690000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CAIXA DIARIO')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object ReportCaixaDiarioEntrePeriodo: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43906.430030000000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 424
    Datasets = <
      item
        DataSet = DSCaixaDiarioEntrePeriodo
        DataSetName = 'DSCaixaDiarioEntrePeriodo'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 691.653990000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSCaixaDiarioEntrePeriodo."DATA"'
        KeepTogether = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 41.574830000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente / Fornecedor')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 41.574830000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 41.574830000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Debito')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 41.574830000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Credito')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 41.574830000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Forma Pagamento')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Data...:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 7.559060000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[DSCaixaDiarioEntrePeriodo."DATA"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 60.472480000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 136.063080000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 60.472480000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Credito..:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Registros.:')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 34.015770000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSCaixaDiarioEntrePeriodo."DEBITO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 60.472480000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSCaixaDiarioEntrePeriodo."CREDITO">,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 34.015770000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Debito..:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = DSCaixaDiarioEntrePeriodo
        DataSetName = 'DSCaixaDiarioEntrePeriodo'
        RowCount = 0
        Stretched = True
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = DSCaixaDiarioEntrePeriodo
          DataSetName = 'DSCaixaDiarioEntrePeriodo'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixaDiarioEntrePeriodo."HORA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = DSCaixaDiarioEntrePeriodo
          DataSetName = 'DSCaixaDiarioEntrePeriodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixaDiarioEntrePeriodo."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRIFORMAPAGTO'
          DataSet = DSCaixaDiarioEntrePeriodo
          DataSetName = 'DSCaixaDiarioEntrePeriodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSCaixaDiarioEntrePeriodo."DESCRIFORMAPAGTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#227'o:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 52.913420000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = DSCaixaDiario
          DataSetName = 'DSCaixaDiario'
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[DSCaixaDiarioEntrePeriodo."OBSERVACAO"] [DSCaixaDiarioEntrePeri' +
              'odo."OBSERVACAO1"]')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'DEBITO'
          DataSet = DSCaixaDiarioEntrePeriodo
          DataSetName = 'DSCaixaDiarioEntrePeriodo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCaixaDiarioEntrePeriodo."DEBITO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'CREDITO'
          DataSet = DSCaixaDiarioEntrePeriodo
          DataSetName = 'DSCaixaDiarioEntrePeriodo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCaixaDiarioEntrePeriodo."CREDITO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[DSCaixaDiarioEntrePeriodo."NOME"][DSCaixaDiarioEntrePeriodo."NO' +
              'MEFANTASIA"]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Historico..:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'HISTORICO'
          DataSet = DSCaixaDiarioEntrePeriodo
          DataSetName = 'DSCaixaDiarioEntrePeriodo'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCaixaDiarioEntrePeriodo."HISTORICO"]')
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 7.559060000000000000
          Frame.Typ = []
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 7.559060000000000000
          Width = 275.905690000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CAIXA DIARIO'
            'NO PERIODO DE'
            '[DataInicial] A [DataFinal]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551180000000000
        Top = 555.590910000000000000
        Width = 718.110700000000000000
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total Debito..:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ValorTotalDebito]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total Credito.:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ValorTotalCredito]')
          ParentFont = False
        end
      end
    end
  end
  object ReportContasReceberVencidas: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43879.452061122700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 568
    Datasets = <
      item
        DataSet = DSContasVencidas
        DataSetName = 'DSContasVencidas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSContasVencidas."CLIENTE"'
        KeepTogether = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDashDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Cliente..:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = DSContasVencidas
          DataSetName = 'DSContasVencidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDashDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[DSContasVencidas."CLIENTE"] - [DSContasVencidas."NOME"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 34.015770000000000000
          Width = 79.370068980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 52.913420000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692913390000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contas..:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DSContasVencidas."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor ..:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = DSContasVencidas
        DataSetName = 'DSContasVencidas'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PARCELA'
          DataSet = DSContasVencidas
          DataSetName = 'DSContasVencidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasVencidas."PARCELA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = DSContasVencidas
          DataSetName = 'DSContasVencidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasVencidas."VALOR"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'EMISSAO'
          DataSet = DSContasVencidas
          DataSetName = 'DSContasVencidas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasVencidas."EMISSAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = DSContasVencidas
          DataSetName = 'DSContasVencidas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasVencidas."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = DSContasVencidas
          DataSetName = 'DSContasVencidas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSContasVencidas."VALOR"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149623390000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSContasVencidas."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 52.913420000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total.....:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Contas..:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 7.559060000000000000
          Width = 275.905690000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CONTAS A RECEBER VENCIDAS')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object DSContasVencidas: TfrxDBDataset
    UserName = 'DSContasVencidas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CLIENTE=CLIENTE'
      'NOME=NOME'
      'PARCELA=PARCELA'
      'DOCUMENTO=DOCUMENTO'
      'EMISSAO=EMISSAO'
      'VENCIMENTO=VENCIMENTO'
      'VALOR=VALOR'
      'FORMAPAGTO=FORMAPAGTO'
      'OBSERVACAO=OBSERVACAO'
      'OBSERVACAO1=OBSERVACAO1'
      'OBSERVACAOSISTEMA=OBSERVACAOSISTEMA')
    DataSet = FDQContasReceberVencidas
    BCDToCurrency = False
    Left = 328
    Top = 568
  end
  object PDFExport: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 320
    Top = 32
  end
  object ReportSugestaoCompra: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43889.579333622700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 616
    Datasets = <
      item
        DataSet = DSSugestaoCompra
        DataSetName = 'DSSugestaoCompra'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = 'ValorCompraAproximado'
        Value = ''
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE SUGEST'#195'O DE COMPRA')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSSugestaoCompra."STATUS"'
        KeepTogether = True
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 34.015770000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 15.118120000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo  Descri'#231#227'o ')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 15.118120000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Minimo')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Maximo')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 15.118120000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = DSSugestaoCompra
          DataSetName = 'DSSugestaoCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sugest'#227'o ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Compra')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692913390000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Itens.:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 7.559060000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor De Compra Aproximado.:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ValorCompraAproximado]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        DataSet = DSSugestaoCompra
        DataSetName = 'DSSugestaoCompra'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779527560000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataSet = DSSugestaoCompra
          DataSetName = 'DSSugestaoCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSSugestaoCompra."CODIGO"] - [DSSugestaoCompra."DESCRICAO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 3.779527560000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'ESTOQUE'
          DataSet = DSSugestaoCompra
          DataSetName = 'DSSugestaoCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSSugestaoCompra."ESTOQUE"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 3.779527560000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'ESTOQUEMINIMO'
          DataSet = DSSugestaoCompra
          DataSetName = 'DSSugestaoCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSSugestaoCompra."ESTOQUEMINIMO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 3.779527560000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'ESTOQUEMAXIMO'
          DataSet = DSSugestaoCompra
          DataSetName = 'DSSugestaoCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSSugestaoCompra."ESTOQUEMAXIMO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 3.779527560000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'SUGESTAO'
          DataSet = DSSugestaoCompra
          DataSetName = 'DSSugestaoCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSSugestaoCompra."SUGESTAO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORCOMPRA'
          DataSet = DSSugestaoCompra
          DataSetName = 'DSSugestaoCompra'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSSugestaoCompra."VALORCOMPRA"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551180000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object DSSugestaoCompra: TfrxDBDataset
    UserName = 'DSSugestaoCompra'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'TIPO=TIPO'
      'UNIDADE=UNIDADE'
      'GRUPO=GRUPO'
      'SUBGRUPO=SUBGRUPO'
      'VALORCOMPRA=VALORCOMPRA'
      'VALORVENDA=VALORVENDA'
      'ESTOQUE=ESTOQUE'
      'ESTOQUEMINIMO=ESTOQUEMINIMO'
      'ESTOQUEMAXIMO=ESTOQUEMAXIMO'
      'STATUS=STATUS'
      'OBSERVACAO=OBSERVACAO'
      'OBSERVACAO1=OBSERVACAO1'
      'OBSERVACAOSISTEMA=OBSERVACAOSISTEMA'
      'DATACADASTRO=DATACADASTRO'
      'SUGESTAO=SUGESTAO')
    DataSet = FDQSugestaoCompra
    BCDToCurrency = False
    Left = 328
    Top = 616
  end
  object ReportServicosRealizados: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43882.559556412000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 664
    Datasets = <
      item
        DataSet = DSServicosRealizados
        DataSetName = 'DSServicosRealizados'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 548.031850000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSServicosRealizados."CLIENTE"'
        KeepTogether = True
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSServicosRealizados."CLIENTE"] - [DSServicosRealizados."NOME"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente..:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 30.236240000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Do Servi'#231'o')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 52.913420000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 30.236240000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do item')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 30.236240000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Servi'#231'o')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.031459450000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade....: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total..:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSServicosRealizados."VALORTOTALPRODUTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = DSServicosRealizados
        DataSetName = 'DSServicosRealizados'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DataField = 'NOMEPRODUTO'
          DataSet = DSServicosRealizados
          DataSetName = 'DSServicosRealizados'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSServicosRealizados."NOMEPRODUTO"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORTOTALPRODUTO'
          DataSet = DSServicosRealizados
          DataSetName = 'DSServicosRealizados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSServicosRealizados."VALORTOTALPRODUTO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = DSServicosRealizados
          DataSetName = 'DSServicosRealizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSServicosRealizados."CODIGO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = DSServicosRealizados
          DataSetName = 'DSServicosRealizados'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSServicosRealizados."DATA"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE SERVI'#199'OS REALIZADOS'
            'NO PERIODO DE '
            '[DataInicial] A [DataFinal] - [Status]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551180000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total De Servi'#231'os ..:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total...............:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalRegistros]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ValorTotal]')
          ParentFont = False
        end
      end
    end
  end
  object DSServicosRealizados: TfrxDBDataset
    UserName = 'DSServicosRealizados'
    CloseDataSource = False
    DataSet = FDQServicosRealizados
    BCDToCurrency = False
    Left = 328
    Top = 664
  end
  object ReportServicosResumidos: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43901.485331169000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 712
    Datasets = <
      item
        DataSet = DSServicosResumidos
        DataSetName = 'DSServicosResumidos'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE SERVI'#199'OS RESUMIDO'
            'NO PERIODO DE '
            '[DataInicial] A [DataFinal] - [Status]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 574.488560000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSServicosRealizados."CODIGO"'
        KeepTogether = True
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente..:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 54.330743750000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data..:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 56.692950000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 34.015770000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do item')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 7.559060000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'NOME'
          DataSet = DSServicosResumidos
          DataSetName = 'DSServicosResumidos'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSServicosResumidos."NOME"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 530.551523750000000000
          Width = 153.543406250000000000
          Height = 26.456710000000000000
          DataField = 'DATA'
          DataSet = DSServicosResumidos
          DataSetName = 'DSServicosResumidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSServicosResumidos."DATA"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488169450000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total..:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSServicosResumidos."VALORTOTAL"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 34.015770000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es..:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo Servico.:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = DSServicosResumidos
          DataSetName = 'DSServicosResumidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSServicosResumidos."CODIGO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 34.015770000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[DSServicosResumidos."OBSERVACAO"] [DSServicosResumidos."OBSERVA' +
              'CAO1"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = DSServicosResumidos
        DataSetName = 'DSServicosResumidos'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'NOMEPRODUTO'
          DataSet = DSServicosResumidos
          DataSetName = 'DSServicosResumidos'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSServicosResumidos."NOMEPRODUTO"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORTOTALPRODUTO'
          DataSet = DSServicosResumidos
          DataSetName = 'DSServicosResumidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSServicosResumidos."VALORTOTALPRODUTO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590551180000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Registros..:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total...............:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalRegistros]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ValorTotal]')
          ParentFont = False
        end
      end
    end
  end
  object DSServicosResumidos: TfrxDBDataset
    UserName = 'DSServicosResumidos'
    CloseDataSource = False
    DataSet = FDQServicosResumidos
    BCDToCurrency = False
    Left = 328
    Top = 712
  end
  object FDQContaReceberEntrePeriodo: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select a.*, b.nome from contareceber as A'
      'join cliente as B on a.cliente = b.codigo')
    Left = 113
    Top = 472
    object FDQContaReceberEntrePeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContaReceberEntrePeriodoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQContaReceberEntrePeriodoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQContaReceberEntrePeriodoPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContaReceberEntrePeriodoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContaReceberEntrePeriodoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContaReceberEntrePeriodoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContaReceberEntrePeriodoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object FDQContaReceberEntrePeriodoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContaReceberEntrePeriodoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContaReceberEntrePeriodoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContaReceberEntrePeriodoOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
  end
  object FDQContaRecebidaEntrePeriodo: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select a.*, b.nome from contarecebida as A'
      'join cliente as B on a.cliente = b.codigo')
    Left = 113
    Top = 520
    object FDQContaRecebidaEntrePeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContaRecebidaEntrePeriodoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQContaRecebidaEntrePeriodoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQContaRecebidaEntrePeriodoPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContaRecebidaEntrePeriodoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContaRecebidaEntrePeriodoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContaRecebidaEntrePeriodoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContaRecebidaEntrePeriodoDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = 'DATAPAGAMENTO'
    end
    object FDQContaRecebidaEntrePeriodoVALORORIGINAL: TFloatField
      FieldName = 'VALORORIGINAL'
      Origin = 'VALORORIGINAL'
    end
    object FDQContaRecebidaEntrePeriodoVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      Origin = 'VALORRECEBIDO'
    end
    object FDQContaRecebidaEntrePeriodoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContaRecebidaEntrePeriodoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContaRecebidaEntrePeriodoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContaRecebidaEntrePeriodoOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQContaRecebidaEntrePeriodoCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
    end
  end
  object FDQCaixaDiario: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT A.*, B.NOME, C.DESCRICAO AS DESCRIFORMAPAGTO'
      'FROM CAIXA AS A JOIN CLIENTE AS B '
      'ON A.CLIENTE = B.CODIGO '
      'JOIN FORMAPAGTO AS C '
      'ON A.FORMAPAGTO = C.CODIGO')
    Left = 113
    Top = 376
    object FDQCaixaDiarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCaixaDiarioDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQCaixaDiarioHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object FDQCaixaDiarioCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQCaixaDiarioHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object FDQCaixaDiarioDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQCaixaDiarioDEBITO: TFloatField
      FieldName = 'DEBITO'
      Origin = 'DEBITO'
    end
    object FDQCaixaDiarioCREDITO: TFloatField
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
    end
    object FDQCaixaDiarioOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQCaixaDiarioOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQCaixaDiarioFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQCaixaDiarioDATALANCAMENTO: TSQLTimeStampField
      FieldName = 'DATALANCAMENTO'
      Origin = 'DATALANCAMENTO'
    end
    object FDQCaixaDiarioOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQCaixaDiarioNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQCaixaDiarioDESCRIFORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQServico: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select A.*, B.*, C.Nome, D.descricao as DescriFormaPagto from'
      'cabeservico as A'
      'join servico as B on A.Codigo = B.cabeservico'
      'join cliente as C on A.Cliente = C.codigo'
      'join formapagto as D on A.formapagto = D.codigo')
    Left = 113
    Top = 232
    object FDQServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQServicoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQServicoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQServicoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
    end
    object FDQServicoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQServicoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQServicoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQServicoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQServicoOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQServicoCODIGO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_1'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicoCABESERVICO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CABESERVICO'
      Origin = 'CABESERVICO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicoNUMEROITEM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicoPRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicoNOMEPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQServicoQUANTIDADE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicoVALOR: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicoVALORTOTALPRODUTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicoTIPOITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQServicoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQServicoDESCRIFORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQVenda: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select A.*, B.*, C.Nome, D.descricao as DescriFormaPagto from'
      'CABEVENDA as A'
      'join VENDA as B on A.Codigo = B.CABEVENDA'
      'join cliente as C on A.Cliente = C.codigo'
      'join formapagto as D on A.formapagto = D.codigo')
    Left = 113
    Top = 280
    object FDQVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQVendaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQVendaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQVendaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
    end
    object FDQVendaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQVendaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQVendaOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQVendaCODIGO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_1'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVendaCABEVENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CABEVENDA'
      Origin = 'CABEVENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVendaNUMEROITEM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVendaPRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVendaNOMEPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQVendaQUANTIDADE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVendaVALOR: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVendaVALORTOTALPRODUTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVendaTIPOITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQVendaNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQVendaDESCRIFORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQEntradaEstoque: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select A.*, B.*, D.descricao as DescriFormaPagto from'
      'CABEENTRADA as A'
      'join ENTRADA as B on A.Codigo = B.CABEENTRADA'
      'join formapagto as D on A.formapagto = D.codigo')
    Left = 113
    Top = 328
    object FDQEntradaEstoqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQEntradaEstoqueDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Origin = 'DATALANCAMENTO'
    end
    object FDQEntradaEstoqueDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = 'DATACOMPRA'
    end
    object FDQEntradaEstoqueDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      Origin = 'DATARECEBIMENTO'
    end
    object FDQEntradaEstoqueVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
    end
    object FDQEntradaEstoqueFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQEntradaEstoqueSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQEntradaEstoqueOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQEntradaEstoqueOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQEntradaEstoqueOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQEntradaEstoqueCODIGO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_1'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntradaEstoqueCABEENTRADA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CABEENTRADA'
      Origin = 'CABEENTRADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntradaEstoqueNUMEROITEM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntradaEstoquePRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntradaEstoqueNOMEPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQEntradaEstoqueQUANTIDADE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntradaEstoqueVALORCOMPRA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALORCOMPRA'
      Origin = 'VALORCOMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntradaEstoqueVALORVENDA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALORVENDA'
      Origin = 'VALORVENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntradaEstoqueVALORTOTALPRODUTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntradaEstoqueTIPOITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQEntradaEstoqueDESCRIFORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQCadastroProduto: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      
        'select A.*, B.Descricao as DescriGrupo, C.Descricao as DescriSub' +
        'Grupo from produto as A'
      'left join grupo as B on a.grupo = b.codigo'
      'left join subgrupo as C on A.subgrupo = C.codigo')
    Left = 113
    Top = 184
    object FDQCadastroProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCadastroProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object FDQCadastroProdutoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object FDQCadastroProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 5
    end
    object FDQCadastroProdutoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object FDQCadastroProdutoSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
    end
    object FDQCadastroProdutoVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
      Origin = 'VALORCOMPRA'
    end
    object FDQCadastroProdutoVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
      Origin = 'VALORVENDA'
    end
    object FDQCadastroProdutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
    object FDQCadastroProdutoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQCadastroProdutoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQCadastroProdutoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQCadastroProdutoOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQCadastroProdutoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object FDQCadastroProdutoDESCRIGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIGRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQCadastroProdutoDESCRISUBGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRISUBGRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQCadastroCliente: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from cliente')
    Left = 113
    Top = 136
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 25
    end
    object StringField6: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 18
    end
    object StringField7: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object StringField8: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object StringField9: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 15
    end
    object StringField10: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object StringField11: TStringField
      FieldName = 'QUEIXA'
      Origin = 'QUEIXA'
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 30
    end
    object StringField13: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object StringField14: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object DateField1: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
    object StringField15: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object StringField16: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object StringField17: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object StringField18: TStringField
      FieldName = 'OUTROSANTPAT'
      Origin = 'OUTROSANTPAT'
      Size = 100
    end
    object StringField19: TStringField
      FieldName = 'ESTADOEMOCIONAL'
      Origin = 'ESTADOEMOCIONAL'
      Size = 50
    end
    object BooleanField1: TBooleanField
      FieldName = 'ANTPATCARDIACO'
      Origin = 'ANTPATCARDIACO'
    end
    object BooleanField2: TBooleanField
      FieldName = 'ANTPATHIPERTENSAO'
      Origin = 'ANTPATHIPERTENSAO'
    end
    object BooleanField3: TBooleanField
      FieldName = 'ANTPATDIABETICO'
      Origin = 'ANTPATDIABETICO'
    end
    object BooleanField4: TBooleanField
      FieldName = 'ANTPATGESTANTE'
      Origin = 'ANTPATGESTANTE'
    end
    object BooleanField5: TBooleanField
      FieldName = 'ANTPATCANCER'
      Origin = 'ANTPATCANCER'
    end
    object BooleanField6: TBooleanField
      FieldName = 'ANTPATEXPOSICAOSOLAR'
      Origin = 'ANTPATEXPOSICAOSOLAR'
    end
    object BooleanField7: TBooleanField
      FieldName = 'ANTPATHIPERTIRIOIDISMO'
      Origin = 'ANTPATHIPERTIRIOIDISMO'
    end
    object BooleanField8: TBooleanField
      FieldName = 'ANTPATHIPOTIREOIDISMO'
      Origin = 'ANTPATHIPOTIREOIDISMO'
    end
    object BooleanField9: TBooleanField
      FieldName = 'ANTPATANTICONCEPCIONAL'
      Origin = 'ANTPATANTICONCEPCIONAL'
    end
    object BooleanField10: TBooleanField
      FieldName = 'ANTPATOVARIOPOLICISTICO'
      Origin = 'ANTPATOVARIOPOLICISTICO'
    end
    object BooleanField11: TBooleanField
      FieldName = 'ANTPATLENTECONTATO'
      Origin = 'ANTPATLENTECONTATO'
    end
    object BooleanField12: TBooleanField
      FieldName = 'ANTPATIMPLANTEDENTARIO'
      Origin = 'ANTPATIMPLANTEDENTARIO'
    end
    object BooleanField13: TBooleanField
      FieldName = 'ANTPATAPARELHOODONTOLOGICO'
      Origin = 'ANTPATAPARELHOODONTOLOGICO'
    end
    object BooleanField14: TBooleanField
      FieldName = 'ANTPATCIRURGIARECENTE'
      Origin = 'ANTPATCIRURGIARECENTE'
    end
    object BooleanField15: TBooleanField
      FieldName = 'ANTPATPREENCHIMENTO'
      Origin = 'ANTPATPREENCHIMENTO'
    end
    object BooleanField16: TBooleanField
      FieldName = 'ANTPATDIETABALANCEADA'
      Origin = 'ANTPATDIETABALANCEADA'
    end
    object BooleanField17: TBooleanField
      FieldName = 'ANTPATFUMA'
      Origin = 'ANTPATFUMA'
    end
    object BooleanField18: TBooleanField
      FieldName = 'ANTPATBOTOX'
      Origin = 'ANTPATBOTOX'
    end
    object BooleanField19: TBooleanField
      FieldName = 'ANTALERGICOSCOSMETICOS'
      Origin = 'ANTALERGICOSCOSMETICOS'
    end
    object BooleanField20: TBooleanField
      FieldName = 'ANTALERGICOSMAQUIAGEM'
      Origin = 'ANTALERGICOSMAQUIAGEM'
    end
    object BooleanField21: TBooleanField
      FieldName = 'ANTALERGICOSALIMENTACAO'
      Origin = 'ANTALERGICOSALIMENTACAO'
    end
    object StringField20: TStringField
      FieldName = 'OUTROSANTALERGICOS'
      Origin = 'OUTROSANTALERGICOS'
      Size = 100
    end
    object BooleanField22: TBooleanField
      FieldName = 'TIPOPELENORMAL'
      Origin = 'TIPOPELENORMAL'
    end
    object BooleanField23: TBooleanField
      FieldName = 'TIPOPELEMISTA'
      Origin = 'TIPOPELEMISTA'
    end
    object BooleanField24: TBooleanField
      FieldName = 'TIPOPELESECA'
      Origin = 'TIPOPELESECA'
    end
    object BooleanField25: TBooleanField
      FieldName = 'TIPOPELEOLEOSA'
      Origin = 'TIPOPELEOLEOSA'
    end
    object BooleanField26: TBooleanField
      FieldName = 'TIPOPELEACNEICA'
      Origin = 'TIPOPELEACNEICA'
    end
    object BooleanField27: TBooleanField
      FieldName = 'INTTRATRUGASCONTORNOOLHOS'
      Origin = 'INTTRATRUGASCONTORNOOLHOS'
    end
    object BooleanField28: TBooleanField
      FieldName = 'INTTRATOLHEIRAS'
      Origin = 'INTTRATOLHEIRAS'
    end
    object BooleanField29: TBooleanField
      FieldName = 'INTTRATVASINHOS'
      Origin = 'INTTRATVASINHOS'
    end
    object BooleanField30: TBooleanField
      FieldName = 'INTTRATSARDAS'
      Origin = 'INTTRATSARDAS'
    end
    object BooleanField31: TBooleanField
      FieldName = 'INTTRATVERRUGAS'
      Origin = 'INTTRATVERRUGAS'
    end
    object BooleanField32: TBooleanField
      FieldName = 'INTTRATEXCESSOOLEOSIDADE'
      Origin = 'INTTRATEXCESSOOLEOSIDADE'
    end
    object BooleanField33: TBooleanField
      FieldName = 'INTTRATPAPADA'
      Origin = 'INTTRATPAPADA'
    end
    object BooleanField34: TBooleanField
      FieldName = 'INTTRATRESSECAMENTOPELE'
      Origin = 'INTTRATRESSECAMENTOPELE'
    end
    object BooleanField35: TBooleanField
      FieldName = 'INTTRATFLACIDEZ'
      Origin = 'INTTRATFLACIDEZ'
    end
    object BooleanField36: TBooleanField
      FieldName = 'INTTRATPESCOCOCOLO'
      Origin = 'INTTRATPESCOCOCOLO'
    end
    object BooleanField37: TBooleanField
      FieldName = 'INTTRATRUGASTESTA'
      Origin = 'INTTRATRUGASTESTA'
    end
    object BooleanField38: TBooleanField
      FieldName = 'INTTRATMANCHAS'
      Origin = 'INTTRATMANCHAS'
    end
    object BooleanField39: TBooleanField
      FieldName = 'TONUSMUSCULARDIMINUIDO'
      Origin = 'TONUSMUSCULARDIMINUIDO'
    end
    object BooleanField40: TBooleanField
      FieldName = 'TONUSMUSCULARNORMAL'
      Origin = 'TONUSMUSCULARNORMAL'
    end
    object StringField21: TStringField
      FieldName = 'TRATAMENTOESTETICOANT'
      Origin = 'TRATAMENTOESTETICOANT'
      Size = 100
    end
    object BooleanField41: TBooleanField
      FieldName = 'HIGIENEFACIALUMAADUASVEZES'
      Origin = 'HIGIENEFACIALUMAADUASVEZES'
    end
    object BooleanField42: TBooleanField
      FieldName = 'HIGIENEFACIALTRESOUMAISVEZES'
      Origin = 'HIGIENEFACIALTRESOUMAISVEZES'
    end
    object StringField22: TStringField
      FieldName = 'PRODUTOSHIGIENEFACIAL'
      Origin = 'PRODUTOSHIGIENEFACIAL'
      Size = 100
    end
    object BooleanField43: TBooleanField
      FieldName = 'MAQUIAGEMPO'
      Origin = 'MAQUIAGEMPO'
    end
    object BooleanField44: TBooleanField
      FieldName = 'MAQUIAGEMPOCOMPACTO'
      Origin = 'MAQUIAGEMPOCOMPACTO'
    end
    object BooleanField45: TBooleanField
      FieldName = 'MAQUIAGEMBASE'
      Origin = 'MAQUIAGEMBASE'
    end
    object StringField23: TStringField
      FieldName = 'PROTETORSOLAR'
      Origin = 'PROTETORSOLAR'
      Size = 50
    end
    object StringField24: TStringField
      FieldName = 'HIDRATANTENOTURNO'
      Origin = 'HIDRATANTENOTURNO'
      Size = 50
    end
    object StringField25: TStringField
      FieldName = 'HIDRATANTEDIURNO'
      Origin = 'HIDRATANTEDIURNO'
      Size = 50
    end
    object DateField2: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
  end
  object FDQCaixaDiarioEntrePeriodo: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT A.*, B.NOME, C.DESCRICAO AS DESCRIFORMAPAGTO'
      'FROM CAIXA AS A JOIN CLIENTE AS B '
      'ON A.CLIENTE = B.CODIGO '
      'JOIN FORMAPAGTO AS C '
      'ON A.FORMAPAGTO = C.CODIGO')
    Left = 113
    Top = 424
    object FDQCaixaDiarioEntrePeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCaixaDiarioEntrePeriodoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQCaixaDiarioEntrePeriodoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object FDQCaixaDiarioEntrePeriodoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQCaixaDiarioEntrePeriodoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object FDQCaixaDiarioEntrePeriodoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQCaixaDiarioEntrePeriodoDEBITO: TFloatField
      FieldName = 'DEBITO'
      Origin = 'DEBITO'
    end
    object FDQCaixaDiarioEntrePeriodoCREDITO: TFloatField
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
    end
    object FDQCaixaDiarioEntrePeriodoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQCaixaDiarioEntrePeriodoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQCaixaDiarioEntrePeriodoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQCaixaDiarioEntrePeriodoDATALANCAMENTO: TSQLTimeStampField
      FieldName = 'DATALANCAMENTO'
      Origin = 'DATALANCAMENTO'
    end
    object FDQCaixaDiarioEntrePeriodoOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQCaixaDiarioEntrePeriodoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQCaixaDiarioEntrePeriodoDESCRIFORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQContasReceberVencidas: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select a.*, b.nome from contareceber as a'
      'join cliente as b on a.cliente = b.codigo')
    Left = 113
    Top = 568
    object FDQContasReceberVencidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContasReceberVencidasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQContasReceberVencidasNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQContasReceberVencidasPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContasReceberVencidasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContasReceberVencidasEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContasReceberVencidasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContasReceberVencidasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object FDQContasReceberVencidasFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContasReceberVencidasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContasReceberVencidasOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContasReceberVencidasOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
  end
  object FDQSugestaoCompra: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      
        'SELECT A.*, ((A.ESTOQUEMINIMO - A.ESTOQUE) + (ESTOQUEMAXIMO/2)) ' +
        'AS SUGESTAO FROM PRODUTO AS A ')
    Left = 113
    Top = 616
    object FDQSugestaoCompraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQSugestaoCompraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object FDQSugestaoCompraTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object FDQSugestaoCompraUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 5
    end
    object FDQSugestaoCompraGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object FDQSugestaoCompraSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
    end
    object FDQSugestaoCompraVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
      Origin = 'VALORCOMPRA'
    end
    object FDQSugestaoCompraVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
      Origin = 'VALORVENDA'
    end
    object FDQSugestaoCompraESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
    object FDQSugestaoCompraESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      Origin = 'ESTOQUEMINIMO'
    end
    object FDQSugestaoCompraESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      Origin = 'ESTOQUEMAXIMO'
    end
    object FDQSugestaoCompraSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQSugestaoCompraOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQSugestaoCompraOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQSugestaoCompraOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQSugestaoCompraDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object FDQSugestaoCompraSUGESTAO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUGESTAO'
      Origin = 'SUGESTAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQServicosRealizados: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select A.*, B.*, C.Nome, D.descricao as DescriFormaPagto from'
      'cabeservico as A'
      'join servico as B on A.Codigo = B.cabeservico'
      'join cliente as C on A.Cliente = C.codigo'
      'join formapagto as D on A.formapagto = D.codigo')
    Left = 113
    Top = 664
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object DateField3: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FloatField1: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
    end
    object IntegerField4: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object StringField26: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object StringField27: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object StringField28: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object StringField29: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object IntegerField5: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_1'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object IntegerField6: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CABESERVICO'
      Origin = 'CABESERVICO'
      ProviderFlags = []
      ReadOnly = True
    end
    object IntegerField7: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object IntegerField8: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object StringField30: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FloatField2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField4: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object StringField31: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object StringField32: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object StringField33: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQServicosResumidos: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select A.*, B.*, C.Nome, D.descricao as DescriFormaPagto from'
      'cabeservico as A'
      'join servico as B on A.Codigo = B.cabeservico'
      'join cliente as C on A.Cliente = C.codigo'
      'join formapagto as D on A.formapagto = D.codigo')
    Left = 113
    Top = 712
    object FDQServicosResumidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQServicosResumidosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQServicosResumidosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQServicosResumidosVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
    end
    object FDQServicosResumidosFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQServicosResumidosSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQServicosResumidosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQServicosResumidosOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQServicosResumidosOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQServicosResumidosCODIGO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_1'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicosResumidosCABESERVICO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CABESERVICO'
      Origin = 'CABESERVICO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicosResumidosNUMEROITEM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicosResumidosPRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicosResumidosNOMEPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQServicosResumidosQUANTIDADE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicosResumidosVALOR: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicosResumidosVALORTOTALPRODUTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQServicosResumidosTIPOITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQServicosResumidosNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQServicosResumidosDESCRIFORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQContasPagarVencidas: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT A.*, B.NOMEFANTASIA FROM CONTAPAGAR AS A '
      'JOIN FORNECEDOR AS B ON A.FORNECEDOR = B.CODIGO ')
    Left = 112
    Top = 808
    object FDQContasPagarVencidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContasPagarVencidasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDQContasPagarVencidasPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContasPagarVencidasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContasPagarVencidasEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContasPagarVencidasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContasPagarVencidasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object FDQContasPagarVencidasFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContasPagarVencidasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContasPagarVencidasOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContasPagarVencidasOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQContasPagarVencidasNOMEFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DSContasPagarVencidas: TfrxDBDataset
    UserName = 'DSContasPagarVencidas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FORNECEDOR=FORNECEDOR'
      'PARCELA=PARCELA'
      'DOCUMENTO=DOCUMENTO'
      'EMISSAO=EMISSAO'
      'VENCIMENTO=VENCIMENTO'
      'VALOR=VALOR'
      'FORMAPAGTO=FORMAPAGTO'
      'OBSERVACAO=OBSERVACAO'
      'OBSERVACAO1=OBSERVACAO1'
      'OBSERVACAOSISTEMA=OBSERVACAOSISTEMA'
      'NOMEFANTASIA=NOMEFANTASIA')
    DataSet = FDQContasPagarVencidas
    BCDToCurrency = False
    Left = 328
    Top = 808
  end
  object ReportContasPagarVencidas: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43906.596415358800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 808
    Datasets = <
      item
        DataSet = DSContasPagarVencidas
        DataSetName = 'DSContasPagarVencidas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CONTAS A PAGAR VENCIDAS')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSContasPagarVencidas."FORNECEDOR"'
        KeepTogether = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDashDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Fornecedor..:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'VALOR'
          DataSet = DSContasPagarVencidas
          DataSetName = 'DSContasPagarVencidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDashDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[DSContasPagarVencidas."VALOR"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 34.015770000000000000
          Width = 79.370068980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 52.913420000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692913390000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contas..:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DSContasPagarVencidas."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor ..:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = DSContasPagarVencidas
        DataSetName = 'DSContasPagarVencidas'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PARCELA'
          DataSet = DSContasPagarVencidas
          DataSetName = 'DSContasPagarVencidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagarVencidas."PARCELA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = DSContasPagarVencidas
          DataSetName = 'DSContasPagarVencidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagarVencidas."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'EMISSAO'
          DataSet = DSContasPagarVencidas
          DataSetName = 'DSContasPagarVencidas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasPagarVencidas."EMISSAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = DSContasPagarVencidas
          DataSetName = 'DSContasPagarVencidas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasPagarVencidas."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = DSContasPagarVencidas
          DataSetName = 'DSContasPagarVencidas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSContasPagarVencidas."VALOR"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149623390000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSContasPagarVencidas."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 52.913420000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total.....:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Contas..:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object FDQContasPagarEntrePeriodo: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT A.*, B.NOMEFANTASIA FROM CONTAPAGAR AS A '
      'JOIN FORNECEDOR AS B ON A.FORNECEDOR = B.CODIGO')
    Left = 112
    Top = 760
    object IntegerField9: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField10: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object StringField34: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object StringField35: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object DateField4: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object DateField5: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FloatField5: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object IntegerField11: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object StringField36: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object StringField37: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object StringField38: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object StringField39: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DSContasPagarEntrePeriodo: TfrxDBDataset
    UserName = 'DSContasPagarEntrePeriodo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FORNECEDOR=FORNECEDOR'
      'PARCELA=PARCELA'
      'DOCUMENTO=DOCUMENTO'
      'EMISSAO=EMISSAO'
      'VENCIMENTO=VENCIMENTO'
      'VALOR=VALOR'
      'FORMAPAGTO=FORMAPAGTO'
      'OBSERVACAO=OBSERVACAO'
      'OBSERVACAO1=OBSERVACAO1'
      'OBSERVACAOSISTEMA=OBSERVACAOSISTEMA'
      'NOMEFANTASIA=NOMEFANTASIA')
    DataSet = FDQContasPagarEntrePeriodo
    BCDToCurrency = False
    Left = 328
    Top = 760
  end
  object ReportContasPagarEntrePeriodo: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43906.596231794000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 760
    Datasets = <
      item
        DataSet = DSContasPagarEntrePeriodo
        DataSetName = 'DSContasPagarEntrePeriodo'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CONTAS A PAGAR '
            'COM [TipoPesquisa] NO PERIODO DE'
            '[DataInicial] A [DataFinal]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSContasPagarEntrePeriodo."FORNECEDOR"'
        KeepTogether = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDashDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Fornecedor..:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'VALOR'
          DataSet = DSContasPagarEntrePeriodo
          DataSetName = 'DSContasPagarEntrePeriodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDashDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[DSContasPagarEntrePeriodo."VALOR"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 34.015770000000000000
          Width = 79.370068980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 52.913420000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692913390000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contas..:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DSContasPagarEntrePeriodo."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor ..:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = DSContasPagarEntrePeriodo
        DataSetName = 'DSContasPagarEntrePeriodo'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PARCELA'
          DataSet = DSContasPagarEntrePeriodo
          DataSetName = 'DSContasPagarEntrePeriodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagarEntrePeriodo."PARCELA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = DSContasPagarEntrePeriodo
          DataSetName = 'DSContasPagarEntrePeriodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagarEntrePeriodo."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'EMISSAO'
          DataSet = DSContasPagarEntrePeriodo
          DataSetName = 'DSContasPagarEntrePeriodo'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasPagarEntrePeriodo."EMISSAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = DSContasPagarEntrePeriodo
          DataSetName = 'DSContasPagarEntrePeriodo'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSContasPagarEntrePeriodo."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = DSContasPagarEntrePeriodo
          DataSetName = 'DSContasPagarEntrePeriodo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSContasPagarEntrePeriodo."VALOR"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149623390000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSContasPagarEntrePeriodo."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 52.913420000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total.....:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Contas..:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 687.874460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object ReportContasPagasEntrePeriodo: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43906.816230740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 856
    Datasets = <
      item
        DataSet = DSContasPagasEntrePeriodo
        DataSetName = 'DSContasPagasEntrePeriodo'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CONTAS PAGAS'
            'COM [TipoPesquisa] NO PERIODO DE'
            '[DataInicial] A [DataFinal]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 623.622450000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'DSContasPagasEntrePeriodo."FORNECEDOR"'
        KeepTogether = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 11.338590000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Fornecedor.:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 11.338590000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = DSContasPagasEntrePeriodo
          DataSetName = 'DSContasPagasEntrePeriodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[DSContasPagasEntrePeriodo."FORNECEDOR"] - [DSContasPagasEntrePe' +
              'riodo."NOMEFANTASIA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 45.354360000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 45.354360000000000000
          Width = 79.370068980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 45.354360000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 45.354360000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pagamento')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 45.354360000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Original')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 68.031540000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149623390000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 34.015770000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Pago........:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Original...:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 11.338590000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade..:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSContasPagasEntrePeriodo."VALORORIGINAL">,MasterData1)]')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSContasPagasEntrePeriodo."VALORPAGO">,MasterData1)]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        DataSet = DSContasPagasEntrePeriodo
        DataSetName = 'DSContasPagasEntrePeriodo'
        RowCount = 0
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PARCELA'
          DataSet = DSContasPagasEntrePeriodo
          DataSetName = 'DSContasPagasEntrePeriodo'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagasEntrePeriodo."PARCELA"]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = DSContasPagasEntrePeriodo
          DataSetName = 'DSContasPagasEntrePeriodo'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagasEntrePeriodo."DOCUMENTO"]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'EMISSAO'
          DataSet = DSContasPagasEntrePeriodo
          DataSetName = 'DSContasPagasEntrePeriodo'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagasEntrePeriodo."EMISSAO"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = DSContasPagasEntrePeriodo
          DataSetName = 'DSContasPagasEntrePeriodo'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagasEntrePeriodo."VENCIMENTO"]')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'DATAPAGAMENTO'
          DataSet = DSContasPagasEntrePeriodo
          DataSetName = 'DSContasPagasEntrePeriodo'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagasEntrePeriodo."DATAPAGAMENTO"]')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALORORIGINAL'
          DataSet = DSContasPagasEntrePeriodo
          DataSetName = 'DSContasPagasEntrePeriodo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagasEntrePeriodo."VALORORIGINAL"]')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'VALORPAGO'
          DataSet = DSContasPagasEntrePeriodo
          DataSetName = 'DSContasPagasEntrePeriodo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasPagasEntrePeriodo."VALORPAGO"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 120.944960000000000000
        Top = 442.205010000000000000
        Width = 718.110700000000000000
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 11.338590000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 41.574830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total Original.:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 15.118120000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Contas..:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 68.031540000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total Pago......:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSContasPagasEntrePeriodo."VALORORIGINAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<DSContasPagasEntrePeriodo."VALORPAGO">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object DSContasPagasEntrePeriodo: TfrxDBDataset
    UserName = 'DSContasPagasEntrePeriodo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FORNECEDOR=FORNECEDOR'
      'PARCELA=PARCELA'
      'DOCUMENTO=DOCUMENTO'
      'EMISSAO=EMISSAO'
      'VENCIMENTO=VENCIMENTO'
      'DATAPAGAMENTO=DATAPAGAMENTO'
      'VALORORIGINAL=VALORORIGINAL'
      'FORMAPAGTO=FORMAPAGTO'
      'OBSERVACAO=OBSERVACAO'
      'OBSERVACAO1=OBSERVACAO1'
      'OBSERVACAOSISTEMA=OBSERVACAOSISTEMA'
      'CAIXA=CAIXA'
      'NOMEFANTASIA=NOMEFANTASIA'
      'VALORPAGO=VALORPAGO')
    DataSet = FDQContasPagasEntrePeriodo
    BCDToCurrency = False
    Left = 328
    Top = 856
  end
  object FDQContasPagasEntrePeriodo: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select a.*, b.nomefantasia from contapaga as A'
      'join fornecedor as B on a.fornecedor = b.codigo')
    Left = 112
    Top = 856
    object FDQContasPagasEntrePeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContasPagasEntrePeriodoFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDQContasPagasEntrePeriodoPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContasPagasEntrePeriodoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContasPagasEntrePeriodoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContasPagasEntrePeriodoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContasPagasEntrePeriodoDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = 'DATAPAGAMENTO'
    end
    object FDQContasPagasEntrePeriodoVALORORIGINAL: TFloatField
      FieldName = 'VALORORIGINAL'
      Origin = 'VALORORIGINAL'
    end
    object FDQContasPagasEntrePeriodoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContasPagasEntrePeriodoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContasPagasEntrePeriodoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContasPagasEntrePeriodoOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQContasPagasEntrePeriodoCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
    end
    object FDQContasPagasEntrePeriodoNOMEFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQContasPagasEntrePeriodoVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      Origin = 'VALORPAGO'
    end
  end
  object ReportContasExcluidas: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43857.577414930600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 904
    Datasets = <
      item
        DataSet = DSContasExcluidas
        DataSetName = 'DSContasExcluidas'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CONTAS EXCLUIDAS'
            'NO PERIODO DE'
            '[DataInicial] A [DataFinal]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 415.748300000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        DataSet = DSContasExcluidas
        DataSetName = 'DSContasExcluidas'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataSet = DSContasExcluidas
          DataSetName = 'DSContasExcluidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasExcluidas."NOME"][DSContasExcluidas."NOMEFANTASIA"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'PARCELA'
          DataSet = DSContasExcluidas
          DataSetName = 'DSContasExcluidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasExcluidas."PARCELA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = DSContasExcluidas
          DataSetName = 'DSContasExcluidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasExcluidas."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DATAEXCLUSAO'
          DataSet = DSContasExcluidas
          DataSetName = 'DSContasExcluidas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasExcluidas."DATAEXCLUSAO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = DSContasExcluidas
          DataSetName = 'DSContasExcluidas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSContasExcluidas."VALOR"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913371180000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Contas.:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 34.015770000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 11.338590000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente / Fornecedor')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 11.338590000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Exclus'#227'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
    end
  end
  object DSContasExcluidas: TfrxDBDataset
    UserName = 'DSContasExcluidas'
    CloseDataSource = False
    DataSet = FDQContasExcluidas
    BCDToCurrency = False
    Left = 328
    Top = 904
  end
  object FDQContasExcluidas: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select a.*, b.nome, c.nomefantasia from contaexcluida as a'
      'left join cliente as b on a.cliente = b.codigo'
      'left join fornecedor as c on a.fornecedor = c.codigo')
    Left = 112
    Top = 904
    object FDQContasExcluidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContasExcluidasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQContasExcluidasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDQContasExcluidasPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContasExcluidasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContasExcluidasEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContasExcluidasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContasExcluidasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object FDQContasExcluidasFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContasExcluidasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContasExcluidasOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContasExcluidasOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQContasExcluidasDATAEXCLUSAO: TSQLTimeStampField
      FieldName = 'DATAEXCLUSAO'
      Origin = 'DATAEXCLUSAO'
    end
    object FDQContasExcluidasNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQContasExcluidasNOMEFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DSFichaCliente: TfrxDBDataset
    UserName = 'DSFichaCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'CIDADE=CIDADE'
      'TELEFONE=TELEFONE'
      'CELULAR=CELULAR'
      'CPF=CPF'
      'RG=RG'
      'EMAIL=EMAIL'
      'QUEIXA=QUEIXA'
      'PROFISSAO=PROFISSAO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'STATUS=STATUS'
      'DATANASCIMENTO=DATANASCIMENTO'
      'OBSERVACAO=OBSERVACAO'
      'OBSERVACAO1=OBSERVACAO1'
      'OBSERVACAOSISTEMA=OBSERVACAOSISTEMA'
      'OUTROSANTPAT=OUTROSANTPAT'
      'ESTADOEMOCIONAL=ESTADOEMOCIONAL'
      'ANTPATCARDIACO=ANTPATCARDIACO'
      'ANTPATHIPERTENSAO=ANTPATHIPERTENSAO'
      'ANTPATDIABETICO=ANTPATDIABETICO'
      'ANTPATGESTANTE=ANTPATGESTANTE'
      'ANTPATCANCER=ANTPATCANCER'
      'ANTPATEXPOSICAOSOLAR=ANTPATEXPOSICAOSOLAR'
      'ANTPATHIPERTIRIOIDISMO=ANTPATHIPERTIRIOIDISMO'
      'ANTPATHIPOTIREOIDISMO=ANTPATHIPOTIREOIDISMO'
      'ANTPATANTICONCEPCIONAL=ANTPATANTICONCEPCIONAL'
      'ANTPATOVARIOPOLICISTICO=ANTPATOVARIOPOLICISTICO'
      'ANTPATLENTECONTATO=ANTPATLENTECONTATO'
      'ANTPATIMPLANTEDENTARIO=ANTPATIMPLANTEDENTARIO'
      'ANTPATAPARELHOODONTOLOGICO=ANTPATAPARELHOODONTOLOGICO'
      'ANTPATCIRURGIARECENTE=ANTPATCIRURGIARECENTE'
      'ANTPATPREENCHIMENTO=ANTPATPREENCHIMENTO'
      'ANTPATDIETABALANCEADA=ANTPATDIETABALANCEADA'
      'ANTPATFUMA=ANTPATFUMA'
      'ANTPATBOTOX=ANTPATBOTOX'
      'ANTALERGICOSCOSMETICOS=ANTALERGICOSCOSMETICOS'
      'ANTALERGICOSMAQUIAGEM=ANTALERGICOSMAQUIAGEM'
      'ANTALERGICOSALIMENTACAO=ANTALERGICOSALIMENTACAO'
      'OUTROSANTALERGICOS=OUTROSANTALERGICOS'
      'TIPOPELENORMAL=TIPOPELENORMAL'
      'TIPOPELEMISTA=TIPOPELEMISTA'
      'TIPOPELESECA=TIPOPELESECA'
      'TIPOPELEOLEOSA=TIPOPELEOLEOSA'
      'TIPOPELEACNEICA=TIPOPELEACNEICA'
      'INTTRATRUGASCONTORNOOLHOS=INTTRATRUGASCONTORNOOLHOS'
      'INTTRATOLHEIRAS=INTTRATOLHEIRAS'
      'INTTRATVASINHOS=INTTRATVASINHOS'
      'INTTRATSARDAS=INTTRATSARDAS'
      'INTTRATVERRUGAS=INTTRATVERRUGAS'
      'INTTRATEXCESSOOLEOSIDADE=INTTRATEXCESSOOLEOSIDADE'
      'INTTRATPAPADA=INTTRATPAPADA'
      'INTTRATRESSECAMENTOPELE=INTTRATRESSECAMENTOPELE'
      'INTTRATFLACIDEZ=INTTRATFLACIDEZ'
      'INTTRATPESCOCOCOLO=INTTRATPESCOCOCOLO'
      'INTTRATRUGASTESTA=INTTRATRUGASTESTA'
      'INTTRATMANCHAS=INTTRATMANCHAS'
      'TONUSMUSCULARDIMINUIDO=TONUSMUSCULARDIMINUIDO'
      'TONUSMUSCULARNORMAL=TONUSMUSCULARNORMAL'
      'TRATAMENTOESTETICOANT=TRATAMENTOESTETICOANT'
      'HIGIENEFACIALUMAADUASVEZES=HIGIENEFACIALUMAADUASVEZES'
      'HIGIENEFACIALTRESOUMAISVEZES=HIGIENEFACIALTRESOUMAISVEZES'
      'PRODUTOSHIGIENEFACIAL=PRODUTOSHIGIENEFACIAL'
      'MAQUIAGEMPO=MAQUIAGEMPO'
      'MAQUIAGEMPOCOMPACTO=MAQUIAGEMPOCOMPACTO'
      'MAQUIAGEMBASE=MAQUIAGEMBASE'
      'PROTETORSOLAR=PROTETORSOLAR'
      'HIDRATANTENOTURNO=HIDRATANTENOTURNO'
      'HIDRATANTEDIURNO=HIDRATANTEDIURNO'
      'DATACADASTRO=DATACADASTRO'
      'IDADE=IDADE')
    DataSet = FDQFichaCliente
    BCDToCurrency = False
    Left = 328
    Top = 952
  end
  object ReportFichaCliente: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43855.907253449100000000
    ReportOptions.LastChange = 43908.580956655100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 952
    Datasets = <
      item
        DataSet = DSFichaCliente
        DataSetName = 'DSFichaCliente'
      end>
    Variables = <
      item
        Name = ' Datas'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = Null
      end
      item
        Name = 'DataFinal'
        Value = Null
      end
      item
        Name = ' Totalizadores'
        Value = Null
      end
      item
        Name = 'TotalRegistros'
        Value = Null
      end
      item
        Name = 'ValorTotal'
        Value = Null
      end
      item
        Name = 'ValorTotalDebito'
        Value = Null
      end
      item
        Name = 'ValorTotalCredito'
        Value = Null
      end
      item
        Name = ' Diversos'
        Value = Null
      end
      item
        Name = 'TipoPesquisa'
        Value = Null
      end
      item
        Name = 'OrdemPesquisa'
        Value = Null
      end
      item
        Name = 'Status'
        Value = Null
      end
      item
        Name = 'Idade'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDash
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 1160.315710000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 79.369988430000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AAB Software')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baLeft
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.369988430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line8: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 170.079094090000000000
          Top = 7.559060000000000000
          Width = 548.031605910000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'DSFichaCliente."CODIGO"'
        KeepTogether = True
        StartNewPage = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente.......:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 49.133890000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."CODIGO"] - [DSFichaCliente."NOME"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 26.456710000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Cadastro..:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."DATACADASTRO"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status.:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."STATUS"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 687.874496610000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 706.772110000000000000
          Height = 102.047310000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 147.401670000000000000
          Width = 706.772110000000000000
          Height = 211.653680000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 385.512060000000000000
          Width = 706.772110000000000000
          Height = 294.803340000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Area De Interesse De Tratamento')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 128.504020000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Antecedentes Patologicos e Alergicos')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 366.614410000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Outras Informa'#231#245'es')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 49.133890000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '([DSFichaCliente."INTTRATRUGASCONTORNOOLHOS"]) Rugas e contorno ' +
              'dos olhos')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATCARDIACO"]) Cardiaco')
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 71.811070000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."INTTRATOLHEIRAS"]) Olheiras')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."INTTRATVASINHOS"]) Vasinhos')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."INTTRATSARDAS"]) Sardas')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."INTTRATVERRUGAS"]) Verrugas')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 98.267780000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '([DSFichaCliente."INTTRATEXCESSOOLEOSIDADE"]) Excesso de Oleosid' +
              'ade')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."INTTRATPAPADA"]) Papada')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 71.811070000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '([DSFichaCliente."INTTRATRESSECAMENTOPELE"]) Ressecamento da pel' +
              'e')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."INTTRATFLACIDEZ"]) Flacidez')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."INTTRATPESCOCOCOLO"]) Pesco'#231'o/Colo')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."INTTRATRUGASTESTA"]) Rugas testa')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."INTTRATMANCHAS"]) Manchas')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATHIPERTENSAO"]) Hipertens'#227'o')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 219.212740000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATDIABETICO"]) Diabetico')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATBOTOX"]) Botox')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 249.448980000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATGESTANTE"]) Gestante')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 158.740260000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATCANCER"]) Cancer')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 249.448980000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '([DSFichaCliente."ANTPATEXPOSICAOSOLAR"]) Excesso de exposi'#231#227'o s' +
              'olar')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATFUMA"]) Fuma')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 188.976500000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATHIPERTIRIOIDISMO"]) Hipertirioidismo')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 219.212740000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATHIPOTIREOIDISMO"]) Hipotireoidismo'
            ' ')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 249.448980000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '([DSFichaCliente."ANTPATANTICONCEPCIONAL"]) Toma Anticoncepciona' +
              'l')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 219.212740000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATDIETABALANCEADA"]) Dieta Balanceada')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 219.212740000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATOVARIOPOLICISTICO"]) Ovario Policistico')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 158.740260000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATLENTECONTATO"]) Lente de contato')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATIMPLANTEDENTARIO"]) Implante dentario')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 249.448980000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATPREENCHIMENTO"]) Preenchimento')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '([DSFichaCliente."ANTPATAPARELHOODONTOLOGICO"]) Aparelho odontol' +
              'ogico')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTPATCIRURGIARECENTE"]) Cirurgia recente')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 306.141930000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTALERGICOSCOSMETICOS"]) Cosmetico')
          ParentFont = False
          Formats = <
            item
              FormatStr = '_,x'
              Kind = fkBoolean
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 306.141930000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."ANTALERGICOSMAQUIAGEM"]) Maquiagem   ')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 306.141930000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ' ([DSFichaCliente."ANTALERGICOSALIMENTACAO"]) Alimenta'#231'ao    ')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 306.141930000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '<b>Outros:</b> [DSFichaCliente."OUTROSANTALERGICOS"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 279.685220000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '<b>Outros.:</b> [DSFichaCliente."OUTROSANTPAT"] ')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 400.630180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipos De Pele.....:')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 400.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."TIPOPELENORMAL"]) Normal')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 400.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."TIPOPELEMISTA"]) Mista')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 400.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."TIPOPELESECA"]) Seca')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 400.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."TIPOPELEOLEOSA"]) Oleosa')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 400.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."TIPOPELEACNEICA"]) Acneica')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 434.645950000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tonus Muscular.:')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 434.645950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."TONUSMUSCULARNORMAL"]) Normal')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 434.645950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."TONUSMUSCULARDIMINUIDO"]) Diminuido')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 468.661720000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Maquiagem.........:')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 468.661720000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."MAQUIAGEMPO"]) P'#243)
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 468.661720000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."MAQUIAGEMPOCOMPACTO"]) P'#243' Compacto')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 468.661720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([DSFichaCliente."MAQUIAGEMBASE"]) Base')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 498.897960000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Higiene Facial.....:')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 498.897960000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '([DSFichaCliente."HIGIENEFACIALUMAADUASVEZES"]) Lava de 1 a 2 ve' +
              'zes ao dia')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 498.897960000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '_,x'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '([DSFichaCliente."HIGIENEFACIALTRESOUMAISVEZES"]) Lava 3 ou mais' +
              ' vezes ao dia')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 559.370440000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tratamentos Esteticos Anteriores.:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 559.370440000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."TRATAMENTOESTETICOANT"]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 525.354670000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produtos Utilizados..:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 525.354670000000000000
          Width = 540.472790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."PRODUTOSHIGIENEFACIAL"]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 589.606680000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Protetor Solar..:')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 589.606680000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."PROTETORSOLAR"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 619.842920000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hidratante Diurno...:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 619.842920000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."HIDRATANTEDIURNO"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 646.299630000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hidratante Noturno.:')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 646.299630000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."HIDRATANTENOTURNO"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 332.598640000000000000
          Width = 672.756340000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '<b>Estado Emocional.:</b> [DSFichaCliente."ESTADOEMOCIONAL"]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Queixa.:')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."QUEIXA"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 158.740260000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = DSFichaCliente
        DataSetName = 'DSFichaCliente'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o..:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 22.677180000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP...:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade.......:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."ENDERECO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 22.677180000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."BAIRRO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."CEP"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 22.677180000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."CIDADE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone....:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 45.354360000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."TELEFONE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 45.354360000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Celular..:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 45.354360000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'CELULAR'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."CELULAR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 68.031540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF............:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 68.031540000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."CPF"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 68.031540000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RG.........:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 68.031540000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'RG'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."RG"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro........:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 94.488250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail........:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 94.488250000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."EMAIL"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 120.944960000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es.:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 120.944960000000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."OBSERVACAO"] [DSFichaCliente."OBSERVACAO1"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 143.622140000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 45.354360000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Nascimento.:')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 45.354360000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'DATANASCIMENTO'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."DATANASCIMENTO"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 68.031540000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Idade..:')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 68.031540000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'IDADE'
          DataSet = DSFichaCliente
          DataSetName = 'DSFichaCliente'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFichaCliente."IDADE"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590556060000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 219.212598430000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 498.898101574803000000
          Top = 15.118120000000000000
          Width = 219.212598425197000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHA DO CLIENTE ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 30.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pg.:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Top = 60.472436060000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object FDQFichaCliente: TFDQuery
    Active = True
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from cliente')
    Left = 113
    Top = 952
    object IntegerField12: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField40: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object StringField41: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object StringField42: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object StringField43: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object StringField44: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 25
    end
    object StringField45: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 18
    end
    object StringField46: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object StringField47: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object StringField48: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 15
    end
    object StringField49: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object StringField50: TStringField
      FieldName = 'QUEIXA'
      Origin = 'QUEIXA'
      Size = 50
    end
    object StringField51: TStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 30
    end
    object StringField52: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object StringField53: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object DateField6: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
    object StringField54: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object StringField55: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object StringField56: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object StringField57: TStringField
      FieldName = 'OUTROSANTPAT'
      Origin = 'OUTROSANTPAT'
      Size = 100
    end
    object StringField58: TStringField
      FieldName = 'ESTADOEMOCIONAL'
      Origin = 'ESTADOEMOCIONAL'
      Size = 50
    end
    object BooleanField46: TBooleanField
      FieldName = 'ANTPATCARDIACO'
      Origin = 'ANTPATCARDIACO'
    end
    object BooleanField47: TBooleanField
      FieldName = 'ANTPATHIPERTENSAO'
      Origin = 'ANTPATHIPERTENSAO'
    end
    object BooleanField48: TBooleanField
      FieldName = 'ANTPATDIABETICO'
      Origin = 'ANTPATDIABETICO'
    end
    object BooleanField49: TBooleanField
      FieldName = 'ANTPATGESTANTE'
      Origin = 'ANTPATGESTANTE'
    end
    object BooleanField50: TBooleanField
      FieldName = 'ANTPATCANCER'
      Origin = 'ANTPATCANCER'
    end
    object BooleanField51: TBooleanField
      FieldName = 'ANTPATEXPOSICAOSOLAR'
      Origin = 'ANTPATEXPOSICAOSOLAR'
    end
    object BooleanField52: TBooleanField
      FieldName = 'ANTPATHIPERTIRIOIDISMO'
      Origin = 'ANTPATHIPERTIRIOIDISMO'
    end
    object BooleanField53: TBooleanField
      FieldName = 'ANTPATHIPOTIREOIDISMO'
      Origin = 'ANTPATHIPOTIREOIDISMO'
    end
    object BooleanField54: TBooleanField
      FieldName = 'ANTPATANTICONCEPCIONAL'
      Origin = 'ANTPATANTICONCEPCIONAL'
    end
    object BooleanField55: TBooleanField
      FieldName = 'ANTPATOVARIOPOLICISTICO'
      Origin = 'ANTPATOVARIOPOLICISTICO'
    end
    object BooleanField56: TBooleanField
      FieldName = 'ANTPATLENTECONTATO'
      Origin = 'ANTPATLENTECONTATO'
    end
    object BooleanField57: TBooleanField
      FieldName = 'ANTPATIMPLANTEDENTARIO'
      Origin = 'ANTPATIMPLANTEDENTARIO'
    end
    object BooleanField58: TBooleanField
      FieldName = 'ANTPATAPARELHOODONTOLOGICO'
      Origin = 'ANTPATAPARELHOODONTOLOGICO'
    end
    object BooleanField59: TBooleanField
      FieldName = 'ANTPATCIRURGIARECENTE'
      Origin = 'ANTPATCIRURGIARECENTE'
    end
    object BooleanField60: TBooleanField
      FieldName = 'ANTPATPREENCHIMENTO'
      Origin = 'ANTPATPREENCHIMENTO'
    end
    object BooleanField61: TBooleanField
      FieldName = 'ANTPATDIETABALANCEADA'
      Origin = 'ANTPATDIETABALANCEADA'
    end
    object BooleanField62: TBooleanField
      FieldName = 'ANTPATFUMA'
      Origin = 'ANTPATFUMA'
    end
    object BooleanField63: TBooleanField
      FieldName = 'ANTPATBOTOX'
      Origin = 'ANTPATBOTOX'
    end
    object BooleanField64: TBooleanField
      FieldName = 'ANTALERGICOSCOSMETICOS'
      Origin = 'ANTALERGICOSCOSMETICOS'
    end
    object BooleanField65: TBooleanField
      FieldName = 'ANTALERGICOSMAQUIAGEM'
      Origin = 'ANTALERGICOSMAQUIAGEM'
    end
    object BooleanField66: TBooleanField
      FieldName = 'ANTALERGICOSALIMENTACAO'
      Origin = 'ANTALERGICOSALIMENTACAO'
    end
    object StringField59: TStringField
      FieldName = 'OUTROSANTALERGICOS'
      Origin = 'OUTROSANTALERGICOS'
      Size = 100
    end
    object BooleanField67: TBooleanField
      FieldName = 'TIPOPELENORMAL'
      Origin = 'TIPOPELENORMAL'
    end
    object BooleanField68: TBooleanField
      FieldName = 'TIPOPELEMISTA'
      Origin = 'TIPOPELEMISTA'
    end
    object BooleanField69: TBooleanField
      FieldName = 'TIPOPELESECA'
      Origin = 'TIPOPELESECA'
    end
    object BooleanField70: TBooleanField
      FieldName = 'TIPOPELEOLEOSA'
      Origin = 'TIPOPELEOLEOSA'
    end
    object BooleanField71: TBooleanField
      FieldName = 'TIPOPELEACNEICA'
      Origin = 'TIPOPELEACNEICA'
    end
    object BooleanField72: TBooleanField
      FieldName = 'INTTRATRUGASCONTORNOOLHOS'
      Origin = 'INTTRATRUGASCONTORNOOLHOS'
    end
    object BooleanField73: TBooleanField
      FieldName = 'INTTRATOLHEIRAS'
      Origin = 'INTTRATOLHEIRAS'
    end
    object BooleanField74: TBooleanField
      FieldName = 'INTTRATVASINHOS'
      Origin = 'INTTRATVASINHOS'
    end
    object BooleanField75: TBooleanField
      FieldName = 'INTTRATSARDAS'
      Origin = 'INTTRATSARDAS'
    end
    object BooleanField76: TBooleanField
      FieldName = 'INTTRATVERRUGAS'
      Origin = 'INTTRATVERRUGAS'
    end
    object BooleanField77: TBooleanField
      FieldName = 'INTTRATEXCESSOOLEOSIDADE'
      Origin = 'INTTRATEXCESSOOLEOSIDADE'
    end
    object BooleanField78: TBooleanField
      FieldName = 'INTTRATPAPADA'
      Origin = 'INTTRATPAPADA'
    end
    object BooleanField79: TBooleanField
      FieldName = 'INTTRATRESSECAMENTOPELE'
      Origin = 'INTTRATRESSECAMENTOPELE'
    end
    object BooleanField80: TBooleanField
      FieldName = 'INTTRATFLACIDEZ'
      Origin = 'INTTRATFLACIDEZ'
    end
    object BooleanField81: TBooleanField
      FieldName = 'INTTRATPESCOCOCOLO'
      Origin = 'INTTRATPESCOCOCOLO'
    end
    object BooleanField82: TBooleanField
      FieldName = 'INTTRATRUGASTESTA'
      Origin = 'INTTRATRUGASTESTA'
    end
    object BooleanField83: TBooleanField
      FieldName = 'INTTRATMANCHAS'
      Origin = 'INTTRATMANCHAS'
    end
    object BooleanField84: TBooleanField
      FieldName = 'TONUSMUSCULARDIMINUIDO'
      Origin = 'TONUSMUSCULARDIMINUIDO'
    end
    object BooleanField85: TBooleanField
      FieldName = 'TONUSMUSCULARNORMAL'
      Origin = 'TONUSMUSCULARNORMAL'
    end
    object StringField60: TStringField
      FieldName = 'TRATAMENTOESTETICOANT'
      Origin = 'TRATAMENTOESTETICOANT'
      Size = 100
    end
    object BooleanField86: TBooleanField
      FieldName = 'HIGIENEFACIALUMAADUASVEZES'
      Origin = 'HIGIENEFACIALUMAADUASVEZES'
    end
    object BooleanField87: TBooleanField
      FieldName = 'HIGIENEFACIALTRESOUMAISVEZES'
      Origin = 'HIGIENEFACIALTRESOUMAISVEZES'
    end
    object StringField61: TStringField
      FieldName = 'PRODUTOSHIGIENEFACIAL'
      Origin = 'PRODUTOSHIGIENEFACIAL'
      Size = 100
    end
    object BooleanField88: TBooleanField
      FieldName = 'MAQUIAGEMPO'
      Origin = 'MAQUIAGEMPO'
    end
    object BooleanField89: TBooleanField
      FieldName = 'MAQUIAGEMPOCOMPACTO'
      Origin = 'MAQUIAGEMPOCOMPACTO'
    end
    object BooleanField90: TBooleanField
      FieldName = 'MAQUIAGEMBASE'
      Origin = 'MAQUIAGEMBASE'
    end
    object StringField62: TStringField
      FieldName = 'PROTETORSOLAR'
      Origin = 'PROTETORSOLAR'
      Size = 50
    end
    object StringField63: TStringField
      FieldName = 'HIDRATANTENOTURNO'
      Origin = 'HIDRATANTENOTURNO'
      Size = 50
    end
    object StringField64: TStringField
      FieldName = 'HIDRATANTEDIURNO'
      Origin = 'HIDRATANTEDIURNO'
      Size = 50
    end
    object DateField7: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object FDQFichaClienteIDADE: TStringField
      FieldKind = fkCalculated
      FieldName = 'IDADE'
      Calculated = True
    end
  end
end
