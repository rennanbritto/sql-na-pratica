-- Quantidade de usuários cadastrados (absoluto e acumulado)

WITH tb_cliente_diario AS (
    SELECT substr(Dtcriacao,1,10) AS dtDia,
        count(DISTINCT IdCliente) AS qtdCliente

FROM clientes
GROUP BY dtDia
ORDER BY dtDia
),

tb_window_cliente AS (
    SELECT *,
    sum(qtdCliente) OVER (ORDER BY dtDia) as qtdCLienteAcum
    FROM tb_cliente_diario
)

SELECT * FROM tb_window_cliente
ORDER BY dtDia