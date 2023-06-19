-- como não foi especificado nenhum nome para o Banco de Dados, coloquei um nome fictício
USE BDAtividade
GO

SELECT 	P.numeropedido,
		P.cpf, 
		P.datapedido, 
		IP.codproduto, 
		IP.qtdepedido
FROM PEDIDO AS P
LEFT JOIN 
ITENSPEDIDO AS IP ON P.numeropedido = IP.numeropedido;
