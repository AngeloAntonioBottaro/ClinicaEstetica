object DMImpressos: TDMImpressos
  OldCreateOrder = False
  Height = 340
  Width = 643
  object FDQCarne: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT A.*, B.NOME FROM CONTARECEBER AS A'
      'JOIN CLIENTE AS B ON A.CLIENTE = B.CODIGO')
    Left = 32
    Top = 32
    object FDQCarneCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCarneCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQCarnePARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQCarneDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQCarneEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQCarneVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQCarneVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object FDQCarneFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQCarneOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQCarneOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQCarneOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQCarneNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object FDMTCarne: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 32
    object FDMTCarneTOTALPARCELAS: TIntegerField
      FieldName = 'TOTALPARCELAS'
    end
  end
  object ImpressaoCarne: TfrxReport
    Version = '6.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43859.513320532400000000
    ReportOptions.LastChange = 43859.555181562500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 360
    Top = 32
    Datasets = <
      item
        DataSet = DSCarne
        DataSetName = 'DSCarne'
      end
      item
        DataSet = DSImpressaoCarne
        DataSetName = 'DSImpressaoCarne'
      end
      item
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
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        Condition = 'DSImpressaoCarne."PARCELA"'
        KeepTogether = True
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 287.244280000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = DSImpressaoCarne
        DataSetName = 'DSImpressaoCarne'
        RowCount = 0
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 30.236240000000000000
          Width = 154.960730000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 68.031540000000000000
          Width = 154.960730000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 143.622140000000000000
          Width = 154.960730000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 109.606370000000000000
          Width = 154.960730000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 234.330860000000000000
          Width = 162.519790000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 30.236240000000000000
          Width = 506.457020000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento.:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 45.354360000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela.......:')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 86.929190000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor...........:')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 120.944960000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Vencimento.:')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 241.889920000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura Responsavel')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 105.826840000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente.:[DSImpressaoCarne."NOME"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 7.559060000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento.: [DSImpressaoCarne."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = DSImpressaoCarne
          DataSetName = 'DSImpressaoCarne'
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
            '[DSImpressaoCarne."VALOR"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 45.354360000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = DSImpressaoCarne
          DataSetName = 'DSImpressaoCarne'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSImpressaoCarne."PARCELA"] / [DSCarne."TOTALPARCELAS"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 120.944960000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = DSImpressaoCarne
          DataSetName = 'DSImpressaoCarne'
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
            '[DSImpressaoCarne."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 37.795300000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 68.031540000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'EMISSAO'
          DataSet = DSImpressaoCarne
          DataSetName = 'DSImpressaoCarne'
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
            '[DSImpressaoCarne."EMISSAO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 37.795300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 68.031540000000000000
          Width = 83.149616060000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = DSImpressaoCarne
          DataSetName = 'DSImpressaoCarne'
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
            '[DSImpressaoCarne."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 37.795300000000000000
          Width = 120.944906300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 68.031540000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = DSImpressaoCarne
          DataSetName = 'DSImpressaoCarne'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSImpressaoCarne."VALOR"] ')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 238.110390000000000000
          Width = 396.850650000000000000
          Height = 41.574830000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[<DSParametros."OBSERVACAOCARNE">][<DSParametros."OBSERVACAOCARN' +
              'E1">]')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 238.110390000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#227'o..:')
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 234.330860000000000000
          Width = 506.457020000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 90.708720000000000000
          Width = 506.457020000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 7.559060000000000000
          Height = 136.063080000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 30.236240000000000000
          Height = 60.472480000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 30.236240000000000000
          Height = 60.472480000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = DSImpressaoCarne
          DataSetName = 'DSImpressaoCarne'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DSImpressaoCarne."PARCELA"] / [DSCarne."TOTALPARCELAS"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 7.559060000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Empresa.: [DSParametros."NOMEEMPRESACARNE"]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 98.267780000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Pagamento')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 147.401670000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Pagamento')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 120.944960000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '___/___/_____')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 173.858380000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '___/___/_____')
          ParentFont = False
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 143.622140000000000000
          Width = 506.457020000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = DSImpressaoCarne
          DataSetName = 'DSImpressaoCarne'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DSImpressaoCarne."DOCUMENTO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baBottom
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = -3.779530000000000000
          Height = 291.023810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 3.779527560000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        object Line16: TfrxLineView
          Align = baBottom
          AllowVectorExport = True
          Top = 3.779527560000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795275590551200000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object DSImpressaoCarne: TfrxDBDataset
    UserName = 'DSImpressaoCarne'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 256
    Top = 32
  end
  object DSCarne: TfrxDBDataset
    UserName = 'DSCarne'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 176
    Top = 32
  end
end
