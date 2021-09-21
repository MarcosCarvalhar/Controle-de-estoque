unit U_Form_pesquisa_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Data.FMTBcd, Data.DB, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_Pesquisa_Padrao = class(TForm)
    DBGrid1: TDBGrid;
    ds_pesq_padrao: TDataSource;
    q_pesq_padrao: TFDQuery;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure cb_Chave_pesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Pesquisa_Padrao: Tfrm_Pesquisa_Padrao;

implementation

{$R *.dfm}

uses U_DM, U_usuario;

procedure Tfrm_Pesquisa_Padrao.cb_Chave_pesquisaChange(Sender: TObject);
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

procedure Tfrm_Pesquisa_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // enter faz a fun��o de TAB
  if key=#13 then
    begin
      key:=#0;
      Perform (wm_nextDlgCtl,0,0);
    end;
end;

end.
