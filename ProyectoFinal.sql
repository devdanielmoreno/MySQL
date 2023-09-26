create database ProyectoFinal;
use ProyectoFinal;

CREATE TABLE TIENDAS(
CodTienda int (14) primary key,
Direccion varchar (40),#Direccion de las tiendas
NumEmpleados int (3)
);

CREATE TABLE EMPLEADOS(#EMPLEADOS DE TIENDAS
CodEmpleados int primary key,
CodTienda int,
Nombre varchar(30),
Apellidos varchar(30),
F_Nacimiento date,#Fecha de naciomiento de cada empleado
DNI varchar(9),
foreign key (CodTienda) references TIENDAS(CodTienda)
);

CREATE TABLE TRABAJADORES(
Estudios varchar(30),
CodEmpleados int primary key,
foreign key (CodEmpleados) references EMPLEADOS(CodEmpleados)
);

CREATE TABLE TECNICOS(
AñosExperiencia int,
CodEmpleados int primary key,
foreign key (CodEmpleados) references EMPLEADOS(CodEmpleados)
);


CREATE TABLE CLIENTES(
DNICliente int primary key,
NombreCliente varchar(30) NOT NULL,
CodPostal int,
Direccion varchar(50),
EmailCliente varchar(50)
);

CREATE TABLE PRODUCTOS(#PRODUCTOS DE LAS TIENDAS
CodProducto int (20) primary key,
NombreProd varchar (40),
Precio float (5),
EAN int (20)
);

CREATE TABLE VENDER(
DNICliente 	int,
CodProducto int,
Cantidad int,
PrecioTotal float,
FechaVenta date,
primary key(DNICliente, CodProducto),
foreign key (DNICliente) references CLIENTES(DNICliente),
foreign key (CodProducto) references PRODUCTOS(CodProducto)
);

SELECT * FROM TIENDAS;
SELECT * FROM VENDER;
SELECT * FROM PRODUCTOS;
SELECT * FROM CLIENTES;
SELECT * FROM TECNICOS;
SELECT * FROM TRABAJADORES;
SELECT * FROM EMPLEADOS;
 
ALTER TABLE EMPLEADOS ADD EmailEmp varchar(30);
DESCRIBE EMPELEADOS;
ALTER TABLE CLIENTES ADD NumTel int;
DESCRIBE CLIENTES;

ALTER TABLE TIENDAS ADD CONSTRAINT checknumem CHECK (NumEmpleados>=10);
DESCRIBE TIENDAS;
ALTER TABLE TECNICOS ADD CONSTRAINT checkaños CHECK (AñosExperiencia>=1);
DESCRIBE TECNICOS;

ALTER TABLE PRODUCTOS ALTER Precio SET DEFAULT 9.99;
DESCRIBE PRODUCTOS;
ALTER TABLE EMPLEADOS ALTER EmailEmp SET DEFAULT 'empleado@pccomponentes.com';
DESCRIBE EMPLEADOS;

ALTER TABLE CLIENTES MODIFY DNICliente varchar(9); 	
DESCRIBE PRODUCTOS;
ALTER TABLE TIENDAS MODIFY Direccion varchar(100); 
DESCRIBE EMPLEADOS;

ALTER TABLE EMPLEADOS DROP COLUMN EmailEmp;
DESCRIBE EMPLEADOS;
ALTER TABLE CLIENTES DROP COLUMN NumTel;
DESCRIBE CLIENTES;

ALTER TABLE TECNICOS DROP CHECK checkaños;
DESCRIBE TECNICOS;
ALTER TABLE TIENDAS DROP CHECK checknumem;
DESCRIBE TIENDAS;

ALTER TABLE TIENDAS CHANGE Direccion DireccionTienda varchar(30);
DESCRIBE TIENDAS;
ALTER TABLE TIENDAS CHANGE DireccionTienda Direccion varchar(30);
DESCRIBE TIENDAS;

ALTER TABLE EMPLEADOS RENAME AS EMPELEADOSGENERALES;
DESCRIBE EMPELEADOS;
ALTER TABLE EMPELEADOS RENAME AS EMPLEADOS;
DESCRIBE EMPELEADOS;	

INSERT INTO TIENDAS VALUES ('420', ' C. de Fontanella, nº 5-7, 08010 Barcelona', 10);
INSERT INTO TIENDAS VALUES ('421', ' Polígono Industrial Las Salinas, Avenida Europa, 2-3, 30840, Murcia', 9);
INSERT INTO TIENDAS VALUES ('422', 'C. de Cavanilles, 35, 28007 Madrid', 10);
INSERT INTO TIENDAS VALUES (423, ' Provençals del Poblenou, 6, 08020 Barcelona', 8);
INSERT INTO TIENDAS VALUES ('424', ' C. de Espronceda, 63, 08005 Barcelona', 14);