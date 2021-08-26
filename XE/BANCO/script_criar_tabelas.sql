
/* CREATE DOMAIN VALOR DECIMAL(11,2) NOT NULL; */
CREATE DOMAIN INTEIRO INTEGER NOT NULL;

/* cria a tabela de usuario*/
CREATE TABLE USUARIO(
 ID_USUARIO     INTEGER NOT NULL,
 NOME           DESCRICAO,
 SENHA          VARCHAR(30) NOT NULL,
 TIPO           VARCHAR(30) NOT NULL,
 CADASTRO       DATE NOT NULL,
 CONSTRAINT PK_USUARIO PRIMARY KEY(ID_USUARIO));
 
 /* cria a tabela de empresa */
CREATE TABLE EMPRESA(
 ID_EMPRESA         INTEGER NOT NULL,
 RAZA_SOCIAL        DESCRICAO,
 N_FANTASIA         DESCRICAO,
 ENDERECO           DESCRICAO,
 NUMERO             INTEGER NOT NULL,
 BAIRRO             DESCRICAO,
 CIDADE             DESCRICAO,
 UF                 CHAR(2) NOT NULL,
 TELEFONE           VARCHAR(15) NOT NULL,
 CNPJ               VARCHAR(20) NOT NULL,
 EMAIL              DESCRICAO,
 CADASTRO           DATE NOT NULL,
 CONSTRAINT PK_EMPRESA PRIMARY KEY (ID_EMPRESA));
 
/* CRIA A TABELA DE FORNECEDORES */
CREATE TABLE FORNECEDOR(
 ID_FORNECEDOR      INTEGER NOT NULL,
 NOME               DESCRICAO,
 ENDERECO           DESCRICAO,
 NUMERO             INTEGER NOT NULL,
 BAIRRO             DESCRICAO,
 CIDADE             DESCRICAO,
 UF                 CHAR(2) NOT NULL,
 CEP                VARCHAR(16)NOT NULL,
 TELEFONE           VARCHAR(16) NOT NULL,
 CNPJ               VARCHAR(20) NOT NULL,
 EMAIL              DESCRICAO,
 CADASTRO           DATE NOT NULL,
 CONSTRAINT PK_FORNECEDOR PRIMARY KEY (ID_FORNECEDOR));
 
 /* CRIA A TABELA DE CLIENTES */
 CREATE TABLE CLIENTE(
  ID_CLIENTE        INTEGER NOT NULL,
  NOME              DESCRICAO,
  ENDERECO          DESCRICAO,
  NUMERO            INTEGER NOT NULL,
  BAIRRO            DESCRICAO,
  CIDADE            DESCRICAO,
  UF                CHAR(2) NOT NULL,
  CEP               VARCHAR(16) NOT NULL,
  TELEFONE          VARCHAR(15) NOT NULL,
  CPF               VARCHAR(20) NOT NULL,
  CADASTRO          DATE NOT NULL,
  CONSTRAINT PK_CLIENTE PRIMARY KEY (ID_CLIENTE));
 
/* CRIA A TABELA FORMA DE PAGAMENTO */
CREATE TABLE FORMA_PGTO(
 ID_FORMA_PGTO      INTEGER NOT NULL,
 DESCRICAO          DESCRICAO,
 CADASTRO           DATE,
 CONSTRAINT PK_FORMA_PGTO PRIMARY KEY (ID_FORMA_PGTO));  
 
/* CRIA A TABELA DE PRODUTO */
CREATE TABLE PRODUTO(
 ID_PRODUTO         INTEGER NOT NULL,
 DESCRICAO          DESCRICAO,
 VL_CUSTO           VALOR,
 VL_VENDA           VALOR,
 ESTOQUE            VALOR,
 ESTOQUE_MIN        VALOR,
 UNIDADE            VARCHAR(6) NOT NULL,
 ID_FORNECEDOR      INTEGER NOT NULL,
 CADASTRO           DATE NOT NULL,
 CONSTRAINT PK_PRODUTO PRIMARY KEY (ID_PRODUTO));
 
/* CRIAR A TABELA DE COMPRA */
CREATE TABLE COMPRA(
 ID_COMPRA          INTEGER NOT NULL,
 ID_FORNECEDOR      INTEGER NOT NULL,
 USUARIO            DESCRICAO,
 ID_FORMA_PGTO      INTEGER NOT NULL,
 VALOR              VALOR,
 CADASTRO           DATE NOT NULL,
 CONSTRAINT PK_COMPRA PRIMARY KEY (ID_COMPRA));
 
 /* CRIAR A TABELA ITEM_COMPRA */
CREATE TABLE ITEM_COMPRA(
 SEQUENCIA          INTEIRO,
 ID_COMPRA          INTEIRO,
 ID_PRODUTO         INTEIRO,
 QTDE               VALOR,
 VL_CUSTO           VALOR,
 DESCONTO           DECIMAL(11,2),
 TOTAL_ITEM         VALOR,
 CONSTRAINT PK_ITEM_COMPRA PRIMARY KEY (SEQUENCIA));

/* CRIAR A TABELA CONTAS_PAGAR */
CREATE TABLE CONTAS_PAGAR(
 SEQUENCIA          INTEIRO,
 ID_COMPRA          INTEIRO,
 VALOR_PARCELA      DECIMAL,
 VENCIMENTO         DATE NOT NULL,
 DT_PAGAMENTO       DATE,
 ATRASO             INTEIRO,
 JUROS              DECIMAL(11,2),
 VL_JUROS           DECIMAL(11,2),
 TOTAL_PAGAR        DECIMAL(11,2),
 STATUS             VARCHAR(10),
 CONSTRAINT PK_CONTAS_PAGAR PRIMARY KEY (SEQUENCIA)); 

/* CRIAR A TABELA DE VENDAS */
CREATE TABLE VENDA(
 ID_VENDA           INTEIRO,
 ID_CLIENTE         INTEIRO,
 USUARIO            DESCRICAO,
 ID_FORMA_PGTO      INTEIRO,
 VALOR              VALOR,
 CADASTRO           DATE NOT NULL,
 CONSTRAINT PK_ID_VENDA PRIMARY KEY (ID_VENDA));
 
/* CRIAR A TABELA ITEM_VENDA */
CREATE TABLE ITEM_VENDA(
 SEQUENCIA          INTEIRO,
 ID_VENDA           INTEIRO,
 ID_PRODUTO         INTEIRO,
 QTDE               VALOR,
 VL_CUSTO           VALOR,
 DESCONTO           VALOR,
 TOTAL_ITEM         VALOR,
 CONSTRAINT PK_ITEM_VENDA PRIMARY KEY (SEQUENCIA)); 

/* CRIAR A TABELA CONTAS_RECEBER */
CREATE TABLE CONTAS_RECEBER(
 SEQUENCIA          INTEIRO,
 ID_VENDA           INTEIRO,
 VALOR_PARCELA      VALOR,
 VENCIMENTO         DATE NOT NULL,
 DT_PAGAMENTO       DATE,
 ATRASO             INTEGER,
 JUROS              DECIMAL(11,2),
 VL_JUROS           DECIMAL(11,2),
 TOTAL_PAGAR        DECIMAL(11,2),
 STATUS             VARCHAR(10),
 constraint PK_CONTAS_RECEBER PRIMARY KEY (SEQUENCIA));


  
  
  
  