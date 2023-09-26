USE EMPLEADOS;

/*INSERT CON SELECT */
/*NO LLEVA value!!!!!*/



CREATE TABLE INFODEPT21 (
nomde varchar(30),
presupuesto float);

INSERT INTO INFODEPT21(nomde, presupuesto)
SELECT nomde, presu
FROM tdepto
WHERE numde = 112;

select * from INFODEPT21;
/*********/
CREATE TABLE INFODEPT22 (
nombredep varchar(30),
presu float);

select * from infodept22;

INSERT INTO INFODEPT22(nombredep, presu)
SELECT nomde, presu
FROM tdepto
WHERE numde = 111;

select * from INFODEPT22;

/****************/
create table historicoEmpleados(
numero int,
nombre varchar(30)
);

insert into historicoEmpleados
select numem, nomemp
from temple
where salar > 2000;

select * from historicoEmpleados;

/*********************/
CREATE TABLE EMPLEADOSANTIGUOS(
numeroempleado int,
salario float
);
INSERT INTO EMPLEADOSANTIGUOS(numeroempleado, SALARIO)
VALUES (99, (SELECT SALAR FROM TEMPLE WHERE NUMEM=110));
INSERT INTO EMPLEADOSANTIGUOS(numeroempleado, SALARIO)
VALUES (55, (SELECT SALAR FROM TEMPLE WHERE NUMEM=120));

SELECT * FROM EMPLEADOSANTIGUOS;

/************/
/*Borrar FILAS de la tabla*/

DELETE FROM nom_taula 
WHERE condicions;

SELECT * FROM EMPLEADOSANTIGUOS;

DELETE FROM EMPLEADOSANTIGUOS
WHERE NUMEROEMPLEADO=99;

DELETE FROM TEMPLE
WHERE SALAR BETWEEN 1000 AND 2000 AND NUMHI=0;

DELETE FROM TEMPLE
WHERE SALAR > (select SUM(PRESU) from tDEPTO);

/********************/
/*MODIFICAR UPDATE*/

UPDATE nom_taula 
SET columna = valor nuevo
WHERE condicions;

select * from temple;

/*modificar la comisision de perez, julio, con 99 euros*/
UPDATE TEMPLE 
SET COMIS = 99
WHERE NOMEMP LIKE 'PEREZ, JULIO';

UPDATE TEMPLE
SET salar = salar+500
WHERE comis = 0;