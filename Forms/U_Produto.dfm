inherited frm_Produto: Tfrm_Produto
  Caption = 'Cadastro de produtos'
  ClientHeight = 461
  ClientWidth = 706
  ExplicitWidth = 712
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 57
    Top = 93
    Width = 74
    Height = 13
    Caption = 'ID_PRODUTO'
    FocusControl = DB_id_produto
  end
  object Label2: TLabel [1]
    Left = 210
    Top = 89
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
  end
  object Label3: TLabel [2]
    Left = 57
    Top = 141
    Width = 125
    Height = 13
    Caption = 'PRODUTO_DESCRICAO'
    FocusControl = DB_produto_descricao
  end
  object Label4: TLabel [3]
    Left = 57
    Top = 268
    Width = 92
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = DB_fornecedor
  end
  object Label5: TLabel [4]
    Left = 57
    Top = 191
    Width = 57
    Height = 13
    Caption = 'VL_CUSTO'
    FocusControl = DB_vl_custo
  end
  object Label6: TLabel [5]
    Left = 210
    Top = 191
    Width = 56
    Height = 13
    Caption = 'VL_VENDA'
    FocusControl = DB_vl_venda
  end
  object Label7: TLabel [6]
    Left = 362
    Top = 191
    Width = 50
    Height = 13
    Caption = 'ESTOQUE'
    FocusControl = DB_estoque
  end
  object Label8: TLabel [7]
    Left = 506
    Top = 191
    Width = 79
    Height = 13
    Caption = 'ESTOQUE_MIN'
    FocusControl = DB_estoque_min
  end
  object Label9: TLabel [8]
    Left = 577
    Top = 141
    Width = 50
    Height = 13
    Caption = 'UNIDADE'
  end
  object Label10: TLabel [9]
    Left = 57
    Top = 320
    Width = 106
    Height = 13
    Caption = 'NOME FORNECEDOR'
    FocusControl = DB_nome_fornecedor
  end
  inherited Panel1: TPanel
    Width = 706
    TabOrder = 9
    ExplicitWidth = 768
    inherited btn_Deletar: TBitBtn
      Left = 225
      ExplicitLeft = 225
    end
    inherited btn_Editar: TBitBtn
      Left = 393
      ExplicitLeft = 393
    end
    inherited btn_Novo: TBitBtn
      Left = 57
      ExplicitLeft = 57
    end
    inherited btnAtualizar: TBitBtn
      Left = 537
      ExplicitLeft = 537
    end
  end
  inherited Panel2: TPanel
    Top = 391
    Width = 706
    TabOrder = 10
    ExplicitTop = 391
    ExplicitWidth = 768
    inherited BitBtn10: TBitBtn
      Left = 537
      ExplicitLeft = 537
    end
    inherited btnCancelar: TBitBtn
      Left = 441
      ExplicitLeft = 441
    end
    inherited btnGravar: TBitBtn
      Left = 339
      ExplicitLeft = 339
    end
    inherited DBNavigator2: TDBNavigator
      Left = 57
      Hints.Strings = ()
      ExplicitLeft = 57
    end
  end
  object DB_id_produto: TcxDBSpinEdit [12]
    Left = 57
    Top = 108
    DataBinding.DataField = 'ID_PRODUTO'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    TabOrder = 0
    Width = 121
  end
  object DB_produto_descricao: TcxDBTextEdit [13]
    Left = 57
    Top = 160
    DataBinding.DataField = 'PRODUTO_DESCRICAO'
    DataBinding.DataSource = DS_padrao
    TabOrder = 2
    Width = 497
  end
  object DB_fornecedor: TcxDBSpinEdit [14]
    Left = 57
    Top = 284
    DataBinding.DataField = 'ID_FORNECEDOR'
    DataBinding.DataSource = DS_padrao
    TabOrder = 7
    Width = 121
  end
  object DB_vl_custo: TcxDBCurrencyEdit [15]
    Left = 57
    Top = 210
    DataBinding.DataField = 'VL_CUSTO'
    DataBinding.DataSource = DS_padrao
    TabOrder = 3
    Width = 121
  end
  object DB_vl_venda: TcxDBCurrencyEdit [16]
    Left = 210
    Top = 210
    DataBinding.DataField = 'VL_VENDA'
    DataBinding.DataSource = DS_padrao
    TabOrder = 4
    Width = 121
  end
  object DB_estoque: TcxDBCurrencyEdit [17]
    Left = 362
    Top = 210
    DataBinding.DataField = 'ESTOQUE'
    DataBinding.DataSource = DS_padrao
    Properties.AssignedValues.DisplayFormat = True
    TabOrder = 5
    Width = 121
  end
  object DB_estoque_min: TcxDBCurrencyEdit [18]
    Left = 506
    Top = 210
    DataBinding.DataField = 'ESTOQUE_MIN'
    DataBinding.DataSource = DS_padrao
    Properties.AssignedValues.DisplayFormat = True
    TabOrder = 6
    Width = 121
  end
  object DB_cadastro: TcxDBTextEdit [19]
    Left = 210
    Top = 108
    DataBinding.DataField = 'CADASTRO'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    TabOrder = 1
    Width = 121
  end
  object DB_nome_fornecedor: TcxDBTextEdit [20]
    Left = 57
    Top = 339
    DataBinding.DataField = 'NOME'
    DataBinding.DataSource = DS_padrao
    TabOrder = 8
    Width = 570
  end
  object DB_unidade: TDBComboBox [21]
    Left = 577
    Top = 160
    Width = 50
    Height = 21
    DataSource = DS_padrao
    Items.Strings = (
      'KG'
      'ML'
      'PCT'
      'P'#199
      'UN'
      'LT')
    TabOrder = 11
  end
  inherited Q_padrao: TFDQuery
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
      ' WHERE P.ID_FORNECEDOR = F.ID_FORNECEDOR')
    Left = 8
    Top = 168
    object Q_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
      EditMask = '!99/99/00;0;_'
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
    object Q_padraoVL_CUSTO: TBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoVL_VENDA: TBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE_MIN: TBCDField
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
    Left = 8
    Top = 224
  end
end
