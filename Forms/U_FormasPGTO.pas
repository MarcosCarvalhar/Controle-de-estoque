unit U_FormasPGTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  dxGDIPlusClasses;

type
  Tfrm_formasPGTO = class(Tfrm_Padrao)
    Q_padraoID_FORMA_PGTO: TFDAutoIncField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoCADASTRO: TDateField;
    db_cadastro: TDBEdit;
    db_descricao: TDBEdit;
    db_id_forma_pgto: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Q_padraoAfterInsert(DataSet: TDataSet);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_formasPGTO: Tfrm_formasPGTO;

implementation

{$R *.dfm}

uses U_Pesq_FormasPGTO;

procedure Tfrm_FormasPGTO.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  DS_padrao.DataSet := frm_Pesq_FormasPGTO.q_pesq_padrao;

end;

procedure Tfrm_FormasPGTO.Q_padraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  db_cadastro.Text := DateToStr(now);
  db_descricao.SetFocus;
end;

end.
