inherited frm_Pesq_Usuario: Tfrm_Pesq_Usuario
  Align = alCustom
  Caption = 'PESQUISA DE USU'#193'RIOS'
  ClientHeight = 460
  ClientWidth = 779
  ExplicitWidth = 785
  ExplicitHeight = 488
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
    Width = 779
    Height = 77
    ExplicitTop = -6
    ExplicitWidth = 779
    ExplicitHeight = 77
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
    inherited BitBtn1: TBitBtn
      Left = 665
      Top = 34
      OnClick = BitBtn1Click
      ExplicitLeft = 665
      ExplicitTop = 34
    end
    inherited cb_Chave_pesquisa: TComboBox
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CADASTRO'
        'PER'#205'ODO'
        'TODOS')
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 77
    Width = 654
    Height = 338
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
    Top = 77
    Height = 383
    ExplicitLeft = 0
    ExplicitTop = 76
    ExplicitHeight = 391
    inherited BitBtn5: TBitBtn
      OnClick = BitBtn5Click
    end
  end
  inherited BitBtn3: TBitBtn
    Left = 665
    Top = 422
    ExplicitLeft = 665
    ExplicitTop = 422
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
