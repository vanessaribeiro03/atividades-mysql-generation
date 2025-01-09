-- Criar banco de dados
CREATE DATABASE db_escola;

-- Acessar ou usar o banco atual
USE db_escola;

-- Criar tabela
CREATE TABLE tb_estudantes (
    id INT PRIMARY KEY AUTO_INCREMENT,  
    nome VARCHAR(255) NOT NULL,        
    idade INT NOT NULL,                 
    turma VARCHAR(255),                 
    nota DECIMAL(2, 1) NOT NULL      
);

-- Visualizar a estrutura da tabela
DESC tb_estudantes;

-- Inserir dados na tabela
INSERT INTO tb_estudantes (nome, idade, turma, nota)
VALUES
    ('Ana Silva', 14, '8A', 8.5),
    ('Carlos Santos', 15, '9B', 6.0),
    ('Beatriz Almeida', 13, '7C', 9.2),
    ('João Oliveira', 14, '8A', 5.8),
    ('Mariana Costa', 14, '8B', 7.5),
    ('Lucas Ferreira', 15, '9C', 6.7),
    ('Gabriela Souza', 13, '7A', 8.0),
    ('Ricardo Lima', 14, '8C', 4.5);

-- Visualizar todos os dados
SELECT * FROM tb_estudantes;

-- Visualizar todos os estudantes com nota maior que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- Visualizar todos os estudantes com nota menor que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- Atualizar o atributo nota, cujo id seja igual a 5
UPDATE tb_estudantes SET nota = 8.0 WHERE id = 5;
