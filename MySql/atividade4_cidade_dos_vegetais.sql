create DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;


CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(15),
    descricao VARCHAR(36),
    PRIMARY KEY(id)

);


CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(15) NOT NULL,
    peso DECIMAL(10,2),
    valor DECIMAL(10,2),
    categoria_id BIGINT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)

);

INSERT INTO tb_categorias(titulo, descricao) VALUES ("Frutos","Vegetais que contém sementes");
INSERT INTO tb_categorias(titulo, descricao) VALUES ("Raizes","Crescem debaixo da terra");
INSERT INTO tb_categorias(titulo, descricao) VALUES ("Tubérculos","Vegetais arredondados");
INSERT INTO tb_categorias(titulo, descricao) VALUES ("Leguminosas","Grãos");
INSERT INTO tb_categorias(titulo, descricao) VALUES ("Verduras","Plantas comestíveis");

INSERT INTO tb_produtos(nome, peso, valor, categoria_id) VALUES ("Azeitona", 20, 50.99, 1);
INSERT INTO tb_produtos(nome, peso, valor, categoria_id) VALUES ("Cenoura", 40, 70.99, 2);
INSERT INTO tb_produtos(nome, peso, valor, categoria_id) VALUES ("Mandioca", 70,64.99, 3);
INSERT INTO tb_produtos(nome, peso, valor, categoria_id) VALUES ("Feijão", 30, 18.99, 4);
INSERT INTO tb_produtos(nome, peso, valor, categoria_id) VALUES ("Pimentão", 15, 99.99, 5);
INSERT INTO tb_produtos(nome, peso, valor, categoria_id) VALUES ("Milho", 40, 149.99, 1);
INSERT INTO tb_produtos(nome, peso, valor, categoria_id) VALUES ("Beterraba", 35, 72.99, 2);
INSERT INTO tb_produtos(nome, peso, valor, categoria_id) VALUES ("Rabanete", 25, 111.99, 3);
INSERT INTO tb_produtos(nome, peso, valor, categoria_id) VALUES ("Lentilha", 50, 132.99, 4);


SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor > 50 AND valor < 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON categoria_id = 1 AND tb_categorias.id = 1;
