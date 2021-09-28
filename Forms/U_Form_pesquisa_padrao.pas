unit U_Form_pesquisa_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Data.FMTBcd, Data.DB, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.UITypes;

type
  Tfrm_Pesquisa_Padrao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ed_Valor: TEdit;
    mk_Inicio: TMaskEdit;
    mk_Fim: TMaskEdit;
    lbl_Valor: TLabel;
    lbl_Data1: TLabel;
    lbl_Data2: TLabel;
    DBGrid1: TDBGrid;
    ds_pesq_padrao: TDataSource;
    q_pesq_padrao: TFDQuery;
    Panel2: TPanel;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    btnBaixar: TBitBtn;
    btnPesquisar: TBitBtn;
    cb_Chave_pesquisa: TComboBox;
    btnVisualizar: TBitBtn;
    btnEditar: TBitBtn;
    btnAdicionar: TBitBtn;
    btnDeletar: TBitBtn;
    btnAtualizar: TBitBtn;
    procedure cb_Chave_pesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure trataBotoes;
    procedure q_pesq_padraoAfterOpen(DataSet: TDataSet);
    procedure q_pesq_padraoAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frm_Pesquisa_Padrao: Tfrm_Pesquisa_Padrao;
  alterarCampos :boolean;
  acao :char;

implementation

{$R *.dfm}

uses U_DM, U_usuario, U_padrao;

procedure Tfrm_Pesquisa_Padrao.btnAdicionarClick(Sender: TObject);
begin
  // cria um novo registro

  alterarCampos := true;
  acao := 'A';
end;

procedure Tfrm_Pesquisa_Padrao.btnAtualizarClick(Sender: TObject);
begin
  // atualiza os registros

  q_pesq_padrao.Refresh;
  MessageDlg('Registro atualizado com sucesso!', mtInformation, [mbOK], 0);
end;

procedure Tfrm_Pesquisa_Padrao.btnDeletarClick(Sender: TObject);
begin
  // deleta o registro

  if MessageDlg('Deseja deletar este registro?', mtConfirmation, [mbOK, mbNo], 0) = mrOk then
    begin
      q_pesq_padrao.Delete;
      MessageDlg('Registro deletado com sucesso!', mtInformation, [mbOK], 0);

    end
    else

    abort;
end;

procedure Tfrm_Pesquisa_Padrao.btnEditarClick(Sender: TObject);
begin
  alterarCampos := true;
  acao := 'E';
end;

procedure Tfrm_Pesquisa_Padrao.btnVisualizarClick(Sender: TObject);
begin
  alterarCampos := false;
end;

procedure Tfrm_Pesquisa_Padrao.cb_Chave_pesquisaChange(Sender: TObject);
begin
  case cb_Chave_pesquisa.ItemIndex of

    0..1:
    begin        // pesquisa por codigo e nome
      ed_Valor.visible  := true;
      mk_inicio.visible := false;
      mk_fim.visible    := false;
      lbl_Valor.visible := true;
      lbl_Data1.visible := false;
      lbl_Data2.visible := false;
      ed_Valor.SetFocus;
    end;

    2:
    begin      // pesquisa por cadastro
      ed_Valor.visible  := false;
      mk_inicio.visible := true;
      mk_fim.visible    := true;
      lbl_Valor.visible := false;
      lbl_Data1.visible := true;
      lbl_Data2.visible := true;
      mk_Inicio.SetFocus;
    end;

    3:
    begin    // pesquisa por todos
      ed_Valor.visible  := false;
      mk_inicio.visible := false;
      mk_fim.visible    := false;
      lbl_Valor.visible := false;
      lbl_Data1.visible := false;
      lbl_Data2.visible := false;
      btnPesquisar.SetFocus;
    end;

  end;

end;

procedure Tfrm_Pesquisa_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // enter faz a fun��o de TAB

  if key=#13 then
    begin
      key:=#0;
      Perform (wm_nextDlgCtl,0,0);
    end;
end;

procedure Tfrm_Pesquisa_Padrao.q_pesq_padraoAfterClose(DataSet: TDataSet);
begin
  trataBotoes;
end;

procedure Tfrm_Pesquisa_Padrao.q_pesq_padraoAfterOpen(DataSet: TDataSet);
begin
  trataBotoes;
end;

procedure Tfrm_Pesquisa_Padrao.trataBotoes;
var
  VResultado: Boolean;
begin
  VResultado := ds_pesq_padrao.DataSet.RecordCount > 0;

  btnVisualizar.Enabled := VResultado;
  btnEditar.Enabled     := VResultado;
  btnDeletar.Enabled    := VResultado;
  btnAtualizar.Enabled  := VResultado;
  btnImprimir.Enabled   := VResultado;
end;

end.
