--do inicio ao fim (2025-08-25 até 2025-08-29) quantos clinetes assinaram a lista de presença

SELECT COUNT (DISTINCT T1.IdCliente)

FROM transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE substr(t1.DtCriacao,1,10) >= '2025-08-25'
AND substr(t1.DtCriacao,1,10) <= '2025-08-29'
AND t3.DescNomeProduto = 'Lista de presença'