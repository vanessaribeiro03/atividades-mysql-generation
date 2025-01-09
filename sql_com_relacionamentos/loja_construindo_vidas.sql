-- Criar o banco de dados db_construindo_vidas
CREATE DATABASE db_construindo_vidas;

-- Selecionar o banco de dados db_construindo_vidas
USE db_construindo_vidas;

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
    preco DECIMAL(8, 2),              
    estoque INT,                       
    validade DATE,                     
    categoria_id INT,                  
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) 
);

-- Inserir dados na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) 
VALUES 
('Elétrica', 'Produtos relacionados a instalações elétricas'),
('Hidráulica', 'Produtos para sistemas hidráulicos e encanamentos'),
('Construção', 'Materiais para estrutura e acabamento'),
('Pintura', 'Tintas, pincéis e materiais para pintura'),
('Ferramentas', 'Ferramentas manuais e elétricas');

-- Inserir dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, preco, estoque, validade, categoria_id) 
VALUES 
('Lâmpada LED', 15.00, 200, '2025-12-31', 1), 
('Fita Isolante', 5.00, 500, '2026-06-30', 1), 
('Canos de PVC', 120.00, 150, NULL, 2), 
('Torneira Cromada', 80.00, 50, NULL, 2), 
('Tijolo Refratário', 2.50, 3000, NULL, 3), 
('Tinta Látex', 110.00, 100, '2026-01-01', 4), 
('Broxa de Pintura', 15.00, 80, '2025-09-30', 4), 
('Parafusadeira', 250.00, 30, NULL, 5); 

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

-- Visualizar todos os produtos com preços acima de R$ 100,00
SELECT * FROM tb_produtos WHERE preco > 100.00;

-- Visualizar todos os produtos com preços entre R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

-- Visualizar todos os produtos que possuam a letra C no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- Unir os dados da tabela tb_produtos com os dados da tabela tb_categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- Visualizar todos os produtos da categoria Hidráulica
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.id = 2;







