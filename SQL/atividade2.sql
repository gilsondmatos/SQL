create database Amori;

	use Amori;

create table produto(
	cod bigint(10) primary key auto_increment,
	nome varchar(100) not null,
	departamento varchar(40) not null,
	preco float not null
);

insert into produto(cod,nome,departamento,preco) values (null,'Smart TV 50','Televisores',2500);
insert into produto(cod,nome,departamento,preco) values (null,'Notebook dell','Informática',5400);
insert into produto(cod,nome,departamento,preco) values (null,'Bicicleta Atacama Caloi'.'Esportes',4000);
insert into produto(cod,nome,departamento,preco) values (null,'Carrinho de bebê','Bebês', 750);
insert into produto(cod,nome,departamento,preco) values (null,'Lavadora de Roupas 15kg','Eletrodomésticos',1800);
insert into produto(cod,nome,departamento,preco) values (null,'Impressora Canon'.'Informática',1900);
insert into produto(cod,nome,departamento,preco) values (null,'Relógio Cassio','Acessórios', 350);
insert into produto(cod,nome,departamento,preco) values (null,'Boneco Batman 20 cm','Brinquedos',150);
	
select cod,nome,departamento,preco
from produto
where preco > 500;

select cod,nome,departamento,preco
from produto
where preco < 500;

update produto set preco = 3120
where cod = 2;


