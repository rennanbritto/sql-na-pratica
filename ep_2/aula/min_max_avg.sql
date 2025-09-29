SELECT 
        product_category_name,
        count(*) AS qtde_produtos,
        max(product_weight_g) AS maior_peso,
        min(product_weight_g) AS menor_peso,
        avg(product_weight_g) AS avg_peso

FROM tb_products

-- isso vem antes do group by (no processamento tbm)
WHERE product_category_name IS NOT NULL
AND product_category_name != 'alimentos'
AND product_category_name <> 'agro_industria_e_comercio'

GROUP BY product_category_name