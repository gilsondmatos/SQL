CREATE DATABASE RH;
USE RH;

create table FUNCIONARIO(
	
	ID INT PRIMARY KEY AUTO_INCREMENT, 
	NOME VARCHAR(255) NOT NULL,
	SALARIO FLOAT(10,2) NOT NULL,
	IDADE INT NOT NULL,
	SEXO CHAR(1) NOT NULL,
	EMAIL VARCHAR(30),
	CARGO VARCHAR(15) NOT NULL
);

/*ALTERAÇÃO QUANTIDADE DE CARACTERES*/
ALTER TABLE FUNCIONARIO MODIFY COLUMN CARGO VARCHAR(50);
ALTER TABLE FUNCIONARIO MODIFY COLUMN SALARIO FLOAT(20,2);

/*INSERÇÃO DE DADOS*/
INSERT INTO FUNCIONARIO(ID, NOME,IDADE,SEXO,EMAIL,SALARIO,CARGO) VALUES(NULL,'Gilson',31,'M','gilsondmatos@hotmail.com',12500,'Adm. Banco de Dados');
INSERT INTO FUNCIONARIO(ID, NOME,IDADE,SEXO,EMAIL,SALARIO,CARGO) VALUES(NULL,'Carlos',32,'M','carlos@hotmail.com',3500,'Gerente RH');
INSERT INTO FUNCIONARIO(ID, NOME,IDADE,SEXO,EMAIL,SALARIO,CARGO) VALUES(NULL,'Renata',23,'M','renata@hotmail.com',1500,'Auxiliar Serv.Gerais');
INSERT INTO FUNCIONARIO(ID, NOME,IDADE,SEXO,EMAIL,SALARIO,CARGO) VALUES(NULL,'Pedro',31,'M','pedro@hotmail.com',10500,'Diretor Marketing');
INSERT INTO FUNCIONARIO(ID, NOME,IDADE,SEXO,EMAIL,SALARIO,CARGO) VALUES(NULL,'Antônio',31,'M','antonio@hotmail.com',2500,'Analista de Suporte');

SELECT ID,NOME,SALARIO
FROM FUNCIONARIO
WHERE SALARIO > 2000;

SELECT ID,NOME,SALARIO
FROM FUNCIONARIO
WHERE SALARIO < 2000;

SELECT *FROM FUNCIONARIO;

UPDATE FUNCIONARIO SET SALARIO = 15000
WHERE ID = 1;

UPDATE FUNCIONARIO SET SALARIO = 15000.85
WHERE ID = 1;

UPDATE FUNCIONARIO SET SALARIO = 3450.21
WHERE ID = 2;

UPDATE FUNCIONARIO SET SALARIO = 1521.14
WHERE ID = 3;

UPDATE FUNCIONARIO SET SALARIO = 12251.47
WHERE ID = 4;

UPDATE FUNCIONARIO SET SALARIO = 2514.78
WHERE ID = 5;






