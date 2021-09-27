unit U_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, U_DM, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_Usuarios = class(Tfrm_Padrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    db_tipo: TDBComboBox;
    Q_padraoNOME: TStringField;
    Q_padraoTIPO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoID_USUARIO: TIntegerField;
    Q_padraoSENHA: TStringField;
    db_id_usuario: TDBEdit;
    db_nome: TDBEdit;
    db_senha: TDBEdit;
    db_cadastro: TDBEdit;
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_EditarClick(Sender: TObject);
    procedure trataCampos();
    procedure btn_PesquisarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Usuarios: Tfrm_Usuarios;

implementation

{$R *.dfm}

uses U_Pesq_Usuario;


procedure Tfrm_Usuarios.btnCancelarClick(Sender: TObject);
begin
  inherited;
  trataCampos();
end;

procedure Tfrm_Usuarios.btn_EditarClick(Sender: TObject);
begin
  inherited;
  trataCampos();
  db_nome.SetFocus;
end;

procedure Tfrm_Usuarios.btn_NovoClick(Sender: TObject);
begin
  inherited;
  trataCampos();
  db_cadastro.Text := DateToStr(now);
  db_nome.SetFocus;
end;

procedure Tfrm_Usuarios.btn_PesquisarClick(Sender: TObject);
begin
  frm_Pesq_Usuario := Tfrm_Pesq_Usuario.Create(self);
  frm_Pesq_Usuario.ShowModal;
  try

  finally
    frm_pesq_usuario.Free;
    frm_Pesq_Usuario := nil;
  end;
end;

procedure Tfrm_Usuarios.trataCampos;
begin
  db_nome.Enabled     := not db_nome.Enabled;
  db_senha.Enabled    := not db_senha.Enabled;
  db_tipo.Enabled     := not db_tipo.Enabled;
//  db_id_usuario       := not db_id_usuario.Enabled;
end;

end.
