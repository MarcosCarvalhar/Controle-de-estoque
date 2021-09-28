unit U_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, U_DM, Vcl.DBCtrls;

type
  Tfrm_Padrao = class(TForm)
    Panel1: TPanel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    Q_padrao: TFDQuery;
    DS_padrao: TDataSource;
    DBNavigator2: TDBNavigator;
    BitBtn10: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Label6: TLabel;
    Image1: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn_DeletarClick(Sender: TObject);
    procedure btn_EditarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    //procedure trataBotoes();

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Padrao: Tfrm_Padrao;

implementation

{$R *.dfm}

uses U_Form_pesquisa_padrao;

procedure Tfrm_Padrao.btnAtualizarClick(Sender: TObject);
begin
  // atualiza os registros

  Q_padrao.Refresh;
  MessageDlg('Registro atualizado com sucesso!', mtInformation, [mbOK], 0);
end;

procedure Tfrm_Padrao.btnCancelarClick(Sender: TObject);
begin
  // cancela as alterações

  Q_padrao.Cancel;
  MessageDlg('Ação cancelada pelo usuário!', mtInformation, [mbOK], 0);
  close;
end;

procedure Tfrm_Padrao.btnGravarClick(Sender: TObject);
begin
  // grava as alterações

  Q_padrao.Post;
  MessageDlg('Registro salvo com sucesso!', mtInformation, [mbOK], 0);
  close;
end;

procedure Tfrm_Padrao.btn_DeletarClick(Sender: TObject);
begin
  // deleta o registro

  if MessageDlg('Deseja deletar este registro?', mtConfirmation, [mbOK, mbNo], 0) = mrOk then
    begin
      Q_padrao.Delete;
      MessageDlg('Registro deletado com sucesso!', mtInformation, [mbOK], 0);

    end
    else

    abort;
end;

procedure Tfrm_Padrao.btn_EditarClick(Sender: TObject);
begin
  // edita o registro

  if MessageDlg('Deseja editar este registro?', mtConfirmation, [mbOK, mbNo], 0) = mrOk then
    begin
      Q_padrao.edit;
    end
    else

    abort;
end;

procedure Tfrm_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // faz a tecla ENTER (#13) receber a função da tecla TAB (#0)

  if key=#13 then
    begin
      key:=#0;
      Perform(wm_nextDlgCtl, 0, 0);
    end;
end;

procedure Tfrm_Padrao.FormShow(Sender: TObject);
begin
  Q_padrao.Open;
  Q_padrao.Refresh;

  case acao of
  'A': Q_padrao.Append;

  'E': Q_padrao.Edit;

  end;
end;

end.
