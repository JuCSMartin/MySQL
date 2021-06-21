create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(255) not null,
dieta varchar(255) not null,
primary key (id)
);

create table tb_pizza (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6,2) not null,
ingredientes varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo, dieta) values ("Salgada", "Vegetariana"); 
insert into tb_categoria (tipo, dieta) values ("Salgada", "Vegana"); 
insert into tb_categoria (tipo, dieta) values ("Salgada", "Normal"); 
insert into tb_categoria (tipo, dieta) values ("Doce", "Vegana"); 
insert into tb_categoria (tipo, dieta) values ("Doce", "Normal"); 

select * from tb_categoria;

insert into tb_pizza (nome, preco, ingredientes, categoria_id) values ("Calabresa", 35.00, "Molho de tomate, mussarela, calabresa, cebola e orégano", 3);
insert into tb_pizza (nome, preco, ingredientes, categoria_id) values ("Portuguesa", 30.00, "Molho de tomate, mussarela, presunto, tomate, cebola, pimentão, ovo, azeitona e orégano", 3);
insert into tb_pizza (nome, preco, ingredientes, categoria_id) values ("Marguerita", 28.00, "Molho de tomate, mussarela, tomate, manjericão e orégano", 1);
insert into tb_pizza (nome, preco, ingredientes, categoria_id) values ("Cogumelos", 55.00, "Molho de tomate, creme de mandioca, cogumelos salteados, alho frito, cebola e orégano", 2);
insert into tb_pizza (nome, preco, ingredientes, categoria_id) values ("Alho", 30.00, "Molho de tomate, creme de mandioca, alho frito, azeitona, champignon e orégano", 2);
insert into tb_pizza (nome, preco, ingredientes, categoria_id) values ("Romeu e Julieta", 40.00, "Mussarela, queijo minas e goiabada", 5);
insert into tb_pizza (nome, preco, ingredientes, categoria_id) values ("Coco com morango", 40.00, "Molho de coco vegano, morango, coco ralado e açúcar queimado", 4);
insert into tb_pizza (nome, preco, ingredientes, categoria_id) values ("Banana", 27.00, "Mussarela, banana, açúcar e canela", 5);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;