inherited frm_formasPGTO: Tfrm_formasPGTO
  Caption = 'CADASTRO DE FORMAS DE PAGAMENTO'
  ClientHeight = 265
  ClientWidth = 633
  ExplicitWidth = 639
  ExplicitHeight = 294
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 633
    TabOrder = 1
    ExplicitWidth = 633
    inherited lblTitulo: TLabel
      Left = 163
      Width = 329
      Caption = 'FORMA DE PAGAMENTO'
      ExplicitLeft = 163
      ExplicitWidth = 329
    end
    inherited Image1: TImage
      Left = 115
      ExplicitLeft = 115
    end
  end
  inherited Panel2: TPanel
    Top = 205
    Width = 633
    TabOrder = 2
    ExplicitTop = 205
    ExplicitWidth = 633
    inherited BitBtn10: TBitBtn
      Left = 513
      Top = 16
      ExplicitLeft = 513
      ExplicitTop = 16
    end
    inherited btnCancelar: TBitBtn
      Left = 417
      Top = 16
      ExplicitLeft = 417
      ExplicitTop = 16
    end
    inherited btnGravar: TBitBtn
      Left = 315
      Top = 16
      ExplicitLeft = 315
      ExplicitTop = 16
    end
    inherited DBNavigator2: TDBNavigator
      Left = 32
      Top = 16
      Hints.Strings = ()
      OnClick = DBNavigator2Click
      ExplicitLeft = 32
      ExplicitTop = 16
    end
  end
  inherited Panel3: TPanel
    Width = 633
    Height = 145
    TabOrder = 0
    ExplicitWidth = 633
    ExplicitHeight = 145
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 44
      Height = 13
      Caption = 'C'#211'DIGO'
    end
    object Label2: TLabel
      Left = 32
      Top = 80
      Width = 129
      Height = 13
      Caption = 'FORMA DE PAGAMENTO'
    end
    object Label3: TLabel
      Left = 175
      Top = 24
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
    end
    object db_cadastro: TDBEdit
      Left = 175
      Top = 43
      Width = 121
      Height = 21
      DataField = 'CADASTRO'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 1
    end
    object db_descricao: TDBEdit
      Left = 32
      Top = 99
      Width = 571
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DS_padrao
      TabOrder = 2
    end
    object db_id_forma_pgto: TDBEdit
      Left = 32
      Top = 43
      Width = 121
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 0
    end
  end
  inherited Q_padrao: TFDQuery
    AfterInsert = Q_padraoAfterInsert
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT '
      '   ID_FORMA_PGTO,'
      '   DESCRICAO,'
      '   CADASTRO'
      ' FROM FORMA_PGTO'
      ' WHERE ID_FORMA_PGTO = :PID_FORMA_PGTO')
    Left = 392
    Top = 80
    ParamData = <
      item
        Name = 'PID_FORMA_PGTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
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
    Left = 464
    Top = 80
  end
end
