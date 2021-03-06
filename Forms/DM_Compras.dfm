object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 408
  Width = 269
  object ds_padrao: TDataSource
    DataSet = Q_padrao
    Left = 24
    Top = 71
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 24
    Top = 248
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 112
    Top = 248
  end
  object Q_padrao: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT'
      '  ID_COMPRA,'
      '  ID_FORNECEDOR,'
      '  ID_FORMA_PGTO,'
      '  USUARIO,'
      '  CADASTRO,'
      '  VALOR'
      'FROM COMPRA'
      'WHERE '
      '  ID_COMPRA = :PID_COMPRA'
      'ORDER BY ID_COMPRA')
    Left = 24
    Top = 16
    ParamData = <
      item
        Name = 'PID_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_padraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object FDQuery2: TFDQuery
    Connection = DM.conexao
    Left = 24
    Top = 192
  end
  object FDQuery3: TFDQuery
    Connection = DM.conexao
    Left = 112
    Top = 192
  end
  object Q_padrao_item: TFDQuery
    Connection = DM.conexao
    Left = 112
    Top = 16
  end
  object ds_padrao_item: TDataSource
    DataSet = FDQuery3
    Left = 112
    Top = 72
  end
end
