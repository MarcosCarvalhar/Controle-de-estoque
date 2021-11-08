unit DM_Compras;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    ds_padrao: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Q_padrao: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    Q_padrao_item: TFDQuery;
    ds_padrao_item: TDataSource;
    Q_padraoID_COMPRA: TIntegerField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoVALOR: TFMTBCDField;

  private
    { Private declarations }
  public
    { Public declarations }
//    procedure Q_padraoAfterInsert(DataSet: TDataSet);
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_DM, U_Compras;

{$R *.dfm}

{procedure TDataModule1.Q_padraoAfterInsert(DataSet: TDataSet);
begin
  Tfrm_Compras.setData(TEdit: db_cadastro);
  Tfrm_Compras.setFocus(Tfrm_Compras.db_id_fornecedor);
  Q_PadraoUSUARIO := 'USUARIO';
end;}

end.
