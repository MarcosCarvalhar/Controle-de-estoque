inherited frm_Produto: Tfrm_Produto
  Caption = 'Cadastro de produtos'
  ClientHeight = 426
  ClientWidth = 660
  ExplicitWidth = 666
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 660
    TabOrder = 1
    ExplicitWidth = 706
    inherited lblTitulo: TLabel
      Left = 266
      Width = 152
      Caption = 'PRODUTOS'
      ExplicitLeft = 266
      ExplicitWidth = 152
    end
    inherited Image1: TImage
      Left = 218
      ExplicitLeft = 218
    end
  end
  inherited Panel2: TPanel
    Top = 366
    Width = 660
    TabOrder = 2
    ExplicitTop = 401
    ExplicitWidth = 706
    inherited BitBtn10: TBitBtn
      Left = 529
      ExplicitLeft = 529
    end
    inherited btnCancelar: TBitBtn
      Left = 433
      ExplicitLeft = 433
    end
    inherited btnGravar: TBitBtn
      Left = 331
      ExplicitLeft = 331
    end
    inherited DBNavigator2: TDBNavigator
      Left = 49
      Hints.Strings = ()
      OnClick = DBNavigator2Click
      ExplicitLeft = 49
    end
  end
  inherited Panel3: TPanel
    Width = 660
    Height = 306
    TabOrder = 0
    ExplicitWidth = 706
    ExplicitHeight = 341
    object Label1: TLabel
      Left = 49
      Top = 21
      Width = 120
      Height = 13
      Caption = 'C'#211'DIGO DO PRODUTO'
    end
    object Label10: TLabel
      Left = 49
      Top = 272
      Width = 31
      Height = 13
      Caption = 'NOME'
    end
    object Label11: TLabel
      Left = 49
      Top = 201
      Width = 72
      Height = 13
      Caption = 'FORNECEDOR'
    end
    object Label2: TLabel
      Left = 202
      Top = 21
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
    end
    object Label3: TLabel
      Left = 49
      Top = 69
      Width = 107
      Height = 13
      Caption = 'NOME DO PRODUTO'
    end
    object Label4: TLabel
      Left = 49
      Top = 230
      Width = 44
      Height = 13
      Caption = 'CODIGO'
    end
    object Label5: TLabel
      Left = 49
      Top = 119
      Width = 94
      Height = 13
      Caption = 'VALOR DE CUSTO'
    end
    object Label6: TLabel
      Left = 202
      Top = 119
      Width = 93
      Height = 13
      Caption = 'VALOR DE VENDA'
    end
    object Label7: TLabel
      Left = 354
      Top = 119
      Width = 50
      Height = 13
      Caption = 'ESTOQUE'
    end
    object Label8: TLabel
      Left = 498
      Top = 119
      Width = 98
      Height = 13
      Caption = 'ESTOQUE MINIMO'
    end
    object Label9: TLabel
      Left = 569
      Top = 69
      Width = 50
      Height = 13
      Caption = 'UNIDADE'
    end
    object db_cadastro: TDBEdit
      Left = 202
      Top = 40
      Width = 121
      Height = 21
      DataField = 'CADASTRO'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 1
    end
    object db_estoque: TDBEdit
      Left = 354
      Top = 138
      Width = 121
      Height = 21
      DataField = 'ESTOQUE'
      DataSource = DS_padrao
      TabOrder = 6
    end
    object db_estoque_min: TDBEdit
      Left = 498
      Top = 138
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object db_id_fornecedor: TDBEdit
      Left = 99
      Top = 228
      Width = 121
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 8
    end
    object db_id_produto: TDBEdit
      Left = 49
      Top = 42
      Width = 121
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 0
    end
    object db_nome_fornecedor: TDBEdit
      Left = 99
      Top = 264
      Width = 520
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DS_padrao
      TabOrder = 9
    end
    object db_produto_descricao: TDBEdit
      Left = 49
      Top = 88
      Width = 497
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PRODUTO_DESCRICAO'
      DataSource = DS_padrao
      TabOrder = 2
    end
    object db_unidade: TDBComboBox
      Left = 569
      Top = 88
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UNIDADE'
      DataSource = DS_padrao
      Items.Strings = (
        'KG'
        'ML'
        'PCT'
        'P'#199
        'UN'
        'LT')
      TabOrder = 3
    end
    object db_vl_custo: TDBEdit
      Left = 49
      Top = 138
      Width = 121
      Height = 21
      DataField = 'VL_CUSTO'
      DataSource = DS_padrao
      TabOrder = 4
    end
    object db_vl_venda: TDBEdit
      Left = 202
      Top = 138
      Width = 121
      Height = 21
      DataField = 'VL_VENDA'
      DataSource = DS_padrao
      TabOrder = 5
    end
  end
  inherited Q_padrao: TFDQuery
    AfterInsert = Q_padraoAfterInsert
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_PRODUTO'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'SELECT '
      '   P.ID_PRODUTO,'
      '   P.CADASTRO,'
      '   P.PRODUTO_DESCRICAO,'
      '   P.ID_FORNECEDOR,'
      '   P.VL_CUSTO,'
      '   P.VL_VENDA,'
      '   P.ESTOQUE,'
      '   P.ESTOQUE_MIN,'
      '   P.UNIDADE,'
      '   F.NOME'
      ' FROM PRODUTO P, FORNECEDOR F'
      ' WHERE '
      '     P.ID_FORNECEDOR = F.ID_FORNECEDOR'
      '  AND'
      '     P.ID_PRODUTO = :PID_PRODUTO')
    Left = 432
    Top = 80
    ParamData = <
      item
        Name = 'PID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_padraoID_PRODUTO: TFDAutoIncField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited DS_padrao: TDataSource
    Left = 520
    Top = 80
  end
end
