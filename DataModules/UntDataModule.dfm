object DM: TDM
  OldCreateOrder = False
  Height = 1245
  Width = 983
  object FDConnection: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\Clinica Estetica\DADOS.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object FDQContadores: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from contadores')
    Left = 304
    Top = 24
  end
  object FDQAuxiliar: TFDQuery
    Connection = FDConnection
    Left = 632
    Top = 24
  end
  object FDQAtualizador: TFDQuery
    Connection = FDConnection
    Left = 456
    Top = 24
  end
  object FDQParametros: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from parametros')
    Left = 128
    Top = 24
    object FDQParametrosHASH: TStringField
      FieldName = 'HASH'
      Origin = '"HASH"'
      Size = 50
    end
    object FDQParametrosIMPRIMECARNE: TBooleanField
      FieldName = 'IMPRIMECARNE'
      Origin = 'IMPRIMECARNE'
    end
    object FDQParametrosMODELOIMPRESSAOCARNE: TStringField
      FieldName = 'MODELOIMPRESSAOCARNE'
      Origin = 'MODELOIMPRESSAOCARNE'
      Size = 2
    end
    object FDQParametrosNOMEEMPRESACARNE: TStringField
      FieldName = 'NOMEEMPRESACARNE'
      Origin = 'NOMEEMPRESACARNE'
      Size = 50
    end
    object FDQParametrosOBSERVACAOCARNE: TStringField
      FieldName = 'OBSERVACAOCARNE'
      Origin = 'OBSERVACAOCARNE'
      Size = 50
    end
    object FDQParametrosOBSERVACAOCARNE1: TStringField
      FieldName = 'OBSERVACAOCARNE1'
      Origin = 'OBSERVACAOCARNE1'
      Size = 50
    end
    object FDQParametrosCONTROLARESTOQUEMANUAL: TBooleanField
      FieldName = 'CONTROLARESTOQUEMANUAL'
      Origin = 'CONTROLARESTOQUEMANUAL'
    end
    object FDQParametrosBAIXAESTOQUEDOSERVICO: TBooleanField
      FieldName = 'BAIXAESTOQUEDOSERVICO'
      Origin = 'BAIXAESTOQUEDOSERVICO'
    end
    object FDQParametrosBAIXAESTOQUEDAVENDA: TBooleanField
      FieldName = 'BAIXAESTOQUEDAVENDA'
      Origin = 'BAIXAESTOQUEDAVENDA'
    end
    object FDQParametrosCODIGOARQUIVOLIBERACAO: TIntegerField
      FieldName = 'CODIGOARQUIVOLIBERACAO'
      Origin = 'CODIGOARQUIVOLIBERACAO'
    end
    object FDQParametrosNOMEEMPRESA: TStringField
      FieldName = 'NOMEEMPRESA'
      Origin = 'NOMEEMPRESA'
      Size = 50
    end
    object FDQParametrosCALCULARTROCORECEBIMENTO: TBooleanField
      FieldName = 'CALCULARTROCORECEBIMENTO'
      Origin = 'CALCULARTROCORECEBIMENTO'
    end
    object FDQParametrosCALCULARVALORPRODUTONOSERVICO: TBooleanField
      FieldName = 'CALCULARVALORPRODUTONOSERVICO'
      Origin = 'CALCULARVALORPRODUTONOSERVICO'
    end
  end
  object FDQConsulta: TFDQuery
    Connection = FDConnection
    Left = 544
    Top = 24
  end
  object FDMTParametros: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 216
    Top = 24
  end
  object Mensagem: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 384
    Top = 24
  end
  object FDQCliente: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from cliente')
    Left = 48
    Top = 144
    object FDQClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQClienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object FDQClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object FDQClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object FDQClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object FDQClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 18
    end
    object FDQClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object FDQClienteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object FDQClienteRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 15
    end
    object FDQClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDQClienteQUEIXA: TStringField
      FieldName = 'QUEIXA'
      Origin = 'QUEIXA'
      Size = 50
    end
    object FDQClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 30
    end
    object FDQClienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object FDQClienteSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQClienteDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
    object FDQClienteOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQClienteOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQClienteOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQClienteOUTROSANTPAT: TStringField
      FieldName = 'OUTROSANTPAT'
      Origin = 'OUTROSANTPAT'
      Size = 100
    end
    object FDQClienteESTADOEMOCIONAL: TStringField
      FieldName = 'ESTADOEMOCIONAL'
      Origin = 'ESTADOEMOCIONAL'
      Size = 50
    end
    object FDQClienteANTPATCARDIACO: TBooleanField
      FieldName = 'ANTPATCARDIACO'
      Origin = 'ANTPATCARDIACO'
    end
    object FDQClienteANTPATHIPERTENSAO: TBooleanField
      FieldName = 'ANTPATHIPERTENSAO'
      Origin = 'ANTPATHIPERTENSAO'
    end
    object FDQClienteANTPATDIABETICO: TBooleanField
      FieldName = 'ANTPATDIABETICO'
      Origin = 'ANTPATDIABETICO'
    end
    object FDQClienteANTPATGESTANTE: TBooleanField
      FieldName = 'ANTPATGESTANTE'
      Origin = 'ANTPATGESTANTE'
    end
    object FDQClienteANTPATCANCER: TBooleanField
      FieldName = 'ANTPATCANCER'
      Origin = 'ANTPATCANCER'
    end
    object FDQClienteANTPATEXPOSICAOSOLAR: TBooleanField
      FieldName = 'ANTPATEXPOSICAOSOLAR'
      Origin = 'ANTPATEXPOSICAOSOLAR'
    end
    object FDQClienteANTPATHIPERTIRIOIDISMO: TBooleanField
      FieldName = 'ANTPATHIPERTIRIOIDISMO'
      Origin = 'ANTPATHIPERTIRIOIDISMO'
    end
    object FDQClienteANTPATHIPOTIREOIDISMO: TBooleanField
      FieldName = 'ANTPATHIPOTIREOIDISMO'
      Origin = 'ANTPATHIPOTIREOIDISMO'
    end
    object FDQClienteANTPATANTICONCEPCIONAL: TBooleanField
      FieldName = 'ANTPATANTICONCEPCIONAL'
      Origin = 'ANTPATANTICONCEPCIONAL'
    end
    object FDQClienteANTPATOVARIOPOLICISTICO: TBooleanField
      FieldName = 'ANTPATOVARIOPOLICISTICO'
      Origin = 'ANTPATOVARIOPOLICISTICO'
    end
    object FDQClienteANTPATLENTECONTATO: TBooleanField
      FieldName = 'ANTPATLENTECONTATO'
      Origin = 'ANTPATLENTECONTATO'
    end
    object FDQClienteANTPATIMPLANTEDENTARIO: TBooleanField
      FieldName = 'ANTPATIMPLANTEDENTARIO'
      Origin = 'ANTPATIMPLANTEDENTARIO'
    end
    object FDQClienteANTPATAPARELHOODONTOLOGICO: TBooleanField
      FieldName = 'ANTPATAPARELHOODONTOLOGICO'
      Origin = 'ANTPATAPARELHOODONTOLOGICO'
    end
    object FDQClienteANTPATCIRURGIARECENTE: TBooleanField
      FieldName = 'ANTPATCIRURGIARECENTE'
      Origin = 'ANTPATCIRURGIARECENTE'
    end
    object FDQClienteANTPATPREENCHIMENTO: TBooleanField
      FieldName = 'ANTPATPREENCHIMENTO'
      Origin = 'ANTPATPREENCHIMENTO'
    end
    object FDQClienteANTPATDIETABALANCEADA: TBooleanField
      FieldName = 'ANTPATDIETABALANCEADA'
      Origin = 'ANTPATDIETABALANCEADA'
    end
    object FDQClienteANTPATFUMA: TBooleanField
      FieldName = 'ANTPATFUMA'
      Origin = 'ANTPATFUMA'
    end
    object FDQClienteANTPATBOTOX: TBooleanField
      FieldName = 'ANTPATBOTOX'
      Origin = 'ANTPATBOTOX'
    end
    object FDQClienteANTALERGICOSCOSMETICOS: TBooleanField
      FieldName = 'ANTALERGICOSCOSMETICOS'
      Origin = 'ANTALERGICOSCOSMETICOS'
    end
    object FDQClienteANTALERGICOSMAQUIAGEM: TBooleanField
      FieldName = 'ANTALERGICOSMAQUIAGEM'
      Origin = 'ANTALERGICOSMAQUIAGEM'
    end
    object FDQClienteANTALERGICOSALIMENTACAO: TBooleanField
      FieldName = 'ANTALERGICOSALIMENTACAO'
      Origin = 'ANTALERGICOSALIMENTACAO'
    end
    object FDQClienteOUTROSANTALERGICOS: TStringField
      FieldName = 'OUTROSANTALERGICOS'
      Origin = 'OUTROSANTALERGICOS'
      Size = 100
    end
    object FDQClienteTIPOPELENORMAL: TBooleanField
      FieldName = 'TIPOPELENORMAL'
      Origin = 'TIPOPELENORMAL'
    end
    object FDQClienteTIPOPELEMISTA: TBooleanField
      FieldName = 'TIPOPELEMISTA'
      Origin = 'TIPOPELEMISTA'
    end
    object FDQClienteTIPOPELESECA: TBooleanField
      FieldName = 'TIPOPELESECA'
      Origin = 'TIPOPELESECA'
    end
    object FDQClienteTIPOPELEOLEOSA: TBooleanField
      FieldName = 'TIPOPELEOLEOSA'
      Origin = 'TIPOPELEOLEOSA'
    end
    object FDQClienteTIPOPELEACNEICA: TBooleanField
      FieldName = 'TIPOPELEACNEICA'
      Origin = 'TIPOPELEACNEICA'
    end
    object FDQClienteINTTRATRUGASCONTORNOOLHOS: TBooleanField
      FieldName = 'INTTRATRUGASCONTORNOOLHOS'
      Origin = 'INTTRATRUGASCONTORNOOLHOS'
    end
    object FDQClienteINTTRATOLHEIRAS: TBooleanField
      FieldName = 'INTTRATOLHEIRAS'
      Origin = 'INTTRATOLHEIRAS'
    end
    object FDQClienteINTTRATVASINHOS: TBooleanField
      FieldName = 'INTTRATVASINHOS'
      Origin = 'INTTRATVASINHOS'
    end
    object FDQClienteINTTRATSARDAS: TBooleanField
      FieldName = 'INTTRATSARDAS'
      Origin = 'INTTRATSARDAS'
    end
    object FDQClienteINTTRATVERRUGAS: TBooleanField
      FieldName = 'INTTRATVERRUGAS'
      Origin = 'INTTRATVERRUGAS'
    end
    object FDQClienteINTTRATEXCESSOOLEOSIDADE: TBooleanField
      FieldName = 'INTTRATEXCESSOOLEOSIDADE'
      Origin = 'INTTRATEXCESSOOLEOSIDADE'
    end
    object FDQClienteINTTRATPAPADA: TBooleanField
      FieldName = 'INTTRATPAPADA'
      Origin = 'INTTRATPAPADA'
    end
    object FDQClienteINTTRATRESSECAMENTOPELE: TBooleanField
      FieldName = 'INTTRATRESSECAMENTOPELE'
      Origin = 'INTTRATRESSECAMENTOPELE'
    end
    object FDQClienteINTTRATFLACIDEZ: TBooleanField
      FieldName = 'INTTRATFLACIDEZ'
      Origin = 'INTTRATFLACIDEZ'
    end
    object FDQClienteINTTRATPESCOCOCOLO: TBooleanField
      FieldName = 'INTTRATPESCOCOCOLO'
      Origin = 'INTTRATPESCOCOCOLO'
    end
    object FDQClienteINTTRATRUGASTESTA: TBooleanField
      FieldName = 'INTTRATRUGASTESTA'
      Origin = 'INTTRATRUGASTESTA'
    end
    object FDQClienteINTTRATMANCHAS: TBooleanField
      FieldName = 'INTTRATMANCHAS'
      Origin = 'INTTRATMANCHAS'
    end
    object FDQClienteTONUSMUSCULARDIMINUIDO: TBooleanField
      FieldName = 'TONUSMUSCULARDIMINUIDO'
      Origin = 'TONUSMUSCULARDIMINUIDO'
    end
    object FDQClienteTONUSMUSCULARNORMAL: TBooleanField
      FieldName = 'TONUSMUSCULARNORMAL'
      Origin = 'TONUSMUSCULARNORMAL'
    end
    object FDQClienteTRATAMENTOESTETICOANT: TStringField
      FieldName = 'TRATAMENTOESTETICOANT'
      Origin = 'TRATAMENTOESTETICOANT'
      Size = 100
    end
    object FDQClienteHIGIENEFACIALUMAADUASVEZES: TBooleanField
      FieldName = 'HIGIENEFACIALUMAADUASVEZES'
      Origin = 'HIGIENEFACIALUMAADUASVEZES'
    end
    object FDQClienteHIGIENEFACIALTRESOUMAISVEZES: TBooleanField
      FieldName = 'HIGIENEFACIALTRESOUMAISVEZES'
      Origin = 'HIGIENEFACIALTRESOUMAISVEZES'
    end
    object FDQClientePRODUTOSHIGIENEFACIAL: TStringField
      FieldName = 'PRODUTOSHIGIENEFACIAL'
      Origin = 'PRODUTOSHIGIENEFACIAL'
      Size = 100
    end
    object FDQClienteMAQUIAGEMPO: TBooleanField
      FieldName = 'MAQUIAGEMPO'
      Origin = 'MAQUIAGEMPO'
    end
    object FDQClienteMAQUIAGEMPOCOMPACTO: TBooleanField
      FieldName = 'MAQUIAGEMPOCOMPACTO'
      Origin = 'MAQUIAGEMPOCOMPACTO'
    end
    object FDQClienteMAQUIAGEMBASE: TBooleanField
      FieldName = 'MAQUIAGEMBASE'
      Origin = 'MAQUIAGEMBASE'
    end
    object FDQClientePROTETORSOLAR: TStringField
      FieldName = 'PROTETORSOLAR'
      Origin = 'PROTETORSOLAR'
      Size = 50
    end
    object FDQClienteHIDRATANTENOTURNO: TStringField
      FieldName = 'HIDRATANTENOTURNO'
      Origin = 'HIDRATANTENOTURNO'
      Size = 50
    end
    object FDQClienteHIDRATANTEDIURNO: TStringField
      FieldName = 'HIDRATANTEDIURNO'
      Origin = 'HIDRATANTEDIURNO'
      Size = 50
    end
    object FDQClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
  end
  object FDQGrupo: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from grupo')
    Left = 48
    Top = 192
    object FDQGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
  end
  object FDQSubGrupo: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from subgrupo')
    Left = 48
    Top = 240
    object FDQSubGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQSubGrupoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object FDQSubGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
  end
  object DSCliente: TDataSource
    DataSet = FDQCliente
    Left = 160
    Top = 144
  end
  object DSGrupo: TDataSource
    DataSet = FDQGrupo
    Left = 160
    Top = 192
  end
  object DSSubGrupo: TDataSource
    DataSet = FDQSubGrupo
    Left = 160
    Top = 240
  end
  object FDMTCliente: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 272
    Top = 144
    object FDMTClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTClienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDMTClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object FDMTClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object FDMTClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object FDMTClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 25
    end
    object FDMTClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 18
    end
    object FDMTClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object FDMTClienteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object FDMTClienteRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 15
    end
    object FDMTClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDMTClienteQUEIXA: TStringField
      FieldName = 'QUEIXA'
      Origin = 'QUEIXA'
      Size = 50
    end
    object FDMTClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 30
    end
    object FDMTClienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object FDMTClienteSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDMTClienteDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
    object FDMTClienteOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTClienteOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTClienteOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDMTClienteOUTROSANTPAT: TStringField
      FieldName = 'OUTROSANTPAT'
      Origin = 'OUTROSANTPAT'
      Size = 100
    end
    object FDMTClienteESTADOEMOCIONAL: TStringField
      FieldName = 'ESTADOEMOCIONAL'
      Origin = 'ESTADOEMOCIONAL'
      Size = 50
    end
    object FDMTClienteANTPATCARDIACO: TBooleanField
      FieldName = 'ANTPATCARDIACO'
      Origin = 'ANTPATCARDIACO'
    end
    object FDMTClienteANTPATHIPERTENSAO: TBooleanField
      FieldName = 'ANTPATHIPERTENSAO'
      Origin = 'ANTPATHIPERTENSAO'
    end
    object FDMTClienteANTPATDIABETICO: TBooleanField
      FieldName = 'ANTPATDIABETICO'
      Origin = 'ANTPATDIABETICO'
    end
    object FDMTClienteANTPATGESTANTE: TBooleanField
      FieldName = 'ANTPATGESTANTE'
      Origin = 'ANTPATGESTANTE'
    end
    object FDMTClienteANTPATCANCER: TBooleanField
      FieldName = 'ANTPATCANCER'
      Origin = 'ANTPATCANCER'
    end
    object FDMTClienteANTPATEXPOSICAOSOLAR: TBooleanField
      FieldName = 'ANTPATEXPOSICAOSOLAR'
      Origin = 'ANTPATEXPOSICAOSOLAR'
    end
    object FDMTClienteANTPATHIPERTIRIOIDISMO: TBooleanField
      FieldName = 'ANTPATHIPERTIRIOIDISMO'
      Origin = 'ANTPATHIPERTIRIOIDISMO'
    end
    object FDMTClienteANTPATHIPOTIREOIDISMO: TBooleanField
      FieldName = 'ANTPATHIPOTIREOIDISMO'
      Origin = 'ANTPATHIPOTIREOIDISMO'
    end
    object FDMTClienteANTPATANTICONCEPCIONAL: TBooleanField
      FieldName = 'ANTPATANTICONCEPCIONAL'
      Origin = 'ANTPATANTICONCEPCIONAL'
    end
    object FDMTClienteANTPATOVARIOPOLICISTICO: TBooleanField
      FieldName = 'ANTPATOVARIOPOLICISTICO'
      Origin = 'ANTPATOVARIOPOLICISTICO'
    end
    object FDMTClienteANTPATLENTECONTATO: TBooleanField
      FieldName = 'ANTPATLENTECONTATO'
      Origin = 'ANTPATLENTECONTATO'
    end
    object FDMTClienteANTPATIMPLANTEDENTARIO: TBooleanField
      FieldName = 'ANTPATIMPLANTEDENTARIO'
      Origin = 'ANTPATIMPLANTEDENTARIO'
    end
    object FDMTClienteANTPATAPARELHOODONTOLOGICO: TBooleanField
      FieldName = 'ANTPATAPARELHOODONTOLOGICO'
      Origin = 'ANTPATAPARELHOODONTOLOGICO'
    end
    object FDMTClienteANTPATCIRURGIARECENTE: TBooleanField
      FieldName = 'ANTPATCIRURGIARECENTE'
      Origin = 'ANTPATCIRURGIARECENTE'
    end
    object FDMTClienteANTPATPREENCHIMENTO: TBooleanField
      FieldName = 'ANTPATPREENCHIMENTO'
      Origin = 'ANTPATPREENCHIMENTO'
    end
    object FDMTClienteANTPATDIETABALANCEADA: TBooleanField
      FieldName = 'ANTPATDIETABALANCEADA'
      Origin = 'ANTPATDIETABALANCEADA'
    end
    object FDMTClienteANTPATFUMA: TBooleanField
      FieldName = 'ANTPATFUMA'
      Origin = 'ANTPATFUMA'
    end
    object FDMTClienteANTPATBOTOX: TBooleanField
      FieldName = 'ANTPATBOTOX'
      Origin = 'ANTPATBOTOX'
    end
    object FDMTClienteANTALERGICOSCOSMETICOS: TBooleanField
      FieldName = 'ANTALERGICOSCOSMETICOS'
      Origin = 'ANTALERGICOSCOSMETICOS'
    end
    object FDMTClienteANTALERGICOSMAQUIAGEM: TBooleanField
      FieldName = 'ANTALERGICOSMAQUIAGEM'
      Origin = 'ANTALERGICOSMAQUIAGEM'
    end
    object FDMTClienteANTALERGICOSALIMENTACAO: TBooleanField
      FieldName = 'ANTALERGICOSALIMENTACAO'
      Origin = 'ANTALERGICOSALIMENTACAO'
    end
    object FDMTClienteOUTROSANTALERGICOS: TStringField
      FieldName = 'OUTROSANTALERGICOS'
      Origin = 'OUTROSANTALERGICOS'
      Size = 100
    end
    object FDMTClienteTIPOPELENORMAL: TBooleanField
      FieldName = 'TIPOPELENORMAL'
      Origin = 'TIPOPELENORMAL'
    end
    object FDMTClienteTIPOPELEMISTA: TBooleanField
      FieldName = 'TIPOPELEMISTA'
      Origin = 'TIPOPELEMISTA'
    end
    object FDMTClienteTIPOPELESECA: TBooleanField
      FieldName = 'TIPOPELESECA'
      Origin = 'TIPOPELESECA'
    end
    object FDMTClienteTIPOPELEOLEOSA: TBooleanField
      FieldName = 'TIPOPELEOLEOSA'
      Origin = 'TIPOPELEOLEOSA'
    end
    object FDMTClienteTIPOPELEACNEICA: TBooleanField
      FieldName = 'TIPOPELEACNEICA'
      Origin = 'TIPOPELEACNEICA'
    end
    object FDMTClienteINTTRATRUGASCONTORNOOLHOS: TBooleanField
      FieldName = 'INTTRATRUGASCONTORNOOLHOS'
      Origin = 'INTTRATRUGASCONTORNOOLHOS'
    end
    object FDMTClienteINTTRATOLHEIRAS: TBooleanField
      FieldName = 'INTTRATOLHEIRAS'
      Origin = 'INTTRATOLHEIRAS'
    end
    object FDMTClienteINTTRATVASINHOS: TBooleanField
      FieldName = 'INTTRATVASINHOS'
      Origin = 'INTTRATVASINHOS'
    end
    object FDMTClienteINTTRATSARDAS: TBooleanField
      FieldName = 'INTTRATSARDAS'
      Origin = 'INTTRATSARDAS'
    end
    object FDMTClienteINTTRATVERRUGAS: TBooleanField
      FieldName = 'INTTRATVERRUGAS'
      Origin = 'INTTRATVERRUGAS'
    end
    object FDMTClienteINTTRATEXCESSOOLEOSIDADE: TBooleanField
      FieldName = 'INTTRATEXCESSOOLEOSIDADE'
      Origin = 'INTTRATEXCESSOOLEOSIDADE'
    end
    object FDMTClienteINTTRATPAPADA: TBooleanField
      FieldName = 'INTTRATPAPADA'
      Origin = 'INTTRATPAPADA'
    end
    object FDMTClienteINTTRATRESSECAMENTOPELE: TBooleanField
      FieldName = 'INTTRATRESSECAMENTOPELE'
      Origin = 'INTTRATRESSECAMENTOPELE'
    end
    object FDMTClienteINTTRATFLACIDEZ: TBooleanField
      FieldName = 'INTTRATFLACIDEZ'
      Origin = 'INTTRATFLACIDEZ'
    end
    object FDMTClienteINTTRATPESCOCOCOLO: TBooleanField
      FieldName = 'INTTRATPESCOCOCOLO'
      Origin = 'INTTRATPESCOCOCOLO'
    end
    object FDMTClienteINTTRATRUGASTESTA: TBooleanField
      FieldName = 'INTTRATRUGASTESTA'
      Origin = 'INTTRATRUGASTESTA'
    end
    object FDMTClienteINTTRATMANCHAS: TBooleanField
      FieldName = 'INTTRATMANCHAS'
      Origin = 'INTTRATMANCHAS'
    end
    object FDMTClienteTONUSMUSCULARDIMINUIDO: TBooleanField
      FieldName = 'TONUSMUSCULARDIMINUIDO'
      Origin = 'TONUSMUSCULARDIMINUIDO'
    end
    object FDMTClienteTONUSMUSCULARNORMAL: TBooleanField
      FieldName = 'TONUSMUSCULARNORMAL'
      Origin = 'TONUSMUSCULARNORMAL'
    end
    object FDMTClienteTRATAMENTOESTETICOANT: TStringField
      FieldName = 'TRATAMENTOESTETICOANT'
      Origin = 'TRATAMENTOESTETICOANT'
      Size = 100
    end
    object FDMTClienteHIGIENEFACIALUMAADUASVEZES: TBooleanField
      FieldName = 'HIGIENEFACIALUMAADUASVEZES'
      Origin = 'HIGIENEFACIALUMAADUASVEZES'
    end
    object FDMTClienteHIGIENEFACIALTRESOUMAISVEZES: TBooleanField
      FieldName = 'HIGIENEFACIALTRESOUMAISVEZES'
      Origin = 'HIGIENEFACIALTRESOUMAISVEZES'
    end
    object FDMTClientePRODUTOSHIGIENEFACIAL: TStringField
      FieldName = 'PRODUTOSHIGIENEFACIAL'
      Origin = 'PRODUTOSHIGIENEFACIAL'
      Size = 100
    end
    object FDMTClienteMAQUIAGEMPO: TBooleanField
      FieldName = 'MAQUIAGEMPO'
      Origin = 'MAQUIAGEMPO'
    end
    object FDMTClienteMAQUIAGEMPOCOMPACTO: TBooleanField
      FieldName = 'MAQUIAGEMPOCOMPACTO'
      Origin = 'MAQUIAGEMPOCOMPACTO'
    end
    object FDMTClienteMAQUIAGEMBASE: TBooleanField
      FieldName = 'MAQUIAGEMBASE'
      Origin = 'MAQUIAGEMBASE'
    end
    object FDMTClientePROTETORSOLAR: TStringField
      FieldName = 'PROTETORSOLAR'
      Origin = 'PROTETORSOLAR'
      Size = 50
    end
    object FDMTClienteHIDRATANTENOTURNO: TStringField
      FieldName = 'HIDRATANTENOTURNO'
      Origin = 'HIDRATANTENOTURNO'
      Size = 50
    end
    object FDMTClienteHIDRATANTEDIURNO: TStringField
      FieldName = 'HIDRATANTEDIURNO'
      Origin = 'HIDRATANTEDIURNO'
      Size = 50
    end
    object FDMTClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
  end
  object FDMTGrupo: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 272
    Top = 192
    object FDMTGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
  end
  object FDMTSubGrupo: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 272
    Top = 240
    object FDMTSubGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTSubGrupoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object FDMTSubGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
  end
  object FDQProduto: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from produto')
    Left = 48
    Top = 288
    object FDQProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object FDQProdutoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object FDQProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 5
    end
    object FDQProdutoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object FDQProdutoSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
    end
    object FDQProdutoVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
      Origin = 'VALORCOMPRA'
      currency = True
    end
    object FDQProdutoVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
      Origin = 'VALORVENDA'
      currency = True
    end
    object FDQProdutoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQProdutoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQProdutoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQProdutoOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
    object FDQProdutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
    object FDQProdutoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object FDQProdutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      Origin = 'ESTOQUEMINIMO'
    end
    object FDQProdutoESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      Origin = 'ESTOQUEMAXIMO'
    end
  end
  object DSProduto: TDataSource
    DataSet = FDQProduto
    Left = 160
    Top = 288
  end
  object FDMTProduto: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 272
    Top = 288
    object FDMTProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object FDMTProdutoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object FDMTProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 5
    end
    object FDMTProdutoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object FDMTProdutoSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
    end
    object FDMTProdutoVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
      Origin = 'VALORCOMPRA'
      currency = True
    end
    object FDMTProdutoVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
      Origin = 'VALORVENDA'
      currency = True
    end
    object FDMTProdutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
    object FDMTProdutoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDMTProdutoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTProdutoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTProdutoOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
    object FDMTProdutoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object FDMTProdutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      Origin = 'ESTOQUEMINIMO'
    end
    object FDMTProdutoESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      Origin = 'ESTOQUEMAXIMO'
    end
  end
  object FDQCabeServico: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from cabeservico')
    Left = 48
    Top = 480
    object FDQCabeServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCabeServicoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQCabeServicoFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
    end
    object FDQCabeServicoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQCabeServicoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object FDQCabeServicoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQCabeServicoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQCabeServicoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQCabeServicoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQCabeServicoOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
  end
  object DSCabeServico: TDataSource
    DataSet = FDQCabeServico
    Left = 160
    Top = 480
  end
  object FDMTCabeServico: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 272
    Top = 480
    object FDMTCabeServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTCabeServicoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDMTCabeServicoFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
    end
    object FDMTCabeServicoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDMTCabeServicoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object FDMTCabeServicoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTCabeServicoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDMTCabeServicoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTCabeServicoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTCabeServicoOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
  end
  object FDQServico: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from servico')
    Left = 48
    Top = 528
    object FDQServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQServicoCABESERVICO: TIntegerField
      FieldName = 'CABESERVICO'
      Origin = 'CABESERVICO'
    end
    object FDQServicoNUMEROITEM: TIntegerField
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
    end
    object FDQServicoPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
    end
    object FDQServicoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      Size = 50
    end
    object FDQServicoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object FDQServicoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object FDQServicoVALORTOTALPRODUTO: TFloatField
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      currency = True
    end
    object FDQServicoTIPOITEM: TStringField
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      Size = 10
    end
  end
  object DSServico: TDataSource
    DataSet = FDQServico
    Left = 160
    Top = 528
  end
  object FDMTServico: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 272
    Top = 528
    object FDMTServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTServicoCABESERVICO: TIntegerField
      FieldName = 'CABESERVICO'
      Origin = 'CABESERVICO'
    end
    object FDMTServicoNUMEROITEM: TIntegerField
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
    end
    object FDMTServicoPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
    end
    object FDMTServicoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      Size = 50
    end
    object FDMTServicoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object FDMTServicoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object FDMTServicoVALORTOTALPRODUTO: TFloatField
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      currency = True
    end
    object FDMTServicoTIPOITEM: TStringField
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      Size = 10
    end
  end
  object DSMCliente: TDataSource
    DataSet = FDMTCliente
    Left = 384
    Top = 144
  end
  object DSMGrupo: TDataSource
    DataSet = FDMTGrupo
    Left = 384
    Top = 192
  end
  object DSMSubGrupo: TDataSource
    DataSet = FDMTSubGrupo
    Left = 384
    Top = 240
  end
  object DSMProduto: TDataSource
    DataSet = FDMTProduto
    Left = 384
    Top = 288
  end
  object DSMCabeServico: TDataSource
    DataSet = FDMTCabeServico
    Left = 384
    Top = 480
  end
  object DSMServico: TDataSource
    DataSet = FDMTServico
    Left = 384
    Top = 528
  end
  object FDQFormaPagto: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from formapagto')
    Left = 48
    Top = 336
    object FDQFormaPagtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQFormaPagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object FDQFormaPagtoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQFormaPagtoLANCACAIXA: TBooleanField
      FieldName = 'LANCACAIXA'
      Origin = 'LANCACAIXA'
    end
    object FDQFormaPagtoLANCAFINANCEIRO: TBooleanField
      FieldName = 'LANCAFINANCEIRO'
      Origin = 'LANCAFINANCEIRO'
    end
    object FDQFormaPagtoLANCASEMCONTROLE: TBooleanField
      FieldName = 'LANCASEMCONTROLE'
      Origin = 'LANCASEMCONTROLE'
    end
    object FDQFormaPagtoLANCAPARCELADO: TBooleanField
      FieldName = 'LANCAPARCELADO'
      Origin = 'LANCAPARCELADO'
    end
  end
  object DSFormaPagto: TDataSource
    DataSet = FDQFormaPagto
    Left = 160
    Top = 336
  end
  object FDMTFormaPagto: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 336
    object FDMTFormaPagtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTFormaPagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object FDMTFormaPagtoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDMTFormaPagtoLANCACAIXA: TBooleanField
      FieldName = 'LANCACAIXA'
      Origin = 'LANCACAIXA'
    end
    object FDMTFormaPagtoLANCAFINANCEIRO: TBooleanField
      FieldName = 'LANCAFINANCEIRO'
      Origin = 'LANCAFINANCEIRO'
    end
    object FDMTFormaPagtoLANCAPARCELADO: TBooleanField
      FieldName = 'LANCAPARCELADO'
      Origin = 'LANCAPARCELADO'
    end
    object FDMTFormaPagtoLANCASEMCONTROLE: TBooleanField
      FieldName = 'LANCASEMCONTROLE'
      Origin = 'LANCASEMCONTROLE'
    end
  end
  object DSMFormaPagto: TDataSource
    DataSet = FDMTFormaPagto
    Left = 384
    Top = 336
  end
  object FDQCabeVenda: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from cabevenda')
    Left = 48
    Top = 576
    object FDQCabeVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCabeVendaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQCabeVendaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
    end
    object FDQCabeVendaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQCabeVendaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object FDQCabeVendaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQCabeVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQCabeVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQCabeVendaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQCabeVendaOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
  end
  object FDQVenda: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from venda')
    Left = 48
    Top = 624
    object FDQVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQVendaCABEVENDA: TIntegerField
      FieldName = 'CABEVENDA'
      Origin = 'CABEVENDA'
    end
    object FDQVendaNUMEROITEM: TIntegerField
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
    end
    object FDQVendaPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
    end
    object FDQVendaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      Size = 50
    end
    object FDQVendaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object FDQVendaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object FDQVendaVALORTOTALPRODUTO: TFloatField
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      currency = True
    end
    object FDQVendaTIPOITEM: TStringField
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      Size = 10
    end
  end
  object DSCabeVenda: TDataSource
    DataSet = FDQCabeVenda
    Left = 160
    Top = 576
  end
  object DSVenda: TDataSource
    DataSet = FDQVenda
    Left = 160
    Top = 624
  end
  object FDMTCabeVenda: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 576
    object FDMTCabeVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTCabeVendaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDMTCabeVendaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
    end
    object FDMTCabeVendaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDMTCabeVendaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object FDMTCabeVendaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTCabeVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDMTCabeVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTCabeVendaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTCabeVendaOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
  end
  object FDMTVenda: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 624
    object FDMTVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTVendaCABEVENDA: TIntegerField
      FieldName = 'CABEVENDA'
      Origin = 'CABEVENDA'
    end
    object FDMTVendaNUMEROITEM: TIntegerField
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
    end
    object FDMTVendaPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
    end
    object FDMTVendaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      Size = 50
    end
    object FDMTVendaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object FDMTVendaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object FDMTVendaVALORTOTALPRODUTO: TFloatField
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      currency = True
    end
    object FDMTVendaTIPOITEM: TStringField
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      Size = 10
    end
  end
  object DSMCabeVenda: TDataSource
    DataSet = FDMTCabeVenda
    Left = 384
    Top = 576
  end
  object DSMVenda: TDataSource
    DataSet = FDMTVenda
    Left = 384
    Top = 624
  end
  object FDQCaixa: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from caixa')
    Left = 48
    Top = 384
    object FDQCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCaixaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQCaixaHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object FDQCaixaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQCaixaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDQCaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object FDQCaixaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQCaixaDEBITO: TFloatField
      FieldName = 'DEBITO'
      Origin = 'DEBITO'
      currency = True
    end
    object FDQCaixaCREDITO: TFloatField
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      currency = True
    end
    object FDQCaixaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQCaixaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQCaixaOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQCaixaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQCaixaDATALANCAMENTO: TSQLTimeStampField
      FieldName = 'DATALANCAMENTO'
      Origin = 'DATALANCAMENTO'
    end
  end
  object DSCaixa: TDataSource
    DataSet = FDQCaixa
    Left = 160
    Top = 384
  end
  object DSMCaixa: TDataSource
    DataSet = FDMTCaixa
    Left = 384
    Top = 384
  end
  object FDMTCaixa: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 384
    object FDMTCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTCaixaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDMTCaixaHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object FDMTCaixaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDMTCaixaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDMTCaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object FDMTCaixaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDMTCaixaDEBITO: TFloatField
      FieldName = 'DEBITO'
      Origin = 'DEBITO'
      currency = True
    end
    object FDMTCaixaCREDITO: TFloatField
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      currency = True
    end
    object FDMTCaixaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTCaixaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTCaixaOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
    object FDMTCaixaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTCaixaDATALANCAMENTO: TSQLTimeStampField
      FieldName = 'DATALANCAMENTO'
      Origin = 'DATALANCAMENTO'
    end
  end
  object FDQHistoCaixa: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from histocaixa')
    Left = 48
    Top = 432
    object FDQHistoCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQHistoCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
  end
  object DSHistoCaixa: TDataSource
    DataSet = FDQHistoCaixa
    Left = 160
    Top = 432
  end
  object DSMHistoCaixa: TDataSource
    DataSet = FDMTHistoCaixa
    Left = 384
    Top = 432
  end
  object FDMTHistoCaixa: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 432
    object FDMTHistoCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTHistoCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
  end
  object FDQCabeEntrada: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from cabeentrada')
    Left = 48
    Top = 816
    object FDQCabeEntradaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCabeEntradaDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Origin = 'DATALANCAMENTO'
    end
    object FDQCabeEntradaDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = 'DATACOMPRA'
    end
    object FDQCabeEntradaDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      Origin = 'DATARECEBIMENTO'
    end
    object FDQCabeEntradaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object FDQCabeEntradaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQCabeEntradaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQCabeEntradaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQCabeEntradaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQCabeEntradaOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQCabeEntradaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
  end
  object DSCabeEntrada: TDataSource
    DataSet = FDQCabeEntrada
    Left = 160
    Top = 816
  end
  object DSMCabeEntrada: TDataSource
    DataSet = FDMTCabeEntrada
    Left = 384
    Top = 816
  end
  object FDMTCabeEntrada: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 816
    object FDMTCabeEntradaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTCabeEntradaDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Origin = 'DATALANCAMENTO'
    end
    object FDMTCabeEntradaDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = 'DATACOMPRA'
    end
    object FDMTCabeEntradaDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      Origin = 'DATARECEBIMENTO'
    end
    object FDMTCabeEntradaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object FDMTCabeEntradaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTCabeEntradaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDMTCabeEntradaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTCabeEntradaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTCabeEntradaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDMTCabeEntradaOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
  end
  object FDQEntrada: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from entrada')
    Left = 48
    Top = 864
    object FDQEntradaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQEntradaCABEENTRADA: TIntegerField
      FieldName = 'CABEENTRADA'
      Origin = 'CABEENTRADA'
    end
    object FDQEntradaNUMEROITEM: TIntegerField
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
    end
    object FDQEntradaPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
    end
    object FDQEntradaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      Size = 50
    end
    object FDQEntradaVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
      Origin = 'VALORCOMPRA'
      currency = True
    end
    object FDQEntradaVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
      Origin = 'VALORVENDA'
      currency = True
    end
    object FDQEntradaVALORTOTALPRODUTO: TFloatField
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      currency = True
    end
    object FDQEntradaTIPOITEM: TStringField
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      Size = 10
    end
    object FDQEntradaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
  end
  object DSEntrada: TDataSource
    DataSet = FDQEntrada
    Left = 160
    Top = 864
  end
  object DSMEntrada: TDataSource
    DataSet = FDMTEntrada
    Left = 384
    Top = 864
  end
  object FDMTEntrada: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 864
    object FDMTEntradaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTEntradaCABEENTRADA: TIntegerField
      FieldName = 'CABEENTRADA'
      Origin = 'CABEENTRADA'
    end
    object FDMTEntradaNUMEROITEM: TIntegerField
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
    end
    object FDMTEntradaPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
    end
    object FDMTEntradaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      Size = 50
    end
    object FDMTEntradaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object FDMTEntradaVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
      Origin = 'VALORCOMPRA'
      currency = True
    end
    object FDMTEntradaVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
      Origin = 'VALORVENDA'
      currency = True
    end
    object FDMTEntradaVALORTOTALPRODUTO: TFloatField
      FieldName = 'VALORTOTALPRODUTO'
      Origin = 'VALORTOTALPRODUTO'
      currency = True
    end
    object FDMTEntradaTIPOITEM: TStringField
      FieldName = 'TIPOITEM'
      Origin = 'TIPOITEM'
      Size = 10
    end
  end
  object FDQContaReceber: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from contareceber')
    Left = 48
    Top = 672
    object FDQContaReceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQContaReceberPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContaReceberEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContaReceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContaReceberVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object FDQContaReceberFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContaReceberOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContaReceberOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContaReceberOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
  end
  object DSContaReceber: TDataSource
    DataSet = FDQContaReceber
    Left = 160
    Top = 672
  end
  object DSMContaReceber: TDataSource
    DataSet = FDMTContaReceber
    Left = 384
    Top = 672
  end
  object FDMTContaReceber: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 672
    object FDMTContaReceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTContaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDMTContaReceberPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDMTContaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDMTContaReceberEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDMTContaReceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDMTContaReceberVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object FDMTContaReceberFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTContaReceberOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTContaReceberOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTContaReceberOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
  end
  object FDQContaRecebida: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from contarecebida')
    Left = 48
    Top = 720
    object FDQContaRecebidaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContaRecebidaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQContaRecebidaPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContaRecebidaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContaRecebidaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContaRecebidaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContaRecebidaDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = 'DATAPAGAMENTO'
    end
    object FDQContaRecebidaVALORORIGINAL: TFloatField
      FieldName = 'VALORORIGINAL'
      Origin = 'VALORORIGINAL'
      currency = True
    end
    object FDQContaRecebidaVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      Origin = 'VALORRECEBIDO'
      currency = True
    end
    object FDQContaRecebidaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContaRecebidaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContaRecebidaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContaRecebidaOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQContaRecebidaCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
    end
  end
  object DSContaRecebida: TDataSource
    DataSet = FDQContaRecebida
    Left = 160
    Top = 720
  end
  object DSMContaRecebida: TDataSource
    DataSet = FDMTContaRecebida
    Left = 384
    Top = 720
  end
  object FDMTContaRecebida: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 720
    object FDMTContaRecebidaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTContaRecebidaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDMTContaRecebidaPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDMTContaRecebidaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDMTContaRecebidaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDMTContaRecebidaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDMTContaRecebidaDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = 'DATAPAGAMENTO'
    end
    object FDMTContaRecebidaVALORORIGINAL: TFloatField
      FieldName = 'VALORORIGINAL'
      Origin = 'VALORORIGINAL'
      currency = True
    end
    object FDMTContaRecebidaVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      Origin = 'VALORRECEBIDO'
      currency = True
    end
    object FDMTContaRecebidaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTContaRecebidaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTContaRecebidaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTContaRecebidaOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
    object FDMTContaRecebidaCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
    end
  end
  object FDQContaExcluida: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from contaexcluida')
    Left = 48
    Top = 768
    object FDQContaExcluidaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContaExcluidaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQContaExcluidaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDQContaExcluidaPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContaExcluidaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContaExcluidaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContaExcluidaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContaExcluidaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object FDQContaExcluidaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContaExcluidaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContaExcluidaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContaExcluidaOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQContaExcluidaDATAEXCLUSAO: TSQLTimeStampField
      FieldName = 'DATAEXCLUSAO'
      Origin = 'DATAEXCLUSAO'
    end
  end
  object DSContaExcluida: TDataSource
    DataSet = FDQContaExcluida
    Left = 160
    Top = 768
  end
  object DSMContaExcluida: TDataSource
    DataSet = FDMTContaExcluida
    Left = 384
    Top = 768
  end
  object FDMTContaExcluida: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 768
    object FDMTContaExcluidaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTContaExcluidaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDMTContaExcluidaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDMTContaExcluidaPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDMTContaExcluidaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDMTContaExcluidaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDMTContaExcluidaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDMTContaExcluidaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object FDMTContaExcluidaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTContaExcluidaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTContaExcluidaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTContaExcluidaOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
    object FDMTContaExcluidaTIPOCONTA: TStringField
      FieldName = 'TIPOCONTA'
      Origin = 'TIPOCONTA'
      Size = 10
    end
    object FDMTContaExcluidaDATAEXCLUSAO: TDateField
      FieldName = 'DATAEXCLUSAO'
      Origin = 'DATAEXCLUSAO'
    end
  end
  object FDQConsultaServico: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      
        'SELECT A.*, B.Nome as NomeCliente, C.Descricao as DescriFormaPag' +
        'to'
      'FROM cabeservico as A '
      'JOIN cliente as B on A.cliente = B.codigo'
      'JOIN formapagto as C on A.formapagto = C.codigo')
    Left = 544
    Top = 144
    object FDQConsultaServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQConsultaServicoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQConsultaServicoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQConsultaServicoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object FDQConsultaServicoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQConsultaServicoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQConsultaServicoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQConsultaServicoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQConsultaServicoNOMECLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMECLIENTE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQConsultaServicoDESCRIFORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQConsultaServicoOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
  end
  object DSConsultaServico: TDataSource
    DataSet = FDQConsultaServico
    Left = 656
    Top = 144
  end
  object DSMConsultaServico: TDataSource
    DataSet = FDMTConsultaServico
    Left = 880
    Top = 144
  end
  object FDMTConsultaServico: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 768
    Top = 144
    object FDMTConsultaServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTConsultaServicoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDMTConsultaServicoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDMTConsultaServicoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object FDMTConsultaServicoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTConsultaServicoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDMTConsultaServicoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTConsultaServicoOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTConsultaServicoOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAO2'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
    object FDMTConsultaServicoNOMECLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMECLIENTE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDMTConsultaServicoDESCRIFORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQConsultaVenda: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      
        'SELECT A.*, B.Nome as NomeCliente, C.Descricao as DescriFormaPag' +
        'to'
      'FROM cabevenda as A '
      'JOIN cliente as B on A.cliente = B.codigo'
      'JOIN formapagto as C on A.formapagto = C.codigo')
    Left = 544
    Top = 185
    object FDQConsultaVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQConsultaVendaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDQConsultaVendaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQConsultaVendaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object FDQConsultaVendaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQConsultaVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDQConsultaVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQConsultaVendaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQConsultaVendaNOMECLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMECLIENTE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQConsultaVendaDESCRIFORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQConsultaVendaOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
  end
  object DSConsultaVenda: TDataSource
    DataSet = FDQConsultaVenda
    Left = 656
    Top = 185
  end
  object DSMConsultaVenda: TDataSource
    DataSet = FDMTConsultaVenda
    Left = 880
    Top = 185
  end
  object FDMTConsultaVenda: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 768
    Top = 185
    object FDMTConsultaVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTConsultaVendaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object FDMTConsultaVendaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDMTConsultaVendaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object FDMTConsultaVendaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTConsultaVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object FDMTConsultaVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTConsultaVendaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTConsultaVendaOBSERVACAO2: TStringField
      FieldName = 'OBSERVACAO2'
      Origin = 'OBSERVACAO2'
      Size = 100
    end
    object FDMTConsultaVendaNOMECLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMECLIENTE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDMTConsultaVendaDESCRIFORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIFORMAPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQAgenda: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from agenda')
    Left = 48
    Top = 912
    object FDQAgendaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQAgendaHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object FDQAgendaPACIENTE: TStringField
      FieldName = 'PACIENTE'
      Origin = 'PACIENTE'
      Size = 50
    end
    object FDQAgendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQAgendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQAgendaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
    end
  end
  object DSAgenda: TDataSource
    DataSet = FDQAgenda
    Left = 160
    Top = 912
  end
  object DSMAgenda: TDataSource
    DataSet = FDMTAgenda
    Left = 384
    Top = 912
  end
  object FDMTAgenda: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 912
    object FDMTAgendaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDMTAgendaHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object FDMTAgendaPACIENTE: TStringField
      FieldName = 'PACIENTE'
      Origin = 'PACIENTE'
      Size = 50
    end
    object FDMTAgendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTAgendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDMTAgendaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
    end
  end
  object FDQUsuario: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from USUARIO')
    Left = 48
    Top = 104
    object FDQUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQUsuarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 30
    end
    object FDQUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 30
    end
    object FDQUsuarioTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object FDQUsuarioSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQUsuarioCADASTROCLIENTE: TBooleanField
      FieldName = 'CADASTROCLIENTE'
      Origin = 'CADASTROCLIENTE'
    end
    object FDQUsuarioCADASTROPRODUTO: TBooleanField
      FieldName = 'CADASTROPRODUTO'
      Origin = 'CADASTROPRODUTO'
    end
    object FDQUsuarioCADASTROFORMAPAGTO: TBooleanField
      FieldName = 'CADASTROFORMAPAGTO'
      Origin = 'CADASTROFORMAPAGTO'
    end
    object FDQUsuarioCADASTROGRUPO: TBooleanField
      FieldName = 'CADASTROGRUPO'
      Origin = 'CADASTROGRUPO'
    end
    object FDQUsuarioCADASTROSUBGRUPO: TBooleanField
      FieldName = 'CADASTROSUBGRUPO'
      Origin = 'CADASTROSUBGRUPO'
    end
    object FDQUsuarioTELASERVICO: TBooleanField
      FieldName = 'TELASERVICO'
      Origin = 'TELASERVICO'
    end
    object FDQUsuarioTELAVENDA: TBooleanField
      FieldName = 'TELAVENDA'
      Origin = 'TELAVENDA'
    end
    object FDQUsuarioTELAENTRADAESTOQUE: TBooleanField
      FieldName = 'TELAENTRADAESTOQUE'
      Origin = 'TELAENTRADAESTOQUE'
    end
    object FDQUsuarioTELAAGENDA: TBooleanField
      FieldName = 'TELAAGENDA'
      Origin = 'TELAAGENDA'
    end
    object FDQUsuarioLANCARCONTARECEBER: TBooleanField
      FieldName = 'LANCARCONTARECEBER'
      Origin = 'LANCARCONTARECEBER'
    end
    object FDQUsuarioRECEBIMENTO: TBooleanField
      FieldName = 'RECEBIMENTO'
      Origin = 'RECEBIMENTO'
    end
    object FDQUsuarioCONSULTARCONTARECEBER: TBooleanField
      FieldName = 'CONSULTARCONTARECEBER'
      Origin = 'CONSULTARCONTARECEBER'
    end
    object FDQUsuarioLANCARCONTARECEBIDA: TBooleanField
      FieldName = 'LANCARCONTARECEBIDA'
      Origin = 'LANCARCONTARECEBIDA'
    end
    object FDQUsuarioESTORNARCONTARECEBIDA: TBooleanField
      FieldName = 'ESTORNARCONTARECEBIDA'
      Origin = 'ESTORNARCONTARECEBIDA'
    end
    object FDQUsuarioCONSULTARCONTARECEBIDA: TBooleanField
      FieldName = 'CONSULTARCONTARECEBIDA'
      Origin = 'CONSULTARCONTARECEBIDA'
    end
    object FDQUsuarioCAIXADIARIO: TBooleanField
      FieldName = 'CAIXADIARIO'
      Origin = 'CAIXADIARIO'
    end
    object FDQUsuarioLANCAMENTOCAIXA: TBooleanField
      FieldName = 'LANCAMENTOCAIXA'
      Origin = 'LANCAMENTOCAIXA'
    end
    object FDQUsuarioCADASTROHISTOCAIXA: TBooleanField
      FieldName = 'CADASTROHISTOCAIXA'
      Origin = 'CADASTROHISTOCAIXA'
    end
    object FDQUsuarioCADASTROFORNECEDOR: TBooleanField
      FieldName = 'CADASTROFORNECEDOR'
      Origin = 'CADASTROFORNECEDOR'
    end
    object FDQUsuarioCADASTROFUNCIONARIO: TBooleanField
      FieldName = 'CADASTROFUNCIONARIO'
      Origin = 'CADASTROFUNCIONARIO'
    end
    object FDQUsuarioCADASTROCIDADE: TBooleanField
      FieldName = 'CADASTROCIDADE'
      Origin = 'CADASTROCIDADE'
    end
    object FDQUsuarioLANCARCONTAPAGAR: TBooleanField
      FieldName = 'LANCARCONTAPAGAR'
      Origin = 'LANCARCONTAPAGAR'
    end
    object FDQUsuarioPAGAMENTO: TBooleanField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
    end
    object FDQUsuarioCONSULTACONTAPAGAR: TBooleanField
      FieldName = 'CONSULTACONTAPAGAR'
      Origin = 'CONSULTACONTAPAGAR'
    end
    object FDQUsuarioLANCARCONTAPAGA: TBooleanField
      FieldName = 'LANCARCONTAPAGA'
      Origin = 'LANCARCONTAPAGA'
    end
    object FDQUsuarioESTORNARCONTAPAGA: TBooleanField
      FieldName = 'ESTORNARCONTAPAGA'
      Origin = 'ESTORNARCONTAPAGA'
    end
    object FDQUsuarioCONSULTACONTAPAGA: TBooleanField
      FieldName = 'CONSULTACONTAPAGA'
      Origin = 'CONSULTACONTAPAGA'
    end
  end
  object DSUsuario: TDataSource
    DataSet = FDQUsuario
    Left = 160
    Top = 104
  end
  object DSMUsuario: TDataSource
    DataSet = FDMTUsuario
    Left = 384
    Top = 104
  end
  object FDMTUsuario: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 104
    object FDMTUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTUsuarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDMTUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 30
    end
    object FDMTUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 30
    end
    object FDMTUsuarioTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object FDMTUsuarioSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDMTUsuarioCADASTROCLIENTE: TBooleanField
      FieldName = 'CADASTROCLIENTE'
      Origin = 'CADASTROCLIENTE'
    end
    object FDMTUsuarioCADASTROPRODUTO: TBooleanField
      FieldName = 'CADASTROPRODUTO'
      Origin = 'CADASTROPRODUTO'
    end
    object FDMTUsuarioCADASTROFORMAPAGTO: TBooleanField
      FieldName = 'CADASTROFORMAPAGTO'
      Origin = 'CADASTROFORMAPAGTO'
    end
    object FDMTUsuarioCADASTROGRUPO: TBooleanField
      FieldName = 'CADASTROGRUPO'
      Origin = 'CADASTROGRUPO'
    end
    object FDMTUsuarioCADASTROSUBGRUPO: TBooleanField
      FieldName = 'CADASTROSUBGRUPO'
      Origin = 'CADASTROSUBGRUPO'
    end
    object FDMTUsuarioTELASERVICO: TBooleanField
      FieldName = 'TELASERVICO'
      Origin = 'TELASERVICO'
    end
    object FDMTUsuarioTELAVENDA: TBooleanField
      FieldName = 'TELAVENDA'
      Origin = 'TELAVENDA'
    end
    object FDMTUsuarioTELAENTRADAESTOQUE: TBooleanField
      FieldName = 'TELAENTRADAESTOQUE'
      Origin = 'TELAENTRADAESTOQUE'
    end
    object FDMTUsuarioTELAAGENDA: TBooleanField
      FieldName = 'TELAAGENDA'
      Origin = 'TELAAGENDA'
    end
    object FDMTUsuarioLANCARCONTARECEBER: TBooleanField
      FieldName = 'LANCARCONTARECEBER'
      Origin = 'LANCARCONTARECEBER'
    end
    object FDMTUsuarioRECEBIMENTO: TBooleanField
      FieldName = 'RECEBIMENTO'
      Origin = 'RECEBIMENTO'
    end
    object FDMTUsuarioCONSULTARCONTARECEBER: TBooleanField
      FieldName = 'CONSULTARCONTARECEBER'
      Origin = 'CONSULTARCONTARECEBER'
    end
    object FDMTUsuarioLANCARCONTARECEBIDA: TBooleanField
      FieldName = 'LANCARCONTARECEBIDA'
      Origin = 'LANCARCONTARECEBIDA'
    end
    object FDMTUsuarioESTORNARCONTARECEBIDA: TBooleanField
      FieldName = 'ESTORNARCONTARECEBIDA'
      Origin = 'ESTORNARCONTARECEBIDA'
    end
    object FDMTUsuarioCONSULTARCONTARECEBIDA: TBooleanField
      FieldName = 'CONSULTARCONTARECEBIDA'
      Origin = 'CONSULTARCONTARECEBIDA'
    end
    object FDMTUsuarioCAIXADIARIO: TBooleanField
      FieldName = 'CAIXADIARIO'
      Origin = 'CAIXADIARIO'
    end
    object FDMTUsuarioLANCAMENTOCAIXA: TBooleanField
      FieldName = 'LANCAMENTOCAIXA'
      Origin = 'LANCAMENTOCAIXA'
    end
    object FDMTUsuarioCADASTROHISTOCAIXA: TBooleanField
      FieldName = 'CADASTROHISTOCAIXA'
      Origin = 'CADASTROHISTOCAIXA'
    end
    object FDMTUsuarioCADASTROFORNECEDOR: TBooleanField
      FieldName = 'CADASTROFORNECEDOR'
      Origin = 'CADASTROFORNECEDOR'
    end
    object FDMTUsuarioCADASTROFUNCIONARIO: TBooleanField
      FieldName = 'CADASTROFUNCIONARIO'
      Origin = 'CADASTROFUNCIONARIO'
    end
    object FDMTUsuarioCADASTROCIDADE: TBooleanField
      FieldName = 'CADASTROCIDADE'
      Origin = 'CADASTROCIDADE'
    end
    object FDMTUsuarioLANCARCONTAPAGAR: TBooleanField
      FieldName = 'LANCARCONTAPAGAR'
      Origin = 'LANCARCONTAPAGAR'
    end
    object FDMTUsuarioPAGAMENTO: TBooleanField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
    end
    object FDMTUsuarioCONSULTACONTAPAGAR: TBooleanField
      FieldName = 'CONSULTACONTAPAGAR'
      Origin = 'CONSULTACONTAPAGAR'
    end
    object FDMTUsuarioLANCARCONTAPAGA: TBooleanField
      FieldName = 'LANCARCONTAPAGA'
      Origin = 'LANCARCONTAPAGA'
    end
    object FDMTUsuarioESTORNARCONTAPAGA: TBooleanField
      FieldName = 'ESTORNARCONTAPAGA'
      Origin = 'ESTORNARCONTAPAGA'
    end
    object FDMTUsuarioCONSULTACONTAPAGA: TBooleanField
      FieldName = 'CONSULTACONTAPAGA'
      Origin = 'CONSULTACONTAPAGA'
    end
  end
  object FDQFornecedor: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from fornecedor')
    Left = 48
    Top = 960
    object FDQFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQFornecedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 50
    end
    object FDQFornecedorNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 50
    end
    object FDQFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object FDQFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object FDQFornecedorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object FDQFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object FDQFornecedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 18
    end
    object FDQFornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object FDQFornecedorCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object FDQFornecedorRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 15
    end
    object FDQFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object FDQFornecedorINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      Origin = 'INSCRICAOESTADUAL'
      Size = 15
    end
    object FDQFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDQFornecedorSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQFornecedorREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Size = 100
    end
    object FDQFornecedorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQFornecedorOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQFornecedorOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQFornecedorDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
  end
  object DSFornecedor: TDataSource
    DataSet = FDQFornecedor
    Left = 160
    Top = 960
  end
  object DSMFornecedor: TDataSource
    DataSet = FDMTFornecedor
    Left = 384
    Top = 960
  end
  object FDMTFornecedor: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 960
    object FDMTFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTFornecedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 50
    end
    object FDMTFornecedorNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 50
    end
    object FDMTFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object FDMTFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object FDMTFornecedorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object FDMTFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 25
    end
    object FDMTFornecedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 18
    end
    object FDMTFornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object FDMTFornecedorCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object FDMTFornecedorRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 15
    end
    object FDMTFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 15
    end
    object FDMTFornecedorINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      Origin = 'INSCRICAOESTADUAL'
      Size = 15
    end
    object FDMTFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDMTFornecedorSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDMTFornecedorREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Size = 100
    end
    object FDMTFornecedorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTFornecedorOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTFornecedorOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDMTFornecedorDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
  end
  object FDQFuncionario: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from funcionario')
    Left = 48
    Top = 1008
    object FDQFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQFuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object FDQFuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object FDQFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object FDQFuncionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object FDQFuncionarioTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 18
    end
    object FDQFuncionarioCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object FDQFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object FDQFuncionarioRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 15
    end
    object FDQFuncionarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDQFuncionarioSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQFuncionarioTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object FDQFuncionarioOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQFuncionarioOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQFuncionarioOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQFuncionarioDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object FDQFuncionarioDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
    object FDQFuncionarioESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object FDQFuncionarioAGENDA: TBooleanField
      FieldName = 'AGENDA'
      Origin = 'AGENDA'
    end
  end
  object DSFuncionario: TDataSource
    DataSet = FDQFuncionario
    Left = 160
    Top = 1008
  end
  object DSMFuncionario: TDataSource
    DataSet = FDMTFuncionario
    Left = 384
    Top = 1008
  end
  object FDMTFuncionario: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 1008
    object FDMTFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDMTFuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object FDMTFuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object FDMTFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object FDMTFuncionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object FDMTFuncionarioTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 18
    end
    object FDMTFuncionarioCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object FDMTFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object FDMTFuncionarioRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 15
    end
    object FDMTFuncionarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDMTFuncionarioSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDMTFuncionarioTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object FDMTFuncionarioOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTFuncionarioOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTFuncionarioOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDMTFuncionarioDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object FDMTFuncionarioDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
    object FDMTFuncionarioESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
    end
    object FDMTFuncionarioAGENDA: TBooleanField
      FieldName = 'AGENDA'
      Origin = 'AGENDA'
    end
  end
  object FDQCidade: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from cidade')
    Left = 48
    Top = 1056
    object FDQCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCidadeNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQCidadeESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
  end
  object DSCidade: TDataSource
    DataSet = FDQCidade
    Left = 160
    Top = 1056
  end
  object DSMCidade: TDataSource
    DataSet = FDMTCidade
    Left = 384
    Top = 1056
  end
  object FDMTCidade: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 1056
    object FDMTCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTCidadeNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDMTCidadeESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 50
    end
  end
  object FDQContaPagar: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from contapagar')
    Left = 48
    Top = 1104
    object FDQContaPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContaPagarFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDQContaPagarPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContaPagarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContaPagarEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContaPagarVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContaPagarVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object FDQContaPagarFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContaPagarOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContaPagarOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContaPagarOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
  end
  object DSContaPagar: TDataSource
    DataSet = FDQContaPagar
    Left = 160
    Top = 1104
  end
  object DSMContaPagar: TDataSource
    DataSet = FDMTContaPagar
    Left = 384
    Top = 1104
  end
  object FDMTContaPagar: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 1104
    object FDMTContaPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTContaPagarFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDMTContaPagarPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDMTContaPagarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDMTContaPagarEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDMTContaPagarVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDMTContaPagarVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object FDMTContaPagarFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTContaPagarOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTContaPagarOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTContaPagarOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
  end
  object FDQContaPaga: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from contapaga')
    Left = 48
    Top = 1152
    object FDQContaPagaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQContaPagaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDQContaPagaPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDQContaPagaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDQContaPagaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQContaPagaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQContaPagaDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = 'DATAPAGAMENTO'
    end
    object FDQContaPagaVALORORIGINAL: TFloatField
      FieldName = 'VALORORIGINAL'
      Origin = 'VALORORIGINAL'
      currency = True
    end
    object FDQContaPagaVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      Origin = 'VALORPAGO'
      currency = True
    end
    object FDQContaPagaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDQContaPagaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQContaPagaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDQContaPagaOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDQContaPagaCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
    end
  end
  object DSContaPaga: TDataSource
    DataSet = FDQContaPaga
    Left = 160
    Top = 1152
  end
  object DSMContaPaga: TDataSource
    DataSet = FDMTContaPaga
    Left = 384
    Top = 1152
  end
  object FDMTContaPaga: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 272
    Top = 1152
    object FDMTContaPagaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMTContaPagaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object FDMTContaPagaPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object FDMTContaPagaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 15
    end
    object FDMTContaPagaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDMTContaPagaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDMTContaPagaDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = 'DATAPAGAMENTO'
    end
    object FDMTContaPagaVALORORIGINAL: TFloatField
      FieldName = 'VALORORIGINAL'
      Origin = 'VALORORIGINAL'
      currency = True
    end
    object FDMTContaPagaVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      Origin = 'VALORPAGO'
      currency = True
    end
    object FDMTContaPagaFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
    end
    object FDMTContaPagaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDMTContaPagaOBSERVACAO1: TStringField
      FieldName = 'OBSERVACAO1'
      Origin = 'OBSERVACAO1'
      Size = 100
    end
    object FDMTContaPagaOBSERVACAOSISTEMA: TStringField
      FieldName = 'OBSERVACAOSISTEMA'
      Origin = 'OBSERVACAOSISTEMA'
      Size = 100
    end
    object FDMTContaPagaCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
    end
  end
  object FDQLogin: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    Left = 728
    Top = 24
    object FDQLoginCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQLoginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQLoginLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 30
    end
    object FDQLoginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 30
    end
    object FDQLoginTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object FDQLoginSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQLoginCADASTROCLIENTE: TBooleanField
      FieldName = 'CADASTROCLIENTE'
      Origin = 'CADASTROCLIENTE'
    end
    object FDQLoginCADASTROPRODUTO: TBooleanField
      FieldName = 'CADASTROPRODUTO'
      Origin = 'CADASTROPRODUTO'
    end
    object FDQLoginCADASTROFORMAPAGTO: TBooleanField
      FieldName = 'CADASTROFORMAPAGTO'
      Origin = 'CADASTROFORMAPAGTO'
    end
    object FDQLoginCADASTROGRUPO: TBooleanField
      FieldName = 'CADASTROGRUPO'
      Origin = 'CADASTROGRUPO'
    end
    object FDQLoginCADASTROSUBGRUPO: TBooleanField
      FieldName = 'CADASTROSUBGRUPO'
      Origin = 'CADASTROSUBGRUPO'
    end
    object FDQLoginCADASTROFORNECEDOR: TBooleanField
      FieldName = 'CADASTROFORNECEDOR'
      Origin = 'CADASTROFORNECEDOR'
    end
    object FDQLoginCADASTROFUNCIONARIO: TBooleanField
      FieldName = 'CADASTROFUNCIONARIO'
      Origin = 'CADASTROFUNCIONARIO'
    end
    object FDQLoginCADASTROCIDADE: TBooleanField
      FieldName = 'CADASTROCIDADE'
      Origin = 'CADASTROCIDADE'
    end
    object FDQLoginTELASERVICO: TBooleanField
      FieldName = 'TELASERVICO'
      Origin = 'TELASERVICO'
    end
    object FDQLoginTELAVENDA: TBooleanField
      FieldName = 'TELAVENDA'
      Origin = 'TELAVENDA'
    end
    object FDQLoginTELAENTRADAESTOQUE: TBooleanField
      FieldName = 'TELAENTRADAESTOQUE'
      Origin = 'TELAENTRADAESTOQUE'
    end
    object FDQLoginTELAAGENDA: TBooleanField
      FieldName = 'TELAAGENDA'
      Origin = 'TELAAGENDA'
    end
    object FDQLoginLANCARCONTARECEBER: TBooleanField
      FieldName = 'LANCARCONTARECEBER'
      Origin = 'LANCARCONTARECEBER'
    end
    object FDQLoginRECEBIMENTO: TBooleanField
      FieldName = 'RECEBIMENTO'
      Origin = 'RECEBIMENTO'
    end
    object FDQLoginCONSULTARCONTARECEBER: TBooleanField
      FieldName = 'CONSULTARCONTARECEBER'
      Origin = 'CONSULTARCONTARECEBER'
    end
    object FDQLoginLANCARCONTARECEBIDA: TBooleanField
      FieldName = 'LANCARCONTARECEBIDA'
      Origin = 'LANCARCONTARECEBIDA'
    end
    object FDQLoginESTORNARCONTARECEBIDA: TBooleanField
      FieldName = 'ESTORNARCONTARECEBIDA'
      Origin = 'ESTORNARCONTARECEBIDA'
    end
    object FDQLoginCONSULTARCONTARECEBIDA: TBooleanField
      FieldName = 'CONSULTARCONTARECEBIDA'
      Origin = 'CONSULTARCONTARECEBIDA'
    end
    object FDQLoginCAIXADIARIO: TBooleanField
      FieldName = 'CAIXADIARIO'
      Origin = 'CAIXADIARIO'
    end
    object FDQLoginLANCAMENTOCAIXA: TBooleanField
      FieldName = 'LANCAMENTOCAIXA'
      Origin = 'LANCAMENTOCAIXA'
    end
    object FDQLoginCADASTROHISTOCAIXA: TBooleanField
      FieldName = 'CADASTROHISTOCAIXA'
      Origin = 'CADASTROHISTOCAIXA'
    end
    object FDQLoginLANCARCONTAPAGAR: TBooleanField
      FieldName = 'LANCARCONTAPAGAR'
      Origin = 'LANCARCONTAPAGAR'
    end
    object FDQLoginPAGAMENTO: TBooleanField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
    end
    object FDQLoginCONSULTACONTAPAGAR: TBooleanField
      FieldName = 'CONSULTACONTAPAGAR'
      Origin = 'CONSULTACONTAPAGAR'
    end
    object FDQLoginLANCARCONTAPAGA: TBooleanField
      FieldName = 'LANCARCONTAPAGA'
      Origin = 'LANCARCONTAPAGA'
    end
    object FDQLoginESTORNARCONTAPAGA: TBooleanField
      FieldName = 'ESTORNARCONTAPAGA'
      Origin = 'ESTORNARCONTAPAGA'
    end
    object FDQLoginCONSULTACONTAPAGA: TBooleanField
      FieldName = 'CONSULTACONTAPAGA'
      Origin = 'CONSULTACONTAPAGA'
    end
  end
  object DSLogin: TDataSource
    DataSet = FDQLogin
    Left = 792
    Top = 24
  end
end
