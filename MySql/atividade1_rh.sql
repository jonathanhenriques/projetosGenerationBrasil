CREATE DATABASE db_rh;

USE db_rh;

-- criando tabela
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(35) NOT NULL,
    telefone VARCHAR(11),
    endereco VARCHAR(35),
    salario DECIMAL(5,3),
	PRIMARY KEY(id)
);

-- inserindo dados
INSERT INTO tb_colaboradores(nome, telefone, endereco, salario) VALUES ("Agnaldo Assis","11911112222","Rua das Ameixeiras", 1.500);
INSERT INTO tb_colaboradores(nome, telefone, endereco, salario) VALUES ("Bia Bernardes","11922223333","Rua dos Boatos",2.500);
INSERT INTO tb_colaboradores(nome, telefone, endereco, salario) VALUES ("Carlos Caio","11933334444","Rua das Caixas",3.500);
INSERT INTO tb_colaboradores(nome, telefone, endereco, salario) VALUES ("Diana Dantas","11944445555","Rua dos Dias",4.500);
INSERT INTO tb_colaboradores(nome, telefone, endereco, salario) VALUES ("Elvis Eva","11955556666","Rua das Entradas",5.500);

-- consultas
SELECT * FROM tb_colaboradores WHERE salario > 2.000;
SELECT * FROM tb_colaboradores WHERE salario < 2.000;

-- atualizando registro
UPDATE tb_colaboradores SET salario = 1.800 WHERE id = 2;