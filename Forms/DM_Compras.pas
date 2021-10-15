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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_DM;

{$R *.dfm}

end.
