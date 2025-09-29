-- Faça uma query que apresente o valor médio, máximo e mínimo da 
--  descrição do objeto por categoria 

SELECT 
    product_category_name,
        max(product_description_lenght) AS maior_comprimento,
        min(product_description_lenght) AS menor_comprimento,
        avg(product_description_lenght) AS avg_comprimento

FROM tb_products

WHERE product_description_lenght IS NOT NULL

GROUP BY product_category_name	