CREATE TABLE curso (
	id INT PRIMARY KEY NOT NULL,
  	nombre VARCHAR(30) NOT NULL,
  	descripcion VARCHAR(50),
    turno VARCHAR(20) NOT NULL
);

ALTER TABLE curso ADD cupo INT;

INSERT INTO curso VALUES (101, "Algoritmos", "Algoritmos y Estructuras de Datos", "Mañana", 35);
INSERt INTO curso VALUES (102,"Matemática discreta","","Tarde", 30);


-- ingresos inválidos
INSERt INTO curso VALUES (103 , null, "", "Tarde", 30);
INSERT INTO curso VALUES (101, "Fisica 1", "", "Noche", 30);


UPDATE curso SET cupo = 25;
DELETE FROM curso WHERE nombre = "Algoritmos";

