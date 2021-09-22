inherited frm_empresa: Tfrm_empresa
  Caption = 'CADASTRO DA EMPRESA'
  ClientHeight = 510
  ClientWidth = 728
  ExplicitTop = -36
  ExplicitWidth = 734
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 89
    Top = 151
    Width = 87
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = DB_razao_social
  end
  object Label2: TLabel [1]
    Left = 89
    Top = 199
    Width = 70
    Height = 13
    Caption = 'N_FANTASIA'
    FocusControl = DB_n_fantasia
  end
  object Label3: TLabel [2]
    Left = 89
    Top = 339
    Width = 56
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DB_endereco
  end
  object Label4: TLabel [3]
    Left = 351
    Top = 392
    Width = 44
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DB_bairro
  end
  object Label5: TLabel [4]
    Left = 89
    Top = 392
    Width = 42
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DB_cidade
  end
  object Label6: TLabel [5]
    Left = 610
    Top = 394
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DB_uf
  end
  object Label7: TLabel [6]
    Left = 539
    Top = 293
    Width = 20
    Height = 13
    Caption = 'CEP'
    FocusControl = DB_cep
  end
  object Label8: TLabel [7]
    Left = 539
    Top = 244
    Width = 52
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DB_telefone
  end
  object Label9: TLabel [8]
    Left = 89
    Top = 293
    Width = 27
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DB_cnpj
  end
  object Label10: TLabel [9]
    Left = 89
    Top = 244
    Width = 35
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DB_email
  end
  object Label12: TLabel [10]
    Left = 232
    Top = 101
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
  end
  object Label13: TLabel [11]
    Left = 89
    Top = 101
    Width = 72
    Height = 13
    Caption = 'ID_EMPRESA'
    FocusControl = DB_id_empresa
  end
  object Label14: TLabel [12]
    Left = 610
    Top = 339
    Width = 47
    Height = 13
    Caption = 'NUMERO'
  end
  inherited Panel1: TPanel
    Width = 728
    TabOrder = 12
    ExplicitWidth = 755
    inherited btn_Deletar: TBitBtn
      Left = 570
      ExplicitLeft = 570
    end
    inherited btn_Editar: TBitBtn
      Left = 250
      ExplicitLeft = 250
    end
    inherited btn_Novo: TBitBtn
      Left = 418
      ExplicitLeft = 418
    end
    inherited btnAtualizar: TBitBtn
      Left = 90
      ExplicitLeft = 90
    end
  end
  object DB_razao_social: TcxDBTextEdit [14]
    Left = 89
    Top = 170
    DataBinding.DataField = 'RAZAO_SOCIAL'
    DataBinding.DataSource = DS_padrao
    TabOrder = 1
    Width = 571
  end
  object DB_n_fantasia: TcxDBTextEdit [15]
    Left = 89
    Top = 218
    DataBinding.DataField = 'N_FANTASIA'
    DataBinding.DataSource = DS_padrao
    TabOrder = 2
    Width = 571
  end
  object DB_endereco: TcxDBTextEdit [16]
    Left = 89
    Top = 358
    DataBinding.DataField = 'ENDERECO'
    DataBinding.DataSource = DS_padrao
    TabOrder = 5
    Width = 500
  end
  object DB_bairro: TcxDBTextEdit [17]
    Left = 351
    Top = 411
    DataBinding.DataField = 'BAIRRO'
    DataBinding.DataSource = DS_padrao
    TabOrder = 8
    Width = 238
  end
  object DB_cidade: TcxDBTextEdit [18]
    Left = 90
    Top = 411
    DataBinding.DataField = 'CIDADE'
    DataBinding.DataSource = DS_padrao
    TabOrder = 7
    Width = 230
  end
  object DB_uf: TcxDBTextEdit [19]
    Left = 610
    Top = 411
    DataBinding.DataField = 'UF'
    DataBinding.DataSource = DS_padrao
    TabOrder = 9
    Width = 50
  end
  object DB_cep: TcxDBTextEdit [20]
    Left = 539
    Top = 312
    DataBinding.DataField = 'CEP'
    DataBinding.DataSource = DS_padrao
    TabOrder = 4
    Width = 121
  end
  object DB_telefone: TcxDBTextEdit [21]
    Left = 539
    Top = 263
    DataBinding.DataField = 'TELEFONE'
    DataBinding.DataSource = DS_padrao
    TabOrder = 11
    Width = 121
  end
  object DB_cnpj: TcxDBTextEdit [22]
    Left = 89
    Top = 312
    DataBinding.DataField = 'CNPJ'
    DataBinding.DataSource = DS_padrao
    TabOrder = 3
    Width = 428
  end
  object DB_email: TcxDBTextEdit [23]
    Left = 89
    Top = 263
    DataBinding.DataField = 'EMAIL'
    DataBinding.DataSource = DS_padrao
    TabOrder = 10
    Width = 428
  end
  object DB_id_empresa: TcxDBSpinEdit [24]
    Left = 89
    Top = 120
    DataBinding.DataField = 'ID_EMPRESA'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    TabOrder = 0
    Width = 121
  end
  inherited Panel2: TPanel
    Top = 448
    Width = 728
    Height = 62
    TabOrder = 13
    ExplicitTop = 448
    ExplicitWidth = 755
    ExplicitHeight = 62
    inherited BitBtn10: TBitBtn
      Left = 570
      Top = 17
      Height = 27
      ExplicitLeft = 570
      ExplicitTop = 17
      ExplicitHeight = 27
    end
    inherited btnCancelar: TBitBtn
      Left = 474
      Top = 17
      Height = 27
      ExplicitLeft = 474
      ExplicitTop = 17
      ExplicitHeight = 27
    end
    inherited btnGravar: TBitBtn
      Left = 372
      Top = 17
      Height = 27
      ExplicitLeft = 372
      ExplicitTop = 17
      ExplicitHeight = 27
    end
    inherited DBNavigator2: TDBNavigator
      Left = 89
      Top = 17
      Height = 27
      Hints.Strings = ()
      ExplicitLeft = 89
      ExplicitTop = 17
      ExplicitHeight = 27
    end
  end
  object DB_numero: TcxDBTextEdit [26]
    Left = 610
    Top = 358
    DataBinding.DataField = 'NUMERO'
    DataBinding.DataSource = DS_padrao
    TabOrder = 6
    Width = 50
  end
  object DB_Cadastro: TcxDBTextEdit [27]
    Left = 232
    Top = 120
    DataBinding.DataField = 'TELEFONE'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    TabOrder = 14
    Width = 121
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_EMPRESA'
    UpdateOptions.AutoIncFields = 'ID_EMPRESA'
    SQL.Strings = (
      'SELECT ID_EMPRESA,'
      '       RAZAO_SOCIAL,'
      '       N_FANTASIA,'
      '       ENDERECO,'
      '       NUMERO,'
      '       BAIRRO,'
      '       CIDADE,'
      '       UF,'
      '       TELEFONE,'
      '       CNPJ,'
      '       EMAIL,'
      '       CADASTRO,'
      '       CEP'
      '       FROM EMPRESA')
    Left = 20
    Top = 240
    object Q_padraoID_EMPRESA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object Q_padraoN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
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
      Size = 14
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000/0000-00;0;'
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
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
  end
  inherited DS_padrao: TDataSource
    Left = 20
    Top = 176
  end
end
