unit U_empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxSpinEdit, cxDBEdit, cxCalendar, cxMaskEdit,
  cxDropDownEdit, cxBlobEdit, cxTextEdit, Vcl.DBCtrls;

type
  Tfrm_empresa = class(Tfrm_Padrao)
    Q_padraoID_EMPRESA: TIntegerField;
    Q_padraoRAZAO_SOCIAL: TStringField;
    Q_padraoN_FANTASIA: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_razao_social: TcxDBTextEdit;
    Label2: TLabel;
    DB_n_fantasia: TcxDBTextEdit;
    Label3: TLabel;
    DB_endereco: TcxDBTextEdit;
    Label4: TLabel;
    DB_bairro: TcxDBTextEdit;
    Label5: TLabel;
    DB_cidade: TcxDBTextEdit;
    Label6: TLabel;
    DB_uf: TcxDBTextEdit;
    Label7: TLabel;
    DB_cep: TcxDBTextEdit;
    Label8: TLabel;
    DB_telefone: TcxDBTextEdit;
    Label9: TLabel;
    DB_cnpj: TcxDBTextEdit;
    Label10: TLabel;
    DB_email: TcxDBTextEdit;
    Label12: TLabel;
    Label13: TLabel;
    DB_id_empresa: TcxDBSpinEdit;
    Q_padraoNUMERO: TIntegerField;
    Label14: TLabel;
    DB_numero: TcxDBTextEdit;
    DB_Cadastro: TcxDBTextEdit;
    procedure btn_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_empresa: Tfrm_empresa;

implementation

{$R *.dfm}

procedure Tfrm_empresa.btn_NovoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DateToStr(now);
  DB_razao_social.SetFocus;
end;

end.
