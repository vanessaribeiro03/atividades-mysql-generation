-- Criar banco de dados
CREATE DATABASE db_rh;

-- Acessar ou usar o banco atual
USE db_rh;

-- Criar tabela
CREATE TABLE tb_colaboradores (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,        
    email VARCHAR(255) UNIQUE NOT NULL, 
    cargo VARCHAR(255),                 
    data_admissao DATE,
    salario DECIMAL(10, 2) NOT NULL
);

-- Visualizar a estrutura da tabela
DESC tb_colaboradores;

-- Inserir dados na tabela
INSERT INTO tb_colaboradores (nome, email, cargo, data_admissao, salario)
VALUES
    ('Ana Silva', 'ana.silva@email.com', 'Analista de Sistemas', '2023-05-01', 6500.00),
    ('Carlos Santos', 'carlos.santos@email.com', 'Gerente de Projetos', '2022-11-15', 9500.00),
    ('Beatriz Almeida', 'beatriz.almeida@email.com', 'Desenvolvedora Back-End', '2024-01-10', 7200.00),
    ('João Oliveira', 'joao.oliveira@email.com', 'Analista de Dados', '2023-03-20', 6800.00),
    ('Mariana Costa', 'mariana.costa@email.com', 'Desenvolvedora Front-End', '2022-07-05', 7100.00);

-- Visualizar todos os dados
SELECT * FROM tb_colaboradores;

-- Visualizar todos os colabores com salario acima que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Visualizar todos os colabores com salario abaixo que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualizar o atributo nome na tabela, cujo id seja igual a 1
UPDATE tb_colaboradores SET nome = "Ana Maria Silva" WHERE id = 1;



