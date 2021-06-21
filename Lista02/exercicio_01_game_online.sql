create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
tipo varchar(255) not null,
mundo varchar(255) not null,
objetivo varchar(255) not null,
primary key (id)
);

insert into tb_classe (tipo, mundo, objetivo) values ("Fada", "Castilla", "Brilhar");
insert into tb_classe (tipo, mundo, objetivo) values ("Feiticeira", "Leon", "Encantar");
insert into tb_classe (tipo, mundo, objetivo) values ("Lutadora", "Telps", "Ganhar");
insert into tb_classe (tipo, mundo, objetivo) values ("Ogra", "Hovan", "Assustar");
insert into tb_classe (tipo, mundo, objetivo) values ("Trouxa", "Planta", "Sobreviver");

select * from tb_classe;

create table tb_personagem (
id bigint auto_increment,
nome varchar(255) not null,
ataque int not null,
defesa int not null,
graciosidade varchar(255) not null,
encantamento boolean not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, graciosidade, encantamento, classe_id) values ("Lilith", 850, 600, "Alta", true, 1);
insert into tb_personagem (nome, ataque, defesa, graciosidade, encantamento, classe_id) values ("Alanca", 1200, 1500, "Alta", true, 2);
insert into tb_personagem (nome, ataque, defesa, graciosidade, encantamento, classe_id) values ("Angla", 1800, 2000, "Médio", true, 3);
insert into tb_personagem (nome, ataque, defesa, graciosidade, encantamento, classe_id) values ("Plics", 2100, 1800, "Baixo", false, 4);
insert into tb_personagem (nome, ataque, defesa, graciosidade, encantamento, classe_id) values ("Nana", 600, 500, "Médio", false, 5);
insert into tb_personagem (nome, ataque, defesa, graciosidade, encantamento, classe_id) values ("Jenny", 650, 500, "Médio", false, 5);
insert into tb_personagem (nome, ataque, defesa, graciosidade, encantamento, classe_id) values ("Loubi", 1200, 1600, "Alta", true, 2);
insert into tb_personagem (nome, ataque, defesa, graciosidade, encantamento, classe_id) values ("Zaya", 1750, 1850, "Médio", true, 3);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 2;