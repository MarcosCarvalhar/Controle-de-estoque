inherited frm_empresa: Tfrm_empresa
  Caption = 'CADASTRO DE EMPRESA'
  ClientHeight = 471
  ClientWidth = 640
  ExplicitWidth = 646
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 640
    TabOrder = 2
    ExplicitWidth = 640
    inherited lblTitulo: TLabel
      Left = 275
      Top = 14
      Width = 132
      Caption = 'EMPRESA'
      ExplicitLeft = 275
      ExplicitTop = 14
      ExplicitWidth = 132
    end
    inherited Image1: TImage
      Left = 227
      Top = 14
      ExplicitLeft = 227
      ExplicitTop = 14
    end
  end
  inherited Panel2: TPanel
    Top = 413
    Width = 640
    Height = 58
    ExplicitTop = 432
    ExplicitWidth = 640
    ExplicitHeight = 58
    inherited BitBtn10: TBitBtn
      Left = 524
      Top = 17
      Height = 27
      ExplicitLeft = 524
      ExplicitTop = 17
      ExplicitHeight = 27
    end
    inherited btnCancelar: TBitBtn
      Left = 428
      Top = 17
      Height = 27
      ExplicitLeft = 428
      ExplicitTop = 17
      ExplicitHeight = 27
    end
    inherited btnGravar: TBitBtn
      Left = 326
      Top = 17
      Height = 27
      ExplicitLeft = 326
      ExplicitTop = 17
      ExplicitHeight = 27
    end
    inherited DBNavigator2: TDBNavigator
      Left = 43
      Top = 17
      Height = 27
      Hints.Strings = ()
      OnClick = DBNavigator2Click
      ExplicitLeft = 43
      ExplicitTop = 17
      ExplicitHeight = 27
    end
  end
  inherited Panel3: TPanel
    Width = 640
    Height = 353
    TabOrder = 0
    ExplicitWidth = 640
    ExplicitHeight = 351
    object Label1: TLabel
      Left = 43
      Top = 55
      Width = 83
      Height = 13
      Caption = 'RAZ'#195'O SOCIAL'
    end
    object Label10: TLabel
      Left = 43
      Top = 151
      Width = 35
      Height = 13
      Caption = 'EMAIL'
    end
    object Label12: TLabel
      Left = 186
      Top = 5
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
    end
    object Label13: TLabel
      Left = 43
      Top = 5
      Width = 44
      Height = 13
      Caption = 'C'#211'DIGO'
    end
    object Label14: TLabel
      Left = 562
      Top = 259
      Width = 28
      Height = 13
      Caption = 'NUM.'
    end
    object Label2: TLabel
      Left = 43
      Top = 103
      Width = 90
      Height = 13
      Caption = 'NOME FANTASIA'
    end
    object Label3: TLabel
      Left = 43
      Top = 259
      Width = 56
      Height = 13
      Caption = 'ENDERE'#199'O'
    end
    object Label4: TLabel
      Left = 305
      Top = 305
      Width = 44
      Height = 13
      Caption = 'BAIRRO'
    end
    object Label5: TLabel
      Left = 43
      Top = 305
      Width = 42
      Height = 13
      Caption = 'CIDADE'
    end
    object Label6: TLabel
      Left = 562
      Top = 305
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object Label7: TLabel
      Left = 43
      Top = 213
      Width = 20
      Height = 13
      Caption = 'CEP'
    end
    object Label8: TLabel
      Left = 489
      Top = 151
      Width = 52
      Height = 13
      Caption = 'TELEFONE'
    end
    object Label9: TLabel
      Left = 489
      Top = 102
      Width = 27
      Height = 13
      Caption = 'CNPJ'
    end
    object db_bairro: TDBEdit
      Left = 305
      Top = 324
      Width = 238
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DS_padrao
      TabOrder = 11
    end
    object db_cadastro: TDBEdit
      Left = 186
      Top = 24
      Width = 121
      Height = 21
      DataField = 'CADASTRO'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 1
    end
    object db_CEP: TDBEdit
      Left = 43
      Top = 232
      Width = 120
      Height = 21
      DataField = 'CEP'
      DataSource = DS_padrao
      TabOrder = 7
    end
    object db_cidade: TDBEdit
      Left = 43
      Top = 324
      Width = 250
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = DS_padrao
      TabOrder = 10
    end
    object db_CNPJ: TDBEdit
      Left = 489
      Top = 121
      Width = 124
      Height = 21
      DataField = 'CNPJ'
      DataSource = DS_padrao
      TabOrder = 4
    end
    object db_email: TDBEdit
      Left = 44
      Top = 170
      Width = 427
      Height = 21
      DataField = 'EMAIL'
      DataSource = DS_padrao
      TabOrder = 5
    end
    object db_endereco: TDBEdit
      Left = 44
      Top = 278
      Width = 499
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DS_padrao
      TabOrder = 8
    end
    object db_id_empresa: TDBEdit
      Left = 43
      Top = 24
      Width = 121
      Height = 21
      DataField = 'ID_EMPRESA'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 0
    end
    object db_n_fantasia: TDBEdit
      Left = 43
      Top = 122
      Width = 428
      Height = 21
      CharCase = ecUpperCase
      DataField = 'N_FANTASIA'
      DataSource = DS_padrao
      TabOrder = 3
    end
    object db_numero: TDBEdit
      Left = 562
      Top = 278
      Width = 51
      Height = 21
      DataField = 'NUMERO'
      DataSource = DS_padrao
      TabOrder = 9
    end
    object db_razao_social: TDBEdit
      Left = 43
      Top = 76
      Width = 570
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RAZAO_SOCIAL'
      DataSource = DS_padrao
      TabOrder = 2
    end
    object db_telefone: TDBEdit
      Left = 489
      Top = 170
      Width = 124
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DS_padrao
      TabOrder = 6
    end
    object DBComboBox1: TDBComboBox
      Left = 562
      Top = 324
      Width = 52
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
      TabOrder = 12
    end
  end
  inherited Q_padrao: TFDQuery
    AfterInsert = Q_padraoAfterInsert
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
      'FROM EMPRESA'
      'WHERE ID_EMPRESA = :PID_EMPRESA')
    Left = 500
    Top = 72
    ParamData = <
      item
        Name = 'PID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
    Left = 428
    Top = 72
  end
end
