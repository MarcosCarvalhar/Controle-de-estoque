inherited frm_Cliente: Tfrm_Cliente
  Caption = 'CADASTRO DE CLIENTE'
  ClientWidth = 660
  ExplicitWidth = 666
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 660
    TabOrder = 1
    ExplicitWidth = 727
    inherited lblTitulo: TLabel
      Left = 276
      Top = 17
      Width = 122
      Caption = 'CLIENTE'
      ExplicitLeft = 276
      ExplicitTop = 17
      ExplicitWidth = 122
    end
    inherited Image1: TImage
      Left = 228
      Top = 17
      ExplicitLeft = 228
      ExplicitTop = 17
    end
  end
  inherited Panel2: TPanel
    Top = 400
    Width = 660
    Height = 54
    TabOrder = 2
    ExplicitTop = 436
    ExplicitWidth = 727
    ExplicitHeight = 54
    inherited BitBtn10: TBitBtn
      Left = 529
      Top = 16
      ExplicitLeft = 529
      ExplicitTop = 16
    end
    inherited btnCancelar: TBitBtn
      Left = 433
      Top = 16
      ExplicitLeft = 433
      ExplicitTop = 16
    end
    inherited btnGravar: TBitBtn
      Left = 331
      Top = 16
      ExplicitLeft = 331
      ExplicitTop = 16
    end
    inherited DBNavigator2: TDBNavigator
      Left = 48
      Top = 16
      Hints.Strings = ()
      OnClick = DBNavigator2Click
      ExplicitLeft = 48
      ExplicitTop = 16
    end
  end
  inherited Panel3: TPanel
    Width = 660
    Height = 340
    TabOrder = 0
    ExplicitWidth = 727
    ExplicitHeight = 370
    object Label1: TLabel
      Left = 48
      Top = 16
      Width = 44
      Height = 13
      Caption = 'C'#211'DIGO'
    end
    object Label10: TLabel
      Left = 498
      Top = 67
      Width = 20
      Height = 13
      Caption = 'CPF'
    end
    object Label11: TLabel
      Left = 48
      Top = 117
      Width = 35
      Height = 13
      Caption = 'EMAIL'
    end
    object Label12: TLabel
      Left = 199
      Top = 16
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
    end
    object Label2: TLabel
      Left = 48
      Top = 67
      Width = 97
      Height = 13
      Caption = 'NOME DO CLIENTE'
    end
    object Label3: TLabel
      Left = 48
      Top = 234
      Width = 56
      Height = 13
      Caption = 'ENDERE'#199'O'
    end
    object Label4: TLabel
      Left = 566
      Top = 234
      Width = 28
      Height = 13
      Caption = 'NUM.'
    end
    object Label5: TLabel
      Left = 306
      Top = 280
      Width = 44
      Height = 13
      Caption = 'BAIRRO'
    end
    object Label6: TLabel
      Left = 48
      Top = 280
      Width = 42
      Height = 13
      Caption = 'CIDADE'
    end
    object Label7: TLabel
      Left = 566
      Top = 280
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object Label8: TLabel
      Left = 48
      Top = 185
      Width = 20
      Height = 13
      Caption = 'CEP'
    end
    object Label9: TLabel
      Left = 498
      Top = 117
      Width = 52
      Height = 13
      Caption = 'TELEFONE'
    end
    object db_bairro: TDBEdit
      Left = 306
      Top = 299
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
    object db_cadastro: TDBEdit
      Left = 199
      Top = 35
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
    object db_CEP: TDBEdit
      Left = 48
      Top = 203
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
    object db_cidade: TDBEdit
      Left = 48
      Top = 299
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
    object db_CPF: TDBEdit
      Left = 498
      Top = 86
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
    object db_email: TDBEdit
      Left = 48
      Top = 135
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
    object db_endereco: TDBEdit
      Left = 48
      Top = 253
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
    object db_id_empresa: TDBEdit
      Left = 48
      Top = 35
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
    object db_nome: TDBEdit
      Left = 48
      Top = 86
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
    object db_numero: TDBEdit
      Left = 566
      Top = 253
      Width = 53
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
    object db_telefone: TDBEdit
      Left = 498
      Top = 135
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
    object DBComboBox1: TDBComboBox
      Left = 566
      Top = 299
      Width = 53
      Height = 21
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
      'WHERE ID_CLIENTE = :PID_CLIENTE')
    Left = 472
    Top = 72
    ParamData = <
      item
        Name = 'PID_CLIENTE'
        ParamType = ptInput
        Value = Null
      end>
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
      EditMask = '!99/99/00;1;_'
    end
  end
  inherited DS_padrao: TDataSource
    Left = 393
    Top = 72
  end
end
