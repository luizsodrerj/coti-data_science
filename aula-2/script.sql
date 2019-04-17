-- arquivo de banco de dados
-- postgresql


DROP DATABASE aular;

CREATE DATABASE aular;


-- conectar
\c aular 


-- criar tabela
CREATE TABLE produto (
	codigo 	    serial primary key,
	nome 	    varchar(50) not null,
	preco       float not null,
	quantidade  int not null
);

\d produto;
\d 

-- insert
INSERT INTO produto(nome,preco,quantidade) VALUES('PS4',1200.0,10);
INSERT INTO produto(nome,preco,quantidade) VALUES('XBOX',400.0,3);
INSERT INTO produto(nome,preco,quantidade) VALUES('Super Nintendo',254.0,8);
INSERT INTO produto(nome,preco,quantidade) VALUES('Mega Driver',1800.0,4);
INSERT INTO produto(nome,preco,quantidade) VALUES('Geladeira',1200.0,10);
INSERT INTO produto(nome,preco,quantidade) VALUES('TV LCD',1350.0,5);
INSERT INTO produto(nome,preco,quantidade) VALUES('Monitor',450.0,7);
INSERT INTO produto(nome,preco,quantidade) VALUES('TV LCD 42',800.0,6);
INSERT INTO produto(nome,preco,quantidade) VALUES('Lava Roupas Consul',1500.0,7);















