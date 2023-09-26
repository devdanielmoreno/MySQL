use empleados;

create table CLIENTES (
codcliente int primary key, 
nombre  varchar(30),
pedido int,
comision int
);

CREATE TABLE DEUDAS(
numdeuda  int primary key,
deuda  int,
codcliente int
);

1.    Agregue los siguientes valores en la tabla CLIENTES 

insert into clientes values (1,'Maria',1000, 100);
insert into clientes values (2,'Carlos',20, 200);
insert into clientes values (3,'javier',900, 0);
insert into clientes values (4,'Teresa',220, 50);

select * from clientes;

insert into deudas values (1,300,1);
insert into deudas values (2,NULL,2);
insert into deudas values (3,200,2);
insert into deudas values (4,NULL,1);

select * from deudas;

1.    Aumentar el pedido en 100 a todos los clientes que no tengan comision
UPDATE CLIENTES
SET pedido = pedido+100
WHERE comision=0 OR comision IS NULL;

2.    Aumentar el pedido en 100 a todos los clientes que no tengan deuda
UPDATE CLIENTES
SET pedido=pedido+100
WHERE codcliente NOT IN (SELECT codcliente
                        FROM DEUDAS 
                        WHERE deuda IS NOT NULL OR deuda = 0);
 
3.    Cambie el nombre del cliente 4 por Paula
UPDATE CLIENTES
SET nombre = "Paula"
WHERE codcliente = 4;

4.    Cambie a valor 0 las deudas que están vacías (lo cual significa que no tienen deudas)
UPDATE DEUDAS
SET deuda = 0
WHERE deuda is NULL;


5.    Insertar una deuda de 1000 euros al cliente Javier
insert into deudas(numdeuda,deuda,codcliente) values (5,1000,3);

6.    Borra a los clientes que tengan un pedido mayor que la suma de todas las deudas 
DELETE FROM clientes
WHERE pedido > (select sum(deuda) from deudas);

7.    Borra de la tabla CLIENTES a los clientes con numdeuda igual a 1 
DELETE FROM clientes
WHERE codcliente = (select codcliente from deudas where numdeuda = 1)

8.    Cambiar el pedido de todos los empleados a 300
Update clientes
SET pedido = 300;
