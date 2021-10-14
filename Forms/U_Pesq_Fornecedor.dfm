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
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
        097048597300000B0C00000B0C013F4022C80000000774494D4507D30A061419
        12443350A000000996494441545847ED57695055C9156EC0003AA80441032A13
        8C0B088A061D35B810304A21E2022A8BA2C8A680222002B2239BECF058051178
        22FB8EA22C3228AEA38EC6CA6814CCE894E2820B0E6E8CEF7D397DD11A9D6855
        92AAF991AA9CAAAF6EBFDBDDF7FBCE39DD7DFAB1FFDBA7AC2992A95707B28DD5
        BB5942953FCB3BB49345E579328B3427A645DDB283A37E25AB8C675F5684B0F2
        A3516CA03986819E680C67A80C607D07BDD9D9683B66A1AECE86BD1BFE4B9323
        8C218C260C21C810FE3D03984C6D30FB734308FBFE7802939E4C61F83A91A125
        F66711D48F222FF62C70350BA129C3099C6024C1525555B575CA94294FF4F4F4
        A493264D928E1E3DBA67C8902145D4B781309B204FF8BC201EF6AA00D6722299
        A1338DA12389E1783C038F02F5A13E94A12688A1C29F21CF9DF58C57650B689A
        828C8C4C12913EF5F0F040787838424242B06DDB36AC58B102060606183B76EC
        80BCBC7C378DDD4AE0623F2DA22E90193786B15EEE39276F4F6068DD3BE8FDE1
        888F058877302C9BC9C2689A93B6B6B6D4C5C5055E5E5EF0F5F515C81D1C1C60
        616181458B16415757978B80ACACEC131AEF43F874FA4A7CD8EA863036C0BD6E
        8B13728E7C77867DAE0C998E0CD9CE0CB95B04EF91E5C224BA9A2C96A6351919
        19C1DADA5A2075747484BDBD3DACACAC306FDE3C68696981D2014A0FE4E4E440
        E3BF264C21F0B5F2B191576B6B83D8DBAADD0CA5BE0C674486183817015CCF84
        F46A2A9EB6EFC2EDAA4DE82AB2406FC6576F1487C806D0B4625D3D3D989898C0
        CCCC0CA6A6A6309CBF40F0FA8F13553179EC08A8A88C82E2D0A19C9CA397B09A
        3094F0B1957AB39544FC5ABC5D01E99B195EB4FB02DF2600D7320959C0156A9F
        27412776412AFE8B74BC8ABCD72C4D25CBA9EA23A49C444D4D8DC854B0407F1C
        125C66E366A1152E8B2CB074BA3A86CA0F792FA08FE04450227C6CA53E6C61DE
        56D6F3B74C43B4EED126B270E0620CF0D764E06A0AB56381B3A140878F204053
        4DDEB7D041D71CC51624CA09D24E47E0822B70DA19687500EA370095764039A1
        6C3D549514B8802B047BC2179CF323A37C4FCB7266D706CA5741D2BA0DE80C20
        C230FA6814217AB0CDDFB56DC7DB2263C9704559DF12279D15C833079A3711E9
        3B346F048E10790D27B6018AD611ACB1DD506B80689A098B090A9CF3230B5DC3
        94A2AC659D5F1518F5A1C90938EE49DE521A3869E76E21F468DF011C76C08DC4
        D97C5B6D8959A1354D22329508DE36BE4303275F3FE8793109384002F6ADC145
        17C37FA87DA1104EF334089FDC8AFCE588AE38FD2249B98514CD5B80167712B2
        7D504CAB07706C0B24E5ABA4A2F55F76D0588B892A6CC49BA42577514E44D544
        C82184DD7690BC90C8F3D600A9AB70C86A66A7AC2CB3A579FFEAFD8796E23A61
        D2F7717A75D28A65E4110F27E5F6C866F29CC25B6D897381DAD7743514936828
        AF0B720F028D922439AB242821428E438483D640C13BF24C4BBC0A337BA9A336
        2291C6CF227CFE34142CF69ECE84B0B3E20291AF7460FF5CFAE812F288C4141A
        E27CBAA5547F5D501B5399E84023858574C66DCEFC177B9674A39048B9C79C38
        7F2D904BE4D95690EC5D21AD5C6B708186F29390D789CF98A86F144B7D1E3039
        F3E9EB35552FB0A8F42DB2DAAEE351A11F6E2E1A8E9385E95859FC10D3B31F42
        21B8BB87D9D7DAB369B6BFA599F22D5BE66E7C1569F60619AB811C22CEB20244
        D48EB5C0D18DF3BF1BAB3C348EC67DFA007A6F72A257A91A298FFA1DAA9E20A2
        E30DBC5A06B036FD14BE6B6D42D75C5D3434B56373F97D4CCF7D8CE1C1D7A1E4
        7BE91E5B5DE04947F0B4A0D0D0ECBA48EF37CF222C81308A56F872608F252E44
        BAC1D7D3FDA19D9D5DC3E2C58B75888657C85F582864594ABFE3AC821FA57EAD
        2FE15A7C134BF7DD41CE4529FE24EAC60F97CEE09189019A0BC470AB7D8C0507
        1E4165CF1DCCDDDF038390B6FEF8D8A8A7B5B5B53878A804B5879BD1777E23BA
        6A4CD07EE23472F30B909C9282808000ECDCB9F38EADADAD3B31F25AF0C13A48
        79A9299FD8D7E9D2F81CBECDFD70ADEFC7B6C67E647D23C1A6DA17101FA8C2ED
        F93AA8DFBE0DAEB54FB1BCF4315442BA609E761A2959FB9196968AF4F4749495
        95A1A1A109AF5F1CC4B953D9E83C7506FBF6ED839F9F1F828383111F1FCF0BD6
        236363632B62FDE0208A79663B33EFC9EBAD24C0EB683F82DA5EC02CBB1B01D4
        8E3BFD166BFC2A71454F03055F196343C97DE8A7DCC1D4A88B48CEC8425B6B0B
        4E9E3C09B1588C8A8A0AB4B69E80E45524AE7E9B8BEA9A5A1416162226260691
        9191484E4E16DA54B46E50AD584ECC83E9F84DECFD7463F16338D63F83C791E7
        D8D5F212BB9AFAB054741D1E75CF6019DC8CBA7163903575218C52BBF187981B
        D89CDE84B29262747474A0AEAE0EF5F5F5282BAF40734B3DD0E7842EAA1BE919
        99282E2E46606020A2A2A290989888D8D858F8F8F8FC44C52B9FA8D508326C64
        6C4FE79283BDB0AB7E02FBEAA7706DE883E7D11FE1D5F41CA6D9776018F777C4
        4C980FB7D93618BBE726561DBC8DE0C41C343535E1D8B163E0F94F4A4A228FEB
        70B4916AC7FD25387FD40AD93979888E8E164845221112121284DF3C1D54B27B
        A83C9B9000053632FAEEF5C5E2875857D90BE3030FB099BC76AEEF1384B8525A
        4CF21F60D9F268CCB013C388FA2DF3AE22519445F96E406363238E1C3982BCBC
        3CA4893250571108DCD64563E162228E17F29E999989D4D454A1CD23111A1A0A
        575757E99831633C48800A639EDFF829FA5FBDAE9F71F7EDF8BD3FC0B2AC1736
        148DF5041E151B8A8A79C96368C5DC82E9A18758495B33272B03A5A5A5C2C2AB
        A9A911A290430B2E3CD407CF2F8D4642C43A5A9C69C222E44F1EA18888080141
        4141E0D7B7A953A7A69280C974B5D41EC566DA2C97318F2B9071683C333AFC56
        DFB8A85BD289F1B7A19374073A89B73121A61BCAFED7F0BBE06BD239BB1A2419
        69C9C8CFCF47414101CACBCB05215C50726A26C4C946484C88426E6E2E323232
        9042DB90879F879EAF070E373737CC9831A38404181004E32B922F0A7D2627BF
        86296BB9B3894B8399CEAA68A6BD72AF80DF2F8A62CA1342D4C6A807D8D95A57
        7A7B7BDF8B8B8BFB29272747480117535424A6108783BFE3E41F867EC78E1D70
        7777878D8D4DEFC2850B2F0F1B368CDFAC7539F97BE3870317C20F0A65C238C2
        248236819F62FC28E505485D4949497BD6AC592EB4A7F3E9943BE9E9E9D9E5EF
        EFFF860E1C29B5052FF9FE2791DC5BA9B3B3F3737373F3CB34A79D2EA807E896
        BC93BE3387C0AFF6FF9571B1BCACAA12F409A674EBDDACACACECA9A1A111A8A9
        A919AAAEAE1E46FF0D42C8D300EAF3A631FC26B4843091C01DFC7C5DF80F8D47
        4D91C0EF79B4AA85C8F1484D78F7E4BFB950DECF45FFBA7FEDFEC78CB17F023B
        2CF1408CCD193B0000000049454E44AE426082}
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
