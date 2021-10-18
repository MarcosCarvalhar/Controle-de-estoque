inherited frm_Fornecedor: Tfrm_Fornecedor
  Caption = 'CADASTRO DE FORNECEDOR'
  ClientHeight = 405
  ClientWidth = 676
  ExplicitWidth = 682
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 676
    ExplicitWidth = 755
    inherited lblTitulo: TLabel
      Left = 251
      Width = 195
      Caption = 'FORNECEDOR'
      ExplicitLeft = 251
      ExplicitWidth = 195
    end
    inherited Image1: TImage
      Left = 203
      ExplicitLeft = 203
    end
  end
  inherited Panel2: TPanel
    Top = 345
    Width = 676
    ExplicitTop = 389
    ExplicitWidth = 755
    inherited BitBtn10: TBitBtn
      Left = 543
      Top = 16
      ExplicitLeft = 543
      ExplicitTop = 16
    end
    inherited btnCancelar: TBitBtn
      Left = 447
      Top = 16
      ExplicitLeft = 447
      ExplicitTop = 16
    end
    inherited btnGravar: TBitBtn
      Left = 345
      Top = 16
      ExplicitLeft = 345
      ExplicitTop = 16
    end
    inherited DBNavigator2: TDBNavigator
      Left = 47
      Top = 16
      Hints.Strings = ()
      OnClick = DBNavigator2Click
      ExplicitLeft = 47
      ExplicitTop = 16
    end
  end
  inherited Panel3: TPanel
    Width = 676
    Height = 285
    ExplicitWidth = 755
    ExplicitHeight = 329
    object Label1: TLabel
      Left = 47
      Top = 15
      Width = 44
      Height = 13
      Caption = 'C'#211'DIGO'
    end
    object Label10: TLabel
      Left = 583
      Top = 220
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object Label11: TLabel
      Left = 47
      Top = 117
      Width = 35
      Height = 13
      Caption = 'EMAIL'
    end
    object Label12: TLabel
      Left = 472
      Top = 114
      Width = 52
      Height = 13
      Caption = 'TELEFONE'
    end
    object Label2: TLabel
      Left = 184
      Top = 15
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
    end
    object Label3: TLabel
      Left = 47
      Top = 68
      Width = 31
      Height = 13
      Caption = 'NOME'
    end
    object Label4: TLabel
      Left = 472
      Top = 68
      Width = 27
      Height = 13
      Caption = 'CNPJ'
    end
    object Label5: TLabel
      Left = 47
      Top = 174
      Width = 20
      Height = 13
      Caption = 'CEP'
    end
    object Label6: TLabel
      Left = 154
      Top = 174
      Width = 56
      Height = 13
      Caption = 'ENDERECO'
    end
    object Label7: TLabel
      Left = 583
      Top = 174
      Width = 28
      Height = 13
      Caption = 'NUM.'
    end
    object Label8: TLabel
      Left = 311
      Top = 220
      Width = 44
      Height = 13
      Caption = 'BAIRRO'
    end
    object Label9: TLabel
      Left = 47
      Top = 220
      Width = 42
      Height = 13
      Caption = 'CIDADE'
    end
    object db_bairro: TDBEdit
      Left = 311
      Top = 239
      Width = 258
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DS_padrao
      TabOrder = 10
    end
    object db_cadastro: TDBEdit
      Left = 184
      Top = 34
      Width = 121
      Height = 21
      DataField = 'CADASTRO'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 1
    end
    object db_CEP: TDBEdit
      Left = 47
      Top = 193
      Width = 89
      Height = 21
      DataField = 'CEP'
      DataSource = DS_padrao
      TabOrder = 6
    end
    object db_cidade: TDBEdit
      Left = 47
      Top = 239
      Width = 251
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = DS_padrao
      TabOrder = 9
    end
    object db_CNPJ: TDBEdit
      Left = 471
      Top = 84
      Width = 162
      Height = 21
      DataField = 'CNPJ'
      DataSource = DS_padrao
      TabOrder = 3
    end
    object db_email: TDBEdit
      Left = 47
      Top = 133
      Width = 402
      Height = 21
      DataField = 'EMAIL'
      DataSource = DS_padrao
      TabOrder = 4
    end
    object db_endereco: TDBEdit
      Left = 154
      Top = 193
      Width = 415
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DS_padrao
      TabOrder = 7
    end
    object db_id_fornecedor: TDBEdit
      Left = 47
      Top = 34
      Width = 121
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 0
    end
    object db_nome: TDBEdit
      Left = 47
      Top = 84
      Width = 401
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DS_padrao
      TabOrder = 2
    end
    object db_numero: TDBEdit
      Left = 583
      Top = 193
      Width = 50
      Height = 21
      DataField = 'NUMERO'
      DataSource = DS_padrao
      TabOrder = 8
    end
    object db_telefone: TDBEdit
      Left = 472
      Top = 133
      Width = 161
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DS_padrao
      TabOrder = 5
    end
    object db_UF: TDBComboBox
      Left = 583
      Top = 239
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
      TabOrder = 11
    end
  end
  inherited Q_padrao: TFDQuery
    AfterInsert = Q_padraoAfterInsert
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
      ' FROM FORNECEDOR'
      ' WHERE ID_FORNECEDOR = :PID_FORNECEDOR')
    Left = 496
    Top = 72
    ParamData = <
      item
        Name = 'PID_FORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
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
      EditMask = '!99/99/00;1;_'
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
      EditMask = '00.000.000/0000-00;0;_'
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
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
      EditMask = '!\(99\)0000-0000;0_'
      Size = 16
    end
  end
  inherited DS_padrao: TDataSource
    Left = 392
    Top = 72
  end
end
