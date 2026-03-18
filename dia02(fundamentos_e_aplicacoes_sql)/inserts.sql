USE desafio;

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