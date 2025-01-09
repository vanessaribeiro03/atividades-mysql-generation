-- Criar o banco de dados db_cidade_dos_vegetais
CREATE DATABASE db_cidade_dos_vegetais;

-- Selecionar o banco de dados db_cidade_dos_vegetais
USE db_cidade_dos_vegetais;

-- Criar tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,        
    descricao VARCHAR(255)            
);

-- Criar tabela tb_produtos
CREATE TABLE tb_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,       
    preco DECIMAL(6, 2),              
    estoque INT,                       
    validade DATE,                     
    categoria_id INT,                  
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) -- Relacionamento com a tabela tb_categorias
);

-- Inserir dados na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) 
VALUES 
('Frutas', 'Produtos frescos e sazonais'),
('Legumes', 'Legumes diversos e selecionados'),
('Verduras', 'Folhas e vegetais frescos'),
('Grãos', 'Grãos variados para consumo diário'),
('Raízes', 'Produtos de raízes e tubérculos');

-- Inserir dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, preco, estoque, validade, categoria_id) 
VALUES 
('Maçã', 55.00, 150, '2025-03-01', 1), 
('Banana', 30.00, 200, '2025-02-15', 1), 
('Tomate', 70.00, 180, '2025-01-30', 2), 
('Cenoura', 45.00, 300, '2025-04-01', 2), 
('Alface', 20.00, 100, '2025-01-15', 3), 
('Feijão', 120.00, 80, '2025-06-01', 4),
('Batata', 90.00, 250, '2025-05-15', 5), 
('Mandioca', 50.00, 150, '2025-06-10', 5); 

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

-- Visualizar todos os produtos com preços acima de R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Visualizar todos os produtos com preços entre R$ 50,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

-- Visualizar todos os produtos que possuam a letra C no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- Unir os dados da tabela tb_produtos com os dados da tabela tb_categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- Visualizar os produtos da categoria frutas
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.id = 1;






