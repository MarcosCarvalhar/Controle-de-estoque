inherited frm_Usuarios: Tfrm_Usuarios
  Align = alCustom
  BorderStyle = bsToolWindow
  Caption = 'CADASTRO DE USU'#193'RIOS'
  ClientHeight = 425
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 88
    Top = 118
    Width = 72
    Height = 13
    Caption = 'ID_USUARIO'
  end
  object Label2: TLabel [1]
    Left = 92
    Top = 178
    Width = 31
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
  end
  object Label3: TLabel [2]
    Left = 88
    Top = 234
    Width = 36
    Height = 13
    Caption = 'SENHA'
    FocusControl = db_senha
  end
  object Label4: TLabel [3]
    Left = 330
    Top = 234
    Width = 27
    Height = 13
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 568
    Top = 234
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
  end
  inherited Panel1: TPanel
    TabOrder = 5
    inherited btn_Deletar: TBitBtn
      Enabled = False
    end
    inherited btn_Editar: TBitBtn
      Enabled = False
    end
  end
  inherited Panel2: TPanel
    Top = 368
    Height = 57
    TabOrder = 6
    ExplicitTop = 368
    ExplicitHeight = 57
    inherited BitBtn10: TBitBtn
      Left = 638
      Top = 16
      ExplicitLeft = 638
      ExplicitTop = 16
    end
    inherited btnCancelar: TBitBtn
      Left = 542
      Top = 16
      Align = alCustom
      Enabled = False
      ExplicitLeft = 542
      ExplicitTop = 16
    end
    inherited DBNavigator2: TDBNavigator [2]
      Left = 40
      Top = 15
      Hints.Strings = ()
      ExplicitLeft = 40
      ExplicitTop = 15
    end
    inherited btnGravar: TBitBtn [3]
      Left = 440
      Top = 16
      ExplicitLeft = 440
      ExplicitTop = 16
    end
  end
  object db_nome: TcxDBTextEdit [7]
    Left = 88
    Top = 197
    DataBinding.DataField = 'NOME'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = False
    TabOrder = 1
    Width = 600
  end
  object db_senha: TcxDBTextEdit [8]
    Left = 88
    Top = 253
    DataBinding.DataField = 'SENHA'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Properties.ReadOnly = False
    TabOrder = 2
    Width = 200
  end
  object db_cadastro: TcxDBTextEdit [9]
    Left = 567
    Top = 253
    DataBinding.DataField = 'CADASTRO'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    Properties.ReadOnly = True
    TabOrder = 4
    Width = 121
  end
  object db_tipo: TDBComboBox [10]
    Left = 330
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
  object db_id_usuario: TcxDBTextEdit [11]
    Left = 88
    Top = 137
    DataBinding.DataField = 'ID_USUARIO'
    DataBinding.DataSource = DS_padrao
    Enabled = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    TabOrder = 0
    Width = 63
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
      ' order by id_usuario')
    Left = 184
    Top = 312
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
