unit U_Form_pesquisa_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Data.FMTBcd, Data.DB, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_Pesquisa_Padrao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ed_Nome: TEdit;
    mk_Inicio: TMaskEdit;
    mk_Fim: TMaskEdit;
    lbl_Valor: TLabel;
    lbl_Data1: TLabel;
    lbl_Data2: TLabel;
    DBGrid1: TDBGrid;
    ds_pesq_padrao: TDataSource;
    q_pesq_padrao: TFDQuery;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    cb_Chave_pesquisa: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Pesquisa_Padrao: Tfrm_Pesquisa_Padrao;

implementation

{$R *.dfm}

uses U_DM;

end.
