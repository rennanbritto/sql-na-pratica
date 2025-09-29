-- Crie uma nova soluna que tenha a informação de volume em m^3 

SELECT *,

product_length_cm * product_height_cm * product_width_cm / 100000 as product_volume_m3

FROM tb_products