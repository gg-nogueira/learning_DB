-- Query que retorna o nome do projeto, nome do gerente do projeto e status do projeto, utilizando junções explícitas, aliás de coluna e tabela;

SELECT
    ApsBDSegNoite.Projetos.Nome AS NomeProjeto,
    ApsBDSegNoite.Projetos.gerente AS NomeGerente,
    ApsBDSegNoite.Projetos.status_projeto AS StatusProjeto
FROM
    ApsBDSegNoite.Projetos
JOIN
    ApsBDSegNoite.GerenciaAtividades ON ApsBDSegNoite.Projetos.CodigoProjeto = ApsBDSegNoite.GerenciaAtividades.gerenciaID


