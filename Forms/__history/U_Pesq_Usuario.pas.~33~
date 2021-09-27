unit U_Pesq_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.ExtCtrls, System.UITypes;

type
  Tfrm_Pesq_Usuario = class(Tfrm_Pesquisa_Padrao)
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoID_USUARIO: TIntegerField;
    q_pesq_padraoTIPO: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    Label5: TLabel;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure abre_cadastro_usuario;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Pesq_Usuario: Tfrm_Pesq_Usuario;

implementation

{$R *.dfm}

uses U_usuario;

procedure Tfrm_Pesq_Usuario.abre_cadastro_usuario;
begin
  frm_Usuarios := Tfrm_Usuarios.Create(self);
  frm_Pesq_Usuario.Hide;

  // passa o valor do dbgrid para a query e abre o cadastro do usuario
  frm_Usuarios.Q_padrao.close;
  frm_Usuarios.Q_padrao.ParamByName('PID_USUARIO').AsInteger := q_pesq_padraoID_USUARIO.AsInteger;
  frm_Usuarios.Q_padrao.Open;
  frm_Usuarios.ShowModal;
  try

  finally
    frm_Usuarios.Q_padrao.close;
    frm_Pesq_Usuario.Show;
  end;
end;

procedure Tfrm_Pesq_Usuario.btnPesquisarClick(Sender: TObject);
begin
  q_pesq_padrao.Close;   //fecha
  q_pesq_padrao.SQL.Add('');    //limpa
  q_pesq_padrao.Params.Clear;   //limpa parametros
  q_pesq_padrao.SQL.Clear;      //limpa sql

  q_pesq_padrao.SQL.Add('SELECT ID_USUARIO, NOME, TIPO, CADASTRO FROM USUARIO'); //adiciona SQL

  case cb_Chave_pesquisa.ItemIndex of

    0:
    begin // pesquisa por codigo
      q_pesq_padrao.SQL.Add('WHERE ID_USUARIO = :PID_USUARIO'); //cria o parametro
      q_pesq_padrao.ParamByName('PID_USUARIO').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    1:
    begin // pesquisa por nome
      q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); //cria o parametro
      q_pesq_padrao.ParamByName('PNOME').AsString := '%' +ed_Valor.Text  + '%';  //aponta para o campo do parametro
    end;

    2:
    begin // pesquisa por periodo
      q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM'); //cria o parametro
      q_pesq_padrao.ParamByName('PINICIO').AsDate := StrToDate(mk_Inicio.Text); //aponta para o campo do parametro
      q_pesq_padrao.ParamByName('PFIM').AsDate    := StrToDate(mk_Fim.Text); //aponta para o campo do parametro
    end;

    3:
    begin // mostra todos os usuarios
      q_pesq_padrao.SQL.Add('ORDER BY ID_USUARIO'); //ordena por código
    end;

  end;

  q_pesq_padrao.Open;  //abre a query e mostra o resultado

  if q_pesq_padrao.IsEmpty then
    begin
      Messagedlg('Registro não encontrado!', MtInformation, [mbOK], 0);
    end
    else
    abort;

end;

procedure Tfrm_Pesq_Usuario.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_usuario;
end;

procedure Tfrm_Pesq_Usuario.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_usuario;
end;

procedure Tfrm_Pesq_Usuario.btnEditarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_usuario;
//  if MessageDlg('Deseja editar este registro?', mtConfirmation, [mbOK, mbNo], 0) = mrOk then
//    begin
//      q_pesq_padrao.edit;
//    end
//    else
//    abort;
end;

procedure Tfrm_Pesq_Usuario.btnDeletarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_usuario;
end;

end.
