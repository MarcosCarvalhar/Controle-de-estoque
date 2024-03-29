unit U_Pesq_Compras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, System.UITypes,
  Vcl.Imaging.pngimage;

type
  Tfrm_Pesq_Compras = class(Tfrm_Pesquisa_Padrao)
    q_pesq_padraoID_COMPRA: TIntegerField;
    q_pesq_padraoCADASTRO: TDateField;
    q_pesq_padraoVALOR: TBCDField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoDESCRICAO: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure abre_cadastro_compras;
    procedure btnAdicionarClick(Sender: TObject);
    procedure cb_Chave_pesquisaChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Pesq_Compras: Tfrm_Pesq_Compras;

implementation

{$R *.dfm}

uses U_Compras, DM_Compras;

procedure Tfrm_Pesq_compras.abre_cadastro_compras;
begin
  frm_Compras := Tfrm_Compras.Create(self);
  frm_Pesq_compras.Hide;
  U_compras.frm_compras.Panel1.Enabled := alterarCampos;
  U_compras.frm_compras.btnGravar.Enabled := alterarCampos;

  // passa o valor do dbgrid para a query e abre o cadastro do compras
  q_pesq_padrao.close;
  q_pesq_padrao.ParamByName('PID_COMPRA').AsInteger := q_pesq_padraoID_COMPRA.AsInteger;
  q_pesq_padrao.Open;
  frm_compras.ShowModal;
  try

  finally
    q_pesq_padrao.close;
    frm_Pesq_compras.Show;
    frm_Pesq_Compras.q_pesq_padrao.Refresh;
  end;
end;

procedure Tfrm_Pesq_compras.btnPesquisarClick(Sender: TObject);
begin
  q_pesq_padrao.Close;   //fecha
  q_pesq_padrao.SQL.Add('');    //limpa
  q_pesq_padrao.Params.Clear;   //limpa parametros
  q_pesq_padrao.SQL.Clear;      //limpa sql

  q_pesq_padrao.SQL.Add('SELECT C.ID_COMPRA, C.CADASTRO, C.VALOR, F.NOME, P.DESCRICAO FROM COMPRA C, FORNECEDOR F, FORMA_PGTO P WHERE C.ID_FORNECEDOR = F.ID_FORNECEDOR AND C.ID_FORMA_PGTO = P.ID_FORMA_PGTO'); //adiciona SQL

  case cb_Chave_pesquisa.ItemIndex of

    0:
    begin // pesquisa por codigo
      q_pesq_padrao.SQL.Add('WHERE C.ID_COMPRA = :PID_COMPRA'); //cria o parametro
      q_pesq_padrao.ParamByName('PID_COMPRA').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    1:
    begin // pesquisa por fornecedor
      q_pesq_padrao.SQL.Add('WHERE F.NOME LIKE :PFORNECEDOR'); //cria o parametro
      q_pesq_padrao.ParamByName('PFORNECEDOR').AsString := '%' +ed_Valor.Text  + '%';  //aponta para o campo do parametro
    end;

    2:
    begin // pesquisa por periodo
      q_pesq_padrao.SQL.Add('WHERE C.CADASTRO BETWEEN :PINICIO AND :PFIM'); //cria o parametro
      q_pesq_padrao.ParamByName('PINICIO').AsDate := StrToDate(mk_Inicio.Text); //aponta para o campo do parametro
      q_pesq_padrao.ParamByName('PFIM').AsDate    := StrToDate(mk_Fim.Text); //aponta para o campo do parametro
    end;

    3:
    begin // mostra todas as compras
      q_pesq_padrao.SQL.Add('ORDER BY ID_COMPRA'); //ordena por c�digo
    end;

  end;

  q_pesq_padrao.Open;  //abre a query e mostra o resultado

  if q_pesq_padrao.IsEmpty then
    begin
      Messagedlg('Registro n�o encontrado!', MtInformation, [mbOK], 0);
    end
    else
    abort;

end;

procedure Tfrm_Pesq_compras.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_compras;
end;

procedure Tfrm_Pesq_compras.cb_Chave_pesquisaChange(Sender: TObject);
begin
  case cb_Chave_pesquisa.ItemIndex of

    0..1: itemPesquisa := 0;

    2: itemPesquisa := 1;

    3: itemPesquisa := 2;

  end;
  inherited;

end;

procedure Tfrm_Pesq_compras.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_compras;
end;

procedure Tfrm_Pesq_compras.btnEditarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_compras;
end;

procedure Tfrm_Pesq_compras.btnImprimirClick(Sender: TObject);
begin
  nomeRelatorio := 'rel_Compras.fr3';
  inherited;
end;

end.
