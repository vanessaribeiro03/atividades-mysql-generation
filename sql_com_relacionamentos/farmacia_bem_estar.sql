-- Criar banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Selecionar o Banco de Dados db_farmacia_bem_estar
USE db_farmacia_bem_estar;

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
    preco DECIMAL(6, 2) NOT NULL,
    estoque INT NOT NULL,
    validade DATE,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserir dados na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) 
VALUES 
('Medicamentos', 'Remédios para diversas condições'),
('Vitaminas', 'Suplementos e complexos vitamínicos'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza'),
('Higiene', 'Produtos para higiene pessoal e íntima'),
('Infantil', 'Produtos voltados ao público infantil');

-- Inserir dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, preco, estoque, validade, categoria_id) 
VALUES 
('Paracetamol 500mg', 10.00, 50, '2025-12-31', 1),
('Vitamina C 1g', 25.00, 30, '2025-06-30', 2),
('Shampoo Anticaspa', 45.00, 20, '2024-11-15', 3),
('Sabonete Líquido', 15.00, 40, '2025-03-20', 4),
('Pomada Infantil', 35.00, 15, '2025-09-01', 5),
('Antibiótico X', 80.00, 10, '2024-08-30', 1),
('Creme Hidratante', 60.00, 25, '2025-10-15', 3),
('Protetor Solar Infantil', 50.00, 18, '2025-05-10', 5);

-- Visualizar todos os produtos com preços acima que 50.00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Visualizar todos os produtos com preços entre 5.00 e 60.00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- Visualizar todos os produtos que possua letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- Unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- Visualizar os dados de todos os produtos que pertençam à categoria cosméticos
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_produtos.categoria_id = 3;






