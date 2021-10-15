inherited frm_Pesq_Compras: Tfrm_Pesq_Compras
  Caption = 'PESQUISA DE COMPRAS'
  ExplicitWidth = 793
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited cb_Chave_pesquisa: TComboBox
      Items.Strings = (
        'C'#211'DIGO '
        'FORNECEDOR'
        'PER'#205'ODO'
        'TODOS')
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'EMISS'#195'O'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'FORMA DE PAGAMENTO'
        Visible = True
      end>
  end
  inherited Panel3: TPanel
    inherited lblTitulo: TLabel
      Width = 137
      Caption = 'COMPRAS'
      ExplicitWidth = 137
    end
  end
  inherited ds_pesq_padrao: TDataSource
    DataSet = q_pesq_padrao
    Left = 440
    Top = 447
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  C.ID_COMPRA,'
      '  C.ID_FORNECEDOR,'
      '  C.ID_FORMA_PGTO,'
      '  C.USUARIO,'
      '  C.CADASTRO,'
      '  C.VALOR,'
      '  F.NOME,'
      '  P.DESCRICAO'
      'FROM COMPRA C, FORNECEDOR F, FORMA_PGTO P'
      'WHERE'
      '    C.ID_FORNECEDOR = F.ID_FORNECEDOR'
      '  AND'
      '    C.ID_FORMA_PGTO = P.ID_FORMA_PGTO'
      'ORDER BY ID_COMPRA')
    Left = 360
    Top = 446
    object q_pesq_padraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object q_pesq_padraoVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object q_pesq_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object q_pesq_padraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited dst_rel_pesq_padrao: TfrxDBDataset
    Left = 272
    Top = 448
  end
  inherited rel_pesq_padrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
