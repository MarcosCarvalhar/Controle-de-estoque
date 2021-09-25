unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.Mask;

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
    db_id_empresa: TDBEdit;
    db_cadastro: TDBEdit;
    db_nome: TDBEdit;
    db_CPF: TDBEdit;
    db_email: TDBEdit;
    db_telefone: TDBEdit;
    db_CEP: TDBEdit;
    db_endereco: TDBEdit;
    db_numero: TDBEdit;
    db_UF: TDBEdit;
    db_bairro: TDBEdit;
    db_cidade: TDBEdit;
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
