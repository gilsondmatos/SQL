create database db_pizzaria_legal;

USE db_pizzaria_legal;

/*Criação da tabela rb_catgoria*/
create table tb_categoria(
	idcategoria bigint primary key auto_increment,
	tipo varchar(20) not null,
	descrição varchar(255) not null, 
	ativo boolean not null
);

/*Criação da tabela tb_pizza*/
create table tb_pizza(
	idpizza bigint primary key auto_increment,
	sabor varchar(20) unique not null,
	tamanho enum ('M','G') not null,
	preco float(10,2) not null,
	borda varchar(20) not null,
	massa varchar(20) not null,
	id_categoria bigint,
	foreign key(id_categoria)
	references tb_categoria(idcategoria)
);

/*Inserção de dados na tabela tb_categoria*/
insert into tb_categoria values (null,'Salgada','Massa tradicional',true);
insert into tb_categoria values (null,'Doce','Massa Doce',true);
insert into tb_categoria values (null,'Vegetaria','Massa c/ espinafre',true);
insert into tb_categoria values (null,'Vegana','Massa feito com farinha de castanha',true);
insert into tb_categoria values (null,'Somente massa','Massa com bordas grossas',true);

/*Inserção de dados na tabela tb_pizza*/
insert into tb_pizza values (null,'Calabresa','G',54.00,'Requeijão','fina',1);
insert into tb_pizza values (null,'Chocolate','M',55.00,'Cheddar','fina',2);
insert into tb_pizza values (null,'Brocolis','G',60.00,'Sem borda','fina',3);
insert into tb_pizza values (null,'M&Ms','G',70.00,'Chocolate','grossa',2);
insert into tb_pizza values (null,'Atum','M',80.00,'Cheddar','fina',1);
insert into tb_pizza values (null,'Cogumelos','G',78.00,'Sem borda','fina',4);
insert into tb_pizza values (null,'Margherita','M',50.00,'Cheddar','fina',1);
insert into tb_pizza values (null,'Peixinho','G',54.00,'Creme de amendoa','fina',4);

/*Consultas maior R$ 45.00*/
select idpizza,sabor,tamanho,borda,massa, preco
from tb_pizza
where preco > 45;

/*Consultas entre R$ 29,00 e R$ 60,00*/
select idpizza,sabor,tamanho,borda,massa, preco
from tb_pizza
where preco >= 59
and preco <= 60;

/*Consulta dos produtos com a letra C*/
select idpizza,sabor,tamanho,borda,massa, preco
from tb_pizza 
where sabor like "C%";

/*Junção - tb_pizza e tb_categoria*/
select idpizza,sabor,preco,ativo,tipo,descrição
from tb_pizza
	inner join tb_categoria
	on idcategoria = id_categoria

/*Projeção apenas das pizzas Doces*/
select idpizza,sabor,preco,ativo,tipo,descrição
from tb_pizza
	inner join tb_categoria
	on idcategoria = id_categoria
where tipo = 'Doce';


