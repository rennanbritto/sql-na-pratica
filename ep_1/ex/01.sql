-- quantos produtos tem a categorias'artes'?
--count conta as linhas retornadas
-- distinct exclui aqueles que por acaso sejam iguais

SELECT COUNT(distinct product_id) as qtde_produtos_distintos,
        COUNT(*) as qtde_linhas,
        COUNT (product_id) as qtde_produtos

FROM tb_products

WHERE product_category_name = 'artes'