-- dos clientes de janeiro, quantos assistiram o curso

--cria tab com os clientes que tiveram alguma transacao em janeiro
WITH tb_clientes_jan AS(
    SELECT DISTINCT IdCliente
    FROM transacoes 
    WHERE dtCriacao >= '2025-01-01'
    AND dtCriacao < '2025-02-01'
), 

--cria tab com os clientes no período do curso
tb_clientes_curso AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE dtCriacao >= '2025-08-25'
    AND dtCriacao < '2025-08-30'

)

--cruza as duas tabs acima por meio do join
SELECT count(t1.IdCliente) AS janeiro,
        count(t2.IdCliente) AS curso

FROM tb_clientes_jan as t1
LEFT JOIN tb_clientes_curso  AS t2
ON t1.IdCliente = t2.IdCliente

