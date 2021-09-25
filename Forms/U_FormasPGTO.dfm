inherited frm_formasPGTO: Tfrm_formasPGTO
  Caption = 'CADASTRO DE FORMAS DE PAGAMENTO'
  ClientHeight = 318
  ClientWidth = 723
  ExplicitWidth = 729
  ExplicitHeight = 347
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 72
    Top = 120
    Width = 44
    Height = 13
    Caption = 'C'#211'DIGO'
  end
  object Label2: TLabel [1]
    Left = 72
    Top = 176
    Width = 129
    Height = 13
    Caption = 'FORMA DE PAGAMENTO'
  end
  object Label3: TLabel [2]
    Left = 215
    Top = 120
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
  end
  inherited Panel1: TPanel
    Width = 723
    TabOrder = 3
    ExplicitWidth = 723
    inherited btnAtualizar: TBitBtn
      Left = 552
      ExplicitLeft = 552
    end
  end
  inherited Panel2: TPanel
    Top = 248
    Width = 723
    TabOrder = 4
    ExplicitTop = 248
    ExplicitWidth = 723
    inherited BitBtn10: TBitBtn
      Left = 552
      ExplicitLeft = 552
    end
    inherited btnCancelar: TBitBtn
      Left = 456
      ExplicitLeft = 456
    end
    inherited btnGravar: TBitBtn
      Left = 354
      ExplicitLeft = 354
    end
    inherited DBNavigator2: TDBNavigator
      Hints.Strings = ()
    end
  end
  object db_cadastro: TDBEdit [5]
    Left = 215
    Top = 139
    Width = 121
    Height = 21
    DataField = 'CADASTRO'
    DataSource = DS_padrao
    TabOrder = 1
  end
  object db_id_forma_pgto: TDBEdit [6]
    Left = 72
    Top = 139
    Width = 121
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    DataSource = DS_padrao
    TabOrder = 0
  end
  object db_descricao: TDBEdit [7]
    Left = 72
    Top = 195
    Width = 570
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DS_padrao
    TabOrder = 2
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
