unit U_Pesq_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, frxClass, frxDBSet;

type
  Tfrm_Pesq_Produto = class(Tfrm_Pesquisa_Padrao)
    q_pesq_padraoID_PRODUTO: TIntegerField;
    q_pesq_padraoCADASTRO: TDateField;
    q_pesq_padraoPRODUTO_DESCRICAO: TStringField;
    q_pesq_padraoID_FORNECEDOR: TIntegerField;
    q_pesq_padraoVL_CUSTO: TBCDField;
    q_pesq_padraoVL_VENDA: TBCDField;
    q_pesq_padraoESTOQUE: TBCDField;
    q_pesq_padraoESTOQUE_MIN: TBCDField;
    q_pesq_padraoUNIDADE: TStringField;
    q_pesq_padraoNOME: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure abre_cadastro_produto;
    procedure btnAdicionarClick(Sender: TObject);
    procedure cb_Chave_pesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Pesq_Produto: Tfrm_Pesq_Produto;

implementation

{$R *.dfm}

uses U_Produto;

procedure Tfrm_Pesq_produto.abre_cadastro_produto;
begin
  frm_produto := Tfrm_produto.Create(self);
  frm_Pesq_produto.Hide;
  U_produto.frm_produto.Panel3.Enabled := alterarCampos;
  U_produto.frm_produto.btnGravar.Enabled := alterarCampos;
  U_produto.frm_produto.btnCancelar.Enabled := alterarCampos;
  U_produto.frm_produto.DBNavigator2.Visible := not alterarCampos;

  // passa o valor do dbgrid para a query e abre o cadastro do produto
  frm_produto.Q_padrao.close;
  frm_produto.Q_padrao.ParamByName('PID_PRODUTO').AsInteger := q_pesq_padraoID_produto.AsInteger;
  frm_produto.Q_padrao.Open;
  frm_produto.ShowModal;
  try

  finally
    frm_produto.Q_padrao.close;
    frm_Pesq_produto.Show;
  end;
end;

procedure Tfrm_Pesq_produto.btnPesquisarClick(Sender: TObject);
begin
  q_pesq_padrao.Close;   //fecha
  q_pesq_padrao.SQL.Add('');    //limpa
  q_pesq_padrao.Params.Clear;   //limpa parametros
  q_pesq_padrao.SQL.Clear;      //limpa sql

  q_pesq_padrao.SQL.Add('SELECT P.ID_PRODUTO, P.CADASTRO, P.PRODUTO_DESCRICAO, P.ID_FORNECEDOR, P.VL_CUSTO, P.VL_VENDA, P.ESTOQUE, P.ESTOQUE_MIN, P.UNIDADE, F.NOME FROM PRODUTO P, FORNECEDOR F WHERE P.ID_FORNECEDOR = F.ID_FORNECEDOR'); //adiciona SQL

  case cb_Chave_pesquisa.ItemIndex of

    0:
    begin // pesquisa por codigo
      q_pesq_padrao.SQL.Add('WHERE P.ID_PRODUTO = :PID_PRODUTO'); //cria o parametro
      q_pesq_padrao.ParamByName('PID_PRODUTO').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    1:
    begin // pesquisa por nome
      q_pesq_padrao.SQL.Add('WHERE P.PRODUTO_DESCRICAO LIKE :PPRODUTO_DESCRICAO'); //cria o parametro
      q_pesq_padrao.ParamByName('PPRODUTO_DESCRICAO').AsString := '%' +ed_Valor.Text  + '%';  //aponta para o campo do parametro
    end;

    2:
    begin // pesquisa por unidade
      q_pesq_padrao.SQL.Add('WHERE P.UNIDADE = :PUNIDADE'); //cria o parametro
      q_pesq_padrao.ParamByName('PUNIDADE').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    3:
    begin // pesquisa por periodo
      q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM'); //cria o parametro
      q_pesq_padrao.ParamByName('PINICIO').AsDate := StrToDate(mk_Inicio.Text); //aponta para o campo do parametro
      q_pesq_padrao.ParamByName('PFIM').AsDate    := StrToDate(mk_Fim.Text); //aponta para o campo do parametro
    end;

    4:
    begin // pesquisa por codigo de fornecedor
      q_pesq_padrao.SQL.Add('WHERE F.ID_FORNECEDOR = :PID_FORNECEDOR'); //cria o parametro
      q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    5:
    begin // pesquisa por nome de fornecedor
      q_pesq_padrao.SQL.Add('WHERE F.NOME = :PNOME'); //cria o parametro
      q_pesq_padrao.ParamByName('PNOME').AsString := '%' +ed_Valor.Text+ '%';  //aponta para o campo do parametro
    end;

    6:
    begin // mostra todos os produtos
      q_pesq_padrao.SQL.Add('ORDER BY ID_PRODUTO'); //ordena por código
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

procedure Tfrm_Pesq_produto.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_produto;
end;

procedure Tfrm_Pesq_produto.cb_Chave_pesquisaChange(Sender: TObject);
begin
  case cb_Chave_pesquisa.ItemIndex of

    0..2: itemPesquisa := 0;

    4..5: itemPesquisa := 0;

    3: itemPesquisa := 1;

    6: itemPesquisa := 2;

  end;
  inherited;

end;

procedure Tfrm_Pesq_produto.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_produto;
end;

procedure Tfrm_Pesq_produto.btnEditarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_produto;
end;

end.
