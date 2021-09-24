inherited frm_Usuarios: Tfrm_Usuarios
  Align = alCustom
  BorderStyle = bsToolWindow
  Caption = 'CADASTRO DE USU'#193'RIOS'
  ClientHeight = 425
  ClientWidth = 711
  ExplicitWidth = 717
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 72
    Top = 118
    Width = 72
    Height = 13
    Caption = 'ID_USUARIO'
  end
  object Label2: TLabel [1]
    Left = 72
    Top = 178
    Width = 31
    Height = 13
    Caption = 'NOME'
  end
  object Label3: TLabel [2]
    Left = 72
    Top = 234
    Width = 36
    Height = 13
    Caption = 'SENHA'
  end
  object Label4: TLabel [3]
    Left = 314
    Top = 234
    Width = 27
    Height = 13
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 551
    Top = 234
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
  end
  inherited Panel1: TPanel
    Width = 711
    TabOrder = 5
    ExplicitWidth = 711
    inherited btn_Deletar: TBitBtn
      Left = 208
      Enabled = False
      ExplicitLeft = 208
    end
    inherited btn_Editar: TBitBtn
      Left = 383
      Enabled = False
      ExplicitLeft = 383
    end
    inherited btnAtualizar: TBitBtn
      Left = 544
      ExplicitLeft = 544
    end
  end
  inherited Panel2: TPanel
    Top = 368
    Width = 711
    Height = 57
    TabOrder = 6
    ExplicitTop = 368
    ExplicitWidth = 711
    ExplicitHeight = 57
    inherited BitBtn10: TBitBtn
      Left = 544
      Top = 16
      ExplicitLeft = 544
      ExplicitTop = 16
    end
    inherited btnCancelar: TBitBtn
      Left = 448
      Top = 16
      Align = alCustom
      Enabled = False
      ExplicitLeft = 448
      ExplicitTop = 16
    end
    inherited DBNavigator2: TDBNavigator [2]
      Top = 15
      Hints.Strings = ()
      ExplicitTop = 15
    end
    inherited btnGravar: TBitBtn [3]
      Left = 346
      Top = 16
      ExplicitLeft = 346
      ExplicitTop = 16
    end
  end
  object db_tipo: TDBComboBox [7]
    Left = 314
    Top = 253
    Width = 208
    Height = 21
    DataField = 'TIPO'
    DataSource = DS_padrao
    Enabled = False
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 3
  end
  object db_id_usuario: TDBEdit [8]
    Left = 72
    Top = 137
    Width = 63
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_USUARIO'
    DataSource = DS_padrao
    Enabled = False
    TabOrder = 0
  end
  object db_nome: TDBEdit [9]
    Left = 72
    Top = 197
    Width = 562
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DS_padrao
    Enabled = False
    TabOrder = 1
  end
  object db_senha: TDBEdit [10]
    Left = 72
    Top = 253
    Width = 200
    Height = 21
    DataField = 'SENHA'
    DataSource = DS_padrao
    Enabled = False
    PasswordChar = '*'
    TabOrder = 2
  end
  object db_cadastro: TDBEdit [11]
    Left = 549
    Top = 253
    Width = 85
    Height = 21
    DataField = 'CADASTRO'
    DataSource = DS_padrao
    Enabled = False
    TabOrder = 4
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'select'
      '  nome,'
      '  id_usuario,'
      '  senha,'
      '  tipo,'
      '  cadastro'
      ' from usuario'
      'where id_usuario = :pid_usuario')
    Left = 184
    Top = 312
    ParamData = <
      item
        Name = 'PID_USUARIO'
        ParamType = ptInput
      end>
    object Q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited DS_padrao: TDataSource
    Left = 248
    Top = 312
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 336
    Top = 312
  end
end
