/*Apuntes*/
TIPOS DE RESTRICCIONES:
 PRIMARY KEY: clave principal a primaria
- FOREIGN KEY: calve ajena o foránea
- UNIQUE: unicidad (los datos no se pueden repetir)
- DEFAULT: valor que tomará por defecto
- NOT NULL: no puede quedar vacio
- CHECK: chequea la entrada de datos en una columna.
----
MODIFICAR LA ESTRUCTURA DE UNA TABLA SE UTILIZA ALTER TABLE:
- ADD: agregar columnas, restricciones (primary key, foreign key, unique, etc. etc.)
- MODIFY: para cambiar el tipo de datos de una columna 
- CHANGE: para cambiar el nombre y el tipo de datos de una columna
- DROP: eliminar columnas, restricciones y tablas
- RENAME cambiar el nombre de una tabla

/*agregar la columna notas a la tabla alumnos*/
ALTER TABLE ALUMNOS ADD notas integer not null; 
----
/*modificar el tipo de datos de la columna codA a que sea entero*/
ALTER TABLE ALUMNOS MODIFY codA integer; 
/*añadir la restricción not null a la columna nombresecre de la tabla secretaria*/
ALTER TABLE SECRETARIA MODIFY nombresecre varchar(20) NOT NULL;
/*poner por defecto BARCELONA en la columna direccion de la tabla estudiantes*/
ALTER TABLE estudiantes MODIFY nombreAlumno varchar(30) DEFAULT 'BARCELONA';
----
/*cambiar el nombre de la columna nombreA por nombreAlumno*/
ALTER TABLE ALUMNOS CHANGE nombreA nombreAlumno varchar(30);
/*CAMBIAR EL NOMBRE DE LA COLUMNA nombreS POR nombresecre*/
ALTER TABLE SECRETARIA CHANGE nombreS nombresecre varchar(20);
----
/*BORRAR LA COLUMNA NOTAS DE LA TABLA ESTUDIANTES*/
ALTER TABLE ESTUDIANTES DROP COLUMN notas;
/*BORRAR LA FK DE SECRETARIA*/
ALTER TABLE SECRETARIA DROP foreign key fk_secretaria_codA;
DROP INDEX fk_secretaria_codA ON SECRETARIA ; 
----
/*cambiar el nombre de la tabla alumnos por estudiantes*/
ALTER TABLE ALUMNOS RENAME AS ESTUDIANTES; 
----
/*añadir la primary key a la tabla estudiantes*/
/*primary key(codA);*/
ALTER TABLE ESTUDIANTES ADD CONSTRAINT pk_estudiantes_codA primary key (codA);
/*añadir foreign a la tabla secretaria*/
ALTER TABLE SECRETARIA ADD CONSTRAINT fk_secretaria_codA FOREIGN KEY (codA) REFERENCES ESTUDIANTES(codA) ON DELETE CASCADE; 
----
/*AÑADIR UNA RESTRICCIóN LA COLUMNA EDAD A LA TGABLA ESTUDIANTE Y QUE SEA MAYOR QUE 18*/
ALTER TABLE ESTUDIANTES ADD edad integer NOT NULL CHECK (edad >= 18);
/*UNA FORMA DE VER LAS RESTRICCIONES QUE TENGO CONSULTANDO LAS TABLAS DEL DICCIONARIO DE DATOS DE MYSQL*/
DESCRIBE information_schema.Table_constraints;
----
/*asociarle un índice a la columa direccion de la tabla estudiantes*/
CREATE INDEX idx_direccion ON Estudiantes(dirección); 
describe estudiantes;
SHOW CREATE TABLE estudiantes;
----
----
----
APUNTES EXEMPLES VISTES EN SQL:
- Crear un índex en una columna 
CREATE INDEX nom_index ON Taula(columna); 
- Eliminar un índex 
DROP INDEX nom_index ON Taula;
----
EJEMPLOS:
CREATE DATABASE ejemplovistas;
USE ejemplovistas;

CREATE TABLE Producte(
  codiProd varchar(3) primary key,
  marca varchar(20),
  descripcio varchar(100),
  preu int
);

INSERT INTO Producte
VALUES 
('c20', 'Yoplait', 'Pack 8 iougurs', 3),
('c22', 'Kellogs', 'Cerelas integrals.', 2),
('c24', 'Nivea', 'Crema antiedad cutis', 7),
('c26', 'Vernel', NULL, 8),
('c28', 'Bimbo', 'Quates', 1),
('c30', 'Delial', 'Crema solar', 12),
('c32', 'Dodot', '64 bolquers', 15),
('c34', 'Colgate', NULL, 2),
('c36', 'Fanta', 'Ampolla de fanta', 1),
('c38', 'Heineken', 'Pack 8 cerveses', 4),
('c40', 'Philips', 'Màquina afaitar home', 75), 
('c42', 'Navidul', 'Pernil en dolç 20 grams', 16),
('c44', 'Nivea', 'Crema hidratant cos', 22),
('c46', 'Yoplait', NULL, 3), 
('c48', 'Navidul', 'Pack 8 iogurts', 5),
('c50', 'Bimbo', 'Pack 4 Biscotes', 6),
('c52', 'Nivea', 'Hidratant cos 250 ml.', 7),
('c54', 'Fanta', 'Llauna llimona', 2),
('c56', 'Kellogs', 'Cereals arròs imflat', 1),
('c58', 'Nivea', 'Hidratant de mans', 5),
('c60', 'Philips', NULL, 45),
('c62', 'Colgate', NULL, 2);

/*crear una vista*/
CREATE VIEW nom_vista(codiProd, marca, preu) AS (select codiProd, marca, preu from producte where preu > 7 );
select * from nom_vista;
----
/*crear un índice a la columna descripcio de la tabla producte*/
CREATE INDEX index_descripcio ON producte(descripcio); 
show create table producte;
