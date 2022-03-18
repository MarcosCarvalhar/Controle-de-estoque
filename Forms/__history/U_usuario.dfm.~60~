inherited frm_Usuarios: Tfrm_Usuarios
  Align = alCustom
  BorderStyle = bsToolWindow
  Caption = 'CADASTRO DE USU'#193'RIO'
  ClientHeight = 344
  ClientWidth = 634
  ExplicitWidth = 640
  ExplicitHeight = 373
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 634
    Enabled = False
    ExplicitWidth = 634
    inherited lblTitulo: TLabel
      Left = 260
      Top = 14
      Width = 125
      Caption = 'USU'#193'RIO'
      ExplicitLeft = 260
      ExplicitTop = 14
      ExplicitWidth = 125
    end
    inherited Image1: TImage
      Left = 212
      Top = 14
      ExplicitLeft = 212
      ExplicitTop = 14
    end
  end
  inherited Panel2: TPanel
    Top = 284
    Width = 634
    ExplicitTop = 284
    ExplicitWidth = 634
    inherited BitBtn10: TBitBtn
      Left = 512
      Top = 16
      Kind = bkCustom
      ExplicitLeft = 512
      ExplicitTop = 16
    end
    inherited btnCancelar: TBitBtn
      Left = 416
      Top = 16
      Align = alCustom
      ExplicitLeft = 416
      ExplicitTop = 16
    end
    inherited DBNavigator2: TDBNavigator [2]
      Left = 40
      Top = 15
      Hints.Strings = ()
      OnClick = DBNavigator2Click
      ExplicitLeft = 40
      ExplicitTop = 15
    end
    inherited btnGravar: TBitBtn [3]
      Left = 314
      Top = 16
      ExplicitLeft = 314
      ExplicitTop = 16
    end
  end
  inherited Panel3: TPanel
    Width = 634
    Height = 224
    AutoSize = True
    Enabled = False
    ExplicitWidth = 634
    ExplicitHeight = 224
    object Label1: TLabel
      Left = 40
      Top = 22
      Width = 44
      Height = 13
      Caption = 'C'#211'DIGO'
    end
    object Label2: TLabel
      Left = 40
      Top = 82
      Width = 103
      Height = 13
      Caption = 'NOME DE USU'#193'RIO'
    end
    object Label3: TLabel
      Left = 40
      Top = 138
      Width = 36
      Height = 13
      Caption = 'SENHA'
    end
    object Label4: TLabel
      Left = 282
      Top = 138
      Width = 27
      Height = 13
      Caption = 'TIPO'
    end
    object Label5: TLabel
      Left = 517
      Top = 138
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
    end
    object db_cadastro: TDBEdit
      Left = 517
      Top = 157
      Width = 85
      Height = 21
      DataField = 'CADASTRO'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 0
    end
    object db_id_usuario: TDBEdit
      Left = 40
      Top = 41
      Width = 63
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ID_USUARIO'
      DataSource = DS_padrao
      Enabled = False
      TabOrder = 1
    end
    object db_nome: TDBEdit
      Left = 40
      Top = 101
      Width = 562
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DS_padrao
      TabOrder = 2
    end
    object db_senha: TDBEdit
      Left = 40
      Top = 157
      Width = 200
      Height = 21
      DataField = 'SENHA'
      DataSource = DS_padrao
      PasswordChar = '*'
      TabOrder = 3
    end
    object db_tipo: TDBComboBox
      Left = 282
      Top = 157
      Width = 208
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TIPO'
      DataSource = DS_padrao
      Items.Strings = (
        'ADMINISTRADOR'
        'APOIO')
      TabOrder = 4
    end
  end
  inherited Q_padrao: TFDQuery
    AfterInsert = Q_padraoAfterInsert
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
    Left = 528
    Top = 72
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
    Left = 448
    Top = 72
  end
end
