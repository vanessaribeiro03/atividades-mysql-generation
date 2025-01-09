-- Criar banco de dados
CREATE DATABASE db_curso_da_minha_vida;

-- Selecionar o banco de dados
USE db_curso_da_minha_vida;

-- Criar tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

-- Criar tabela tb_cursos
CREATE TABLE tb_cursos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    carga_horaria INT NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserir dados na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) 
VALUES 
('Desenvolvimento Web', 'Cursos voltados para criação de sites e sistemas web'),
('Data Science', 'Cursos focados em análise e ciência de dados'),
('Design', 'Cursos de design gráfico e UX/UI'),
('Marketing Digital', 'Cursos sobre estratégias e ferramentas de marketing'),
('Programação Mobile', 'Cursos de desenvolvimento para dispositivos móveis');

-- Inserir dados na tabela tb_cursos
INSERT INTO tb_cursos (nome, descricao, preco, carga_horaria, categoria_id) 
VALUES 
('Curso de HTML e CSS', 'Aprenda a criar páginas web responsivas', 300.00, 40, 1),
('JavaScript Avançado', 'Domine JavaScript com conceitos modernos', 700.00, 60, 1),
('Python para Data Science', 'Análise de dados com Python', 800.00, 50, 2),
('UX Design Essentials', 'Fundamentos de design de experiência do usuário', 500.00, 30, 3),
('Estratégias de SEO', 'Aumente a visibilidade do seu site', 400.00, 20, 4),
('Flutter para Iniciantes', 'Desenvolva apps móveis com Flutter', 650.00, 50, 5),
('React Native Completo', 'Construa apps nativos com React Native', 1000.00, 80, 5),
('Introdução ao Marketing Digital', 'Noções básicas de marketing online', 350.00, 25, 4);

-- Visualizar todos os cursos com preço maior que R$ 500,00
SELECT * FROM tb_cursos WHERE preco > 500.00;

-- Visualizar todos os cursos com preço entre R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

-- Visualizar todos os cursos que possuam a letra J no nome
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

-- Unir dados das tabelas tb_cursos e tb_categorias
SELECT * FROM tb_cursos 
INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id;

-- Visualizar todos os cursos da categoria Desenvolvimento Web
SELECT * FROM tb_cursos 
INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 1;
