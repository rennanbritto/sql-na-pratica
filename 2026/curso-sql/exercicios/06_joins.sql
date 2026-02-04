-- Quanto mais antigo o cliente na base, mais frequência ele terá?
-- após a consutla, fazer um gráfico no excel. R: não é possível afirmar

SELECT t1.IdCliente, 
        julianday('now') - julianday(substr(t1.DtCriacao,1,19)) AS idadeBase,
        count(t2.Idtransacao) as qtdTransacoes

FROM clientes AS t1


LEFT JOIN TRANSACOES AS t2
ON t1.IdCLiente = t2.IdCLiente

GROUP BY t1.IdCliente, idadeBase