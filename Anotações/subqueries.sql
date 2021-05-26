/* Subqueries */


CREATE TABLE VENDEDOR(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO CHAR(1),
	JANEIRO FLOAT(10, 2),
	FEVEREIRO FLOAT(10, 2),
	MARCO FLOAT (10, 2)
);

INSERT INTO VENDEDOR VALUES(NULL, 'MARCOS', 'M', 121212.2, 23232.2, 23211.2);
INSERT INTO VENDEDOR VALUES(NULL, 'MARIA', 'F', 6565.2, 3432.2, 432222.2);
INSERT INTO VENDEDOR VALUES(NULL, 'CLAUDIA', 'F', 7575.2, 644646.2, 233.2);
INSERT INTO VENDEDOR VALUES(NULL, 'PIETRA', 'F', 5757.2, 5454.2, 3443.2);
INSERT INTO VENDEDOR VALUES(NULL, 'MARCIA', 'F', 6446.2, 2323.2, 232.2);
INSERT INTO VENDEDOR VALUES(NULL, 'HIGOR', 'M', 3535.2, 35.2, 3535.2);
INSERT INTO VENDEDOR VALUES(NULL, 'FELIPE', 'M', 3535.2, 535.2, 2323.2);
INSERT INTO VENDEDOR VALUES(NULL, 'CARLOS', 'M', 6453.2, 6434.2, 3535.2);
INSERT INTO VENDEDOR VALUES(NULL, 'ZÉ', 'M', 5454.2, 4545.2, 34545.2);
INSERT INTO VENDEDOR VALUES(NULL, 'JOÃO', 'M', 34342.2, 23232, 4.2);


/* Qual o vendedor que vendeu menos em março e seu nome? */

SELECT NOME, MARCO FROM VENDEDOR
WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDOR);

/* Qual o vendedor que vendeu mais em março e seu nome? */

SELECT NOME, MARCO FROM VENDEDOR
WHERE MARCO = (SELECT MAX(MARCO) FROM VENDEDOR);

/* Qual o vendedor que vendeu mais que a média de fevereiro */

SELECT NOME, FEVEREIRO FROM VENDEDOR
WHERE FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDOR);


/* Operações em linhas */


SELECT NOME, JANEIRO, FEVEREIRO, MARCO, (JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
ROUND((JANEIRO+FEVEREIRO+MARCO)/3) AS "MÉDIA"
FROM VENDEDOR;
