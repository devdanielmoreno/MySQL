INSERT INTO TIENDAS VALUES ('420', ' C. de Fontanella, nº 5-7, 08010 Barcelona', 10);
INSERT INTO TIENDAS VALUES ('421', 'C. de Alfajor, 38, 08089 Barcelona', 12);
INSERT INTO TIENDAS VALUES ('422', 'C. de Cavanilles, 35, 28007 Madrid', 10);
INSERT INTO TIENDAS VALUES ('423',  'C. de Poblenou, 38, 08032 Barcelona', 13);
INSERT INTO TIENDAS VALUES ('424', ' C. de Espronceda, 63, 08005 Barcelona', 14);

INSERT INTO CLIENTES VALUES (90934538, 'Jose Daniel', 08002,'C. de Espronceda, 63, 08005 Barcelona', 'josedaniel@gmail.com');
INSERT INTO CLIENTES VALUES (23390864, 'Daniel', 28940,'C. de Poblenou, 2, 28940 Barcelona', 'Daniel123@gmail.com');
INSERT INTO CLIENTES VALUES (96934538, 'Alex', 08903,'C. de Cavanilles, 63, 08903 Barcelona', 'Alex123@gmail.com');
INSERT INTO CLIENTES VALUES (23450864, 'Arnau', 23002,'C. de Fontanella, 63, 23002 Barcelona', 'Arnau123@gmail.com');
INSERT INTO CLIENTES VALUES (18934538, 'Adri', 80030,'C. de Bernat, 63, 80030 Barcelona', 'Adri123@gmail.com');

INSERT INTO EMPLEADOS VALUES (1, 420, 'Alex', 'Moreno', '1997-04-10', '23282597Q', 'alexmoreno@pccomp.com');
INSERT INTO EMPLEADOS VALUES (2, 421, 'Jaime', 'Gonzalez', '1993-10-29', '83921256F', 'jaimegonzalez@pccomp.com');
INSERT INTO EMPLEADOS VALUES (3, 422, 'Rodrigo', 'Blanco', '1999-01-03', '64739273S', 'rodrigoblanco@pccomp.com');
INSERT INTO EMPLEADOS VALUES (4, 423, 'Pablo', 'Rojo', '2000-07-14', '54367161G', 'pablorojo@pccomp.com');
INSERT INTO EMPLEADOS VALUES (5, 424, 'Antonio', 'Galindo', '1995-05-30', '76362512P', 'antoniogalindo@pccomp.com');

INSERT INTO VENDER  VALUES (90934538,202020, 1, 210.2, '2023-11-10');
INSERT INTO VENDER VALUES (23390864,204050, 2, 160, '2023-10-11');
INSERT INTO VENDER  VALUES (96934538,225599, 1, 70, '2023-04-05');
INSERT INTO VENDER VALUES (23450864,221144, 4, 100, '2023-01-10');
INSERT INTO VENDER VALUES (18934538,225577, 2, 150, '2023-12-10');

INSERT INTO PRODUCTOS (CodProducto, NombreProd, Precio, EAN) VALUES (202020,'TARGETA GRAFICA', 204, 777888);
INSERT INTO PRODUCTOS (CodProducto, NombreProd, Precio, EAN) VALUES (204050,'PPROCESADOR', 150, 999555);
INSERT INTO PRODUCTOS (CodProducto, NombreProd, Precio, EAN) VALUES (225599,'TECLADO', 60, 555777);
INSERT INTO PRODUCTOS (CodProducto, NombreProd, Precio, EAN) VALUES (221144,'FUENTE ALIMENTACION', 90, 333000);
INSERT INTO PRODUCTOS (CodProducto, NombreProd, Precio, EAN) VALUES (225577,'PLACA BASE', 140, 333222);

INSERT INTO TRABAJADORES VALUES ('Informatico superior', 1);
INSERT INTO TRABAJADORES VALUES ('Informatico medio', 2);
INSERT INTO TRABAJADORES VALUES ('Certificado profesional', 3);
INSERT INTO TRABAJADORES VALUES ('Doctor en computacion', 4);
INSERT INTO TRABAJADORES VALUES ('Programador junior', 5);

INSERT INTO TECNICOS VALUES (3, 1);
INSERT INTO TECNICOS VALUES (2, 2);
INSERT INTO TECNICOS VALUES (7, 3);
INSERT INTO TECNICOS VALUES (10, 4);
INSERT INTO TECNICOS VALUES (1, 5);

select * from TECNICOS;

delete from VENDER
where Cantidad = 4;

delete from PRODUCTOS
where NombreProd = 'Procesador';

delete from TECNICOS
where AñosExperiencia = 1 and 2;

delete from TRABAJADORES
where Estudios = 'Informatico medio';

delete from VENDER
where Cantidad > 2;





UPDATE TIENDAS SET NumEmpleados = 4 WHERE NumEmpleados = 9;
Select * From TIENDAS;


UPDATE EMPLEADOS SET Nombre = 'Andres', Apellidos = 'Romera' WHERE CodEmpleados = 1;
Select * From EMPLEADOS;


UPDATE TRABAJADORES SET Estudios = 'Informatico superior' WHERE CodEmpleados = 2;
Select * From TRABAJADORES;


UPDATE TECNICOS SET AñosExperiencia = 11 WHERE CodEmpleados = 4;
Select * From TECNICOS;

UPDATE CLIENTES SET EmailCliente = 'Alex567@gmail.com' WHERE DNICliente = 96934538;
Select * From CLIENTES;

UPDATE PRODUCTOS SET Precio = 100 WHERE CodProducto = 221144;
Select * From PRODUCTOS;

UPDATE VENDER SET PrecioTotal = 110 WHERE DNICliente = 23450864;
Select * From VENDER;