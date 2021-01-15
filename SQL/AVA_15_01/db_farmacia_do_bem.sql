create database db_farmacia_do_bem;

USE db_farmacia_do_bem;

/*Criação da tabela tb_categoria*/
create table tb_categoria(
	idcategoria bigint primary key auto_increment,
	tipo varchar(100) not null,
	descrição varchar(255) not null, 
	ativo boolean not null
);

/*Criação da tabela tb_produto */
create table tb_produto (
	idproduto bigint primary key auto_increment,
	Nome_produto varchar(100) unique not null,
	Fabricante varchar (30) not null,
	Preco float(10,2) not null,
	Generico enum ('S','N') not null,
	Refencia bigint(10) not null,
	id_categoria bigint,
	foreign key(id_categoria)
	references tb_categoria(idcategoria)
);

/*Inserção de dados na tabela tb_categoria*/
insert into tb_categoria values (null,'Medicamentos','Venda sem prescrição médica',true);
insert into tb_categoria values (null,'Medicamentos Especiais','Venda sob prescrição médica',true);
insert into tb_categoria values (null,'Dermocosméticos','Venda sem prescrição médica',true);
insert into tb_categoria values (null,'Cuidados Pessoais e Beleza','Venda sem prescrição médica',true);
insert into tb_categoria values (null,'Fitness','Venda sem prescrição médica',true);


/*Inserção de dados na tabela tb_pizza*/
insert into tb_produto values (null,'Fluconazol 150mg','CIMED',3.40,'S',50820,2);
insert into tb_produto values (null,'Buscopan 10mg','Boehringer Ingelheim',12.50,'S',455,1);
insert into tb_produto values (null,'Hyalu B5 Repair Serum Anti-Idade 30ml','La Roche Posay',199.90,'N',51365,3);
insert into tb_produto values (null,'Desodorante Dove Original Aer 89g','Dove',15.49,'N',49307,4);
insert into tb_produto values (null,'Engov After Tangerina 250ml','Neo Quimica',8.99,'N',55485,1);
insert into tb_produto values (null,'Acnase Clean Anti-Acneico 90g','BioLab',15.00,'N',55341,3);
insert into tb_produto values (null,'Adcos Ultra Nitrição Labial 3,5g','Above',120.14,'N',55455,4);
insert into tb_produto values (null,'MIND 10MG','Midway',60.76,'N',47512,2);


/*Consultas maior R$ 50.00*/
select idproduto,Nome_produto,Refencia,preco
from tb_produto
where preco > 50;

/*Consultas entre R$ 3,00 e R$ 60,00*/
select idproduto,Nome_produto,Fabricante,Refencia,preco
from tb_produto
where preco >= 3
and preco <= 60;

/*Consulta dos produtos com a letra B*/
select  idproduto,Nome_produto,preco
from tb_produto
where Nome_produto like "B%";

/*Junção - tb_produto e tb_categoria*/
select idproduto,Nome_produto,preco,tipo,descrição,ativo
from tb_produto
	inner join tb_categoria
	on idcategoria = id_categoria;

/*Projeção apenas de dermocosméticos*/
select idproduto,Nome_produto,preco,tipo,descrição,ativo
from tb_produto
	inner join tb_categoria
	on idcategoria = id_categoria
where tipo = 'Dermocosméticos';


