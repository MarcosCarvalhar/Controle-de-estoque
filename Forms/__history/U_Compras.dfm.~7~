inherited frm_Compras: Tfrm_Compras
  Caption = 'ENTRADA DE MATERIAIS'
  OnShow = FormShow
  ExplicitTop = -24
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Font.Color = clNone
    ParentFont = False
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 60
      Height = 13
      Caption = 'ID_COMPRA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenu
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 69
      Height = 13
      Caption = 'FORNECEDOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenu
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 110
      Width = 117
      Height = 13
      Caption = 'FORMA DE PAGAMENTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenu
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 328
      Top = 16
      Width = 46
      Height = 13
      Caption = 'USUARIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenu
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 176
      Top = 16
      Width = 93
      Height = 13
      Caption = 'DATA DE ENTRADA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenu
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 536
      Top = 110
      Width = 33
      Height = 13
      Caption = 'VALOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenu
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object db_id_compra: TDBEdit
      Left = 24
      Top = 35
      Width = 121
      Height = 21
      DataField = 'ID_COMPRA'
      DataSource = ds_padrao
      TabOrder = 0
    end
    object db_id_fornecedor: TDBEdit
      Left = 24
      Top = 83
      Width = 121
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = ds_padrao
      TabOrder = 1
    end
    object db_forma_pgto: TDBEdit
      Left = 24
      Top = 129
      Width = 121
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = ds_padrao
      TabOrder = 2
    end
    object db_usuario: TDBEdit
      Left = 328
      Top = 35
      Width = 121
      Height = 21
      DataField = 'USUARIO'
      DataSource = ds_padrao
      TabOrder = 3
    end
    object db_cadastro: TDBEdit
      Left = 176
      Top = 35
      Width = 121
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      TabOrder = 4
    end
    object db_valor: TDBEdit
      Left = 536
      Top = 129
      Width = 121
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_padrao
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    inherited btnGravar: TBitBtn
      OnClick = btnGravarClick
    end
  end
  inherited PageControl1: TPageControl
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      Caption = 'Itens'
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 716
      ExplicitHeight = 197
    end
    object TabSheet2: TTabSheet
      Caption = 'Contas a Pagar'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 716
        Height = 197
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  inherited Q_padrao: TFDQuery
    AfterInsert = Q_padraoAfterInsert
    Connection = DM.conexao
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT'
      '  ID_COMPRA,'
      '  ID_FORNECEDOR,'
      '  ID_FORMA_PGTO,'
      '  USUARIO,'
      '  CADASTRO,'
      '  VALOR'
      'FROM COMPRA'
      'WHERE '
      '  ID_COMPRA = :PID_COMPRA'
      'ORDER BY ID_COMPRA')
    ParamData = <
      item
        Name = 'PID_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_padraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object FDQuery1: TFDQuery
    Left = 360
    Top = 240
  end
  object FDQuery2: TFDQuery
    Left = 432
    Top = 240
  end
  object DataSource1: TDataSource
    Left = 424
    Top = 304
  end
  object DataSource2: TDataSource
    Left = 544
    Top = 264
  end
end
