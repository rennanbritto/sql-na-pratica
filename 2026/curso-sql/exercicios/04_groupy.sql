-- quantos produtos são rpg

-- aqui faz apenas rpg
SELECT COUNT(DescCategoriaProduto)

FROM produtos

WHERE DescCategoriaProduto = 'rpg';

-- aqui faz todos de uma vez, facilita no dia a dia
SELECT DescCategoriaProduto,
        count(*)

FROM produtos
GROUP BY DescCategoriaProduto


