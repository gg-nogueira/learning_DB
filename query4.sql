-- ADICIONANDO CONSTRAINTS NAS TABELAS

ALTER TABLE RecursoClassificacoes
ADD CONSTRAINT PK_RecursoClassificacoes PRIMARY KEY (recursoClassificacoesID);

ALTER TABLE Equipes
ADD CONSTRAINT PK_Equipes PRIMARY KEY (equipeID);

ALTER TABLE Projetos
ADD CONSTRAINT PK_Projetos PRIMARY KEY (CodigoProjeto);

ALTER TABLE Atividades
ADD CONSTRAINT PK_Atividades PRIMARY KEY (registro_cod);

ALTER TABLE GerenciaAtividades
ADD CONSTRAINT PK_GerenciaAtividades PRIMARY KEY (gerenciaID);

ALTER TABLE RecursoInfo
ADD CONSTRAINT FK_RecursoInfo_FerramentasDev FOREIGN KEY (ferramenta_ID) REFERENCES FerramentasDev (ferramenta_ID);

ALTER TABLE RecursoInfo
ADD CONSTRAINT FK_RecursoInfo_Contatos FOREIGN KEY (contatoId) REFERENCES Contatos (contatoId);