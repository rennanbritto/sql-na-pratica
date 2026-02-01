-- qual valor medio de pontos por dia?

SELECT sum(QtdePontos) AS totalpontos,
        count(DISTINCT substr(DtCriacao,1,10)) AS dias_distintos,

        sum(QtdePontos)  /  count(DISTINCT substr(DtCriacao,1,10)) AS MEDIA_PONTOS_DIARIO


FROM transacoes


WHERE QtdePontos > 0
