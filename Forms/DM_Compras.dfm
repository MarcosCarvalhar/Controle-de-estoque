object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 310
  Width = 270
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
