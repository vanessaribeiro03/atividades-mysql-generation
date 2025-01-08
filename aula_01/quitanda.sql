-- Criar banco de dados
CREATE DATABASE db_quitanda;

-- Acessar ou usar o banco atual
USE db_quitanda;

-- Criar tabela
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    data_validade date,
    preco decimal,
    PRIMARY KEY(id)
);

-- Atualizar o tipo de um atributo
ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

-- Adicionar um novo atributo na tabela
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Alterar o nome de um atributo na tabela
ALTER TABLE tb_produtos CHANGE descricao descricao_produto varchar(500);

-- Remover um atributo da tabela
ALTER TABLE tb_produtos DROP descricao_produto;

-- Visualizar a estrutura da tabela
DESC tb_produtos;

-- Inserir dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Tomate", 100, "2024-01-10", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES  ("Pepino", 57, "2025-02-13", 9.50),
		("Cenoura", 20, "2025-01-20", 7.00),
        ("Cebola", 60, "2024-03-07", 5.00),
        ("Repolho", 30, "2024-02-02", 3.00);
        
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Tomate Italiano", 100, "2024-01-10", 8.90);

-- Visualizar todos os dados da tabela
SELECT * FROM tb_produtos;

-- Visualizar o produto que o id é igual a 1
SELECT * FROM tb_produto where id = 1;

-- Visualizar todos os produtos em que o preço é maior que 4
SELECT * FROM tb_produto WHERE preco > 4.00;

-- Visualizar o produto que o preço é maior que 2 e o nome seja igual a repolho
SELECT * FROM tb_produto WHERE preco > 2.00 AND nome = "Repolho";

-- Visualizar o produto que o preço é maior que 5 e o nome seja igual a Tomate
SELECT * FROM tb_produto WHERE preco > 5.00 AND nome = "Tomate";

-- Visualizar todos os produtos que o nome seja diferente que tomate
SELECT * FROM tb_produto WHERE nome != "Tomate";

-- Visualizar somente o nome e o preço formatado para Reais
SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preco FROM tb_produtos;

-- Visualizar somente o nome e a data de validade formatada no padrão pt BR (00/00/0000)
SELECT nome, DATE_FORMAT(data_validade, '%d/%m/%Y') AS Data_Validade FROM tb_produtos;

-- Atualizar o atributo preço na tabela, cujo id seja igual a 2
UPDATE tb_produtos SET preco = 9.50 WHERE id = 2;

-- Nesse caso ele atualiza todos os atributos preço para 9.50
UPDATE tb_produtos SET preco = 9.50;

-- Desabilitar o modo safe update, que impede a execução do update e do delete sem where
SET SQL_SAFE_UPDATES = 0;

-- Habilitar o modo safe update, que impede a execução do update e do delete sem where
SET SQL_SAFE_UPDATES = 1;

-- Apagar o dado da tabela que o id seja igual a 6
DELETE FROM td_produtos WHERE id = 6;

-- Apagar a tabela
DROP TABLE tb_produtos;

-- Apagar o Banco
DROP DATABASE db_quitanda;