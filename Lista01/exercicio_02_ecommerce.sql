create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
categoria varchar(255) not null,
marca varchar(255) not null,
tamanho varchar(255) not null,
preco decimal(6,2) not null,
primary key (id)
);

insert into tb_produtos(categoria, marca, tamanho, preco) values("Camiseta", "Renner", "M", 80.00);
insert into tb_produtos(categoria, marca, tamanho, preco) values("Saia", "Marisa", "GG", 89.90);
insert into tb_produtos(categoria, marca, tamanho, preco) values("Short", "Zara", "38", 169.90);
insert into tb_produtos(categoria, marca, tamanho, preco) values("Sandália", "Schutz", "36", 250.00);
insert into tb_produtos(categoria, marca, tamanho, preco) values("Calça Jeans", "C&A", "42", 139.90);
insert into tb_produtos(categoria, marca, tamanho, preco) values("Relógio", "Cassio", "Tamanho único", 550.00);
insert into tb_produtos(categoria, marca, tamanho, preco) values("Vestido", "Colcci", "38", 690.00);
insert into tb_produtos(categoria, marca, tamanho, preco) values("Bolsa", "Renner", "Tamanho único", 99.90);

select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;

update tb_produtos set tamanho = 40 where id = 3;

select * from tb_produtos;