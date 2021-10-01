unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btn_Usuario: TSpeedButton;
    btn_Empresa: TSpeedButton;
    btn_Clientes: TSpeedButton;
    btn_Fornecedores: TSpeedButton;
    btn_Produtos: TSpeedButton;
    btn_Frma_pgto: TSpeedButton;
    btn_Compras: TSpeedButton;
    btn_Vendas: TSpeedButton;
    btn_Trocar_Usuario: TSpeedButton;
    btn_Close: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usuario1: TMenuItem;
    Empresa1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    FormasdePgto1: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    ListaUsurios1: TMenuItem;
    ListaFornecedores1: TMenuItem;
    ListaClientes1: TMenuItem;
    ListaProdutos1: TMenuItem;
    ListaCompras1: TMenuItem;
    ListaVendas1: TMenuItem;
    Sobre1: TMenuItem;
    SpeedButton1: TSpeedButton;

    procedure Abre_Tela_Usuario;
    procedure Abre_Tela_Empresa;
    procedure Abre_Tela_Cliente;
    procedure Abre_Tela_Fornecedor;
    procedure Abre_Tela_Produtos;
    procedure Abre_Tela_FormaDePgto;
    procedure Timer1Timer(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure btn_UsuarioClick(Sender: TObject);
    procedure btn_EmpresaClick(Sender: TObject);
    procedure Usuario1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure btn_ClientesClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure btn_FornecedoresClick(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure btn_ProdutosClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure btn_Frma_pgtoClick(Sender: TObject);
    procedure FormasdePgto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses U_usuario, U_DM, U_empresa, U_Cliente, U_Fornecedor, U_Produto, U_FormasPGTO, U_Pesq_Usuario, U_Pesq_Empresa,
  U_Pesq_Cliente, U_Pesq_Fornecedor, U_Pesq_Produto, U_Pesq_FormasPGTO;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  // insere dados na statusbar
  Statusbar1.Panels[0].Text := DateTostr(now);
  Statusbar1.Panels[1].Text := TimeTostr(now);
  Statusbar1.Panels[2].Text := 'BEM VINDO!';
end;

procedure TfrmPrincipal.btn_CloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.btn_UsuarioClick(Sender: TObject);
begin
  Abre_Tela_Usuario;
end;

procedure TfrmPrincipal.btn_EmpresaClick(Sender: TObject);
begin
  Abre_Tela_Empresa;
end;

procedure TfrmPrincipal.btn_ClientesClick(Sender: TObject);
begin
  Abre_Tela_Cliente;
end;

procedure TfrmPrincipal.btn_FornecedoresClick(Sender: TObject);
begin
  Abre_Tela_Fornecedor;
end;

procedure TfrmPrincipal.btn_ProdutosClick(Sender: TObject);
begin
  Abre_Tela_Produtos;
end;

procedure TfrmPrincipal.btn_Frma_pgtoClick(Sender: TObject);
begin
  Abre_Tela_FormaDePgto;
end;

procedure TfrmPrincipal.Abre_Tela_Cliente;
begin
  frm_Pesq_Cliente := Tfrm_Pesq_Cliente.Create(self);
  frm_Pesq_Cliente.ShowModal;
    try
    finally
       frm_Pesq_Cliente.Free;
       frm_Pesq_Cliente := nil;
    end;
end;

procedure TfrmPrincipal.Abre_Tela_Empresa;
begin
  frm_Pesq_Empresa := Tfrm_Pesq_Empresa.Create(self);
  frm_Pesq_Empresa.ShowModal;
    try
    finally
      frm_Pesq_Empresa.free;
      frm_Pesq_Empresa := nil;
    end;
end;

procedure TfrmPrincipal.Abre_Tela_FormaDePgto;
begin
  frm_Pesq_FormasPGTO := Tfrm_Pesq_FormasPGTO.Create(self);
  frm_Pesq_FormasPGTO.ShowModal;
  try

  finally
    frm_Pesq_FormasPGTO.free;
    frm_Pesq_FormasPGTO := nil;
  end;
end;

procedure TfrmPrincipal.Abre_Tela_Fornecedor;
begin
  frm_Pesq_Fornecedor := Tfrm_Pesq_Fornecedor.Create(self);
  frm_Pesq_Fornecedor.ShowModal;
  try

  finally
    frm_Pesq_Fornecedor.free;
    frm_Pesq_Fornecedor := nil;
  end;
end;

procedure TfrmPrincipal.Abre_Tela_Usuario;
begin
  frm_Pesq_Usuario := Tfrm_Pesq_Usuario.Create(self);
  frm_Pesq_Usuario.ShowModal;
  try

  finally
    frm_Pesq_Usuario.free;
    frm_Pesq_Usuario := nil;
  end;
end;

procedure TfrmPrincipal.Abre_Tela_Produtos;
begin
  frm_Pesq_Produto := Tfrm_Pesq_Produto.Create(self);
  frm_Pesq_Produto.ShowModal;
  try

  finally
    frm_Pesq_Produto.free;
    frm_Pesq_Produto := nil;
  end;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  Abre_Tela_Cliente;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
begin
  Abre_Tela_Empresa;
end;

procedure TfrmPrincipal.FormasdePgto1Click(Sender: TObject);
begin
  Abre_Tela_FormaDePgto;
end;

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
  Abre_Tela_Fornecedor;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  Abre_Tela_Produtos;
end;

procedure TfrmPrincipal.Usuario1Click(Sender: TObject);
begin
  Abre_Tela_Usuario;
end;

end.
