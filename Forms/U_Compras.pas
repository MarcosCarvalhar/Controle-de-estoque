unit U_Compras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Mov_Padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_Compras = class(Tfrm_Mov_Padrao)
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Q_padraoID_COMPRA: TFDAutoIncField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoVALOR: TBCDField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    db_id_compra: TDBEdit;
    db_id_fornecedor: TDBEdit;
    db_forma_pgto: TDBEdit;
    db_usuario: TDBEdit;
    db_cadastro: TDBEdit;
    db_valor: TDBEdit;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure Q_padraoAfterInsert(DataSet: TDataSet);
    procedure setData(Sender: Tobject);
    procedure setFocus(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Compras: Tfrm_Compras;

implementation

{$R *.dfm}

uses U_DM, U_Pesq_Compras, U_Form_pesquisa_padrao, DM_Compras;

procedure Tfrm_Compras.setData(db_cadastro: TDBEdit);
begin
  db_cadastro.Text := DateToStr(now);
end;

procedure Tfrm_Compras.setFocus(TObject);
begin
  db_id_fornecedor.SetFocus;
end;

{procedure Tfrm_Compras.FormShow(Sender: TObject);
begin
  TDataModule1.Q_padrao.Open;
  TDataModule1.Q_padrao.Refresh;

  case acao of

  'A': TDataModule1.Q_padrao.Append;

  'E': TDataModule1.Q_padrao.Edit;

  end;}

end;

end.
