-- Crie um novo Schema com nome DESAFIO

CREATE SCHEMA desafio;

USE desafio;

-- Crie duas novas tabelas com pelo menos 4 colunas cada (não esqueça de indicar o Primary Key)

CREATE TABLE clientes (
	id_cliente INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NULL,
    cpf CHAR(14) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY (id_cliente)
);

CREATE TABLE pedidos (
	id_pedido INT NOT NULL AUTO_INCREMENT,
    data_pedido DATETIME NOT NULL DEFAULT current_timestamp, -- o current_timestamp serve para preencher automaticamente a data e hora ao inserir algum dado.
    id_cliente INT NOT NULL,
    forma_pagamento VARCHAR(50),
    valor_pedido DECIMAL(10,2),
    PRIMARY KEY(id_pedido),
    FOREIGN KEY(id_cliente) 
    REFERENCES clientes(id_cliente)
    ON DELETE CASCADE -- se um cliente for deletado, os pedidos vinculados a ele também serão excluídos.
);

-- Insira 10 novas linhas em cada tabela.

INSERT INTO clientes (nome, sobrenome, cpf, email)
			  VALUES ('Ana', 'Silva', '123.456.789-01', 'ana.silva@gmail.com'),
					 ('Bruno', 'Souza', '123.456.789-02', 'bruno.souza@gmail.com'),
					 ('Carlos', 'Oliveira', '123.456.789-03', 'carlos.oliveira@gmail.com'),
					 ('Daniela', 'Pereira', '123.456.789-04', 'daniela.pereira@gmail.com'),
					 ('Eduardo', 'Costa', '123.456.789-05', 'eduardo.costa@gmail.com'),
				     ('Fernanda', 'Rodrigues', '123.456.789-06', 'fernanda.rodrigues@gmail.com'),
					 ('Gabriel', 'Almeida', '123.456.789-07', 'gabriel.almeida@gmail.com'),
					 ('Helena', 'Nascimento', '123.456.789-08', 'helena.nascimento@gmail.com'),
					 ('Igor', 'Lima', '123.456.789-09', 'igor.lima@gmail.com'),
					 ('Juliana', 'Araújo', '123.456.789-10', 'juliana.araujo@gmail.com'),
				     ('Lucas', 'Fernandes', '123.456.789-11', 'lucas.fernandes@gmail.com'),
					 ('Mariana', 'Gomes', '123.456.789-12', 'mariana.gomes@gmail.com'),
					 ('Nicolas', 'Barbosa', '123.456.789-13', 'nicolas.barbosa@gmail.com'),
					 ('Patricia', 'Ribeiro', '123.456.789-14', 'patricia.ribeiro@gmail.com'),
					 ('Rafael', 'Martins', '123.456.789-15', 'rafael.martins@gmail.com');
                     
INSERT INTO pedidos (id_cliente, forma_pagamento, valor_pedido)
			 VALUES (1, 'pix', 150.00),
					(2, 'cartao', 230.50),
					(3, 'boleto', 99.90),
					(4, 'pix', 120.75),
					(5, 'cartao', 300.00),
					(6, 'pix', 80.00),
					(7, 'boleto', 45.00),
					(8, 'cartao', 500.00),
					(9, 'pix', 60.00),
					(10, 'cartao', 210.30),
					(11, 'boleto', 130.00),
					(12, 'pix', 75.50),
					(13, 'cartao', 410.00),
					(14, 'pix', 95.00),
					(15, 'boleto', 180.00);
                    
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
