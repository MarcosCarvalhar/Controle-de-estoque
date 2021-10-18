inherited frm_Pesq_FormasPGTO: Tfrm_Pesq_FormasPGTO
  Caption = 'PESQUISA DE FORMAS DE PAGAMENTO'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Panel3: TPanel
    inherited lblTitulo: TLabel
      Left = 236
      Width = 345
      Caption = 'FORMAS DE PAGAMENTO'
      ExplicitLeft = 236
      ExplicitWidth = 345
    end
    inherited Image1: TImage
      Left = 198
      ExplicitLeft = 198
    end
  end
  inherited ds_pesq_padrao: TDataSource
    DataSet = q_pesq_padrao
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '   ID_FORMA_PGTO,'
      '   DESCRICAO,'
      '   CADASTRO'
      ' FROM FORMA_PGTO'
      ' ORDER BY ID_FORMA_PGTO')
    object q_pesq_padraoID_FORMA_PGTO2: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoDESCRICAO2: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited rel_pesq_padrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
