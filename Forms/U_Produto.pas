unit U_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCurrencyEdit, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit;

type
  Tfrm_Produto = class(Tfrm_Padrao)
    Q_padraoID_PRODUTO: TIntegerField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoPRODUTO_DESCRICAO: TStringField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoVL_CUSTO: TBCDField;
    Q_padraoVL_VENDA: TBCDField;
    Q_padraoESTOQUE: TBCDField;
    Q_padraoESTOQUE_MIN: TBCDField;
    Q_padraoUNIDADE: TStringField;
    Label1: TLabel;
    DB_id_produto: TcxDBSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    DB_produto_descricao: TcxDBTextEdit;
    Label4: TLabel;
    DB_fornecedor: TcxDBSpinEdit;
    Label5: TLabel;
    DB_vl_custo: TcxDBCurrencyEdit;
    Label6: TLabel;
    DB_vl_venda: TcxDBCurrencyEdit;
    Label7: TLabel;
    DB_estoque: TcxDBCurrencyEdit;
    Label8: TLabel;
    DB_estoque_min: TcxDBCurrencyEdit;
    Label9: TLabel;
    DB_cadastro: TcxDBTextEdit;
    Q_padraoNOME: TStringField;
    Label10: TLabel;
    DB_nome_fornecedor: TcxDBTextEdit;
    DB_unidade: TDBComboBox;
    procedure btn_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Produto: Tfrm_Produto;

implementation

{$R *.dfm}

procedure Tfrm_Produto.btn_NovoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DateToStr(now);
  DB_produto_descricao.SetFocus;
end;

end.
