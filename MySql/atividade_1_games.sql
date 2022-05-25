CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT NOT NULL,
    classe VARCHAR(25) NOT NULL,
    raca VARCHAR(25),
    
    PRIMARY KEY(id)

);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(36) NOT NULL,
    poder_ataque DECIMAL(6,3),
    poder_defesa  DECIMAL(6,3),
    classe_id BIGINT NOT NULL,
    
    PRIMARY KEY(id),
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)

);

-- preenchendo tb_classes
INSERT INTO tb_classes(classe, raca) VALUES ("Guerreiro","Minotauro");
INSERT INTO tb_classes(classe, raca) VALUES ("Arqueiro","Elfo");
INSERT INTO tb_classes(classe, raca) VALUES ("Ladrão","Goblin");
INSERT INTO tb_classes(classe, raca) VALUES ("Curandeiro","Gnomo");
INSERT INTO tb_classes(classe, raca) VALUES ("Guerreiro","Anão");

-- preenchendo tb_personagens
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id) VALUES ("Wagner",3.000,1.500, 1);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id) VALUES ("Cassandra",2.500,2.000, 2);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id) VALUES ("Alberto",1.300,1.700,3);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id) VALUES ("Anastásia",2.700,1.800,4);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id) VALUES ("Camilo",3.300,1.100,5);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id) VALUES ("Zafira",2.200,2.000, 1);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id) VALUES ("Roberta",1.600,3.300, 2);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id) VALUES ("Leopoldo",1.900,1.000,3);

-- consultas
SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE tb_personagens.poder_ataque > 2.000;
SELECT * FROM tb_personagens WHERE tb_personagens.poder_defesa > 1.000 AND tb_personagens.poder_defesa < 2.000;
SELECT * FROM tb_personagens AS P WHERE P.nome LIKE "C%";
SELECT * FROM tb_personagens AS P INNER JOIN tb_classes AS C ON P.id = C.id; 
SELECT * FROM tb_personagens AS P INNER JOIN tb_classes AS C ON C.classe LIKE "arqueir%";





