CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT NOT NULL,
	tamanho VARCHAR(3) NOT NULL,
    tipo_massa TINYINT,
    
	primary key(id)
);

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT NOT NULL,
    sabor VARCHAR(25) NOT NULL,
    borda_recheada BOOLEAN,
    recheio_extra BOOLEAN,
    valor DECIMAL(5,3),
    categoria_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias(tamanho, tipo_massa) VALUES ("P",1);
INSERT INTO tb_categorias(tamanho, tipo_massa) VALUES ("M",2);
INSERT INTO tb_categorias(tamanho, tipo_massa) VALUES ("G",3);
INSERT INTO tb_categorias(tamanho, tipo_massa) VALUES ("GG",1);
INSERT INTO tb_categorias(tamanho, tipo_massa) VALUES ("M",2);

INSERT INTO tb_pizzas(sabor,borda_recheada,recheio_extra, valor,categoria_id) VALUES ("Portuguêsa",1,1, 31.99,1);
INSERT INTO tb_pizzas(sabor,borda_recheada,recheio_extra, valor,categoria_id) VALUES ("Marguerita",0,1, 32.99,2);
INSERT INTO tb_pizzas(sabor,borda_recheada,recheio_extra, valor,categoria_id) VALUES ("Calabresa",0,0, 33.99,3);
INSERT INTO tb_pizzas(sabor,borda_recheada,recheio_extra, valor,categoria_id) VALUES ("Frango com Catupiry",1,0, 34.99,4);
INSERT INTO tb_pizzas(sabor,borda_recheada,recheio_extra, valor,categoria_id) VALUES ("Mussarela",0,0, 35.99,5);
INSERT INTO tb_pizzas(sabor,borda_recheada,recheio_extra, valor,categoria_id) VALUES ("Palmito",1,0, 36.99,1);
INSERT INTO tb_pizzas(sabor,borda_recheada,recheio_extra, valor,categoria_id) VALUES ("Atum",0,1, 37.99,2);
INSERT INTO tb_pizzas(sabor,borda_recheada,recheio_extra, valor,categoria_id) VALUES ("Milho",1,1, 38.99,3);
INSERT INTO tb_pizzas(sabor,borda_recheada,recheio_extra, valor,categoria_id) VALUES ("4 Queijos",1,1, 48.99,3);
INSERT INTO tb_pizzas(sabor,borda_recheada,recheio_extra, valor,categoria_id) VALUES ("Beringela",1,1, 58.99,3);

SELECT * FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor > 50 and valor < 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias; 
SELECT * FROM tb_pizzas AS P INNER JOIN tb_categorias AS C ON P.recheio_extra = 1;