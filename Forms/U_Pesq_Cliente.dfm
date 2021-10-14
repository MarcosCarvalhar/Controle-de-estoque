inherited frm_Pesq_Cliente: Tfrm_Pesq_Cliente
  AutoSize = True
  Caption = 'PESQUISA DE CLIENTE'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
    inherited cb_Chave_pesquisa: TComboBox
      ItemIndex = 4
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CPF'
        'PER'#205'ODO'
        'TODOS')
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
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
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
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
      Width = 122
      Caption = 'CLIENTE'
      ExplicitWidth = 122
    end
    inherited Image1: TImage
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
        097048597300000AE900000AE901FD75CED30000000774494D4507D30A061418
        0E49293DAE00000904494441545847B59769505BD715C75FD3B475DAC6EE34ED
        A49974E2B6E9D875E266FBE08C3DB15D6732CDDA0FA96B4D9B266E56D7BB1DF6
        CD3636C6A6358E97B16B23D08224108B4012DA90044248200136C6EC20D918CC
        0E92D83120C1BFE73DC1D81F82E897BE999FEED3D31B9DDF3DF7DCFBDE65968E
        1CC7D02E4DAD1796C61194362C52EF5BC48BD2DB5E94D4791E72CB0373ED304C
        2C3787388C3786505C43540F7218AA06A077B2F44357D90FB9B10B146A23F13D
        2EE8A34796BD7F5743D714E6020B98F52F70AD7F19B87B8819BAEF013135B780
        4962627601E3C4D8CC02461ECCC34B78A6E73134358FBEF10034F63E56600FF1
        632EE8A387B4B49FD74402F30B40803E6666E656E4C18C1FD3C4E4033F26A6FD
        182746A7FCF0115E6278D20FCF6400BE196060621E5A7B2F2B709858CD057DF4
        109B7A486012141F5D5DC3100ACD90CBAD1CD9D9CB202F4756D612366465DB20
        A356C6B61C762854B518189FE30434E52B0A4C5078A0B9B9074A6529AAAB6BE0
        7054A1A2A20A369B03566B25CACA2A505A5A01B3D906A3D14E94C36060B172AD
        4E57C6A1D59641AFB7424A12FDA333189C64057A420974F19A3A83022D2D3D50
        28CCB0DB9D282F5F0A6AE7829A4C3614170703EA74562E904663415191056A75
        29874A1544ADB6404A19E91B9D2581008AACDD21040C94814704F2F24CD463C7
        626FA9A7263B8AA9C71A450E94D2ABC8CB4846EEF524E4A69D45BEF82A0AF2B5
        28545A505050C2C9E7E79BB97389CC46195814280B29D0C56BBEB724D08B9C1C
        132C9687C1352A25B2537810843D0FD1E1272139CC20EB6B06D2A38F4174640D
        04319B9075E518F21456E4E61A39D84E4864EC1004053496FBCB0B0848A0F1DE
        3827D0DADA4BC567E482B3BD56665D43FABE27281883A2130C0CA71998CE3228
        F91703EB7906F68BC16BD2230C8489EF432629A0A22CE6C86405C61633104A40
        ACA51AE85812E8834C66E4C65AABD6411C47BD0B63A04C60A04964A03BC5C078
        8681398541592A83F26F18545E0E8A64873F8E8C843F42222D8154AA47A69486
        6051405DC22D44CB6440DBC16BE818E3A6615B1B2B504C555C0E555E1E04E1EB
        218F605018CF407DFCA1843E29980556800DBE24914599CA48390CA188E425C1
        0CB0D3B0C8BC8240FD5D122003562033D340D54DD349694055EA5B10EE7B1CE9
        7B1908F6D39FEF63C0FF2741DFC58718684F32B05D7828C10E4FDAD1F548BF26
        E104FA48A07F220095B93384809A04EE8C712B615B7B3F32C5066E1A95E6C930
        95B103FE8A58788C0730603C046F592466AB4E02374EA343BE937AFC134E82AD
        87A56C488E7E07D7CF46924005578403AC8029A4809B57E71E032DED24300031
        09B08B91559E06BFE80F403505AC3D0B345DA222F90FD07881BE9F019CC7E096
        7CC065821D0EB6265811450C836B717F8258EA2081B960068CF7561218013D53
        D04A0242A19E9BCF569A0101F10E12480C066CBA1C1468B8181472240015D134
        2D5771B5C116268BFA180984BD0691A40ABD24C03E8C94C68EE505F88524E01A
        C1CC3CAD03ED83100874DC3C2E91F131272401E7714A791250970AD47F03DC3A
        07D49CA6E0B1802D029AF85FA2208E417172708614D2F9D5B04D24501D141823
        81E215046ADB47404F50B4B8069191A1A3C5C808AD548A71FE9B80351CA88C07
        AA2813D5A7A83D41DFE3E87A1860390CC3F1B5C88B0E16243B3B6434132EC5FC
        1DC24C077A47E6D04B0285FA100282FC36DEADB6114C05E861D43E84F4741D3D
        F18C904B8AD09BFE6740F34950C2160DD863A88D0C062F390898F74111F914F2
        68DCD9858A9DAAFCFDAB712E3189042AD13DEA47370914E8EF86C80009DC6CF5
        81D60B34B986C0E76B692533409C598C1201A55CBC05307C41010F0483B2AD69
        2FA0FF02D30A1E372515B1414407199C8FFC2B4E25C921109300658013D0DE09
        2190DBC6AB69F161DC4F02940156402A354024D273F5D0C1FF08906C03B49F92
        C89714F873EE7CA19087AAE4DF424841B3C3D975E2315CFC7A074E254A919898
        8D0C12B84F35D0351A802294808013F0628C041A5DC3484BD34122D193801669
        FC22C424E6E06AF87EF45F7F8BB24122E2AD58A0B631E5055A98BE8FE4DD4FE3
        E0AE97B0FBB363088FCEC689E3322424C848C0814E9F1F9DAC4051C80C34F3AA
        48608404EADB3D48BBAE8524538FD4CB6A6CFB9B04ABB709F1DD57F91069CBD1
        DA66414BBD01B71A2C503ACB703E27076BB79FC62FFEA2C00FB74BF0ECF6747C
        BC578CF83809D28595E820810E5F00F96A770881EC669EB3C90BDF6C50809FA6
        45D279159E7C43809FEF5261438C134F6C1121D7350A7DEF14B43DD328E89C44
        967B02BCD41AAC792707EBC2EC78FE60199EFE4883559B05D8BA2B0319220727
        70971370AD20D0E88187046EBB3C48492DC2BA774578E6632D36C657E3775195
        F8C16621E41D939053D06CD704C46D63B852E7C3CB9F16E199DD3AAC8FB0E337
        072C58BBC78C9FED5462D5EB19387FCD41C1FD7093409EB23DB480A3C183217A
        836D707BF1F6275958FDB61C1B629DD89850830DD10EACDA22C4851B1E5CBDED
        E3025FACF5E1408E0B6B766472F7AD0B278183163CB7C78467FFA1C78FDECDC1
        E94B95707BFD68F704901B5240DAC0AB248181075484777C7865A78CFEC4C0F5
        FC45CAC0EF8FD7E0C91D527C2E6E414AB517C90E0FCE54FBF0EA5E039EFAB000
        2FC4557143F06BCAC0735F99B88CFC94A742F2952AB848A0CD4B02856DA105EC
        B787D1374D43E0F6E1CDCF0AF0F2A1126C8AB261735C25B69EACC14BFB4C78F1
        C35C7CC96FC4915C37DE3B66C3AFDE91E1F5683B36C7566053840DAF1DB1E095
        FD666CFCCA80F5BBB538977E13ADC37E82040A4209881B783612E89902DC8333
        D0583B5164EF86A6A2071A472F34CE5E689D7D2828B90755591777BDB0B4132A
        5B375DEFA7DFFBE8BE3EA82B898A5EA86813A2B4F5A0BCDE8376DF3C9A492027
        A480B48E575E3704DA1CE1FEE4FF06ED63C06E25D89769F67D967DA363B94BDC
        215C6340FB283D3C4768715B51405CC72BBD3148E31580CBE3FF76682C5DC373
        1CED2C1EB6A5F1E5521CA465C88F66A28968180C523FE0476DF72CB2152104AE
        089C6F24FF5BEB8C8997BAA2E233DD5171412263C5EEC8686AA345049D4789DC
        112C9142421024820867C9589648FA3D3A4AE4A250DFBE39A583DD32B35BE7F7
        88F7FF4FB0FFFDC8F69C61FE0BA0DFB1FCB415EE2E0000000049454E44AE4260
        82}
    end
  end
  inherited ds_pesq_padrao: TDataSource
    DataSet = q_pesq_padrao
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '  ID_CLIENTE,'
      '  NOME,'
      '  CPF,'
      '  ENDERECO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE,'
      '  EMAIL,'
      '  CADASTRO'
      ' FROM CLIENTE'
      'ORDER BY ID_CLIENTE')
    object q_pesq_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
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
    object q_pesq_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object q_pesq_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0_'
      Size = 16
    end
    object q_pesq_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000\.000\.000\-00;0;_'
      Size = 16
    end
    object q_pesq_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
  end
  inherited dst_rel_pesq_padrao: TfrxDBDataset
    UserName = 'frxDB_Cliente'
  end
  inherited rel_pesq_padrao: TfrxReport
    ReportOptions.CreateDate = 44482.599725254600000000
    ReportOptions.LastChange = 44483.459595509260000000
    Datasets = <
      item
        DataSet = dst_rel_pesq_padrao
        DataSetName = 'frxDB_Cliente'
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
      object Titulo: TfrxReportTitle
        FillType = ftBrush
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
            'RELAT'#211'RIO DE CLIENTES')
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
        Frame.Typ = []
        Height = 28.897650000000000000
        Top = 162.519790000000000000
        Width = 971.339210000000000000
        DataSet = dst_rel_pesq_padrao
        DataSetName = 'frxDB_Cliente'
        RowCount = 0
        object frxDB_ClienteID_CLIENTE: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 86.370130000000000000
          Height = 28.897650000000000000
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Cliente."ID_CLIENTE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_ClienteNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 86.370130000000000000
          Width = 503.630180000000000000
          Height = 28.897650000000000000
          DataField = 'NOME'
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Cliente."NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_ClienteTELEFONE: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 590.000310000000000000
          Width = 235.110390000000000000
          Height = 28.897650000000000000
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Cliente."TELEFONE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_ClienteCADASTRO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 825.110700000000000000
          Width = 146.228510000000000000
          Height = 28.897650000000000000
          DataField = 'CADASTRO'
          DataSet = dst_rel_pesq_padrao
          DataSetName = 'frxDB_Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Cliente."CADASTRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
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
            'TELEFONE')
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
