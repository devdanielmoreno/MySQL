use empleados;

1.
CREATE TABLE EMPLE66(
ID INTEGER primary key,
LAST_NAME VARCHAR(30),
FIRST_NAME VARCHAR(30),
USER_ID VARCHAR(10),
SALARY INTEGER,
COMMISSION INTEGER
);

2.
describe EMPLE66;

3.
INSERT INTO EMPLE66(ID,LAST_NAME,FIRST_NAME,USER_ID,SALARY,COMMISSION) VALUES(1,'Simon','Enrique','esimon',850,200);	
INSERT INTO EMPLE66(ID,LAST_NAME,FIRST_NAME,USER_ID,SALARY,COMMISSION) VALUES(2,'Norka','Sonia','snorka',860,300);
INSERT INTO EMPLE66(ID,LAST_NAME,FIRST_NAME,USER_ID,SALARY,COMMISSION) VALUES(3,'Nersis','Viola','vnersis',1200,0);
INSERT INTO EMPLE66(ID,LAST_NAME,FIRST_NAME,USER_ID,SALARY,COMMISSION) VALUES(4,'Nico','Lea','Inico',1000,100);


4.
UPDATE EMPLE66
SET LAST_NAME = "Nico"
WHERE ID = 3

5.
UPDATE EMPLE66
SET SALARY = 1000
WHERE SALARY < 900

6.
select * from EMPLE66;

7.
UPDATE EMPLE66
SET SALARY = SALARY / 100 * 10
WHERE SALARY < 200

8.
UPDATE EMPLE66
SET SALARY = SALARY * 2

9.
UPDATE EMPLE66
SET SALARY = SALARY + 500
WHERE COMMISSION = 0