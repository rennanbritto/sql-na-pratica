-- dos clientes que começaram o curso, quantos estavam no 5o dia?

-- esse tipo de subquery não eh tão interessante pois a tabela de transacoes
-- eh relativamente grande. Há comparação duas vezes
SELECT COUNT (DISTINCT IdCliente) AS QTD_Clientes

FROM transacoes AS t1

WHERE t1.IdCliente IN (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1,10) = '2025-08-25'
)
AND substr(t1.DtCriacao,1,10) = '2025-08-29'