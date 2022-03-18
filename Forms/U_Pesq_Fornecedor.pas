unit U_Pesq_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, System.UITypes;

type
  Tfrm_Pesq_Fornecedor = class(Tfrm_Pesquisa_Padrao)
    q_pesq_padraoID_FORNECEDOR: TIntegerField;
    q_pesq_padraoCADASTRO: TDateField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoCNPJ: TStringField;
    q_pesq_padraoCEP: TStringField;
    q_pesq_padraoENDERECO: TStringField;
    q_pesq_padraoNUMERO: TIntegerField;
    q_pesq_padraoBAIRRO: TStringField;
    q_pesq_padraoCIDADE: TStringField;
    q_pesq_padraoUF: TStringField;
    q_pesq_padraoEMAIL: TStringField;
    q_pesq_padraoTELEFONE: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure abre_cadastro_fornecedor;
    procedure btnAdicionarClick(Sender: TObject);
    procedure cb_Chave_pesquisaChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Pesq_Fornecedor: Tfrm_Pesq_Fornecedor;

implementation

{$R *.dfm}

uses U_Fornecedor;

procedure Tfrm_Pesq_fornecedor.abre_cadastro_fornecedor;
begin
  frm_fornecedor := Tfrm_fornecedor.Create(self);
  frm_Pesq_fornecedor.Hide;
  U_fornecedor.frm_fornecedor.Panel3.Enabled := alterarCampos;
  U_fornecedor.frm_fornecedor.btnGravar.Enabled := alterarCampos;
  U_fornecedor.frm_fornecedor.btnCancelar.Enabled := alterarCampos;
  U_fornecedor.frm_fornecedor.DBNavigator2.Visible := not alterarCampos;

  // passa o valor do dbgrid para a query e abre o cadastro do fornecedor
  frm_fornecedor.Q_padrao.close;
  frm_fornecedor.Q_padrao.ParamByName('PID_FORNECEDOR').AsInteger := q_pesq_padraoID_fornecedor.AsInteger;
  frm_fornecedor.Q_padrao.Open;
  frm_fornecedor.ShowModal;
  try

  finally
    frm_fornecedor.Q_padrao.close;
    frm_Pesq_fornecedor.Show;
    frm_Pesq_Fornecedor.q_pesq_padrao.Refresh;
  end;
end;

procedure Tfrm_Pesq_fornecedor.btnPesquisarClick(Sender: TObject);
begin
  q_pesq_padrao.Close;   //fecha
  q_pesq_padrao.SQL.Add('');    //limpa
  q_pesq_padrao.Params.Clear;   //limpa parametros
  q_pesq_padrao.SQL.Clear;      //limpa sql

  q_pesq_padrao.SQL.Add('SELECT ID_FORNECEDOR, NOME, CNPJ, ENDERECO, NUMERO, BAIRRO, CIDADE, UF, TELEFONE, EMAIL, CADASTRO, CEP FROM fornecedor'); //adiciona SQL

  case cb_Chave_pesquisa.ItemIndex of

    0:
    begin // pesquisa por codigo
      q_pesq_padrao.SQL.Add('WHERE ID_FORNECEDOR = :PID_FORNECEDOR'); //cria o parametro
      q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    1:
    begin // pesquisa por nome
      q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); //cria o parametro
      q_pesq_padrao.ParamByName('PNOME').AsString := '%' +ed_Valor.Text  + '%';  //aponta para o campo do parametro
    end;

    2:
    begin // pesquisa por CNPJ
      q_pesq_padrao.SQL.Add('WHERE CNPJ = :PCNPJ'); //cria o parametro
      q_pesq_padrao.ParamByName('PCNPJ').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    3:
    begin // pesquisa por periodo
      q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM'); //cria o parametro
      q_pesq_padrao.ParamByName('PINICIO').AsDate := StrToDate(mk_Inicio.Text); //aponta para o campo do parametro
      q_pesq_padrao.ParamByName('PFIM').AsDate    := StrToDate(mk_Fim.Text); //aponta para o campo do parametro
    end;

    4:
    begin // mostra todos os fornecedores
      q_pesq_padrao.SQL.Add('ORDER BY ID_FORNECEDOR'); //ordena por código
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

procedure Tfrm_Pesq_fornecedor.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_fornecedor;
end;

procedure Tfrm_Pesq_fornecedor.cb_Chave_pesquisaChange(Sender: TObject);
begin
  case cb_Chave_pesquisa.ItemIndex of

    0..2: itemPesquisa := 0;

    3: itemPesquisa := 1;

    4: itemPesquisa := 2;

  end;
  inherited;

end;

procedure Tfrm_Pesq_fornecedor.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_fornecedor;
end;

procedure Tfrm_Pesq_fornecedor.btnEditarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_fornecedor;
end;

procedure Tfrm_Pesq_Fornecedor.btnImprimirClick(Sender: TObject);
begin
  nomeRelatorio := 'rel_Fornecedores.fr3';
  inherited;
end;

end.
