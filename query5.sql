-- INSERÇÃO DE DADOS GERADOS POR I.A NAS TABELAS

INSERT INTO BaseHistorica (datas, valores)
VALUES ('2022-01-01', 10),
       ('2022-01-02', 15),
       ('2022-01-03', 20);

INSERT INTO RecursoInfo (recursoInfoID, nome, numero_rg, classificacoes, ferramenta_ID, contatoId)
VALUES (1, 'Recurso 1', 123, 'Classificação 1', 1, 1),
       (2, 'Recurso 2', 456, 'Classificação 2', 2, 2),
       (3, 'Recurso 3', 789, 'Classificação 3', 3, 3);

INSERT INTO Contatos (contatoId, celular, ramal_interno, comercial, residencial)
VALUES (1, '123456789', '101', 'comercial1', 'residencial1'),
       (2, '987654321', '202', 'comercial2', 'residencial2'),
       (3, '456123789', '303', 'comercial3', 'residencial3');

-- Inserção de dados na tabela FerramentasDev
INSERT INTO FerramentasDev (ferramenta_ID, nome_ferramenta, versao)
VALUES (1, 'Ferramenta 1', '1.0'),
       (2, 'Ferramenta 2', '2.0'),
       (3, 'Ferramenta 3', '3.0');

-- Inserção de dados na tabela RecursoClassificacoes
INSERT INTO RecursoClassificacoes (recursoClassificacoesID, gerente_projeto, analista_negocios, dba, dev)
VALUES (1, 1, 0, 0, 1),
       (2, 0, 1, 0, 1),
       (3, 0, 0, 1, 0);

-- Inserção de dados na tabela Equipes
INSERT INTO Equipes (equipeID, nome_equipe, numero_recurso, recurso, projeto)
VALUES (1, 'Equipe 1', 5, 'Recurso 1', 'Projeto 1'),
       (2, 'Equipe 2', 3, 'Recurso 2', 'Projeto 2'),
       (3, 'Equipe 3', 4, 'Recurso 3', 'Projeto 3');

-- Inserção de dados na tabela Projetos
INSERT INTO Projetos (CodigoProjeto, Nome, data_inicio, data_prevista_final, data_final, status_projeto, horas_previstas, horas_reais, gerente)
VALUES (1, 'Projeto 1', '2022-01-01', '2022-01-31', '2022-02-10', 'Concluído', 100, 90, 'Gerente 1'),
       (2, 'Projeto 2', '2022-02-01', '2022-02-28', '2022-03-13', 'Em Andamento', 150, 120, 'Gerente 2'),
       (3, 'Projeto 3', '2022-03-01', '2022-03-31', '2022-04-27', 'Em Andamento', 200, 150, 'Gerente 3');
	   
INSERT INTO Atividades (registro_cod, nome_atividade)
VALUES (1, 'Atividade 1'),
       (2, 'Atividade 2'),
       (3, 'Atividade 3');

-- Inserção de dados na tabela GerenciaAtividades
INSERT INTO GerenciaAtividades (gerenciaID)
VALUES (1),
       (2),
       (3);