use empleados;
	
ej1
SELECT numde, AVG(salar)
FROM TEMPLE
GROUP BY numde
ORDER BY numde ASC;

ej2
SELECT numde, count(nomemp)
FROM TEMPLE
GROUP BY numde
HAVING numde = 100 or numde = 110
ORDER BY numde ASC;

ej3
SELECT numde, AVG(salar), MAX(salar), MIN(salar)
FROM TEMPLE
GROUP BY numde
ORDER BY numde ASC;

ej4
SELECT numde, numhi, count(*)
FROM TEMPLE
GROUP BY numde, numhi
HAVING numde=100 or numde=110
ORDER BY numde;

ej5
SELECT numde, AVG(salar), MAX(salar), MIN(salar)
FROM TEMPLE
GROUP BY numde
ORDER BY numde ASC;
