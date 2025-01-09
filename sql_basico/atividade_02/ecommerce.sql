-- Criar banco de dados
CREATE DATABASE db_ecommerce;

-- Acessar ou usar o banco atual
USE db_ecommerce;

-- Criar tabela
CREATE TABLE tb_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,        
    descricao TEXT,                    
    preco DECIMAL(10, 2) NOT NULL,    
    categoria VARCHAR(255),             
    estoque INT NOT NULL              
);

-- Visualizar a estrutura da tabela
DESC tb_produtos;

-- Inserir dados na tabela
INSERT INTO tb_produtos (nome, descricao, preco, categoria, estoque)
VALUES
    ('Smartphone XYZ', 'Smartphone com 128GB de armazenamento', 1200.00, 'Eletrônicos', 50),
    ('Notebook ABC', 'Notebook com 8GB RAM e 512GB SSD', 3500.00, 'Eletrônicos', 20),
    ('Smart TV', 'TV 4K UHD de 50 polegadas', 2300.00, 'Eletrodomésticos', 15),
    ('Fone de Ouvido', 'Fone de ouvido bluetooth', 150.00, 'Acessórios', 100),
    ('Teclado Gamer', 'Teclado mecânico RGB', 300.00, 'Acessórios', 40),
    ('Cafeteira', 'Cafeteira elétrica com timer', 450.00, 'Eletrodomésticos', 25),
    ('Geladeira', 'Geladeira Frost Free 400L', 3800.00, 'Eletrodomésticos', 10),
    ('Ventilador', 'Ventilador de mesa 30cm', 200.00, 'Eletrodomésticos', 60);

-- Visualizar todos os dados
SELECT * FROM tb_produtos;

-- Visualizar todos os produtos com preços acima de 500
SELECT * FROM tb_produtos WHERE preco > 500;

-- Visualizar todos os produtos com preços abaixo de 500
SELECT * FROM tb_produtos WHERE preco < 500;

-- Atualizar o atributo nome na tabela, cujo id seja igual a 1
UPDATE tb_produtos SET nome = "Smartphone Samsung" WHERE id = 1;


