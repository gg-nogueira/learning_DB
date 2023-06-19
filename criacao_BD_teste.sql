--1° consulta
CREATE DATABASE BDFmu2023;
GO;

----2° consulta
USE BDFmu2023;
GO;

--3° consulta
CREATE SCHEMA 1679708;
GO;

CREATE TABLE EMPRESTIMO (
codemprestimo INT NOT NULL,
codproduto INT NOT NULL,
cpf CHAR(40) NOT NULL,
dataini DATETIME NOT NULL,
datafim DATETIME NOT NULL,
valorunitario FLOAT NOT NULL,
PRIMARY KEY (codemprestimo),
FOREIGN KEY (codproduto) REFERENCES PRODUTO(codproduto),
FOREIGN KEY (cpf) REFERENCES CLIENTE(cpf)
);

CREATE TABLE PRODUTO (
codproduto INT NOT NULL,
tipoproduto VARCHAR(100) NOT NULL,
descricao VARCHAR(100) NOT NULL,
modelo VARCHAR(100) NOT NULL,
anofabricacao DATETIME NOT NULL,
PRIMARY KEY (codproduto)
);

CREATE TABLE VENDA (
codvenda INT NOT NULL,
descricao VARCHAR(100) NOT NULL,
datavenda DATE NOT NULL,
valorvenda DECIMAL (10,3) NOT NULL,
PRIMARY KEY (codvenda)
);

CREATE TABLE CLIENTE (
cpf CHAR(40) NOT NULL,
nome VARCHAR(100) NOT NULL,
endereco VARCHAR(100) NOT NULL,
datanascimento DATETIME NOT NULL,
telefone VARCHAR(40) NOT NULL,
salario FLOAT NOT NULL,
PRIMARY KEY (cpf)
);

--criação de tabela associativa para evitar relacionamento n*n
CREATE TABLE PRODUTO_VENDA (
codproduto INT NOT NULL,
codvenda INT NOT NULL,
PRIMARY KEY (codproduto, codvenda),
FOREIGN KEY (codproduto) REFERENCES PRODUTO(codproduto),
FOREIGN KEY (codvenda) REFERENCES VENDA(codvenda)
);


