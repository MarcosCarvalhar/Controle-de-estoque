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
    Label7: TLabel;
    Label8: TLabel;
    procedure BitBtn1Click(Sender: TObject);
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

procedure Tfrm_Pesq_Usuario.BitBtn1Click(Sender: TObject);
begin
  q_pesq_padrao.Close;   //fecha
  q_pesq_padrao.SQL.Add('');    //limpa
  q_pesq_padrao.Params.Clear;   //limpa parametros
  q_pesq_padrao.SQL.Clear;      //limpa sql

  q_pesq_padrao.SQL.Add('SELECT ID_USUARIO, NOME, TIPO, CADASTRO FROM USUARIO'); //adiciona SQL

  case cb_Chave_pesquisa.ItemIndex of
    0:
    begin
      q_pesq_padrao.SQL.Add('WHERE ID_USUARIO = :PID_USUARIO'); //cria o parametro
      q_pesq_padrao.ParamByName('PID_USUARIO').AsString := ed_nome.Text;  //aponta para o campo do parametro
    end;

    1:
    begin
      q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); //cria o parametro
      q_pesq_padrao.ParamByName('PNOME').AsString := '%' +ed_nome.Text  + '%';  //aponta para o campo do parametro
    end;

    2:
    begin
      q_pesq_padrao.SQL.Add('WHERE CADASTRO = :PCADASTRO'); //cria o parametro
      q_pesq_padrao.ParamByName('PCADASTRO').AsString := mk_Inicio.Text;  //aponta para o campo do parametro
    end;

    3:
    begin
      q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); //cria o parametro
      q_pesq_padrao.ParamByName('PNOME').AsString := ed_nome.Text; //aponta para o campo do parametro
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

procedure Tfrm_Pesq_Usuario.cb_Chave_pesquisaChange(Sender: TObject);
begin
  case cb_Chave_pesquisa.ItemIndex of

    0..1:
    begin        // pesquisa por codigo e nome
      ed_nome.enabled   := true;
      mk_inicio.enabled := false;
      mk_fim.enabled    := false;
      lbl_Valor.enabled := true;
      lbl_Data1.enabled := false;
      lbl_Data2.enabled := false;
      ed_nome.SetFocus;
    end;

    2:
    begin      // pesquisa por cadastro
      ed_nome.enabled   := false;
      mk_inicio.enabled := true;
      mk_fim.enabled    := false;
      lbl_Valor.enabled := false;
      lbl_Data1.enabled := false;
      lbl_Data2.enabled := false;
      mk_Inicio.SetFocus;
    end;

    3:
    begin    // pesquisa por periodo
      ed_nome.enabled   := false;
      mk_inicio.enabled := true;
      mk_fim.enabled    := true;
      lbl_Valor.enabled := false;
      lbl_Data1.enabled := true;
      lbl_Data2.enabled := true;
      mk_Inicio.SetFocus;
    end;
  end;
end;

end.
