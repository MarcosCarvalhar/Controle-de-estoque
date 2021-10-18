inherited frm_Pesq_Fornecedor: Tfrm_Pesq_Fornecedor
  Caption = 'PESQUISA DE FORNECEDOR'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
    inherited cb_Chave_pesquisa: TComboBox
      ItemIndex = -1
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CNPJ'
        'PER'#205'ODO'
        'TODOS')
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
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
      Left = 310
      Width = 195
      Caption = 'FORNECEDOR'
      ExplicitLeft = 310
      ExplicitWidth = 195
    end
    inherited Image1: TImage
      Left = 272
      ExplicitLeft = 272
    end
  end
  inherited ds_pesq_padrao: TDataSource
    DataSet = q_pesq_padrao
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '  ID_FORNECEDOR,'
      '  CADASTRO,'
      '  NOME,'
      '  CNPJ,'
      '  CEP,'
      '  ENDERECO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  EMAIL,'
      '  TELEFONE'
      ' FROM FORNECEDOR'
      ' ORDER BY ID_FORNECEDOR')
    object q_pesq_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object q_pesq_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object q_pesq_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000/0000-00;0;_'
    end
    object q_pesq_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object q_pesq_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object q_pesq_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object q_pesq_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object q_pesq_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object q_pesq_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object q_pesq_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object q_pesq_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0_'
      Size = 16
    end
  end
  inherited dst_rel_pesq_padrao: TfrxDBDataset
    UserName = 'frxDB_Fornecedor'
  end
  inherited rel_pesq_padrao: TfrxReport
    ReportOptions.CreateDate = 44482.599725254600000000
    ReportOptions.LastChange = 44483.460299895840000000
    Datasets = <
      item
        DataSet = dst_rel_pesq_padrao
        DataSetName = 'frxDB_Fornecedor'
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
            'RELAT'#211'RIO DE FORNECEDORES')
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
        DataSetName = 'frxDB_Fornecedor'
        RowCount = 0
        object frxDB_FornecedorID_FORNECEDOR: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 86.370130000000000000
          Height = 28.897650000000000000
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Fornecedor."ID_FORNECEDOR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_FornecedorNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 86.370130000000000000
          Width = 378.811023620000000000
          Height = 28.897650000000000000
          DataField = 'NOME'
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Fornecedor."NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_FornecedorTELEFONE: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 465.181153620000000000
          Width = 128.110390000000000000
          Height = 28.897650000000000000
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Fornecedor."TELEFONE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_FornecedorCADASTRO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 796.031803620000000000
          Width = 175.307406380000000000
          Height = 28.897650000000000000
          DataField = 'CADASTRO'
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Fornecedor."CADASTRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_FornecedorCNPJ: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 593.291543620000000000
          Width = 202.740260000000000000
          Height = 28.897650000000000000
          DataField = 'CNPJ'
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Fornecedor."CNPJ"]')
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
          Width = 378.811023620000000000
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
          Left = 465.181102360000000000
          Top = 11.629870000000000000
          Width = 127.110390000000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TELEFONE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 798.362985830000000000
          Top = 11.629870000000000000
          Width = 172.976224170000000000
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
        object Memo6: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 592.291492360000000000
          Top = 11.629870000000000000
          Width = 206.071493470000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
