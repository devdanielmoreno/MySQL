CREATE DATABASE BDHOSPITAL;
USE BDHOSPITAL;

CREATE TABLE HOSPITAL(
HOSPITAL_COD int,
NOMBRE varchar(12),
DIRECCION varchar(20),
TELEFONO  varchar(10),
NUM_CAMAS int
);

CREATE TABLE PLANTILA(
HOSPITAL_COD int,
SALA_COD int,
EMPLEADOS_NO int,
APELLIDO char(16),
FUNCION char(10),
SALARIO int
);

ALTER TABLE HOSPITAL ADD POBLACIÓN varchar(30) not null;
describe HOSPITAL;
ALTER TABLE PLANTILA CHANGE SALARIO salarioPlantilla float;
describe PLANTILA;
ALTER TABLE HOSPITAL ADD primary key (HOSPITAL_COD);
describe HOSPITAL;
ALTER TABLE PLANTILA ADD primary key (HOSPITAL_COD,SALA_COD);
describe PLANTILA;
ALTER TABLE PLANTILA ADD foreign key (HOSPITAL_COD) REFERENCES HOSPITAL(HOSPITAL_COD) ON DELETE CASCADE; 
describe PLANTILA;
ALTER TABLE PLANTILA ADD CANTIDAD int;
describe PLANTILA;
ALTER TABLE PLANTILA CHANGE CANTIDAD CANTENPLANTILLA int;
describe PLANTILA;
ALTER TABLE PLANTILA DROP COLUMN CANTENPLANTILLA;
describe PLANTILA;

CREATE INDEX idxpoblacion ON HOSPITAL(POBLACIÓN); 
describe HOSPITAL;

CREATE VIEW VISTAHOSPITAL(HOSPITAL_COD, NOMBRE, DIRECCION) AS (select HOSPITAL_COD, NOMBRE, DIRECCION from HOSPITAL);
select * from VISTAHOSPITAL;


show create table HOSPITAL;
Describe HOSPITAL;

