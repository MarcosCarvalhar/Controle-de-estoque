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

uses U_usuario, U_DM, U_empresa, U_Cliente, U_Fornecedor, U_Produto, U_FormasPGTO, U_Pesq_Usuario;

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
  frm_Cliente := Tfrm_Cliente.Create(self);
  frm_Cliente.ShowModal;
    try
    finally
       frm_Cliente.Free;
       frm_Cliente := nil;
    end;
end;

procedure TfrmPrincipal.Abre_Tela_Empresa;
begin
  frm_empresa := Tfrm_empresa.Create(self);
  frm_empresa.ShowModal;
    try
    finally
      frm_empresa.free;
      frm_empresa := nil;
    end;
end;

procedure TfrmPrincipal.Abre_Tela_FormaDePgto;
begin
  frm_formasPGTO := Tfrm_formasPGTO.Create(self);
  frm_formasPGTO.ShowModal;
  try

  finally
    frm_formasPGTO.free;
    frm_formasPGTO := nil;
  end;
end;

procedure TfrmPrincipal.Abre_Tela_Fornecedor;
begin
  frm_Fornecedor := Tfrm_Fornecedor.Create(self);
  frm_Fornecedor.ShowModal;
  try

  finally
    frm_Fornecedor.free;
    frm_Fornecedor := nil;
  end;
end;

//procedure TfrmPrincipal.Abre_Tela_Usuario;
//begin
//  frm_Usuarios := Tfrm_Usuarios.Create(self);
//  frm_Usuarios.ShowModal;
//  try
//
//  finally
//    frm_usuarios.free;
//    frm_usuarios := nil;
//  end;
//end;

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
  frm_Produto := Tfrm_Produto.Create(self);
  frm_Produto.ShowModal;
  try

  finally
    frm_Produto.free;
    frm_Produto := nil;
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
