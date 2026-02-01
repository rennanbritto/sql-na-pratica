-- qual cliente fez mais transações no ano de 2024

SELECT IdCliente, count(DISTINCT IdTransacao)

FROM transacoes

WHERE DtCriacao > '2023-01-31'
AND DtCriacao < '2025-01-01'

GROUP BY IdCliente

LIMIT 1