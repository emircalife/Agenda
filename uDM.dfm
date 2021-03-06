object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 305
  Width = 293
  object qryManutencao: TFDQuery
    Connection = fdConn
    Left = 176
    Top = 16
  end
  object qryAtrasados: TFDQuery
    Connection = fdConn
    Left = 176
    Top = 72
  end
  object qryConsultaCompromissos: TFDQuery
    AfterScroll = qryConsultaCompromissosAfterScroll
    Connection = fdConn
    SQL.Strings = (
      'SELECT * FROM AGENDA')
    Left = 176
    Top = 192
    object qryConsultaCompromissosIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Origin = 'IDAGENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConsultaCompromissosTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Required = True
      Size = 254
    end
    object qryConsultaCompromissosDTAGENDA: TDateField
      FieldName = 'DTAGENDA'
      Origin = 'DTAGENDA'
      Required = True
    end
    object qryConsultaCompromissosHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
      Required = True
    end
    object qryConsultaCompromissosCOMPROMISSO: TStringField
      FieldName = 'COMPROMISSO'
      Origin = 'COMPROMISSO'
      Required = True
      Size = 254
    end
    object qryConsultaCompromissosCONCLUIDO: TBooleanField
      FieldName = 'CONCLUIDO'
      Origin = 'CONCLUIDO'
      Required = True
      DisplayValues = 'SIM;N'#195'O'
    end
    object qryConsultaCompromissosALERTA: TBooleanField
      FieldName = 'ALERTA'
      Origin = 'ALERTA'
      Required = True
      DisplayValues = 'SIM;N'#195'O'
    end
  end
  object qryCompromissos: TFDQuery
    AfterScroll = qryCompromissosAfterScroll
    Connection = fdConn
    SQL.Strings = (
      'SELECT * FROM AGENDA')
    Left = 176
    Top = 128
    object qryCompromissosIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Origin = 'IDAGENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompromissosTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Required = True
      Size = 254
    end
    object qryCompromissosDTAGENDA: TDateField
      FieldName = 'DTAGENDA'
      Origin = 'DTAGENDA'
      Required = True
    end
    object qryCompromissosHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
      Required = True
    end
    object qryCompromissosCOMPROMISSO: TStringField
      FieldName = 'COMPROMISSO'
      Origin = 'COMPROMISSO'
      Required = True
      Size = 254
    end
    object qryCompromissosCONCLUIDO: TBooleanField
      FieldName = 'CONCLUIDO'
      Origin = 'CONCLUIDO'
      Required = True
      DisplayValues = 'SIM;N'#195'O'
    end
    object qryCompromissosALERTA: TBooleanField
      FieldName = 'ALERTA'
      Origin = 'ALERTA'
      Required = True
      DisplayValues = 'SIM;N'#195'O'
    end
  end
  object fdConn: TFDConnection
    Params.Strings = (
      'Port=3050'
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=F:\Programa'#231#227'o\Delphi\Delphi 13.3\Agenda\Win32\Debug\BD' +
        '\DBAGENDA.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 72
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 48
    Top = 121
  end
  object qryAlertas: TFDQuery
    Connection = fdConn
    Left = 176
    Top = 248
  end
end
