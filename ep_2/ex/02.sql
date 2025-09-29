-- Faça uma query que apresente o valor médio, máximo e mínimo do
--  nome do objeto por categoria 

SELECT product_category_name,
    max(product_name_lenght) AS maior_nome,
    min(product_name_lenght) AS menor_nome,
    avg(product_name_lenght) AS avg_nome

FROM tb_products

WHERE product_name_lenght IS NOT NULL

GROUP BY product_category_name	

--PEGA OS 10 PRIMEIROS (como o HEAD em pyhton)
LIMIT 10