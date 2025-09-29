-- quantidade d eprodutos de belezza com menos de 1 litro

SELECT COUNT(*) as qtd_linhas

FROM tb_products

WHERE product_category_name = 'beleza_saude'
    AND product_length_cm * product_height_cm * product_width_cm / 1000  < 1