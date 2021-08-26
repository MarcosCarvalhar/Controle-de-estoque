unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit;

type
  Tfrm_Cliente = class(Tfrm_Padrao)
    Q_padraoID_CLIENTE: TFDAutoIncField;
    Q_padraoNOME: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCPF: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_id_empresa: TcxDBSpinEdit;
    Label2: TLabel;
    DB_nome: TcxDBTextEdit;
    Label3: TLabel;
    DB_endereco: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    DB_bairro: TcxDBTextEdit;
    Label6: TLabel;
    DB_cidade: TcxDBTextEdit;
    Label7: TLabel;
    DB_UF: TcxDBTextEdit;
    Label8: TLabel;
    DB_CEP: TcxDBTextEdit;
    Label9: TLabel;
    DB_telefone: TcxDBTextEdit;
    Label10: TLabel;
    DB_CPF: TcxDBTextEdit;
    Label11: TLabel;
    DB_email: TcxDBTextEdit;
    Label12: TLabel;
    DB_numero: TcxDBTextEdit;
    DB_cadastro: TcxDBTextEdit;
    procedure btn_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Cliente: Tfrm_Cliente;

implementation

{$R *.dfm}

procedure Tfrm_Cliente.btn_NovoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text := DateToStr(now);
  db_nome.SetFocus;
end;

end.
