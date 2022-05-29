CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(15),
    status BOOLEAN,
    
    PRIMARY KEY(id)

);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(15),
    preco DECIMAL(10,2),
    descricao VARCHAR(50),
    categoria_id BIGINT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)

);

INSERT INTO tb_categorias(titulo, status) VALUES("Naturais", 0);
INSERT INTO tb_categorias(titulo, status) VALUES("Artificiais", 1);
INSERT INTO tb_categorias(titulo, status) VALUES("Combinados", 1);
INSERT INTO tb_categorias(titulo, status) VALUES("Vedação", 0);
INSERT INTO tb_categorias(titulo, status) VALUES("Estrutural", 1);

INSERT INTO tb_produtos(nome, preco, descricao, categoria_id) VALUES ("Areia", 75,"Areia para preparos", 1);
INSERT INTO tb_produtos(nome, preco, descricao, categoria_id) VALUES ("Plásticos", 101,"Para Preenchimentos", 2);
INSERT INTO tb_produtos(nome, preco, descricao, categoria_id) VALUES ("Concreto", 140,"Para cobrir colunas", 3);
INSERT INTO tb_produtos(nome, preco, descricao, categoria_id) VALUES ("Tijolo vedação", 80,"Isolam som", 4);
INSERT INTO tb_produtos(nome, preco, descricao, categoria_id) VALUES ("Madeira", 136,"Parar estruturação", 5);
INSERT INTO tb_produtos(nome, preco, descricao, categoria_id) VALUES ("Pedra", 76,"Para combinados", 1);
INSERT INTO tb_produtos(nome, preco, descricao, categoria_id) VALUES ("Fibras", 89,"Para suporte", 2);
INSERT INTO tb_produtos(nome, preco, descricao, categoria_id) VALUES ("Argamassa", 124,"Para coberturas", 3);

SELECT * FROM tb_produtos WHERE preco > 100;
SELECT * FROM tb_produtos WHERE preco > 70 AND preco < 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON categoria_id = 3 AND tb_categorias.id = 3;
