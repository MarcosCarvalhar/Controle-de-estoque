inherited frm_Cliente: Tfrm_Cliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 490
  ExplicitWidth = 770
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 87
    Top = 104
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DB_id_empresa
  end
  object Label2: TLabel [1]
    Left = 87
    Top = 157
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DB_nome
  end
  object Label3: TLabel [2]
    Left = 87
    Top = 325
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DB_endereco
  end
  object Label4: TLabel [3]
    Left = 611
    Top = 322
    Width = 43
    Height = 13
    Caption = 'NUMERO'
  end
  object Label5: TLabel [4]
    Left = 345
    Top = 368
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DB_bairro
  end
  object Label6: TLabel [5]
    Left = 87
    Top = 368
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DB_cidade
  end
  object Label7: TLabel [6]
    Left = 611
    Top = 368
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DB_UF
  end
  object Label8: TLabel [7]
    Left = 87
    Top = 279
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DB_CEP
  end
  object Label9: TLabel [8]
    Left = 537
    Top = 200
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DB_telefone
  end
  object Label10: TLabel [9]
    Left = 537
    Top = 150
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DB_CPF
  end
  object Label11: TLabel [10]
    Left = 87
    Top = 203
    Width = 30
    Height = 14
    Caption = 'EMAIL'
    FocusControl = DB_email
  end
  object Label12: TLabel [11]
    Left = 238
    Top = 104
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
  end
  inherited Panel1: TPanel
    TabOrder = 12
  end
  inherited Panel2: TPanel
    Top = 420
    TabOrder = 13
    ExplicitLeft = 8
    ExplicitTop = 523
    inherited btnGravar: TBitBtn
      Left = 441
      ExplicitLeft = 441
    end
    inherited DBNavigator2: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_id_empresa: TcxDBSpinEdit [14]
    Left = 87
    Top = 120
    DataBinding.DataField = 'ID_CLIENTE'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    TabOrder = 0
    Width = 121
  end
  object DB_nome: TcxDBTextEdit [15]
    Left = 87
    Top = 170
    DataBinding.DataField = 'NOME'
    DataBinding.DataSource = DS_padrao
    TabOrder = 2
    Width = 428
  end
  object DB_endereco: TcxDBTextEdit [16]
    Left = 87
    Top = 341
    DataBinding.DataField = 'ENDERECO'
    DataBinding.DataSource = DS_padrao
    TabOrder = 7
    Width = 500
  end
  object DB_bairro: TcxDBTextEdit [17]
    Left = 345
    Top = 387
    DataBinding.DataField = 'BAIRRO'
    DataBinding.DataSource = DS_padrao
    TabOrder = 10
    Width = 242
  end
  object DB_cidade: TcxDBTextEdit [18]
    Left = 87
    Top = 384
    DataBinding.DataField = 'CIDADE'
    DataBinding.DataSource = DS_padrao
    TabOrder = 9
    Width = 242
  end
  object DB_UF: TcxDBTextEdit [19]
    Left = 611
    Top = 384
    DataBinding.DataField = 'UF'
    DataBinding.DataSource = DS_padrao
    TabOrder = 11
    Width = 47
  end
  object DB_CEP: TcxDBTextEdit [20]
    Left = 87
    Top = 298
    DataBinding.DataField = 'CEP'
    DataBinding.DataSource = DS_padrao
    TabOrder = 6
    Width = 121
  end
  object DB_telefone: TcxDBTextEdit [21]
    Left = 537
    Top = 216
    DataBinding.DataField = 'TELEFONE'
    DataBinding.DataSource = DS_padrao
    TabOrder = 5
    Width = 121
  end
  object DB_CPF: TcxDBTextEdit [22]
    Left = 537
    Top = 169
    DataBinding.DataField = 'CPF'
    DataBinding.DataSource = DS_padrao
    TabOrder = 3
    Width = 121
  end
  object DB_email: TcxDBTextEdit [23]
    Left = 88
    Top = 216
    DataBinding.DataField = 'EMAIL'
    DataBinding.DataSource = DS_padrao
    TabOrder = 4
    Width = 428
  end
  object DB_numero: TcxDBTextEdit [24]
    Left = 611
    Top = 341
    DataBinding.DataField = 'NUMERO'
    DataBinding.DataSource = DS_padrao
    TabOrder = 8
    Width = 47
  end
  object DB_cadastro: TcxDBTextEdit [25]
    Left = 238
    Top = 123
    DataBinding.DataField = 'CADASTRO'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    TabOrder = 1
    Width = 121
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT '
      '  ID_CLIENTE,'
      '  NOME,'
      '  ENDERECO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE,'
      '  CPF,'
      '  EMAIL,'
      '  CADASTRO'
      ' FROM CLIENTE'
      'ORDER BY ID_CLIENTE')
    Left = 400
    Top = 432
    object Q_padraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
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
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0_'
      Size = 16
    end
    object Q_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000\.000\.000\-00;0;_'
      Size = 16
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
      EditMask = '!99/99/00;0;_'
    end
  end
  inherited DS_padrao: TDataSource
    Left = 313
    Top = 432
  end
end
