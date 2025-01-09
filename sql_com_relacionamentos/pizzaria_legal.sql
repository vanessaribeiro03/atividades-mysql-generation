-- Criar banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Selecionar o Banco de Dados db_pizzaria_legal
USE db_pizzaria_legal;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

-- Criar a tabela tb_pizzas
CREATE TABLE tb_pizzas(
	id INT AUTO_INCREMENT,
	sabor VARCHAR(255) NOT NULL,
    preco decimal(4, 2),
    tamanho VARCHAR(255),
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

--  Inserir dados na tabela tb_categorias
INSERT INTO tb_categorias (nome) 
VALUES ('Clássicas'),
       ('Gourmet'),
	   ('Vegan'),
       ('Especiais'),
       ('Regionais');
       
--  Inserir dados na tabela tb_pizzas       
INSERT INTO tb_pizzas (sabor, preco, tamanho, categoria_id) 
VALUES 
('Margherita', 30.00, 'Média', 1),
('Calabresa', 25.50, 'Grande', 1),
('Trufada', 45.00, 'Média', 2),
('Salmão Defumado', 50.00, 'Pequena', 2),
('Pizza de Abacaxi e Queijo Vegano', 35.00, 'Média', 3),
('Veggie Delight', 40.00, 'Grande', 3),
('Pizza de Carne de Sol', 40.00, 'Grande', 4),
('Pizza de Frango com Catupiry', 30.00, 'Média', 5);

-- Visualizar todos os dados da tabela tb_pizzas
SELECT * FROM tb_pizzas;

-- Visualizar todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Visualizar todas as pizzas com preços acima que 45.00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Visualizar todas as pizzas com preços entre 50.00 e 100.00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Visualizar todas as pizzas que possua letra M no atributo sabor
SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';

-- Unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

-- Visualizar os dados de todos as pizzas que pertençam a categoria classica
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_pizzas.categoria_id = 1;
       
       
