unit U_Pesq_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, System.UITypes, Vcl.Imaging.pngimage;

type
  Tfrm_Pesq_Empresa = class(Tfrm_Pesquisa_Padrao)
    q_pesq_padraoID_EMPRESA: TIntegerField;
    q_pesq_padraoRAZAO_SOCIAL: TStringField;
    q_pesq_padraoN_FANTASIA: TStringField;
    q_pesq_padraoENDERECO: TStringField;
    q_pesq_padraoNUMERO: TIntegerField;
    q_pesq_padraoBAIRRO: TStringField;
    q_pesq_padraoCIDADE: TStringField;
    q_pesq_padraoUF: TStringField;
    q_pesq_padraoTELEFONE: TStringField;
    q_pesq_padraoCNPJ: TStringField;
    q_pesq_padraoEMAIL: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    q_pesq_padraoCEP: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure abre_cadastro_empresa;
    procedure btnAdicionarClick(Sender: TObject);
    procedure cb_Chave_pesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Pesq_Empresa: Tfrm_Pesq_Empresa;

implementation

{$R *.dfm}

uses U_empresa;

procedure Tfrm_Pesq_empresa.abre_cadastro_empresa;
begin
  frm_empresa := Tfrm_empresa.Create(self);
  frm_Pesq_empresa.Hide;
  U_empresa.frm_empresa.Panel3.Enabled := alterarCampos;
  U_empresa.frm_empresa.btnGravar.Enabled := alterarCampos;
  U_empresa.frm_empresa.btnCancelar.Enabled := alterarCampos;
  U_empresa.frm_empresa.DBNavigator2.Visible := not alterarCampos;

  // passa o valor do dbgrid para a query e abre o cadastro do empresa
  frm_empresa.Q_padrao.close;
  frm_empresa.Q_padrao.ParamByName('PID_EMPRESA').AsInteger := q_pesq_padraoID_empresa.AsInteger;
  frm_empresa.Q_padrao.Open;
  frm_empresa.ShowModal;
  try

  finally
    frm_empresa.Q_padrao.close;
    frm_Pesq_empresa.Show;
    frm_Pesq_Empresa.q_pesq_padrao.Refresh;
  end;
end;

procedure Tfrm_Pesq_empresa.btnPesquisarClick(Sender: TObject);
begin
  q_pesq_padrao.Close;   //fecha
  q_pesq_padrao.SQL.Add('');    //limpa
  q_pesq_padrao.Params.Clear;   //limpa parametros
  q_pesq_padrao.SQL.Clear;      //limpa sql

  q_pesq_padrao.SQL.Add('SELECT ID_EMPRESA, RAZAO_SOCIAL, N_FANTASIA, ENDERECO, NUMERO, BAIRRO, CIDADE, UF, TELEFONE, CNPJ, EMAIL, CADASTRO, CEP FROM EMPRESA'); //adiciona SQL

  case cb_Chave_pesquisa.ItemIndex of

    0:
    begin // pesquisa por codigo
      q_pesq_padrao.SQL.Add('WHERE ID_EMPRESA = :PID_EMPRESA'); //cria o parametro
      q_pesq_padrao.ParamByName('PID_EMPRESA').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    1:
    begin // pesquisa por raz�o social
      q_pesq_padrao.SQL.Add('WHERE RAZAO_SOCIAL LIKE :PRAZAO_SOCIAL'); //cria o parametro
      q_pesq_padrao.ParamByName('PRAZAO_SOCIAL').AsString := '%' +ed_Valor.Text  + '%';  //aponta para o campo do parametro
    end;

    2:
    begin // pesquisa por nome fantasia
      q_pesq_padrao.SQL.Add('WHERE N_FANTASIA LIKE :PN_FANTASIA'); //cria o parametro
      q_pesq_padrao.ParamByName('PN_FANTASIA').AsString := '%' +ed_Valor.Text  + '%';  //aponta para o campo do parametro
    end;

    3:
    begin // pesquisa por CNPJ
      q_pesq_padrao.SQL.Add('WHERE CNPJ = :PCNPJ'); //cria o parametro
      q_pesq_padrao.ParamByName('PCNPJ').AsString := ed_Valor.Text;  //aponta para o campo do parametro
    end;

    4:
    begin // pesquisa por periodo
      q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM'); //cria o parametro
      q_pesq_padrao.ParamByName('PINICIO').AsDate := StrToDate(mk_Inicio.Text); //aponta para o campo do parametro
      q_pesq_padrao.ParamByName('PFIM').AsDate    := StrToDate(mk_Fim.Text); //aponta para o campo do parametro
    end;

    5:
    begin // mostra todos os empresas
      q_pesq_padrao.SQL.Add('ORDER BY ID_EMPRESA'); //ordena por c�digo
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

procedure Tfrm_Pesq_empresa.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_empresa;
end;

procedure Tfrm_Pesq_Empresa.cb_Chave_pesquisaChange(Sender: TObject);
begin
  case cb_Chave_pesquisa.ItemIndex of

    0..3: itemPesquisa := 0;

    4: itemPesquisa := 1;

    5: itemPesquisa := 2;

  end;
  inherited;

end;

procedure Tfrm_Pesq_empresa.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_empresa;
end;

procedure Tfrm_Pesq_empresa.btnEditarClick(Sender: TObject);
begin
  inherited;
  abre_cadastro_empresa;
end;

end.
