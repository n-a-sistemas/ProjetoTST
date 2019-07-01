CREATE DATABASE projeto_tst

CREATE TABLE funcionario(
id_funcionario SMALLINT IDENTITY,
nome_funcionario VARCHAR (50),
endereco_funcionario VARCHAR (50),
data_nascimento DATE NOT NULL,
cidade_funcionario VARCHAR (25),
cep_funcionario CHAR (8),
cpf_funcionario CHAR (11),
estado_funcionario VARCHAR (25),
bairro_funcionario VARCHAR (50),
escolaridade_funcionario VARCHAR (25));

ALTER TABLE funcionario
ADD CONSTRAINT PK_funcionario
PRIMARY KEY (id_funcionario);

CREATE TABLE profissao(
id_profissao SMALLINT NOT NULL,
cargo_profissao VARCHAR (50),
turno_profissao VARCHAR (10),
salario_profissao DECIMAL (5,2),
risco_profissao VARCHAR (20));

ALTER TABLE profissao 
ADD CONSTRAINT PK_profissao
PRIMARY KEY (id_profissao);


CREATE TABLE epi(
id_epi SMALLINT NOT NULL,
validade_ca_epi DATE,
validade_epi DATE,
descricao_epi VARCHAR (100));

ALTER TABLE epi
ADD CONSTRAINT PK_epi
PRIMARY KEY (id_epi);


CREATE TABLE exame(
id_exame SMALLINT NOT NULL,
validade_exame DATE,
status_exame CHAR (10));

ALTER TABLE exame
ADD CONSTRAINT PK_exame
PRIMARY KEY (id_exame);

ALTER TABLE exame
ADD data_realizada DATE;

SELECT * FROM exame;

ALTER TABLE exame
ADD tipo_exame VARCHAR (25);

ALTER TABLE funcionario
ADD id_profissao SMALLINT NOT NULL;

ALTER TABLE funcionario
ADD CONSTRAINT FK_profissao 
FOREIGN KEY (id_profissao)
REFERENCES profissao (id_profissao);

CREATE TABLE telefone(
numero_telefone VARCHAR (14),
descricao_telefone VARCHAR (15),
id_funcionario SMALLINT NOT NULL,
CONSTRAINT FK_id_funcionario
FOREIGN KEY (id_funcionario)
REFERENCES funcionario (id_funcionario));





