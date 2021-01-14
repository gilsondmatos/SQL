create database Escola;

	use Amori;

create table avaliacao(
	id bigint(3) primary key auto_increment,
	nome varchar(100) not null,
	classe varchar(10) not null,
	nota float not null
);

insert into avaliacao(id,nome,classe,nota) values (null,'Gilson','TurmaB',7);
insert into avaliacao(id,nome,classe,nota) values (null,'Carlos','TurmaA',4);
insert into avaliacao(id,nome,classe,nota) values (null,'Pedro','TurmaC',9);
insert into avaliacao(id,nome,classe,nota) values (null,'Antonio','TurmaA',3);
insert into avaliacao(id,nome,classe,nota) values (null,'Renata','TurmaC',10);
insert into avaliacao(id,nome,classe,nota) values (null,'Fernanda','TurmaB',7);
insert into avaliacao(id,nome,classe,nota) values (null,'Jefferson','TurmaB',6);
insert into avaliacao(id,nome,classe,nota) values (null,'Gisele','TurmaC',6);
	
select id,nome,classe,nota
from avaliacao
where nota >= 7;

select id,nome,classe,nota
from avaliacao
where nota < 7;

update avaliacao set nota = 8
where id = 2;

