unit U_Pesq_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.ExtCtrls, System.UITypes, Vcl.DBCtrls, dxGDIPlusClasses;

type
  Tfrm_Pesq_Usuario = class(Tfrm_Pesquisa_Padrao)
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoID_USUARIO: TIntegerField;
    q_pesq_padraoTIPO: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    q_pesq_padraoSENHA: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure abre_cadastro_usuario;
    procedure btnAdicionarClick(Sender: TObject);
    procedure cb_Chave_pesquisaChange(Sender: TObject);
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
  U_usuario.frm_Usuarios.Panel3.Enabled := alterarCampos;
  U_usuario.frm_Usuarios.btnGravar.Enabled := alterarCampos;
  U_usuario.frm_Usuarios.btnCancelar.Enabled := alterarCampos;
  U_usuario.frm_Usuarios.DBNavigator2.Visible := not alterarCampos;

  // passa o valor do dbgrid para a query e abre o cadastro do usuario
  frm_Usuarios.Q_padrao.close;
  frm_Usuarios.Q_padrao.ParamByName('PID_USUARIO').AsInteger := q_pesq_padraoID_USUARIO.AsInteger;
  frm_Usuarios.Q_padrao.Open;
  frm_Usuarios.ShowModal;
  try

  finally
    frm_Usuarios.Q_padrao.close;
    q_pesq_padrao.Close;
    frm_Pesq_Usuario.Show;
  end;
end;

procedure Tfrm_Pesq_Usuario.btnPesquisarClick(Sender: TObject);
begin
  q_pesq_padrao.Close;   //fecha
  q_pesq_padrao.SQL.Add('');    //limpa
  q_pesq_padrao.Params.Clear;   //limpa parametros
  q_pesq_padrao.SQL.Clear;      //limpa sql

  q_pesq_padrao.SQL.Add('SELECT ID_USUARIO, NOME, TIPO, CADASTRO, SENHA FROM USUARIO'); //adiciona SQL

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
  acao := 'V';
end;

procedure Tfrm_Pesq_Usuario.cb_Chave_pesquisaChange(Sender: TObject);
begin
  case cb_Chave_pesquisa.ItemIndex of

    0..1: itemPesquisa := 0;

    2: itemPesquisa := 1;

    3: itemPesquisa := 2;

  end;
  inherited;

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
end;

end.
