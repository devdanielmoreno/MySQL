MODIFICAR LA ESTRUCTURA DE UNA TABLA SE UTILIZA ALTER TABLE:
- ADD: agregar columnas, restricciones (primary key, foreign key, unique, etc. etc.)
- MODIFY: para cambiar el tipo de datos de una columna 
- CHANGE: para cambiar el nombre y el tipo de datos de una columna
- DROP: eliminar columnas, restricciones y tablas
- RENAME cambiar el nombre de una tabla



create database ejaltertable9;
use ejaltertable9;

CREATE TABLE ALUMNOS (
codA char(5),
nombreA varchar(10),
apellido1 varchar(10),
apellido2 varchar(10),
dirección varchar(20)
); 

CREATE TABLE
SECRETARIA (
numexpediente integer,
codA integer,
nombreS varchar(20)
); 

describe alumnos;
describe secretaria;

/*agregar la columna notas a la tabla alumnos*/
ALTER TABLE ALUMNOS ADD notas integer not null; 
/*modificar el tipo de datos de la columna codA a que sea entero*/
ALTER TABLE ALUMNOS MODIFY codA integer; 
/*cambiar el nombre de la columna nombreA por nombreAlumno*/
ALTER TABLE ALUMNOS CHANGE nombreA nombreAlumno varchar(30);
/*cambiar el nombre de la tabla alumnos por estudiantes*/
ALTER TABLE ALUMNOS RENAME AS ESTUDIANTES; 
describe estudiantes;
describe secretaria;

/*añadir la primary key a la tabla estudiantes*/
/*primary key(codA);*/
ALTER TABLE ESTUDIANTES ADD CONSTRAINT pk_estudiantes_codA primary key (codA);
/*añadir foreign a la tabla secretaria*/
ALTER TABLE SECRETARIA ADD CONSTRAINT fk_secretaria_codA FOREIGN KEY (codA)
REFERENCES ESTUDIANTES(codA) ON DELETE CASCADE; 

 /*OTRA FORMA DE VER LA ESTRUCTURA DE LA TABLA*/
 SHOW CREATE TABLE SECRETARIA; 
 SHOW CREATE TABLE ESTUDIANTES; 
 
 /*BORRAR LA COLUMNA NOTAS DE LA TABLA ESTUDIANTES*/
 ALTER TABLE ESTUDIANTES DROP COLUMN notas;
 DESCRIBE ESTUDIANTES;
 
 /*CAMBIAR EL NOMBRE DE LA COLUMNA nombreS POR nombresecre*/
 ALTER TABLE SECRETARIA CHANGE nombreS nombresecre varchar(20);
 /*añadir la restricción not null a la columna nombresecre de la tabla secretaria*/
 ALTER TABLE SECRETARIA MODIFY nombresecre varchar(20) NOT NULL;
 describe secretaria;
SHOW CREATE TABLE SECRETARIA; 
 
 /**poner por defecto BARCELONA en la columna direccion de la tabla estudiantes*/
 ALTER TABLE estudiantes MODIFY nombreAlumno varchar(30) DEFAULT 'BARCELONA';
 describe estudiantes;
 
 /*AÑADIR LA COLUMNA EDAD A LA TGABLA ESTUDIANTE Y QUE SEA MAYOR QUE 18*/
 ALTER TABLE ESTUDIANTES ADD edad integer NOT NULL CHECK (edad >= 18);
 SHOW CREATE TABLE estudiantes; 
 
/*UNA FORMA DE VER LAS RESTRICCIONES QUE TENGO CONSULTANDO LAS TABLAS DEL DICCIONARIO DE DATOS DE MYSQL*/
DESCRIBE information_schema.Table_constraints;

select constraint_name, table_name, constraint_type
from information_schema.Table_constraints
WHERE TABLE_NAME ='SECRETARIA';

/*BORRAR LA FK DE SECRETARIA*/
ALTER TABLE SECRETARIA DROP foreign key fk_secretaria_codA;
DROP INDEX fk_secretaria_codA ON SECRETARIA ; 

 SHOW CREATE TABLE SECRETARIA;
 
 /asociarle un índice a la columa direccion de la tabla estudiantes*/
 CREATE INDEX idx_direccion ON Estudiantes(dirección); 
 describe estudiantes;
 SHOW CREATE TABLE estudiantes;
 