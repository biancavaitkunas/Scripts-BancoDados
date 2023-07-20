CREATE TABLE categoria (
  id int NOT NULL,
  nome varchar(45) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO categoria VALUES (1,'Móveis'),(2,'Ferramentas'),(3,'Jardinagem'),(4,'Cozinha'),
(5,'Roupas'),(6,'Maquiagem'),(7,'Brinquedos'),(8,'Cama & Banho'),(9,'Eletrônicos'),(10,'Construção');

DROP TABLE IF EXISTS produto;
CREATE TABLE produto (
  id int NOT NULL,
  nome varchar(45) NOT NULL,
  valor float NOT NULL,
  qtd int NOT NULL,
  categoria int NOT NULL,
  CONSTRAINT categoria FOREIGN KEY (categoria) REFERENCES categoria (id),
  PRIMARY KEY (id)
);
INSERT INTO produto VALUES (1,'Martelo', 35.00, 30, 2);
INSERT INTO produto VALUES (2,'Corretivo', 70.00, 50, 6),(3,'Camiseta Preta', 40.00, 100, 5)
, (4,'Toalha de Rosto', 40.00, 70, 8), (5,'Armário de Cozinha', 400.00, 20, 1);
INSERT INTO produto VALUES (6,'Batom', 50.00, 30, 6);

DROP TABLE IF EXISTS cidade;
CREATE TABLE cidade (
  id int NOT NULL,
  nome varchar(45) NOT NULL,
  uf varchar(2) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO cidade VALUES (1,'Tubarão', 'SC'), (2,'Laguna', 'SC'), (3,'Campinas', 'SP'),
(4,'Belo Horizonte', 'MG'), (5,'Araranguá', 'SC');

DROP TABLE IF EXISTS endereco;
CREATE TABLE endereco (
  id int NOT NULL,
  rua varchar(45) NOT NULL,
  bairro varchar(20) NOT NULL,
  cidade int NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT cidade FOREIGN KEY (cidade) REFERENCES cidade (id)
);
INSERT INTO endereco VALUES (1,'Rua 1', 'Bairro 1', 1), (2,'Rua 2', 'Bairro 2', 2), (3,'Rua 3', 'Bairro 3', 3),
(4,'Rua 4', 'Bairro 4', 4), (5,'Rua 5', 'Bairro 5', 5);

DROP TABLE IF EXISTS telefone;
CREATE TABLE telefone (
  id int NOT NULL,
  telefone varchar(45) NOT NULL,
  cliente int NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT cliente FOREIGN KEY (cliente) REFERENCES cliente (id)
);
INSERT INTO telefone VALUES (1,'1234-5678', 1), (2, '5678-1234', 2);

DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente (
  id int NOT NULL,
  nome varchar(45) NOT NULL,
  dt_nascimento varchar(15) NOT NULL,
  sexo varchar(1) NOT NULL,
  endereco int NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT endereco FOREIGN KEY (endereco) REFERENCES endereco (id)
);
INSERT INTO cliente VALUES (1,'Cliente 1', '02/02/2002', 'F', 3), (2, 'Cliente 2', '15/07/1998', 'M', 5);

DROP TABLE IF EXISTS venda;
CREATE TABLE venda (
  id int NOT NULL,
  dt_venda varchar(15) NOT NULL,
  cliente int NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT cliente FOREIGN KEY (cliente) REFERENCES cliente (id)
);
INSERT INTO venda VALUES (1,'25/04/2023', 2), 
(2, '08/06/2023', 1), (3, '12/05/2023', 1), (4, '24/12/2022', 2), (5, '14/02/2023', 2),
(6, '21/18/2022', 1), (7, '17/03/2023', 2);

DROP TABLE IF EXISTS venda_produto;
CREATE TABLE venda_produto (
  id int NOT NULL,
  qtd_vendida int NOT NULL,
  venda int NOT NULL,
  produto int NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT venda FOREIGN KEY (venda) REFERENCES venda (id),
  CONSTRAINT produto FOREIGN KEY (produto) REFERENCES produto (id)
);
INSERT INTO venda_produto VALUES (1, 5 , 2, 5), (2, 3, 2, 2), (3, 7, 6, 3), (4, 2, 6, 1), 
(5, 6, 1, 4),(6, 4, 3, 5), (7, 2, 3, 2), (8, 5, 2, 4), (9, 1, 7, 2), (10, 3, 1, 5), (11, 1, 4, 1),
(12, 3, 5, 4);
