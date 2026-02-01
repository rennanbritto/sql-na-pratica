-- listas todas as transações adicionando uma coluna nova sinalizando
-- alto, medio e baixo para o valor de pontos (10, 500 e acima)

SELECT QtdePontos,
        CASE 
            WHEN QtdePontos < 10 THEN 'baixo'
            WHEN QtdePontos >10 AND QtdePontos <500 THEN 'medio'
            ELSE 'alto'
        END AS status

FROM transacoes

ORDER BY QtdePontos desc