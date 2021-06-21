create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
departamento varchar(255) not null,
disponivel boolean not null,
primary key (id)
);

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255),
preco decimal(6,2) not null,
qtproduto int not null,
categoria_id bigint, 
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (departamento, disponivel) values ("Jardinagem", true); 
insert into tb_categoria (departamento, disponivel) values ("Pisos", true); 
insert into tb_categoria (departamento, disponivel) values ("Elétrica", false); 
insert into tb_categoria (departamento, disponivel) values ("Banheiro", true); 
insert into tb_categoria (departamento, disponivel) values ("Iluminação", false); 

select * from tb_categoria;

insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Vaso Botanic", "Vaso de barro", 45.00, 30, 1);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Azulejo Amall", "Azulejo jateado amarelo", 8.99, 100, 2);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Porcelanato Marble", "Porcelanato de mármore bege", 60.00, 300, 2);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Cabo Phonic", "Cabe de energia 200v", 70.00, 10, 3);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Torneira Mix", "Torneira múltiplas funções de metal", 65.00, 20, 4);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Ducha Plus", "Chuveiro superior aquecido elétrico", 89.00, 40, 4);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Luminária Chic", "Luminária estampada com lâmpada de filamento", 150.00, 5, 5);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Brilhant", "Lâmpada econômica de Led", 9.00, 60, 5);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 4;