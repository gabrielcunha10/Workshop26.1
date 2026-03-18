USE desafio;

-- DML (Update ou Delete)
UPDATE pedidos
SET forma_pagamento = 'pix'
WHERE id_pedido = 2;

-- DQL (SELECT),3 funções agregadas, 2 funções de agrupamento e 1 join.
SELECT t2.forma_pagamento, count(*) FROM clientes AS t1 
INNER JOIN pedidos AS t2 ON t1.id_cliente = t2.id_cliente

GROUP BY t2.forma_pagamento HAVING count(*) > 3;

SELECT forma_pagamento,
	   MAX(valor_pedido) AS maior_valor, 
	   SUM(valor_pedido) AS soma_valor, 
       AVG(valor_pedido) AS media_valor 
FROM pedidos
GROUP BY forma_pagamento
ORDER BY soma_valor DESC;
