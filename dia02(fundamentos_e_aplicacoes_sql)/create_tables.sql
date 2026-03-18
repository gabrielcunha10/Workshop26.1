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
