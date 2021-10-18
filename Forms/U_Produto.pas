unit U_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_Produto = class(Tfrm_Padrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    db_unidade: TDBComboBox;
    db_id_produto: TDBEdit;
    db_cadastro: TDBEdit;
    db_produto_descricao: TDBEdit;
    db_vl_custo: TDBEdit;
    db_estoque_min: TDBEdit;
    db_estoque: TDBEdit;
    db_vl_venda: TDBEdit;
    db_id_fornecedor: TDBEdit;
    db_nome_fornecedor: TDBEdit;
    Label11: TLabel;
    Q_padraoID_PRODUTO: TFDAutoIncField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoPRODUTO_DESCRICAO: TStringField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoVL_CUSTO: TFMTBCDField;
    Q_padraoVL_VENDA: TFMTBCDField;
    Q_padraoESTOQUE: TFMTBCDField;
    Q_padraoESTOQUE_MIN: TFMTBCDField;
    Q_padraoUNIDADE: TStringField;
    Q_padraoNOME: TStringField;
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure Q_padraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Produto: Tfrm_Produto;

implementation

{$R *.dfm}

uses U_Pesq_Produto;

procedure Tfrm_Produto.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  DS_padrao.DataSet := frm_Pesq_Produto.q_pesq_padrao;

end;

procedure Tfrm_Produto.Q_padraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  db_cadastro.Text := DateToStr(now);
  db_produto_descricao.SetFocus;
end;

end.
