CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- criando tabela
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(25) NOT NULL,
    cor VARCHAR(11),
    preco DECIMAL(5,3) NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY(id)

);

-- alterando tamanho do campo
ALTER TABLE tb_produtos MODIFY cor VARCHAR(35);
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,3);


-- inserindo dados
INSERT INTO tb_produtos(nome, cor, preco, quantidade) VALUES ("Pato de borracha","Amarelo", 5.99, 33);
INSERT INTO tb_produtos(nome, cor, preco, quantidade) VALUES ("Pinguim de Borracha","Preto/Branco", 4.99, 5);
INSERT INTO tb_produtos(nome, cor, preco, quantidade) VALUES ("Galinha de Borracaha","Amarela e Vermelha",12.99, 24);
INSERT INTO tb_produtos(nome, cor, preco, quantidade) VALUES ("Mico leão de Borracha","Dourado",19.99, 2);
INSERT INTO tb_produtos(nome, cor, preco, quantidade) VALUES ("Zebra de Borracha","Braca e Preta",16.99,3);
INSERT INTO tb_produtos(nome, cor, preco, quantidade) VALUES ("Leão de Borracha", "Dourado", 11.99, 15);
INSERT INTO tb_produtos(nome, cor, preco, quantidade) VALUES ("Cobra de Borracha", "Verde", 3.99, 22);
INSERT INTO tb_produtos(nome, cor, preco, quantidade) VALUES ("Gambá de Borracha", "Preto", 7.99, 1);
INSERT INTO tb_produtos(nome, cor, preco, quantidade) VALUES ("Girafa de Borracha", "Amarelo", 13.99, 42);

-- atualizando preco
UPDATE tb_produtos SET preco = 501.99 WHERE id = 3;

-- consultas
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;




