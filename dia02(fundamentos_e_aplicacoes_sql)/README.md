# 📚 Banco de Dados – Sistema de Clientes e Pedidos

Este repositório apresenta a implementação de um banco de dados simples para gerenciamento de **clientes e pedidos** utilizando SQL.

O projeto inclui:

- Criação de schema
- Criação de tabelas
- Inserção de dados
- Atualização de dados (DML)
- Consultas com JOIN, GROUP BY e funções agregadas

---

# 1️⃣ Estrutura do Banco

O banco de dados é organizado dentro de um **schema** chamado `desafio`, onde são armazenadas as tabelas do sistema.

```sql
DROP SCHEMA IF EXISTS desafio;
CREATE SCHEMA desafio;
USE desafio;

## Entidades / Tabelas

### 👤 Clientes

Armazena os dados dos clientes cadastrados no sistema.

**Atributos:**

- id_cliente (PK)
- nome
- sobrenome
- cpf
- email

**Regras:**

- **Chave primária:** id_cliente
- **Restrição UNIQUE:** cpf
- **Restrição UNIQUE:** email

---

### 🛒 Pedidos

Armazena os pedidos realizados pelos clientes.

**Atributos:**

- id_pedido (PK)
- data_pedido
- id_cliente (FK)
- forma_pagamento
- valor_pedido

**Regras:**

- **Chave primária:** id_pedido
- **Chave estrangeira:** id_cliente → clientes(id_cliente)
- **ON DELETE CASCADE:** se um cliente for removido, seus pedidos também são excluídos
- **data_pedido** é preenchida automaticamente usando `CURRENT_TIMESTAMP`

---

# 2️⃣ Estrutura das Tabelas

## Tabela clientes

| Campo | Tipo |
|------|------|
| id_cliente | INT |
| nome | VARCHAR(50) |
| sobrenome | VARCHAR(50) |
| cpf | CHAR(14) |
| email | VARCHAR(255) |

**Chave primária:**

- id_cliente

**Restrições:**

- cpf → UNIQUE  
- email → UNIQUE  

---

## Tabela pedidos

| Campo | Tipo |
|------|------|
| id_pedido | INT |
| data_pedido | DATETIME |
| id_cliente | INT |
| forma_pagamento | VARCHAR(50) |
| valor_pedido | DECIMAL(10,2) |

**Chave primária:**

- id_pedido

**Chave estrangeira:**

- id_cliente → clientes(id_cliente)

**Regras adicionais:**

- `ON DELETE CASCADE`
- `data_pedido DEFAULT CURRENT_TIMESTAMP`

---

# ➕ Inserção de Dados

Foram inseridos dados de exemplo para simular o funcionamento do sistema:

- **15 clientes**
- **15 pedidos**

## ➕ Inserção de Dados

Foram inseridos dados de exemplo para simular o funcionamento do sistema.

**Exemplo de inserção de cliente:**

```sql
INSERT INTO clientes (nome, sobrenome, cpf, email)
VALUES ('Ana', 'Silva', '123.456.789-01', 'ana.silva@gmail.com');

## ✏️ Manipulação de Dados (DML)

Atualização de um pedido alterando a forma de pagamento:

```sql
UPDATE pedidos
SET forma_pagamento = 'pix'
WHERE id_pedido = 2;

## 🔎 Consultas (DQL)

O projeto também demonstra consultas para análise de dados utilizando **JOIN, GROUP BY, HAVING e funções agregadas**.

### 🔗 JOIN com agrupamento

Consulta que retorna as **formas de pagamento com mais de 3 pedidos registrados**.

```sql
SELECT t2.forma_pagamento, COUNT(*)
FROM clientes AS t1
INNER JOIN pedidos AS t2
ON t1.id_cliente = t2.id_cliente
GROUP BY t2.forma_pagamento
HAVING COUNT(*) > 3;

### 📊 Funções agregadas

Consulta que retorna estatísticas dos pedidos por forma de pagamento.

```sql
SELECT forma_pagamento,
       MAX(valor_pedido) AS maior_valor,
       SUM(valor_pedido) AS soma_valor,
       AVG(valor_pedido) AS media_valor
FROM pedidos
GROUP BY forma_pagamento
ORDER BY soma_valor DESC;

## 🔄 Fluxo do Sistema

O funcionamento do banco segue o seguinte fluxo:

1. O **schema `desafio` é recriado**
2. As tabelas **clientes** e **pedidos** são criadas
3. Os dados iniciais são inseridos
4. Um pedido é atualizado
5. Consultas são executadas para análise dos dados

---

## 🎯 Objetivo do Projeto

Este projeto tem como objetivo:

- Praticar **SQL básico**
- Trabalhar com diferentes tipos de comandos SQL

### DDL (Data Definition Language)

- `CREATE`
- `DROP`
- `SCHEMA`
- `TABLE`

### DML (Data Manipulation Language)

- `INSERT`
- `UPDATE`

### DQL (Data Query Language)

- `SELECT`

Também demonstra o uso de:

- **JOIN**
- **GROUP BY**
- **HAVING**
- **Funções agregadas (MAX, SUM, AVG)**
