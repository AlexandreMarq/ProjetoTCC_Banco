-- CREATE TABLE


-- Table structure for table "alimentacao"
CREATE TABLE Alimentacao (
  id_alimentacao int IDENTITY(1,1),
  alimentacao varchar(100) DEFAULT NULL,
  PRIMARY KEY ("id_alimentacao")
) 


-- Table structure for table "aplicacao"
CREATE TABLE Aplicacao (
  id_aplicacao int IDENTITY(1,1),
  aplicacao varchar(100) DEFAULT NULL,
  PRIMARY KEY ("id_aplicacao")
)


-- Table structure for table "aplicacao_navegacao"
CREATE TABLE AplicacaoNavegacao (
  id_aplicacao_navegacao int IDENTITY(1,1),
  aplicacao_navegacao varchar(100) NOT NULL,
  PRIMARY KEY ("id_aplicacao_navegacao"),
) 

ALTER TABLE AplicacaoNavegacao
ADD CONSTRAINT UC_AplicacaoNavegacao UNIQUE (aplicacao_navegacao)

-- Table structure for table "categoria"
CREATE TABLE "Categoria" (
  id_categoria int IDENTITY(1,1),
  categoria varchar(100) DEFAULT NULL,
  PRIMARY KEY ("id_categoria")
) 

-- Table structure for table "categoria_venda"
CREATE TABLE CategoriaVenda (
  "id_categoria" int IDENTITY(1,1),
  "categoria_venda" varchar(100) DEFAULT NULL,
  PRIMARY KEY ("id_categoria")
) 

-- Table structure for table "certificado"
CREATE TABLE Certificado (
  "id_certificado" int IDENTITY(1,1),
  "certificado" varchar(100) DEFAULT NULL,
  PRIMARY KEY ("id_certificado")
) 

-- Table structure for table "concorrente"
CREATE TABLE Concorrente (
  "id_concorrente" int IDENTITY(1,1),
  "codigo_concorrente" varchar(100) DEFAULT NULL,
  "descricao_concorrente" varchar(2000) DEFAULT NULL,
  "empresa_concorrente" varchar(100) DEFAULT NULL,
  "observacao_concorrente" varchar(100) DEFAULT NULL,
  PRIMARY KEY ("id_concorrente")
) 

-- Table structure for table "foto"
CREATE TABLE Foto (
  "id_foto" int IDENTITY(1,1),
  "foto" varchar(100) DEFAULT NULL,
  PRIMARY KEY ("id_foto")
) -- ajustar tabela de foto

-- Table structure for table "funcao"
CREATE TABLE Funcao (
  "id_funcao" int IDENTITY(1,1),
  "funcao" varchar(100) NOT NULL,
  PRIMARY KEY ("id_funcao"),
) 
ALTER TABLE Funcao
ADD CONSTRAINT UC_Funcao UNIQUE (funcao)

-- Table structure for table "manual"
CREATE TABLE Manual (
  "id_manual" int IDENTITY(1,1),
  "link_manua" varchar(2000) DEFAULT NULL,
  "manual_idioma" varchar(100) DEFAULT NULL,
  "manual_tipo" varchar(100) DEFAULT NULL,
  "nome_manual" varchar(100) DEFAULT NULL,
  PRIMARY KEY ("id_manual")
) 

-- Table structure for table "modelo_antigo"
CREATE TABLE "ModeloAntigo" (
  "id_modelo_antigo" int IDENTITY(1,1),
  "descricao_modelo_antigo" varchar(2000) DEFAULT NULL,
  "modelo_antigo" varchar(100) DEFAULT NULL,
  "observacao_modelo_antigo" varchar(1000) DEFAULT NULL,
  "id_foto" int DEFAULT NULL,
  PRIMARY KEY ("id_modelo_antigo"),
) 
ALTER TABLE ModeloAntigo
ADD FOREIGN KEY (id_foto) REFERENCES Foto (id_foto)

-- Table structure for table "montagem"
CREATE TABLE Montagem (
  "id_montagem" int IDENTITY(1,1),
  "montagem" varchar(100) DEFAULT NULL,
  PRIMARY KEY ("id_montagem")
) 

-- Table structure for table "produto"
CREATE TABLE Produto (
  "id_produto" int IDENTITY(1,1),
  "descricao_completa" varchar(2000) DEFAULT NULL,
  "descricao_reduzida" varchar(300) DEFAULT NULL,
  "link_codigo_pedido" int DEFAULT NULL,
  "link_dimensoes" varchar(2000) DEFAULT NULL,
  "link_esquema_ligacao" varchar(2000) DEFAULT NULL,
  "link_exemplo_ligacao" varchar(2000) DEFAULT NULL,
  "link_site" varchar(2000) DEFAULT NULL,
  "link_tabela_alarmes" varchar(2000) DEFAULT NULL,
  "link_tabela_parametros" varchar(2000) DEFAULT NULL,
  "modelo" varchar(100) DEFAULT NULL,
  "status" varchar(100) DEFAULT NULL,
  "id_alimentacao" int NOT NULL,
  "id_aplicacao" int NOT NULL,
  "id_aplicacao_navegacao" int NOT NULL,
  "id_categoria" int NOT NULL,
  "id_categoria_venda" int NOT NULL,
  "id_certificado" int NOT NULL,
  "id_concorrente" int NOT NULL,
  "id_foto" int NOT NULL,
  "id_funcao" int NOT NULL,
  "id_manual" int NOT NULL,
  "id_modelo_antigo" int NOT NULL,
  "id_montagem" int NOT NULL,
  PRIMARY KEY ("id_produto"),
) 

ALTER TABLE Produto

ADD CONSTRAINT UC_Funcao2          FOREIGN KEY (id_funcao) REFERENCES Funcao(id_funcao),
CONSTRAINT UC_Foto                FOREIGN KEY (id_foto) REFERENCES Foto (id_foto),
CONSTRAINT UC_Alimentacao         FOREIGN KEY (id_alimentacao) REFERENCES Alimentacao (id_alimentacao),
CONSTRAINT UC_Categoria           FOREIGN KEY (id_categoria) REFERENCES Categoria (id_categoria),
CONSTRAINT UC_CategoriaVenda      FOREIGN KEY (id_categoria_venda) REFERENCES CategoriaVenda (id_categoria),
CONSTRAINT UC_Aodelo_Antigo       FOREIGN KEY (id_modelo_antigo) REFERENCES ModeloAntigo (id_modelo_antigo),
CONSTRAINT UC_Concorrente         FOREIGN KEY (id_concorrente) REFERENCES Concorrente (id_concorrente),
CONSTRAINT UC_Aplicacao_Navegacao FOREIGN KEY (id_aplicacao_navegacao) REFERENCES AplicacaoNavegacao (id_aplicacao_navegacao),
CONSTRAINT UC_Montagem            FOREIGN KEY (id_montagem) REFERENCES Montagem (id_montagem),
CONSTRAINT UC_Manual              FOREIGN KEY (id_manual) REFERENCES [Manual] (id_manual),
CONSTRAINT UC_Aplicacao           FOREIGN KEY (id_aplicacao) REFERENCES Aplicacao (id_aplicacao),
CONSTRAINT UC_Certificado         FOREIGN KEY (id_certificado) REFERENCES Certificado (id_certificado)

-- Table structure for table "usuario"
CREATE TABLE Usuario (
  "id_usuario" int IDENTITY(1,1),
  "login" varchar(20) DEFAULT NULL,
  "senha" varchar(6) DEFAULT NULL,
  PRIMARY KEY ("id_usuario")
) 