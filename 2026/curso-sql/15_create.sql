
--Em caso de consultas da mesma query por diferentes pessoas, compensa criar uma tabela para consulta
--Isso ajuda a evitar o excesso de execuções 'atoas' que sobrecarregam o bd

-- quantidade de transações acumulada ao longo do tempo (diario)

DROP TABLE IF EXISTS relatorio_diario;
CREATE TABLE IF NOT EXISTS relatorio_diario AS

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

SELECT * FROM tb_acum