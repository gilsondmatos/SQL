create database db_cursoDaMinhaVida;


use db_cursoDaMinhaVida;

/*Criação da tabela tb_categoria*/
create table tb_categoria(
	idcategoria bigint primary key auto_increment,
	tipo varchar(100) not null,
	investimento enum('S','N') not null
);

/*Criação da tabela tb_curso */
create table tb_curso (
	idcurso bigint primary key auto_increment,
	Curso varchar(50) unique not null,
	Area varchar (30) not null,
	Escola varchar (30) not null,
	Preco float(10,2) not null,
	Data_inscricao varchar(11) not null,
	id_categoria bigint,
	foreign key(id_categoria)
	references tb_categoria(idcategoria)
);

/*Inserção de dados na tabela tb_categoria*/
insert into tb_categoria values (null,'Presencial','S');
insert into tb_categoria values (null,'Presencial','N');
insert into tb_categoria values (null,'EAD','S');
insert into tb_categoria values (null,'EAD','N');

/*Inserção de dados na tabela tb_curso* - (idcurso,Curso,Area,Escola,Preco,Data_inscricao*/
insert into tb_curso values (null,'JAVA','Programação','Generation',0.00,'10/01/2020',2);
insert into tb_curso values (null,'Spring','Programação','Generation',0.00,'15/01/2020',4);
insert into tb_curso values (null,'Scrum Master','Soft Skills','Alura',550.00,'25/01/2020',1);
insert into tb_curso values (null,'GitHub','Programação','Alura',320.00,'25/05/2022',3);
insert into tb_curso values (null,'MySql','Banco de Dados','Coursera',0.00,'25/05/2022',4);
insert into tb_curso values (null,'Pitch','Empreendedorismo','Alura',578.52,'25/07/2022',3);
insert into tb_curso values (null,'Illustrator','Design Gráfico','Senac',1120.14,'25/07/2023',1);
insert into tb_curso values (null,'Photoshop','Design Gráfico','Senac',750.00,'17/01/2021',1);


/*Consultas maior R$ 50.00*/
select idcurso,Curso,Escola,Preco
from tb_curso
where preco > 50;

/*Consultas entre R$ 3,00 e R$ 60,00*/
select idcurso,Curso,Escola,Preco
from tb_curso
where Preco >= 0
and Preco <= 330;

/*Consulta dos cursos com a letra J*/
select idcurso,Curso,Escola,Preco
from tb_curso
where Curso like "J%";

/*Junção - tb_curso e tb_categoria*/
select idcurso,Curso,Escola,Preco,tipo,investimento
from tb_curso
	inner join tb_categoria
	on idcategoria = id_categoria;

/*Projeção apenas dos cursos gratuitos*/
select idcurso,Curso,Escola,Preco,tipo,investimento
from tb_curso
	inner join tb_categoria
	on idcategoria = id_categoria
where investimento = 'N';


