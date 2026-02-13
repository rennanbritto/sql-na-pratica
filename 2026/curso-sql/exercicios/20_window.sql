-- qual o dia da semana mais ativo de cada usuário

WITH tb_cliente_dia AS (

    SELECT IdCliente,
        substr(Dtcriacao,1,10) AS dtDia,
        sum(QtdePontos) AS totalPontos,
        --agora vamos ter uma coluna apenas dos ganhos do cliente
        sum(CASE WHEN QtdePontos > 0 THEN QtdePontos ELSE 0 END) AS pontosPositivos

        FROM transacoes
        GROUP BY IdCliente, dtDia
)

SELECT *,
        sum(totalPontos) OVER (PARTITION BY IdCliente ORDER BY dtDia ) AS saldoPontos,
        sum(pontosPositivos)OVER (PARTITION BY IdCliente ORDER BY dtDia ) AS saldoPositivos

FROM tb_cliente_dia