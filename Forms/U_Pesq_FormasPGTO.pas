unit U_Pesq_FormasPGTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask;

type
  Tfrm_Pesq_FormasPGTO = class(Tfrm_Pesquisa_Padrao)
    q_pesq_padraoID_FORMA_PGTO2: TIntegerField;
    q_pesq_padraoDESCRICAO2: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure abre_cadastro_formasPGTO;
    procedure btnAdicionarClick(Sender: TObject);
    procedure cb_Chave_pesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Pesq_FormasPGTO: Tfrm_Pesq_FormasPGTO;

implementation

{$R *.dfm}

uses U_FormasPGTO;

procedure Tfrm_Pesq_formasPGTO.abre_cadastro_formasPGTO;
begin
  frm_formasPGTO := Tfrm_formasPGTO.Create(self);
  frm_Pesq_formasPGTO.Hide;
  U_formasPGTO.frm_formasPGTO.Panel3.Enabled := alterarCampos;
  U_formasPGTO.frm_formasPGTO.btnGravar.Enabled := alterarCampos;
  U_formasPGTO.frm_formasPGTO.btnCancelar.Enabled := alterarCampos;
  U_formasPGTO.frm_formasPGTO.DBNavigator2.Visible := not alterarCampos;

  // passa o valor do dbgrid para a query e abre o cadastro do formasPGTO
  frm_formasPGTO.Q_padrao.close;
  frm_formasPGTO.Q_padrao.ParamByName('PID_FORMA_PGTO').AsInteger := q_pesq_padraoID_FORMA_PGTO2.AsInteger;
  frm_formasPGTO.Q_padrao.Open;
  frm_formasPGTO.ShowModal;
  try

  finally
    frm_formasPGTO.Q_padrao.close;
    frm_Pesq_formasPGTO.Show;
  end;
end;

procedure Tfrm_Pesq_formasPGTO.btnPesquisarClick(Sender: TObject);
begin
  q_pesq_padrao.Close;   //fecha
  q_pesq_padrao.SQL.Add('');    //limpa
  q_pesq_padrao.Params.Clear;   //limpa parametros
  q_pesq_padrao.SQL.Clear;      //limpa sql

  q_pesq_padrao.SQL.Add('SELECT ID_FORMA_PGTO, DESCRICAO, CADASTRO FROM FORMA_PGTO'); //adiciona SQL

  case cb_Chave_pesquisa.ItemIndex of

    0:
    begin // pesquisa por codigo
      q_pesq_padrao.SQL.Add('WHERE ID_FORMAPGTO = :PID_FORMAPGTO'); //cria o parametro
      q_pesq_padrao.ParamByName('PID_FORMAPGTO').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    1:
    begin // pesquisa por nome
      q_pesq_padrao.SQL.Add('WHERE DESCRICAO LIKE :PDESCRICAO'); //cria o parametro
      q_pesq_padrao.ParamByName('PDESCRICAO').AsString := '%' +ed_Valor.Text  + '%';  //aponta para o campo do parametro
    end;

    2:
    begin // pesquisa por periodo
      q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM'); //cria o parametro
      q_pesq_padrao.ParamByName('PINICIO').AsDate := StrToDate(mk_Inicio.Text); //aponta para o campo do parametro
      q_pesq_padrao.ParamByName('PFIM').AsDate    := StrToDate(mk_Fim.Text); //aponta para o campo do parametro
    end;

    3:
    begin // mostra todas as formas de pagamento
      q_pesq_padrao.SQL.Add('ORDER BY ID_FORMA_PGTO'); //ordena por código
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

procedure Tfrm_Pesq_formasPGTO.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_formasPGTO;
end;

procedure Tfrm_Pesq_formasPGTO.cb_Chave_pesquisaChange(Sender: TObject);
begin
  case cb_Chave_pesquisa.ItemIndex of

    0..1: itemPesquisa := 0;

    2: itemPesquisa := 1;

    3: itemPesquisa := 2;

  end;
  inherited;

end;

procedure Tfrm_Pesq_formasPGTO.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_formasPGTO;
end;

procedure Tfrm_Pesq_formasPGTO.btnEditarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_formasPGTO;
end;

end.
