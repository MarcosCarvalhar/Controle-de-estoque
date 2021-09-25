unit U_FormasPGTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_formasPGTO = class(Tfrm_Padrao)
    Q_padraoID_FORMA_PGTO: TFDAutoIncField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    db_cadastro: TDBEdit;
    db_id_forma_pgto: TDBEdit;
    db_descricao: TDBEdit;
    procedure btn_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_formasPGTO: Tfrm_formasPGTO;

implementation

{$R *.dfm}

procedure Tfrm_formasPGTO.btn_NovoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DateToStr(now);
  DB_descricao.SetFocus;
end;

end.
