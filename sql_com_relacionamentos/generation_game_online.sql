-- Criar banco de dados
CREATE DATABASE db_generation_game_online;

-- Selecionar o Banco de Dados db_generation_game_online
USE db_generation_game_online;

-- Criar a tabela tb_classe
CREATE TABLE tb_classe(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

-- Criar a tabela tb_personagens
CREATE TABLE tb_personagens(
	id INT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    ataque INT,
    defesa INT,
    classe_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

-- Inserir registros na tabela tb_classe
INSERT INTO tb_classe (nome)
VALUES ('Guerreiro'),
       ('Arqueiro'),
       ('Feiticeiro'),
       ('Paladino'),
       ('Ladino');

-- Inserir registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, ataque, defesa, classe_id)
VALUES
    ('Conan', 1500, 1200, 1),         
    ('Legolas', 2200, 1800, 2),       
    ('Gandalf', 2500, 2500, 3),       
    ('Arthas', 1800, 1900, 4),        
    ('Varys', 1300, 800, 5),          
    ('Thorin', 2000, 2100, 1),       
    ('Sylvanas', 1700, 1100, 2),      
    ('Dumbledore', 3000, 2500, 3);

-- Visuzalizar todos os personagens com ataque acima de 2000
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- Visuzalizar todos os personagens com desefa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- Visualizar todos os personagens que possua letra C no atributo nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- Unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT * FROM tb_personagens INNER JOIN tb_classe
ON tb_personagens.classe_id = tb_classe.id;

-- Visualizar os dados de todos os personagens que perteçam a classe arqueiro
SELECT * FROM tb_personagens INNER JOIN tb_classe
ON tb_personagens.classe_id = tb_classe.id
WHERE tb_personagens.classe_id = 2;







