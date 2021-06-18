create database db_recursoshumanos;

use db_recursoshumanos;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
data_nascimento date not null,
cpf bigint not null,
salario decimal(6,2) not null,
primary key (id)
);

insert into tb_funcionarios(nome, data_nascimento, cpf, salario) values("Ana", "1992-02-15", 03434456543, 2500.00);
insert into tb_funcionarios(nome, data_nascimento, cpf, salario) values("Laura", "1998-03-03", 04567898765, 1500.00);
insert into tb_funcionarios(nome, data_nascimento, cpf, salario) values("Pedro", "1992-12-24", 12345678905, 3500.00);
insert into tb_funcionarios(nome, data_nascimento, cpf, salario) values("Antônio", "2000-08-05", 02345643567, 3000.00);
insert into tb_funcionarios(nome, data_nascimento, cpf, salario) values("Cristina", "2007-05-25", 0876576543, 3200.00);

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 1700.00 where id = 1;

select * from tb_funcionarios;