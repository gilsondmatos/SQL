/*cria o banco de dados*/
create database db_cidade_das_carnes;
 
/*acessa o banco de dados*/
use db_cidade_das_carnes;
​
/*cria a tabela*/
create table tb_categoria(
	idcategoria bigint primary key auto_increment,
	descricao varchar(255) not null,
	ativo boolean not null
);

/*cria a tabela*/
create table tb_produtos (
	idprodutos bigint primary key auto_increment,
	nome varchar (255) not null,
	preco float(10,2) not null,
	qtProduto int not null,
	id_categoria bigint,
FOREIGN KEY (id_categoria) 
REFERENCES tb_categoria(idcategoria)
);
​
/*Insere dados na tabela - (descricao, ativo)*/
insert into tb_categoria values (null,'Bovino',true);
insert into tb_categoria values (null,'Suino',true);
insert into tb_categoria values (null,'Aves',true);
insert into tb_categoria values (null,'pertence feijoada',true);
insert into tb_categoria values (null,'imbutidos',true);
insert into tb_categoria values (null,'outros',true);
​​
/*Insere dados na tabela (nome, preco, qtProduto, categoria_id)*/
insert into tb_produtos values (null,'ASA',55.00,5,3);
insert into tb_produtos values (null,'Picanha',45.00,3,1);
insert into tb_produtos values (null,'coxa de frango',30.00,10,3);
insert into tb_produtos values (null,'Bacon',74.00,12,1);
insert into tb_produtos values (null,'hamburguer',14.00,25,5);
insert into tb_produtos values (null,'Cupim',12.00,4,1);
insert into tb_produtos values (null,'Peito de frango',11.99,5,3);
insert into tb_produtos values (null,'Orelha de porco',5.99,7,4);
insert into tb_produtos values (null,'Salame',14.50,9,5);
insert into tb_produtos values (null,'medalhao',35.00,14,1);
insert into tb_produtos values (null,'mocoto',45.00,15,1);
insert into tb_produtos values (null,'chuleta',61.00,15,1);
insert into tb_produtos values (null,'acendedor de churrasqueira',15.00,62,6);
​
​
/*Consultas maior R$ 50.00*/
select idprodutos,nome,qtProduto,preco
from tb_produtos
where preco > 50;

/*Consultas entre R$ 3,00 e R$ 60,00*/
select idprodutos,nome,qtProduto,preco
from tb_produtos
where preco >= 3
and preco <= 60;

/*Consulta dos produtos com a letra C*/
select  idprodutos,nome,qtProduto,preco
from tb_produtos
where nome like 'C%';

/*Junção - tb_produtos e tb_categoria*/
select idprodutos,nome,qtProduto,preco,descricao,ativo
from tb_produtos
	inner join tb_categoria
	on idcategoria = id_categoria;

/*Projeção apenas de Carnes Bovinas*/
select idprodutos,nome,qtProduto,preco,descricao,ativo
from tb_produtos
	inner join tb_categoria
	on idcategoria = id_categoria
where descricao = 'Bovino';
​
