
-- qtd de vendedores nos estados pedidos

SELECT seller_state,
    COUNT (*) AS qtd_sellers

FROM tb_sellers

WHERE seller_state IN ('SP','RJ','PR')

GROUP BY seller_state