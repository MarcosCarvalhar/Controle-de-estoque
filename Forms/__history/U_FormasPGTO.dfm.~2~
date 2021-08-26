inherited frm_formasPGTO: Tfrm_formasPGTO
  Caption = 'CADASTRO DE FORMAS DE PAGAMENTO'
  ClientHeight = 318
  ClientWidth = 753
  ExplicitWidth = 759
  ExplicitHeight = 346
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 88
    Top = 120
    Width = 86
    Height = 13
    Caption = 'ID_FORMA_PGTO'
    FocusControl = DB_id_forma_pgto
  end
  object Label2: TLabel [1]
    Left = 88
    Top = 176
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DB_descricao
  end
  object Label3: TLabel [2]
    Left = 231
    Top = 120
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
  end
  inherited Panel1: TPanel
    Width = 753
  end
  inherited Panel2: TPanel
    Top = 248
    Width = 753
    inherited btnGravar: TBitBtn
      Left = 441
      ExplicitLeft = 441
    end
    inherited DBNavigator2: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_id_forma_pgto: TcxDBSpinEdit [5]
    Left = 88
    Top = 136
    DataBinding.DataField = 'ID_FORMA_PGTO'
    DataBinding.DataSource = DS_padrao
    TabOrder = 2
    Width = 121
  end
  object DB_descricao: TcxDBTextEdit [6]
    Left = 88
    Top = 195
    DataBinding.DataField = 'DESCRICAO'
    DataBinding.DataSource = DS_padrao
    TabOrder = 3
    Width = 570
  end
  object DB_cadastro: TcxDBTextEdit [7]
    Left = 231
    Top = 136
    DataBinding.DataField = 'CADASTRO'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    TabOrder = 4
    Width = 121
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT '
      '   ID_FORMA_PGTO,'
      '   DESCRICAO,'
      '   CADASTRO'
      ' FROM FORMA_PGTO')
    Left = 280
    Top = 512
    object Q_padraoID_FORMA_PGTO: TFDAutoIncField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited DS_padrao: TDataSource
    Left = 336
    Top = 512
  end
end
