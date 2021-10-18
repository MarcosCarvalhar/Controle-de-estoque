inherited frm_Pesq_Usuario: Tfrm_Pesq_Usuario
  Align = alCustom
  Caption = 'PESQUISA DE USU'#193'RIOS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentShowHint = False
    inherited Label1: TLabel
      Left = 14
      ExplicitLeft = 14
    end
    inherited lbl_Valor: TLabel
      Left = 206
      ExplicitLeft = 206
    end
    inherited lbl_Data1: TLabel
      Left = 206
      ExplicitLeft = 206
    end
    inherited lbl_Data2: TLabel
      Left = 342
      ExplicitLeft = 342
    end
    inherited ed_Valor: TEdit
      Left = 206
      ExplicitLeft = 206
    end
    inherited mk_Inicio: TMaskEdit
      Left = 206
      ExplicitLeft = 206
    end
    inherited mk_Fim: TMaskEdit
      Left = 342
      ExplicitLeft = 342
    end
    inherited btnPesquisar: TBitBtn
      Left = 206
      Top = 23
      OnClick = btnPesquisarClick
      ExplicitLeft = 206
      ExplicitTop = 23
    end
    inherited cb_Chave_pesquisa: TComboBox
      Left = 14
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CADASTRO'
        'TODOS')
      ExplicitLeft = 14
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'ID'
        Width = 50
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
        Width = 80
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Margins.Top = 0
    Anchors = [akLeft, akBottom]
    inherited btnEditar: TBitBtn
      Top = 145
      Align = alCustom
      Anchors = [akLeft]
      ParentBiDiMode = False
      ExplicitTop = 145
    end
    inherited btnAdicionar: TBitBtn
      Top = 28
      ExplicitTop = 28
    end
    inherited btnDeletar: TBitBtn
      ParentFont = False
    end
  end
  inherited Panel3: TPanel
    inherited lblTitulo: TLabel
      Width = 125
      Caption = 'USU'#193'RIO'
      ExplicitWidth = 125
    end
  end
  inherited ds_pesq_padrao: TDataSource
    DataSet = q_pesq_padrao
    Left = 367
    Top = 453
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'select'
      '  nome,'
      '  id_usuario,'
      '  tipo,'
      '  cadastro,'
      '  senha'
      ' from usuario'
      ' order by id_usuario')
    Left = 279
    Top = 452
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
    object q_pesq_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
  end
  inherited dst_rel_pesq_padrao: TfrxDBDataset
    UserName = 'frxDB_Usuario'
    Left = 184
    Top = 448
  end
  inherited rel_pesq_padrao: TfrxReport
    ReportOptions.CreateDate = 44482.599725254600000000
    ReportOptions.LastChange = 44483.456508182870000000
    Left = 120
    Top = 456
    Datasets = <
      item
        DataSet = dst_rel_pesq_padrao
        DataSetName = 'frxDB_Usuario'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Color = clBtnFace
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object Titulo: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 75.677180000000000000
        Width = 971.339210000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 31.000000000000000000
          Width = 971.339210000000000000
          Height = 43.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE USU'#193'RIOS DO SISTEMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 2.732530000000000000
          Top = 7.118120000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 89.732530000000000000
          Top = 7.118120000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 450.732530000000000000
          Top = 7.118120000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.897650000000000000
        Top = 162.519790000000000000
        Width = 971.339210000000000000
        DataSet = dst_rel_pesq_padrao
        DataSetName = 'frxDB_Usuario'
        RowCount = 0
        object frxDB_UsuarioID_USUARIO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 86.370130000000000000
          Height = 28.897650000000000000
          DataField = 'ID_USUARIO'
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Usuario."ID_USUARIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_UsuarioNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 86.370130000000000000
          Width = 503.630180000000000000
          Height = 28.897650000000000000
          DataField = 'NOME'
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Usuario."NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_UsuarioTIPO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 590.000310000000000000
          Width = 235.110390000000000000
          Height = 28.897650000000000000
          DataField = 'TIPO'
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Usuario."TIPO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_UsuarioCADASTRO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 825.110700000000000000
          Width = 146.228510000000000000
          Height = 28.897650000000000000
          DataField = 'CADASTRO'
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Usuario."CADASTRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 40.527520000000000000
        Top = 79.370130000000000000
        Width = 971.339210000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 11.629870000000000000
          Width = 86.370078740000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'D.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 86.370078740000000000
          Top = 11.629870000000000000
          Width = 496.811023620000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 583.181102360000000000
          Top = 11.629870000000000000
          Width = 235.086614170000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 818.267716530000000000
          Top = 11.629870000000000000
          Width = 153.071493470000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CADASTRO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
