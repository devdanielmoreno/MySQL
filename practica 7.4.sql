PRÁCTICA EN MYSQL
Consultas sobre varias tablas
1. Listar todos los elementos de las tablas TCENTE, TDEPTO.
select * from Tcentre,TDEPTO;
2. Listar numde de la tabla TDEPTO y numce de la tabla TCENTRE.
select C.numde, D.numce
FROM TDEPTO C,TCENTRE D
WHERE C.numce = D.numce;

3. Obtener los nombres de los departamentos que tienen un presupuesto superior a 1000 euros, así
como el nombre del centro de trabajo donde se encuentran ubicados, clasificados por orden alfabético.
SELECT D.nomde, T.nomce
FROM TDEPTO D, TCENTRE T
WHERE presu > 1000
ORDER BY nomde ASC;

4. Hallar por orden alfabético los nombres de los departamentos que dependen de los que tienen un
presupuesto inferior a 50000.
SELECT D.nomde, T.presu
FROM TDEPTO D, TCENTRE T
WHERE presu < 50000
ORDER BY nomde ASC;

5. Si el departamento 122 está ubicado en la calle Alcalá, obtener por orden alfabético los nombres de los
empleados cuyo salario supere al salario medio de su departamento.

6. Obtener por orden alfabético los nombres de los departamentos ubicados a la calle Atocha.

7. Obtener por orden alfabético los nombres de los departamentos cuyo presupuesto es inferior a la
mitad de la suma de los salarios anuales de sus empleados.

8. Obtener por orden alfabético los nombres de los empleados cuyo salario supera al salario medio de su
departamento.

9. Obtener los números de empleado, salario y media de salarios del departamento al que pertenecen,
para aquellos empleados cuya comisión sea de 1100 euros.

10. Obtener un listado de los empleados del departamento 100, mostrando su nombre, salario y salario
acumulado, por orden de salario.

Insert
11. Se ha creado un departamento que depende de 120. Darlo de alta en la tabla de departamentos. Los
valores son: 124, 10, 350, F, 40, 120, PLANIFICACION.

12. Supongamos que tenemos una tabla vacía llamada TEMPLE2, cuyas características son iguales que las
de TEMPLE, y queremos llenarla con copias de las filas de TEMPLE de los empleados que hayan ingresado
en la empresa después del año 1970.

13. Inserte al siguiente empleado en la tabla temple: 100, 100, 100, 30/08/1965, 30/08/1966, 100, 100, 0,
ZAZA, ZAIRA.

Delete
13. Borrar de la tabla de empleados a Zaza Zaira.

14. Borrar de la tabla TEMPLE2, donde tenemos una copia parcial de TEMPLE, las filas de los empleados
cuyo salario supere en más del 50% al salario medio de los empleados que hay en TEMPLE2.

15. Dejar vacía la tabla TEMPLE2