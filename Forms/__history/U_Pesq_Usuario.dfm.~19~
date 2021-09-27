inherited frm_Pesq_Usuario: Tfrm_Pesq_Usuario
  Align = alCustom
  Caption = 'PESQUISA DE USU'#193'RIOS'
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [0]
    Left = 456
    Top = 64
    Width = 31
    Height = 13
    Caption = 'NOME'
  end
  inherited Panel1: TPanel
    ParentShowHint = False
    inherited mk_Inicio: TMaskEdit
      Width = 118
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitWidth = 118
    end
    inherited mk_Fim: TMaskEdit
      Width = 118
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitWidth = 118
    end
    inherited btnPesquisar: TBitBtn
      Left = 665
      Top = 34
      OnClick = btnPesquisarClick
      ExplicitLeft = 665
      ExplicitTop = 34
    end
    inherited cb_Chave_pesquisa: TComboBox
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CADASTRO'
        'TODOS')
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 97
    Width = 651
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    ParentCtl3D = False
    inherited btnVisualizar: TBitBtn
      OnClick = btnVisualizarClick
    end
    inherited btnEditar: TBitBtn
      Top = 97
      Align = alCustom
      Anchors = [akLeft]
      ParentBiDiMode = False
      OnClick = btnEditarClick
      ExplicitTop = 97
    end
    inherited btnAdicionar: TBitBtn
      Top = 164
      OnClick = btnAdicionarClick
      ExplicitTop = 164
    end
    inherited btnDeletar: TBitBtn
      ParentFont = False
    end
  end
  inherited btnSair: TBitBtn
    Left = 665
    Top = 427
    ExplicitLeft = 665
    ExplicitTop = 427
  end
  inherited btnImprimir: TBitBtn
    Left = 550
    Top = 427
    ExplicitLeft = 550
    ExplicitTop = 427
  end
  inherited btnBaixar: TBitBtn
    Top = 427
    ExplicitTop = 427
  end
  inherited ds_pesq_padrao: TDataSource
    DataSet = q_pesq_padrao
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'select'
      '  nome,'
      '  id_usuario,'
      '  tipo,'
      '  cadastro'
      ' from usuario'
      ' order by id_usuario')
    object q_pesq_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object q_pesq_padraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
