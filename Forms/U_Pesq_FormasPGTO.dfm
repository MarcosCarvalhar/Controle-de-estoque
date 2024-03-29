inherited frm_Pesq_FormasPGTO: Tfrm_Pesq_FormasPGTO
  Align = alNone
  Caption = 'PESQUISA DE FORMAS DE PAGAMENTO'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
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
      Left = 236
      Width = 345
      Caption = 'FORMAS DE PAGAMENTO'
      ExplicitLeft = 236
      ExplicitWidth = 345
    end
    inherited Image1: TImage
      Left = 198
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF40000000467414D410000B18F0BFC61050000000970
        48597300000AEF00000AEF017D768A480000000774494D4507D30A0614181A53
        F3E9D30000091E4944415478DAAD97797013F715C7BFBA2CF9BE0DB6B18D8160
        13BB06638C8124DC4D9BA4EDB404346498D0944C5AA66907FA47C84060927284
        A60D374E6728D0094E09A20C29851486BAB8A6A610B0C1F892E5FB10B624AF0E
        EBD64ADAEDDBF5816CC0A51D7E334FBFFD6976DFFBBCF77BEFED6F2578DA5186
        1898310955D0E31CBCF83DB2E4EEF094371B8E7676749CB2562EAD1CBAEFD708
        3CB54E1A92A7BEF3045E018B5D0842978E598D0199FF1513DF3125DFB7B2E3FB
        9EF7AB4F44FCB4D7286D8F21802304EAA427F8670A20FB83E4C48BD9D33648A5
        1234198D50486458346D2AEEEB1FC06A912318E64274B89CEF6AB57C052DF652
        C4EED163C1670270F8F040EE8ED88CF2E2ACCC747F90434BBF0939A92990CB64
        F0F9FDA8EBEBC3D299CF41423EEB8C267F4BA7E96EB092DF880B68A4C7FDFF37
        C0F1E35C34EB36FDB23DAC6AF35F923726CFCFCA220346D83C5EBC34633A1897
        0B77BB7A51983905BE801F4A850299717130D8ED28AFD575393BD8FDF8142749
        95FB495BF244802347BAD3785EBE3D2529B0E12CB757A94FBE8C8CB87854B4B4
        E0E5DC5908F01CBEE9E842664202D2E262A0A068C4AA54488C8C04CF7168369A
        70ADA9C566ADF56CA3489C410F6C8F837804E0C30F79795C9CBE2822C2FB797C
        3C97E357D9F031F30BBCBC381AF5BD0FE0F0F9F09DFC3C5CBC5F8720CF63CDDC
        42F1BFCB4D8D884234786F1459E1A08A71223B2916579B74DE7EBDE3326FE477
        613F1AC66FC92300A5A5C65552A97D4F52129BAB5048D11A6C40A9EF57F8E1FC
        1C9CFEE636D62F5C009DC120EEFBDAE262E8AD66DCE9E8C50F62DFC482B812A4
        29D311E482F8CA701EB7B80B28484B41455B1B742D0357F0353EC0BF504B66B8
        4700CACAB8188783D9A05030BF8B89F1CA150A39E492309C731F8321E30A6C2E
        376229BC51CA30DCE9ECC2DA05C5A8E9EEC1144731363DB70989F244B00116C1
        60101C6D81C3EFC0E6E6CD585214012F256A456B1BDA7A18ADA73AF02EAEE116
        7513CF2800CFF392D2D2FEBD4AA5656354943B562A95422653205C1E892D83AB
        3173960435EDDD589C9783CA061DBE5B988F7BDDBD2891BF8A4DD99BD0DFDB0F
        A94C8AE4E4640402011120100CE03DED7B28981B40AFD54A15C2C3E874E27A5D
        672D6E5324CEE22A990E8800870E0DEC54A9CCDB2323CD12192593542A270039
        ECB062BBFF4708A3686450B2F598CC58929F2B96A13AEA5DAC495F8D669D1666
        B3195EAF176EB71B252525101C186407F17EC7163C4FF00F011C30DF8AEEB41D
        331D763183C7C9B4533294F14ECD8C1912757FBF114AA59114C8102657E2AAEF
        1CFE8C7D880C5341684079E9E9E0288F67FA9660EBCC6D94844168B5430073E6
        CC411BED751FE546515111DADCEDF894F908A929522808A8DF6183A325134B7B
        7F62ACF8FAD4A18686CA23A300070F5A35EFBC13ABB6D938DCBA65254F0842E9
        C07EE716DC0B5491021996E5CD427A7C1C021DD3B173F64E98FA8C6868688010
        3187C381E8E868646666A2A9A909C545C538CB68501F7509B35226C1FA200A71
        6DAF41FDADEFA1ABBB9BD9B56BEBE75A6DD5C764DA2219EA748C66C386047564
        A404763B474A5CB8DE5883CFF89FA33BA8C5F369E95855320F176ED74333E712
        121589A8BA5185D4D45431F4B5B5B5983A75AA789D949484498993B0AEFD7594
        E42621B5E535E4CA97E2DB0BE62239251CA74F5F67F6ECD95AA6D5DEDC43A6CD
        22C0810306CDDB6F27ABA3A3A5A3E568E8F7A3BC46873FBA3EC0F21511A8EE6C
        C70AE98FB13AED7531C1F47A3D45A01E8B162DA2A4E351515181152B56C0C7FA
        F0A7BED3D09ABBB14AF933AC2C9E87ACECD851BD5F7CF10F66F7EEAD653ADD9D
        5080070430890064637A82DBCDA1B6D18026CF4D9C761CC291C2CFE07EE0818E
        122F37F725DAAE66B0AC0D89893C2222E4C8CBCB87DE3280BFD6D6634DE1AB98
        939F8ED858E5189D65657FA7086C2380EA50801E02481B034095240A95352519
        4B61EE477ABA9C3CEF434F8F0F73E7E650D82361B5FAD0DACAD0BD4EB1FC148A
        38BCF0423AE2E35554DEC3CD46120A708500768C053878B0937220631440304C
        BD836A7A6816D64EA71F376EF460F2E408CC9E9D80840465082C8FF67633AE5F
        EFC0C28599149DC92238C73D04A042A0841500FE465BB0A3ACB5F56E6804DA28
        02590420171F625980DABB685C1096E550576724E3321417A74CF402C5E5CBF5
        F42BC5BC7939622F11A22000C8E5A0121772E002F3C9271F11406D28808E00A6
        A9A3A2E4A2E15000AF97437DBD11D3A72BC9B33852249D1080650304DB4B11B1
        60FEFC02BA5F3106E0CC9973CC8103BB08A02E14A05EF3D65B3954860A783C43
        00545134F364DC80EC6C250A0A121E6B70649F8579C45B61D4D77753DED059A1
        B01861614ACA8D2180F3E735CCD1A3BB09A02114E0BE66FDFA1C7578B8520410
        BC1700B45A86329CA3CE9644E1948E31286CD588D11119FB1F9D9C5A7A71F76E
        3775C912A8544A848703172F7EC99496EE296B6F6F0C05A8D1AC5B97AF56A9C2
        A8F48622D0D2C290372C162F4E1BAD88F14647D623C916BA1E89864ED74E8E74
        53E22E4664A49C72E41473ECD86FC703DCD6BCF146815AA014001846A8750396
        2CC9A0B0C99F68E07120E3FFE7E86CD0DCDC44EF082B95EE8B282F3FC51C3FFE
        1B02D03D04D8B7EF2601148A0046A31735357A2C5F9E2DF6F950CF9F1664FC7A
        28276E8A65ADD76B9993270580D650802A0228524744A870ED5A0FD2D26248E2
        C45AFE5F423E9104835EDCBBF74F8AEC4DE6D2A52FC703546AD6AE9DA76E6BB3
        D31648316D5ACA849E3FAA9CA3C4F552D9FA68F6D03C743670BBEDACC562700E
        0E0E7807067A58876380A36B7375F5BF2F9A4C26E1756C1B06B8A659B62C4FDD
        DCECA47E9E4D8624634A6BE45A0070B93C54294EEA8C3632E0A057B195675977
        C0E1B018AD56C66A32F5DA6D36A3970C073D34BC5EA7D1ED76995D2E87D9E7F3
        0D12A0958E6D7A52297CB8B0C300E59AA8A8147566669AB8EF7EEA401E0F1B70
        B9063D16CB806B70D0E2B7588C7EBB7D8073BB19B3CD3668B0587AFAAD56A37D
        60C0E0743AED5E8E0BD88503068995C4313C0B6BE1EC277C2FFA8725302CA26B
        22C0CE9D578F9292953E9FC54E1EB848B1DF66637C5EAFDDE6745A8C1E8FC342
        1E5A3D1EBB9DE00443AE61239E90993A87F829260817324FF88D38F29E8A2659
        4AA210F685C43E3C0B8A7DC3C4EC78FAFFA6FC69C60880D0E694C3EB502FF867
        6164A2F11FADDA846C35D8F83E0000000049454E44AE426082}
      ExplicitLeft = 198
    end
  end
  inherited ds_pesq_padrao: TDataSource
    DataSet = q_pesq_padrao
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '   ID_FORMA_PGTO,'
      '   DESCRICAO,'
      '   CADASTRO'
      ' FROM FORMA_PGTO'
      ' ORDER BY ID_FORMA_PGTO')
    object q_pesq_padraoID_FORMA_PGTO2: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoDESCRICAO2: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
