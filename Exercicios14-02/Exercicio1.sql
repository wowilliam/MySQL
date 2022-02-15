create database db_game_online;

use db_game_online;
create table tb_classe(
	id bigint auto_increment,
    tipo varchar (255) not null,
    armadura varchar (255),
    especial varchar (255),
    primary key (id)
);

create table tb_personagem(
	id bigint auto_increment,
    nome varchar (255) not null,
    lado varchar (255) not null,
    raca varchar (255) not null,
    ataque int,
    defesa int,
    classe_id bigint,
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

insert into tb_classe (tipo, armadura, especial) values ("Druida", "Couro", "Feral");
insert into tb_classe (tipo, armadura, especial) values ("Mago", "Tecido", "Arcano");
insert into tb_classe (tipo, armadura, especial) values ("Cavaleiro da Morte", "Placas", "Profano");
insert into tb_classe (tipo, armadura, especial) values ("Paladino", "Placas", "Retribuição");
insert into tb_classe (tipo, armadura, especial) values ("Xamã", "Malha", "Aperfeiçoamento");

insert into tb_personagem (nome, lado, raca, ataque, defesa, classe_id) 
values ("Grijahr", "Horda", "Goblin", 2300, 1800, 2);
insert into tb_personagem (nome, lado, raca, ataque, defesa, classe_id)
values ("Auguinare", "Aliança", "Draenei", 2000, 2900, 4);
insert into tb_personagem (nome, lado, raca, ataque, defesa, classe_id)
values ("Skolmold", "Aliança", "Elfo Noturno", 4000, 2500, 3);
insert into tb_personagem (nome, lado, raca, ataque, defesa, classe_id)
values ("Saria", "Horda", "Elfo Sangrento", 1900, 3100, 2);
insert into tb_personagem (nome, lado, raca, ataque, defesa, classe_id)
values ("Goldriver", "Aliança", "Worgen", 2700, 2500, 1);
insert into tb_personagem (nome, lado, raca, ataque, defesa, classe_id)
values ("Gwo", "Aliança", "Pandaren", 3400, 3700, 5);
insert into tb_personagem (nome, lado, raca, ataque, defesa, classe_id) 
values ("Kiog", "Horda", "Pandaren", 3400, 3700, 2);
insert into tb_personagem (nome, lado, raca, ataque, defesa, classe_id)
values ("Corbonius", "Horda", "Orc", 2700, 2900, 3);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%c%";
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.tipo like "%Mago%";