CREATE TABLE colocacao (
  id int NOT NULL,
  posicao varchar (10) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE piloto (
  id int NOT NULL,
  nome varchar (50) NOT NULL,
  colocacao int NOT NULL,
  CONSTRAINT f1 FOREIGN KEY (colocacao) REFERENCES colocacao (id),
  PRIMARY KEY (id)
);

drop table if exists campeonato;
CREATE TABLE campeonato (
  id int NOT NULL,
  nome varchar (50) NOT NULL,
  corrida int NOT NULL,
  CONSTRAINT f1 FOREIGN KEY (corrida) REFERENCES corrida (id),
  PRIMARY KEY (id)
);

CREATE TABLE corrida (
  id int NOT NULL,
  data varchar (15) NOT NULL,
  piloto int NOT NULL,
  CONSTRAINT f1 FOREIGN KEY (piloto) REFERENCES piloto (id),
  PRIMARY KEY (id)
);

CREATE TABLE pista (
  id int NOT NULL,
  nome varchar (15) NOT NULL,
  tamanho int NOT NULL,
  corrida int NOT NULL,
  CONSTRAINT f1 FOREIGN KEY (corrida) REFERENCES corrida (id),
  PRIMARY KEY (id)
);

CREATE TABLE pais (
  id int NOT NULL,
  nome varchar (15) NOT NULL,
  pista int NOT NULL,
  CONSTRAINT f1 FOREIGN KEY (pista) REFERENCES pista (id),
  PRIMARY KEY (id)
);