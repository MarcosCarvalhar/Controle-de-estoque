unit U_empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  dxGDIPlusClasses;

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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Q_padraoNUMERO: TIntegerField;
    Label14: TLabel;
    db_id_empresa: TDBEdit;
    db_cadastro: TDBEdit;
    db_razao_social: TDBEdit;
    db_n_fantasia: TDBEdit;
    db_email: TDBEdit;
    db_telefone: TDBEdit;
    db_CNPJ: TDBEdit;
    db_CEP: TDBEdit;
    db_endereco: TDBEdit;
    db_numero: TDBEdit;
    db_bairro: TDBEdit;
    db_cidade: TDBEdit;
    DBComboBox1: TDBComboBox;
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_empresa: Tfrm_empresa;

implementation

{$R *.dfm}

uses U_Pesq_Empresa;

procedure Tfrm_empresa.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  DS_padrao.DataSet := frm_Pesq_Empresa.q_pesq_padrao;
end;




end.
