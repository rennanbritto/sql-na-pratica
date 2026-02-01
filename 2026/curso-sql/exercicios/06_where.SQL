-- selecione produtos que contem 'churn' no nome

SELECT *

FROM PRODUTOS


WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp');

-- versão que começa com churn e % indica o coringa que pode vir depois
-- o mesmo se aplica para colocar % no início ou  %botas%
-- ele custa mais que o IN
SELECT *

FROM PRODUTOS


WHERE DescNomeProduto LIKE 'churn%'
