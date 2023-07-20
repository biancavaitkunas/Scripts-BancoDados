
CREATE TABLE almoxarifado (
  id int NOT NULL,
  endereco int NOT NULL,
  movimento int NOT NULL,
  CONSTRAINT f1 FOREIGN KEY (endereco) REFERENCES endereco (id),
  CONSTRAINT f2 FOREIGN KEY (movimento) REFERENCES movimento (id),
  PRIMARY KEY (id)
);

