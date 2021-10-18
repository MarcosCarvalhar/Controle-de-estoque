unit U_Pesq_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, System.UITypes, frxClass, frxDBSet;

type
  Tfrm_Pesq_Cliente = class(Tfrm_Pesquisa_Padrao)
    q_pesq_padraoID_CLIENTE: TIntegerField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoENDERECO: TStringField;
    q_pesq_padraoNUMERO: TIntegerField;
    q_pesq_padraoBAIRRO: TStringField;
    q_pesq_padraoCIDADE: TStringField;
    q_pesq_padraoUF: TStringField;
    q_pesq_padraoCEP: TStringField;
    q_pesq_padraoTELEFONE: TStringField;
    q_pesq_padraoCPF: TStringField;
    q_pesq_padraoEMAIL: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure abre_cadastro_cliente;
    procedure btnAdicionarClick(Sender: TObject);
    procedure cb_Chave_pesquisaChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Pesq_Cliente: Tfrm_Pesq_Cliente;

implementation

{$R *.dfm}

uses U_Cliente;

procedure Tfrm_Pesq_cliente.abre_cadastro_cliente;
begin
  frm_cliente := Tfrm_cliente.Create(self);
  frm_Pesq_cliente.Hide;
  U_cliente.frm_cliente.Panel3.Enabled := alterarCampos;
  U_cliente.frm_cliente.btnGravar.Enabled := alterarCampos;
  U_cliente.frm_cliente.btnCancelar.Enabled := alterarCampos;
  U_cliente.frm_cliente.DBNavigator2.Visible := not alterarCampos;

  // passa o valor do dbgrid para a query e abre o cadastro do cliente
  frm_cliente.Q_padrao.close;
  frm_cliente.Q_padrao.ParamByName('PID_cliente').AsInteger := q_pesq_padraoID_cliente.AsInteger;
  frm_cliente.Q_padrao.Open;
  frm_cliente.ShowModal;
  try

  finally
    frm_cliente.Q_padrao.close;
    frm_Pesq_cliente.Show;
  end;
end;

procedure Tfrm_Pesq_Cliente.btnPesquisarClick(Sender: TObject);
begin
  q_pesq_padrao.Close;   //fecha
  q_pesq_padrao.SQL.Add('');    //limpa
  q_pesq_padrao.Params.Clear;   //limpa parametros
  q_pesq_padrao.SQL.Clear;      //limpa sql

  q_pesq_padrao.SQL.Add('SELECT ID_CLIENTE, NOME, CPF, ENDERECO, NUMERO, BAIRRO, CIDADE, UF, TELEFONE, EMAIL, CADASTRO, CEP FROM CLIENTE'); //adiciona SQL

  case cb_Chave_pesquisa.ItemIndex of

    0:
    begin // pesquisa por codigo
      q_pesq_padrao.SQL.Add('WHERE ID_CLIENTE = :PID_CLIENTE'); //cria o parametro
      q_pesq_padrao.ParamByName('PID_CLIENTE').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    1:
    begin // pesquisa por nome
      q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); //cria o parametro
      q_pesq_padrao.ParamByName('PNOME').AsString := '%' +ed_Valor.Text  + '%';  //aponta para o campo do parametro
    end;

    2:
    begin // pesquisa por CPF
      q_pesq_padrao.SQL.Add('WHERE CPF = :PCPF'); //cria o parametro
      q_pesq_padrao.ParamByName('PCPF').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    3:
    begin // pesquisa por periodo
      q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM'); //cria o parametro
      q_pesq_padrao.ParamByName('PINICIO').AsDate := StrToDate(mk_Inicio.Text); //aponta para o campo do parametro
      q_pesq_padrao.ParamByName('PFIM').AsDate    := StrToDate(mk_Fim.Text); //aponta para o campo do parametro
    end;

    4:
    begin // mostra todos os clientes
      q_pesq_padrao.SQL.Add('ORDER BY ID_CLIENTE'); //ordena por código
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

procedure Tfrm_Pesq_cliente.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_cliente;
end;

procedure Tfrm_Pesq_cliente.cb_Chave_pesquisaChange(Sender: TObject);
begin
  case cb_Chave_pesquisa.ItemIndex of

    0..2: itemPesquisa := 0;

    3: itemPesquisa := 1;

    4: itemPesquisa := 2;

  end;
  inherited;

end;

procedure Tfrm_Pesq_cliente.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_cliente;
end;



procedure Tfrm_Pesq_cliente.btnEditarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_cliente;
end;

procedure Tfrm_Pesq_Cliente.btnImprimirClick(Sender: TObject);
begin
  nomeRelatorio := 'rel_Clientes.fr3';
  inherited;
end;

end.
