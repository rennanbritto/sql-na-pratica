-- quantidade de transações acumulada ao longo do tempo (diario)

WITH tb_diario AS ( 
SELECT substr(DtCriacao,1,10) AS dtDia,
        count(DISTINCT IdTransacao) AS qtdtransacao

FROM transacoes

GROUP BY dtDia --agrupa todas as transacoes de cada dia
ORDER BY dtDia --ordena pela data mais velha

),

tb_acum AS (

        SELECT *,
        -- Window function aplicado aqui, por OVER
            sum(qtdtransacao) OVER (ORDER BY dtDia) AS qtdTransacaoAcum
         -- faz tipo uma frequencia/soma acumulada 

        FROM tb_diario
)

-- pergunta 2: qual dia atingimos 100k de transações?

SELECT * FROM tb_acum
WHERE qtdTransacaoAcum > 100000
ORDER BY qtdTransacaoAcum
LIMIT 1