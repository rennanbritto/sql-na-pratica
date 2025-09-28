-- qts produtos tem mais de 5l

SELECT count(*)
       
FROM tb_products

WHERE  (((product_weight_g) * (product_length_cm) * (product_height_cm)) / 1000) > 10