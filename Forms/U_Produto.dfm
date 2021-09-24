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
  end
  object Label2: TLabel [1]
    Left = 210
    Top = 93
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
  end
  object Label4: TLabel [3]
    Left = 57
    Top = 268
    Width = 92
    Height = 13
    Caption = 'ID_FORNECEDOR'
  end
  object Label5: TLabel [4]
    Left = 57
    Top = 191
    Width = 57
    Height = 13
    Caption = 'VL_CUSTO'
  end
  object Label6: TLabel [5]
    Left = 210
    Top = 191
    Width = 56
    Height = 13
    Caption = 'VL_VENDA'
  end
  object Label7: TLabel [6]
    Left = 362
    Top = 191
    Width = 50
    Height = 13
    Caption = 'ESTOQUE'
  end
  object Label8: TLabel [7]
    Left = 506
    Top = 191
    Width = 79
    Height = 13
    Caption = 'ESTOQUE_MIN'
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
  end
  inherited Panel1: TPanel
    Width = 706
    ExplicitWidth = 706
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
    ExplicitTop = 391
    ExplicitWidth = 706
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
  object DB_unidade: TDBComboBox [12]
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
    TabOrder = 2
  end
  object db_id_produto: TDBEdit [13]
    Left = 57
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object DBEdit1: TDBEdit [14]
    Left = 210
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DBEdit2: TDBEdit [15]
    Left = 57
    Top = 160
    Width = 497
    Height = 21
    TabOrder = 5
  end
  object DBEdit3: TDBEdit [16]
    Left = 57
    Top = 210
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object DBEdit4: TDBEdit [17]
    Left = 506
    Top = 210
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object DBEdit5: TDBEdit [18]
    Left = 362
    Top = 210
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object DBEdit6: TDBEdit [19]
    Left = 210
    Top = 210
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object DBEdit8: TDBEdit [20]
    Left = 57
    Top = 287
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object DB_nome_fornecedor: TcxDBTextEdit [21]
    Left = 57
    Top = 339
    DataBinding.DataField = 'NOME'
    DataBinding.DataSource = DS_padrao
    TabOrder = 11
    Width = 570
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
