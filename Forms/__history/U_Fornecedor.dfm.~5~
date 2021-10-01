inherited frm_Fornecedor: Tfrm_Fornecedor
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 449
  ClientWidth = 755
  ExplicitWidth = 761
  ExplicitHeight = 478
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 71
    Top = 103
    Width = 44
    Height = 13
    Caption = 'C'#211'DIGO'
  end
  object Label2: TLabel [1]
    Left = 208
    Top = 103
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
  end
  object Label3: TLabel [2]
    Left = 71
    Top = 156
    Width = 31
    Height = 13
    Caption = 'NOME'
  end
  object Label4: TLabel [3]
    Left = 496
    Top = 156
    Width = 27
    Height = 13
    Caption = 'CNPJ'
  end
  object Label5: TLabel [4]
    Left = 71
    Top = 262
    Width = 20
    Height = 13
    Caption = 'CEP'
  end
  object Label6: TLabel [5]
    Left = 178
    Top = 262
    Width = 56
    Height = 13
    Caption = 'ENDERECO'
  end
  object Label7: TLabel [6]
    Left = 607
    Top = 262
    Width = 28
    Height = 13
    Caption = 'NUM.'
  end
  object Label8: TLabel [7]
    Left = 335
    Top = 308
    Width = 44
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label9: TLabel [8]
    Left = 71
    Top = 308
    Width = 42
    Height = 13
    Caption = 'CIDADE'
  end
  object Label10: TLabel [9]
    Left = 607
    Top = 308
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label11: TLabel [10]
    Left = 71
    Top = 205
    Width = 35
    Height = 13
    Caption = 'EMAIL'
  end
  object Label12: TLabel [11]
    Left = 496
    Top = 202
    Width = 52
    Height = 13
    Caption = 'TELEFONE'
  end
  inherited Panel1: TPanel
    Width = 755
    ExplicitWidth = 755
    inherited btn_Editar: TBitBtn
      Left = 410
      ExplicitLeft = 410
    end
    inherited btn_Novo: TBitBtn
      Left = 71
      ExplicitLeft = 71
    end
    inherited btnAtualizar: TBitBtn
      Left = 567
      ExplicitLeft = 567
    end
  end
  inherited Panel2: TPanel
    Top = 379
    Width = 755
    ExplicitLeft = 112
    ExplicitTop = 511
    ExplicitWidth = 755
    inherited BitBtn10: TBitBtn
      Left = 567
      ExplicitLeft = 567
    end
    inherited btnCancelar: TBitBtn
      Left = 471
      ExplicitLeft = 471
    end
    inherited btnGravar: TBitBtn
      Left = 369
      ExplicitLeft = 369
    end
    inherited DBNavigator2: TDBNavigator
      Left = 71
      Hints.Strings = ()
      ExplicitLeft = 71
    end
  end
  object db_id_fornecedor: TDBEdit [14]
    Left = 71
    Top = 122
    Width = 121
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = DS_padrao
    TabOrder = 2
  end
  object db_cadastro: TDBEdit [15]
    Left = 208
    Top = 122
    Width = 121
    Height = 21
    DataField = 'CADASTRO'
    DataSource = DS_padrao
    Enabled = False
    TabOrder = 3
  end
  object db_nome: TDBEdit [16]
    Left = 71
    Top = 172
    Width = 401
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DS_padrao
    TabOrder = 4
  end
  object db_numero: TDBEdit [17]
    Left = 607
    Top = 281
    Width = 50
    Height = 21
    DataField = 'NUMERO'
    DataSource = DS_padrao
    TabOrder = 5
  end
  object db_endereco: TDBEdit [18]
    Left = 178
    Top = 281
    Width = 415
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DS_padrao
    TabOrder = 6
  end
  object db_CEP: TDBEdit [19]
    Left = 71
    Top = 281
    Width = 89
    Height = 21
    DataField = 'CEP'
    DataSource = DS_padrao
    TabOrder = 7
  end
  object db_CNPJ: TDBEdit [20]
    Left = 495
    Top = 172
    Width = 162
    Height = 21
    DataField = 'CNPJ'
    DataSource = DS_padrao
    TabOrder = 8
  end
  object db_telefone: TDBEdit [21]
    Left = 496
    Top = 221
    Width = 161
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DS_padrao
    TabOrder = 9
  end
  object db_email: TDBEdit [22]
    Left = 71
    Top = 221
    Width = 402
    Height = 21
    DataField = 'EMAIL'
    DataSource = DS_padrao
    TabOrder = 10
  end
  object db_bairro: TDBEdit [23]
    Left = 335
    Top = 324
    Width = 258
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = DS_padrao
    TabOrder = 11
  end
  object db_cidade: TDBEdit [24]
    Left = 71
    Top = 324
    Width = 251
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = DS_padrao
    TabOrder = 12
  end
  object db_UF: TDBComboBox [25]
    Left = 607
    Top = 324
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DS_padrao
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO'
      'DF')
    TabOrder = 13
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT '
      '  ID_FORNECEDOR,'
      '  CADASTRO,'
      '  NOME,'
      '  CNPJ,'
      '  CEP,'
      '  ENDERECO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  EMAIL,'
      '  TELEFONE'
      ' FROM FORNECEDOR')
    Top = 296
    object Q_padraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
  end
end
