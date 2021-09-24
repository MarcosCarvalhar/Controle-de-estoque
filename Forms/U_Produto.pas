unit U_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCurrencyEdit, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Vcl.Mask;

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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Q_padraoNOME: TStringField;
    Label10: TLabel;
    DB_unidade: TDBComboBox;
    db_id_produto: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DB_nome_fornecedor: TcxDBTextEdit;
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
