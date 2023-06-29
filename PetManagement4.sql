CREATE database db_petManagement;
use db_petManagement;

CREATE table funcionarios (
id_func BIGINT (10) AUTO_INCREMENT PRIMARY KEY,
nome_func VARCHAR (255) NOT NULL,
cpf_func VARCHAR (20) NOT NULL,
rg_func VARCHAR (20) NOT NULL,
nascimento_func VARCHAR (20) NOT NULL,
telefone_func VARCHAR (20) NOT NULL,
cep_func VARCHAR (20) NOT NULL,
municipio_func VARCHAR (255) NOT NULL,
bairro_func VARCHAR (255) NOT NULL,
logradouro_func VARCHAR (255) NOT NULL,
numero_func VARCHAR(20) NOT NULL,
complemento_func VARCHAR (255) NOT NULL,
cargo_func VARCHAR (255) NOT NULL,
nivel_func VARCHAR (5) NOT NULL,
login_func VARCHAR (50) NOT NULL,
senha_func VARCHAR(8) NOT NULL
);

CREATE table clientes (
id_cliente BIGINT (10) AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR (255) NOT NULL,
cpf_cliente VARCHAR (20) NOT NULL,
nascimento_cliente VARCHAR (20) NOT NULL,
email_cliente VARCHAR (30) NOT NULL,
genero_cliente VARCHAR (20) NOT NULL,
estado_civil_cliente VARCHAR (20) NOT NULL,
telefone_cliente VARCHAR (255) NOT NULL,
municipio_cliente VARCHAR (255) NOT NULL,
cep_cliente VARCHAR (15) NOT NULL,
bairro_cliente VARCHAR (255) NOT NULL,
logradouro_cliente VARCHAR (255) NOT NULL,
numero_cliente VARCHAR(20) NOT NULL,
complemento_cliente VARCHAR (50) NOT NULL,
observacoes_cliente VARCHAR(255) 
);

CREATE table produtos (
id_produto BIGINT (10) AUTO_INCREMENT PRIMARY KEY,
descricao_produto VARCHAR (255) NOT NULL,
fabricante VARCHAR (255) NOT NULL,
fornecedor VARCHAR (255) NOT NULL,
lote VARCHAR (30) NOT NULL, 
categoria VARCHAR(255) NOT NULL,
estoque_atual VARCHAR(255) NOT NULL,
estoque_minimo VARCHAR (255) NOT NULL,
preco_custo VARCHAR(255),
preco_venda VARCHAR(255)

);

create table usuarios (
id_usuario BIGINT (10) AUTO_INCREMENT PRIMARY KEY,
login_usuario VARCHAR(50) NOT NULL,
senha_usuario VARCHAR(15) NOT NULL
);

create table pets (
id_pet BIGINT (10) AUTO_INCREMENT PRIMARY KEY,
nome_pet VARCHAR (255) NOT NULL,
especie VARCHAR (255) NOT NULL,
raca VARCHAR (255) NOT NULL,
idade_pet VARCHAR (2) NOT NULL,
sexo_pet VARCHAR (255) NOT NULL,
peso_pet VARCHAR (255) NOT NULL
);


select * from funcionarios;
select * from clientes;
select * from usuarios;
describe funcionarios;


CREATE user 'rogerdariva1'@'localhost' identified by '123456';

GRANT CREATE, SELECT, UPDATE, INSERT, DELETE, ALTER ON db_petManagement.* to 'rogerdariva1';


INSERT INTO funcionarios (nome_func, cpf_func, rg_func, nascimento_func, telefone_func, cep_func, municipio_func, bairro_func, logradouro_func, numero_func, complemento_func, cargo_func, nivel_func, login_func, senha_func) VALUES 
('Roger', '14148081782', '2287786', '08/12/1999', '27998927197', '29101110', 'Vila Velha', 'Praia da Costa', 'Rua desembargador augusto botelho', 46, '801', 'Analista de Sistemas', 1, 'rogerdariva', '12345678' );
INSERT INTO usuarios (login_usuario, senha_usuario) VALUES 
('rogerdariva1', '123456');






