/*
Curso: Bacharelado em Ciência da Computação
Turma: Noturno
Nome: Gabriel Aurichio Nogueira
R.A: 1679708
Data: 03/06/2023
Objetivo do script: criação de um banco de dados, schemas e tabelas, indicando relacionamentos entre elas e definições de PK's e FK's
*/
-- 1° consulta: criação do banco
CREATE DATABASE BDFmu2023;
GO

-- 2° consulta: criação do schema
USE BDFmu2023;
CREATE SCHEMA 1679708;
GO

-- 3° consulta: criação das tabelas, à partir do schema e dos dados fornecidos no enunciado
CREATE TABLE 1679708.GUIAMEDICA (
    numguia INT NOT NULL PRIMARY KEY,
    cpf VARCHAR(20) NOT NULL,
    cnpjcredenciado VARCHAR(20) NOT NULL,
    codigoexame INT NOT NULL,
    dataemissao DATE NOT NULL,
    codplano INT NOT NULL,
    FOREIGN KEY (cpf) REFERENCES 1679708.CLIENTE(cpf),
    FOREIGN KEY (cnpjcredenciado) REFERENCES 1679708.CREDENCIADO(cnpjcredenciado),
    FOREIGN KEY (codplano) REFERENCES 1679708.CLIENTE(codplano)
);

CREATE TABLE 1679708.CLIENTE (
    cpf VARCHAR(11) PRIMARY KEY,
    codplano INT NOT NULL,
    datanasc DATE NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    FOREIGN KEY (codplano) REFERENCES 1679708.GUIAMEDICA(codplano)
);
CREATE TABLE 1679708.CREDENCIADO (
    cnpjcredenciado VARCHAR(14) PRIMARY KEY,
    razaosocial VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    codespecialidade INT NOT NULL,
);

-- Criação de uma tabela de junção "GUIAMEDICA_CREDENCIADO", para evitar o relacionamento N:N entre "GUIAMEDICA" e "CREDENCIADO"
CREATE TABLE 1679708.GUIAMEDICA_CREDENCIADO (
    numguia INT NOT NULL,
    cnpjcredenciado VARCHAR(20) NOT NULL,
    PRIMARY KEY (numguia, cnpjcredenciado),
    FOREIGN KEY (numguia) REFERENCES GUIAMEDICA(numguia),
    FOREIGN KEY (cnpjcredenciado) REFERENCES CREDENCIADO(cnpjcredenciado)
);