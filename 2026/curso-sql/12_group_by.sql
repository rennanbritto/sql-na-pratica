SELECT IdProduto,
        count(*)

FROM transacao_produto

GROUP BY IdProduto;

-- quem ganhou mais pontos no mês de julho
-- ele agrupa todos as transações desse cliente, virou apenas uma linha

SELECT  IdCliente,
        sum(QtdePontos),
        count(IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'


GROUP BY Idcliente
HAVING sum(QtdePontos) >= 4000 -- filtro da agregação (filtro do filtro)

ORDER BY (sum(QtdePontos)) DESC