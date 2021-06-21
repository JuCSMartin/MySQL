create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(255) not null,
publico varchar(255) not null,
primary key (id)
);

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo, publico) values ("Comprimido", "Adulto"); 
insert into tb_categoria (tipo, publico) values ("Comprimido", "Infantil"); 
insert into tb_categoria (tipo, publico) values ("Xarope", "Infantil"); 
insert into tb_categoria (tipo, publico) values ("Pomada", "Adulto"); 
insert into tb_categoria (tipo, publico) values ("Pomada", "Infantil"); 

select * from tb_categoria;

insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Bepantol", 40.00, 15, "2022-11-08", 4);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Bepantol Baby", 60.00, 10, "2022-12-10", 5);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Vick Kids", 55.00, 10, "2022-08-05", 3);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Ibuprofeno", 18.90, 10, "2022-07-08", 1);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("AAS Infant", 15.00, 8, "2021-12-20", 2);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Suplemento Lavitan", 65.00, 5, "2023-01-10", 2);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Naproxeno", 20.00, 10, "2023-02-15", 1);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Babymed", 10.90, 6, "2022-07-23", 5);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%b%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 1;