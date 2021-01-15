create database Livraria;

	use Livraria;

	create table livros(

		id bigint(5) primary key auto_increment,
		nome_do_livro varchar (100) not null,
		nome_do_auto varchar(50) not null,
		sexo_do_autor varchar(10) not null,
		numero_pagina bigint not null,
		nome_editora varchar(30) not null,
		valor_livro float(10,2) not null,
		estado_editora char(2) not null,
		ano_publicacao bigint not null		
		);

insert into livros(id,nome_do_livro,nome_do_auto,sexo_do_autor,numero_pagina,nome_editora,valor_livro,estado_editora,ano_publicacao) 
	values (null,'Cavaleiro Real','Ana Claudia','Feminino',465,'Atlas',49.9,'RJ',2009);

insert into livros(id,nome_do_livro,nome_do_auto,sexo_do_autor,numero_pagina,nome_editora,valor_livro,estado_editora,ano_publicacao) 
	values (null,'SQL para leigos','João Nunes','Masculino',450,'Addison',98,'SP',2018);

insert into livros(id,nome_do_livro,nome_do_auto,sexo_do_autor,numero_pagina,nome_editora,valor_livro,estado_editora,ano_publicacao) 
	values (null,'Receitas Caseiras','Celia Tavares','Feminino',210,'Atlas',45,'RJ',2008);

insert into livros(id,nome_do_livro,nome_do_auto,sexo_do_autor,numero_pagina,nome_editora,valor_livro,estado_editora,ano_publicacao) 
	values (null,'Pessoas Efetivas','Eduardo Santos','Masculino',390,'Beta',78.99,'RJ',2018);

insert into livros(id,nome_do_livro,nome_do_auto,sexo_do_autor,numero_pagina,nome_editora,valor_livro,estado_editora,ano_publicacao) 
	values(null,'Habitos Saudáveis','Eduardo Santos','Masculino',630,'Beta',150.98,'RJ',2019);

insert into livros(id,nome_do_livro,nome_do_auto,sexo_do_autor,numero_pagina,nome_editora,valor_livro,estado_editora,ano_publicacao) 
	values(null,'A Casa Marrom','Hermes Macedo','Masculino',250,'Bubba',60,'MG',2016);

insert into livros(id,nome_do_livro,nome_do_auto,sexo_do_autor,numero_pagina,nome_editora,valor_livro,estado_editora,ano_publicacao) 
	values(null,'Estacio Querido','Geraldo Francisco','Masculino',310,'Insignia',100,'ES',2015);

insert into livros(id,nome_do_livro,nome_do_auto,sexo_do_autor,numero_pagina,nome_editora,valor_livro,estado_editora,ano_publicacao) 
	values(null,'Pra sempre amigas','Leda Silva','Feminino',510,'Insignia',78.98,'ES',2011);

insert into livros(id,nome_do_livro,nome_do_auto,sexo_do_autor,numero_pagina,nome_editora,valor_livro,estado_editora,ano_publicacao) 
	values(null,'Copas Inesqueciveis','Marco Alcantara','Masculino',200,'Larson',130.98,'RS',2018);

insert into livros(id,nome_do_livro,nome_do_auto,sexo_do_autor,numero_pagina,nome_editora,valor_livro,estado_editora,ano_publicacao) 
	values(null,'O poder da mente','Clara Mafra','Feminino',120,'Continental',56.58,'SP',2017);

select * from livros;

select nome_do_livro,nome_editora from livros;
select nome_do_livro,estado_editora from livros;
select nome_do_livro,numero_pagina from livros;

select valor_livro 
from livros 
where estado_editora = 'SP';

