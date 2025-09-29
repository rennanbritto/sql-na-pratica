-- Faça uma query que apresente o valor médio, máximo e mínimo do
--  nome do objeto por categoria. Considere apenas os objetos que tenham
-- a descrião maior que 100

SELECT product_category_name,
    max(product_name_lenght) AS maior_nome,
    min(product_name_lenght) AS menor_nome,
    avg(product_name_lenght) AS avg_nome

FROM tb_products

WHERE product_name_lenght IS NOT NULL 
        AND product_description_lenght > 100

GROUP BY product_category_name	