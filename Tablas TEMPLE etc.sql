create database EMPLEADOS;
USE EMPLEADOS;

CREATE TABLE TCENTRE(
    numce INTEGER (2) UNSIGNED PRIMARY KEY,
    nomce VARCHAR (30),
    senyas VARCHAR (30)
    );

CREATE TABLE TDEPTO(
    numde INTEGER (3) UNSIGNED PRIMARY KEY,
    numce INTEGER (2) UNSIGNED,
    direc VARCHAR (30) NOT NULL,
    tidir VARCHAR (2) NOT NULL,
    presu FLOAT (7,2) UNSIGNED NOT NULL,
    depde INTEGER (3) UNSIGNED,
    nomde VARCHAR (30) NOT NULL,
    FOREIGN KEY (numce) REFERENCES TCENTRE (numce)
    );


CREATE TABLE TEMPLE(
    numem INTEGER (3) PRIMARY KEY,
    numde INTEGER (3) UNSIGNED NOT NULL,
    extel INTEGER (3) NOT NULL,
    fecna DATE NOT NULL,
    fecin DATE NOT NULL,
    salar FLOAT (7,2) NOT NULL,
    comis FLOAT (7,2) UNSIGNED NOT NULL DEFAULT 0,
    numhi INTEGER (1) NOT NULL,
    nomemp VARCHAR (30) NOT NULL,
    FOREIGN KEY (numde) REFERENCES TDEPTO (numde)
    );
    

    
INSERT INTO TCENTRE (numce, nomce, senyas) VALUES (10,'SEDE CENTRAL', 'C. ALCALA 820, MADRID');
INSERT INTO TCENTRE (numce, nomce, senyas) VALUES (20,'RELACION CON CLIENTES', 'C. ATOCHA 405, MADRID');
INSERT INTO TCENTRE (numce, nomce, senyas) VALUES (50,'ALMACEN', 'C. LAVAPIES 520, MADRID');


   
INSERT INTO TDEPTO (numde, numce, direc, tidir, presu, depde, nomde) VALUES (100, 10, 260, 'P', 120, NULL, 'DIRECCION GENERAL');
INSERT INTO TDEPTO (numde, numce, direc, tidir, presu, depde, nomde) VALUES (110, 20, 180, 'P', 150, 100, 'DIRECCION COMERCIAL');
INSERT INTO TDEPTO (numde, numce, direc, tidir, presu, depde, nomde) VALUES (111, 20, 180, 'F', 110, 110, 'SECTOR INDUSTRIAL');
INSERT INTO TDEPTO (numde, numce, direc, tidir, presu, depde, nomde) VALUES (112, 20, 270, 'P', 90, 110, 'SECTOR SERVICIOS');
INSERT INTO TDEPTO (numde, numce, direc, tidir, presu, depde, nomde) VALUES (120, 10, 150, 'F', 30, 100, 'ORGANIZACION');
INSERT INTO TDEPTO (numde, numce, direc, tidir, presu, depde, nomde) VALUES (121, 10, 150, 'P', 20, 120, 'PERSONAL');
INSERT INTO TDEPTO (numde, numce, direc, tidir, presu, depde, nomde) VALUES (122, 10, 350, 'P', 60, 120, 'PROCESO DE DATOS');
INSERT INTO TDEPTO (numde, numce, direc, tidir, presu, depde, nomde) VALUES (123, 10, 150, 'F', 100, 121, 'PERSONAL CONTRATADO');
INSERT INTO TDEPTO (numde, numce, direc, tidir, presu, depde, nomde) VALUES (130, 10, 310, 'P', 20, 100, 'FINANZAS');




INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (110, 121, 350,'1929-11-10', '1950-02-15', 3100, 0, 3, 'PONS, CESAR');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (120, 112, 840,'1935-06-09', '1968-10-01', 3500, 1100, 1, 'LASA, MARIO');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (130, 112, 810,'1945-09-09', '1969-02-01', 2900, 1100, 2, 'TEROL, LUCIANO');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (150, 121, 340,'1930-06-10', '1948-01-15', 4400, 0, 0, 'PEREZ, JULIO');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (160, 111, 740,'1939-07-09', '1968-11-11', 3100, 1100, 2, 'AGUIRRE, AUREO');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (180, 110, 508,'1934-10-18', '1956-03-18', 4800, 500, 2, 'PEREZ, MARCOS');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (190, 121, 350,'1932-05-12', '1962-02-11', 3000, 0, 4, 'VEIGA, JULIANA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (210, 100, 200,'1940-09-28', '1959-01-22', 3800, 0, 2, 'GALVEZ, PILAR');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (240, 111, 760,'1942-02-26', '1966-02-24', 2800, 1000, 3, 'SANZ, LAVINA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (250, 100, 250,'1946-10-27', '1967-03-01', 4500, 0, 0, 'ALBA, ADRIANA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (260, 100, 220,'1943-12-03', '1968-07-12', 7200, 0, 6, 'LOPEZ, ANTONIO');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (270, 112, 800,'1945-05-21', '1966-09-10', 3800, 800, 3, 'GARCIA, OCTAVIO');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (280, 130, 410,'1948-01-11', '1971-10-08', 2900, 0, 5, 'FLOR, DOROTEA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (285, 122, 620,'1949-10-25', '1968-02-15', 3800, 0, 0, 'POLO, OTILIA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (290, 120, 910,'1947-11-30', '1968-02-14', 2700, 0, 3, 'GIL, GLORIA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (310, 130, 480,'1946-11-21', '1971-01-15', 4200, 0, 0, 'GARCIA, AUGUSTO');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (320, 122, 620,'1957-12-25', '1978-02-05', 4050, 0, 2, 'SANZ, CORNELIO');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (330, 112, 850,'1948-08-19', '1972-03-01', 2800, 900, 0, 'DIEZ, AMELIA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (350, 122, 610,'1949-04-13', '1984-09-10', 4500, 0, 1, 'CAMPS, AURELIO');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (360, 111, 750,'1958-10-29', '1968-10-10', 2500, 1000, 2, 'LARA, DORINDA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (370, 121, 360,'1967-06-22', '1987-01-20', 1900, 0, 1, 'RUIZ, FABIOLA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (380, 112, 880,'1968-03-30', '1988-01-01', 1800, 0, 0, 'MARTIN, MICAELA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (390, 110, 500,'1966-02-19', '1986-10-08', 2150, 0, 1, 'MORAN, CARMEN');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (400, 111, 780,'1969-08-18', '1987-11-01', 1850, 0, 0, 'LARA, LUCRECIA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (410, 122, 660,'1968-07-14', '1988-10-13', 1750, 0, 0, 'MUÑOZ, AZUZENA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (420, 130, 450,'1966-10-22', '1988-11-19', 4000, 0, 0, 'FIERRO, CLAUDIA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (430, 122, 650,'1967-10-26', '1988-11-19', 2100, 0, 1, 'MORA, VALERIANA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (440, 111, 760,'1966-09-26', '1986-02-28', 2100, 1000, 0, 'DURAN, LIVIA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (450, 112, 880,'1966-10-21', '1986-02-28', 2100, 1000, 0, 'PEREZ, SABINA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (480, 111, 760,'1965-04-04', '1986-02-28', 2100, 1000, 1, 'PINO, DIANA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (490, 112, 880,'1964-06-06', '1988-01-01', 1800, 1000, 0, 'TORRES, HORACIO');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (500, 111, 750,'1965-10-08', '1987-01-01', 2000, 1000, 0, 'VAZQUEZ, HONORIA');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (510, 110, 550,'1966-05-04', '1986-11-01', 2000, 0, 1, 'CAMPOS, ROMUL');
INSERT INTO TEMPLE (numem, numde, extel, fecna, fecin, salar, comis, numhi, nomemp) VALUES (550, 111, 780,'1970-01-10', '1988-01-21', 1000, 1200, 0, 'SANTOS, SANCHO');
