inherited frm_Pesq_Usuario: Tfrm_Pesq_Usuario
  Caption = 'PESQUISA DE USU'#193'RIOS'
  ClientWidth = 793
  ExplicitWidth = 799
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [0]
    Left = 456
    Top = 64
    Width = 31
    Height = 13
    Caption = 'NOME'
  end
  object Label7: TLabel [1]
    Left = 456
    Top = 144
    Width = 36
    Height = 13
    Caption = 'SENHA'
  end
  object Label8: TLabel [2]
    Left = 456
    Top = 184
    Width = 27
    Height = 13
    Caption = 'TIPO'
  end
  inherited Panel1: TPanel
    Width = 793
    Height = 77
    ExplicitWidth = 793
    ExplicitHeight = 77
    inherited BitBtn1: TBitBtn
      Left = 665
      Top = 34
      OnClick = BitBtn1Click
      ExplicitLeft = 665
      ExplicitTop = 34
    end
    inherited cb_Chave_pesquisa: TComboBox
      OnChange = cb_Chave_pesquisaChange
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 77
    Width = 793
    Height = 324
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Width = 793
    ExplicitWidth = 793
    inherited BitBtn3: TBitBtn
      Left = 665
      ExplicitLeft = 665
    end
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
