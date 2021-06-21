create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
origem varchar(255) not null,
ativo boolean not null,
primary key (id)
);

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (origem, ativo) values ("Nordeste", true); 
insert into tb_categoria (origem, ativo) values ("Norte", true); 
insert into tb_categoria (origem, ativo) values ("Sudeste", true); 
insert into tb_categoria (origem, ativo) values ("Centro-oeste", false); 
insert into tb_categoria (origem, ativo) values ("Sul", false); 

insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Manga", 5.00, 6, "2021-06-25", 1);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Pera", 8.00, 10, "2021-06-30", 3);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Uva", 10.00, 0, "2021-06-21", 5);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Abacaxi", 4.00, 2, "2021-07-02", 1);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Morango", 15.00, 6, "2021-07-03", 3);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Goiaba", 5.00, 6, "2021-06-23", 2);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Banana", 2.00, 6, "2021-06-26", 1);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Acerola", 7.00, 0, "2021-06-21", 5);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;