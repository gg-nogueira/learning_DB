-- CRIAÇÃO DAS TABELAS NO SCHEMA SEM CONSTRAINTS

CREATE TABLE ApsBDSegNoite.BaseHistorica (
    datas datetime,
    valores int not null
);

CREATE TABLE ApsBDSegNoite.RecursoInfo (
    recursoInfoID int primary key not null,
    nome varchar(280) not null,
    numero_rg int not null,
    classificacoes varchar(280) not null,
    ferramenta_ID int not null,
    contatoId int not null
);

CREATE TABLE ApsBDSegNoite.Contatos (
    contatoId int primary key not null,
    celular varchar(200) not null,
    ramal_interno varchar(200) not null,
    comercial varchar(200) not null,
    residencial varchar(200) not null
);

CREATE TABLE ApsBDSegNoite.FerramentasDev (
    ferramenta_ID int primary key not null,
    nome_ferramenta varchar(200) not null,
    versao varchar(200) not null
);

CREATE TABLE ApsBDSegNoite.RecursoClassificacoes (
    recursoClassificacoesID int primary key not null,
    gerente_projeto bit,
    analista_negocios bit,
    dba bit,
    dev bit
);

CREATE TABLE ApsBDSegNoite.Equipes (
    equipeID int primary key not null,
    nome_equipe varchar(280) not null,
    numero_recurso int not null,
    recurso varchar(200),
    projeto varchar(200)
);

CREATE TABLE ApsBDSegNoite.Projetos (
    CodigoProjeto int primary key not null,
    Nome varchar(280) not null,
    data_inicio datetime,
    data_prevista_final datetime,
    data_final datetime,
    status_projeto varchar(280) not null,
    horas_previstas int not null,
    horas_reais int not null,
    gerente varchar(280) not null
);

CREATE TABLE ApsBDSegNoite.Atividades (
    registro_cod int primary key not null,
    nome_atividade varchar(280) not null
);

CREATE TABLE ApsBDSegNoite.GerenciaAtividades (
    gerenciaID int primary key not null
);
