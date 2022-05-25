CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(35) NOT NULL,
    idade TINYINT,
    serie VARCHAR(5),
    nota TINYINT,
    PRIMARY KEY(id)

);

-- inserindo dados
INSERT INTO tb_estudantes (nome, idade, serie, nota) VALUES ("Ana Silva", 15, "1ma",6);
INSERT INTO tb_estudantes (nome, idade, serie, nota) VALUES ("Bruno Silva", 16, "2ma", 7);
INSERT INTO tb_estudantes (nome, idade, serie, nota) VALUES ("Carla Silva", 17, "3ma", 8);
INSERT INTO tb_estudantes (nome, idade, serie, nota) VALUES ("Douglas Silva", 13, "7a", 6);
INSERT INTO tb_estudantes (nome, idade, serie, nota) VALUES ("Elena Silva", 16, "2ma", 9);
INSERT INTO tb_estudantes (nome, idade, serie, nota) VALUES ("Fabio Silva", 15, "1ma", 6);
INSERT INTO tb_estudantes (nome, idade, serie, nota) VALUES ("Gabriela Silva", 13, "7a", 7);
INSERT INTO tb_estudantes (nome, idade, serie, nota) VALUES ("Helton Silva", 17, "3ma", 4);

-- consultas
SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

-- atualizando
UPDATE tb_estudantes SET nota = 5 WHERE id = 3;