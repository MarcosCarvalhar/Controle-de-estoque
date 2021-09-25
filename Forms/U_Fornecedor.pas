unit U_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    db_id_fornecedor: TDBEdit;
    db_cadastro: TDBEdit;
    db_nome: TDBEdit;
    db_numero: TDBEdit;
    db_endereco: TDBEdit;
    db_CEP: TDBEdit;
    db_CNPJ: TDBEdit;
    db_telefone: TDBEdit;
    db_email: TDBEdit;
    db_bairro: TDBEdit;
    db_cidade: TDBEdit;
    db_UF: TDBComboBox;
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
