create database ejemploiud;
use ejemploiud;

CREATE TABLE INFODEPT(
numde int primary key,
nomde varchar(30),
dirección varchar(30)
);

/*Insert BASICO*/
INSERT INTO INFODEPT VALUES (12, 'DEP1','balmes 120');
---------------------------------------------------------
INSERT INTO INFODEPT (dirección,nomde,numde)
VALUES('balmes 120','de1',12);

SELECT * FROM INFODEPT;

/*Insert SELECT*/
use empleados;

CREATE TABLE INFODEPT21(
nomde varchar(30),
presu float
);

INSERT INTO INFODEPT21(nomde, presu)
SELECT nomde, presu
FROM tdepto
WHERE numde = 112;

SELECT * FROM INFODEPT21;

/*Insert SELECT dentro de VALUES*/
CREATE TABLE EMPLEADOSANTIGUOS(
numeroempleado int,
salario float
);

INSERT INTO EMPLEADOSANTIGUOS(numeroempleado, SALARIO)
VALUES (99, (SELECT SALAR FROM TEMPLE WHERE numem=110));
INSERT INTO EMPLEADOSANTIGUOS(numeroempleado, SALARIO)
VALUES (55, (SELECT SALAR FROM TEMPLE WHERE numem=120));

SELECT * FROM EMPLEADOSANTIGUOS;

/*PARA BORRAR FILAS*/
DELETE FROM EMPLEADOSANTIGUOS
WHERE numeroempleado=95;

SELECT * FROM EMPLEADOSANTIGUOS;

/*PARA MODIFICAR*/
UPDATE TEMPLE
SET salar = salar+500
WHERE comis = 0;