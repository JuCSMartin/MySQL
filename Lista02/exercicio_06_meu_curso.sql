create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
disciplina varchar(255),
vagas int,
primary key (id)
);

create table tb_cursos (
id bigint auto_increment,
nome varchar(255),
nivel varchar(255),
preco decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (disciplina, vagas) values ("Metodologias Ágeis", 50); 
insert into tb_categoria (disciplina, vagas) values ("Introdução a Programação", 100); 
insert into tb_categoria (disciplina, vagas) values ("User Experience", 60); 
insert into tb_categoria (disciplina, vagas) values ("User Interface", 30); 
insert into tb_categoria (disciplina, vagas) values ("Front-End", 100); 

select * from tb_categoria;

insert into tb_cursos (nome, nivel, preco, categoria_id) values ("Scrum", "Básico", 40.00, 1);
insert into tb_cursos (nome, nivel, preco, categoria_id) values ("Kanban", "Básico", 40.00, 1);
insert into tb_cursos (nome, nivel, preco, categoria_id) values ("JavaScript", "Básico", 50.00, 2);
insert into tb_cursos (nome, nivel, preco, categoria_id) values ("Java", "Básico", 50.00, 2);
insert into tb_cursos (nome, nivel, preco, categoria_id) values ("Aperfeiçoando a Experiência do Usuário", "Avançado", 120.00, 3);
insert into tb_cursos (nome, nivel, preco, categoria_id) values ("Figma e Adobe XD", "Avançado", 200.00, 4);
insert into tb_cursos (nome, nivel, preco, categoria_id) values ("HTML/CSS", "Básico", 60.00, 5);
insert into tb_cursos (nome, nivel, preco, categoria_id) values ("Sass", "Intermediário", 50.00, 5);

select * from tb_cursos;

select * from tb_cursos where preco > 50.00;

select * from tb_cursos where preco between 3.00 and 60.00;

select * from tb_cursos where nome like "%j%";

select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id;

select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id where tb_categoria.id = 1;