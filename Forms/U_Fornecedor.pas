unit U_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit;

type
  Tfrm_Fornecedor = class(Tfrm_Padrao)
    Q_padraoID_FORNECEDOR: TFDAutoIncField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoNOME: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoTELEFONE: TStringField;
    Label1: TLabel;
    DB_id_fornecedor: TcxDBSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    DB_nome: TcxDBTextEdit;
    Label4: TLabel;
    DB_CNPJ: TcxDBTextEdit;
    Label5: TLabel;
    DB_CEP: TcxDBTextEdit;
    Label6: TLabel;
    DB_endereco: TcxDBTextEdit;
    Label7: TLabel;
    Label8: TLabel;
    DB_bairro: TcxDBTextEdit;
    Label9: TLabel;
    DB_cidade: TcxDBTextEdit;
    Label10: TLabel;
    DB_UF: TcxDBTextEdit;
    Label11: TLabel;
    DB_email: TcxDBTextEdit;
    Label12: TLabel;
    DB_telefone: TcxDBTextEdit;
    DB_numero: TcxDBTextEdit;
    DB_cadastro: TcxDBTextEdit;
    procedure btn_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Fornecedor: Tfrm_Fornecedor;

implementation

{$R *.dfm}

procedure Tfrm_Fornecedor.btn_NovoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DateToStr(now);
  DB_nome.SetFocus;
end;

end.
