-- lista de pedidos realizados no fim de semana

SELECT *,
    --fatia a strinf DtCriacao até o fim da data e transforma no tipo data (tava string)
    --strftime: transforma o dia em numero, onde domingo = 0
    strftime('%w', date( substr(DtCriacao,1,19))) AS dia_semana

FROM transacoes

WHERE dia_semana IN ('0', '6')

-- em alguns bancos de dados, não suporta puxar pelo nome dia_semana, teria que ser a função toda