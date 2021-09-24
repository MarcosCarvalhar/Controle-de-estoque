inherited frm_Fornecedor: Tfrm_Fornecedor
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 484
  ClientWidth = 755
  ExplicitWidth = 761
  ExplicitHeight = 512
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 72
    Top = 88
    Width = 92
    Height = 13
    Caption = 'ID_FORNECEDOR'
  end
  object Label2: TLabel [1]
    Left = 208
    Top = 88
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
  end
  object Label3: TLabel [2]
    Left = 71
    Top = 140
    Width = 31
    Height = 13
    Caption = 'NOME'
  end
  object Label4: TLabel [3]
    Left = 72
    Top = 237
    Width = 27
    Height = 13
    Caption = 'CNPJ'
  end
  object Label5: TLabel [4]
    Left = 521
    Top = 237
    Width = 20
    Height = 13
    Caption = 'CEP'
  end
  object Label6: TLabel [5]
    Left = 72
    Top = 287
    Width = 56
    Height = 13
    Caption = 'ENDERECO'
  end
  object Label7: TLabel [6]
    Left = 592
    Top = 287
    Width = 47
    Height = 13
    Caption = 'NUMERO'
  end
  object Label8: TLabel [7]
    Left = 319
    Top = 333
    Width = 44
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label9: TLabel [8]
    Left = 71
    Top = 333
    Width = 42
    Height = 13
    Caption = 'CIDADE'
  end
  object Label10: TLabel [9]
    Left = 592
    Top = 333
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label11: TLabel [10]
    Left = 72
    Top = 189
    Width = 35
    Height = 13
    Caption = 'EMAIL'
  end
  object Label12: TLabel [11]
    Left = 521
    Top = 186
    Width = 52
    Height = 13
    Caption = 'TELEFONE'
  end
  inherited Panel1: TPanel
    Width = 755
    ExplicitWidth = 755
    inherited btn_Deletar: TBitBtn
      Left = 224
      ExplicitLeft = 224
    end
    inherited btn_Novo: TBitBtn
      Left = 71
      ExplicitLeft = 71
    end
    inherited btnAtualizar: TBitBtn
      Left = 549
      ExplicitLeft = 549
    end
  end
  inherited Panel2: TPanel
    Top = 414
    Width = 755
    ExplicitTop = 414
    ExplicitWidth = 755
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
  object DBEdit1: TDBEdit [14]
    Left = 71
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [15]
    Left = 208
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [16]
    Left = 72
    Top = 162
    Width = 570
    Height = 21
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [17]
    Left = 592
    Top = 306
    Width = 50
    Height = 21
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [18]
    Left = 72
    Top = 306
    Width = 499
    Height = 21
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [19]
    Left = 521
    Top = 253
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [20]
    Left = 71
    Top = 253
    Width = 429
    Height = 21
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [21]
    Left = 521
    Top = 205
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [22]
    Left = 71
    Top = 205
    Width = 429
    Height = 21
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [23]
    Left = 592
    Top = 352
    Width = 50
    Height = 21
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [24]
    Left = 319
    Top = 349
    Width = 252
    Height = 21
    TabOrder = 12
  end
  object DBEdit12: TDBEdit [25]
    Left = 71
    Top = 349
    Width = 234
    Height = 21
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
    Left = 8
    Top = 312
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
