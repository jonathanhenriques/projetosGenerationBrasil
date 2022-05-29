CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;


CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(50),
    descricao VARCHAR(150),
    
    PRIMARY KEY(id)

);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(36) NOT NULL,
    preco DECIMAL(10,2),
    quantidade INT,
    categoria_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)

);
TRUNCATE TABLE tb_produtos;

INSERT INTO tb_categorias(titulo, descricao) VALUES("Back-End","Cursos voltados a área de desenvolvimento BackEnd");
INSERT INTO tb_categorias(titulo, descricao) VALUES("FrontEnd","Cursos voltados a área de desenvolvimento FrontEnd");
INSERT INTO tb_categorias(titulo, descricao) VALUES("FullStack","Cursos voltados a área de desenvolvimento FullStack");
INSERT INTO tb_categorias(titulo, descricao) VALUES("Bando de Dados","Cursos voltados a área de Banco de Dados");
INSERT INTO tb_categorias(titulo, descricao) VALUES("Scrum","Cursos voltados a área de Frameworks de Equipe");

INSERT INTO tb_produtos(nome, preco, categoria_id) VALUES ("Java", 500,1);
INSERT INTO tb_produtos(nome, preco,categoria_id) VALUES ("Html", 600,2);
INSERT INTO tb_produtos(nome, preco,categoria_id) VALUES ("Javascript", 700,3);
INSERT INTO tb_produtos(nome, preco,categoria_id) VALUES ("Sql", 800,4);
INSERT INTO tb_produtos(nome, preco,categoria_id) VALUES ("P.O", 900,5);
INSERT INTO tb_produtos(nome, preco,categoria_id) VALUES ("C#", 1000,1);
INSERT INTO tb_produtos(nome, preco,categoria_id) VALUES ("CSS", 1100,2);
INSERT INTO tb_produtos(nome, categoria_id) VALUES ("BootsTrap", 2);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco > 600 AND preco < 1000;
SELECT * FROM tb_produtos WHERE nome LIKE "%j%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON categoria_id = 1 AND tb_categorias.id = 1;