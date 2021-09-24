inherited frm_Cliente: Tfrm_Cliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 490
  ClientWidth = 727
  ExplicitWidth = 733
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 72
    Top = 104
    Width = 64
    Height = 13
    Caption = 'ID_CLIENTE'
  end
  object Label2: TLabel [1]
    Left = 72
    Top = 150
    Width = 31
    Height = 13
    Caption = 'NOME'
  end
  object Label3: TLabel [2]
    Left = 72
    Top = 322
    Width = 56
    Height = 13
    Caption = 'ENDERECO'
  end
  object Label4: TLabel [3]
    Left = 596
    Top = 322
    Width = 47
    Height = 13
    Caption = 'NUMERO'
  end
  object Label5: TLabel [4]
    Left = 330
    Top = 371
    Width = 44
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label6: TLabel [5]
    Left = 72
    Top = 368
    Width = 42
    Height = 13
    Caption = 'CIDADE'
  end
  object Label7: TLabel [6]
    Left = 596
    Top = 371
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label8: TLabel [7]
    Left = 72
    Top = 273
    Width = 20
    Height = 13
    Caption = 'CEP'
  end
  object Label9: TLabel [8]
    Left = 522
    Top = 198
    Width = 52
    Height = 13
    Caption = 'TELEFONE'
  end
  object Label10: TLabel [9]
    Left = 522
    Top = 150
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label11: TLabel [10]
    Left = 72
    Top = 198
    Width = 35
    Height = 13
    Caption = 'EMAIL'
  end
  object Label12: TLabel [11]
    Left = 223
    Top = 104
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
  end
  inherited Panel1: TPanel
    Width = 727
    TabOrder = 12
    ExplicitWidth = 727
    inherited btnAtualizar: TBitBtn
      Left = 553
      ExplicitLeft = 553
    end
  end
  inherited Panel2: TPanel
    Top = 420
    Width = 727
    TabOrder = 13
    ExplicitTop = 420
    ExplicitWidth = 727
    inherited BitBtn10: TBitBtn
      Left = 553
      ExplicitLeft = 553
    end
    inherited btnCancelar: TBitBtn
      Left = 457
      ExplicitLeft = 457
    end
    inherited btnGravar: TBitBtn
      Left = 355
      ExplicitLeft = 355
    end
    inherited DBNavigator2: TDBNavigator
      Hints.Strings = ()
    end
  end
  object db_id_empresa: TDBEdit [14]
    Left = 72
    Top = 123
    Width = 120
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = DS_padrao
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object db_cadastro: TDBEdit [15]
    Left = 223
    Top = 123
    Width = 120
    Height = 21
    DataField = 'CADASTRO'
    DataSource = DS_padrao
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object db_nome: TDBEdit [16]
    Left = 72
    Top = 169
    Width = 429
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object db_CPF: TDBEdit [17]
    Left = 522
    Top = 169
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object db_email: TDBEdit [18]
    Left = 72
    Top = 216
    Width = 429
    Height = 21
    DataField = 'EMAIL'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object db_telefone: TDBEdit [19]
    Left = 522
    Top = 216
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object db_CEP: TDBEdit [20]
    Left = 72
    Top = 291
    Width = 120
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object db_endereco: TDBEdit [21]
    Left = 72
    Top = 341
    Width = 500
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object db_numero: TDBEdit [22]
    Left = 596
    Top = 341
    Width = 47
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object db_UF: TDBEdit [23]
    Left = 596
    Top = 387
    Width = 47
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object db_bairro: TDBEdit [24]
    Left = 330
    Top = 387
    Width = 242
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object db_cidade: TDBEdit [25]
    Left = 72
    Top = 387
    Width = 242
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
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
    Top = 256
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
    Left = 17
    Top = 184
  end
end
