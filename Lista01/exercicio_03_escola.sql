create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255) not null,
turma varchar(255) not null,
disciplina varchar(255) not null,
nota float not null,
primary key (id)
);

insert into tb_estudantes(nome, turma, disciplina, nota) values("Pedro Alvez", "25A", "Java", 6.5);
insert into tb_estudantes(nome, turma, disciplina, nota) values("André Luiís", "25A", "Java", 8.0);
insert into tb_estudantes(nome, turma, disciplina, nota) values("Luíza Gonçalves", "25B", "MySQL", 7.0);
insert into tb_estudantes(nome, turma, disciplina, nota) values("Carolina Dias", "25A", "Java", 6.0);
insert into tb_estudantes(nome, turma, disciplina, nota) values("Cecília Santos", "25B", "MySQL", 5.5);
insert into tb_estudantes(nome, turma, disciplina, nota) values("Jonas Silva", "25A", "Java", 7.0);
insert into tb_estudantes(nome, turma, disciplina, nota) values("Paulo Antônio", "25B", "MySQL", 9.5);
insert into tb_estudantes(nome, turma, disciplina, nota) values("Fernanda Cardoso", "25B", "MySQL", 8.0);

select * from tb_estudantes where nota > 7.0;
select * from tb_estudantes where nota < 7.0;

update tb_estudantes set nota = 7.5 where id = 3;

select * from tb_estudantes;