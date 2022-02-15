create database db_cidade_das_carnes;

use db_cidade_das_carnes;
create table tb_categoria(
	id bigint auto_increment,
    ave boolean not null,
    suino boolean not null,
    bovino boolean not null,
    primary key (id)
);

create table tb_produto (
	id bigint  auto_increment,
    nome varchar (255) not null,
    valor decimal (8,2) not null,
    tipo varchar (255) not null,
    peso decimal (8,2) not null,
    osso boolean,
    categoria_id bigint not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (ave, suino, bovino) values (true,false,false);
insert into tb_categoria (ave, suino, bovino) values (false,true,false);
insert into tb_categoria (ave, suino, bovino) values (false,false,true);
insert into tb_categoria (ave, suino, bovino) values (false,true,true);
insert into tb_categoria (ave, suino, bovino) values (false,false,false);

insert into tb_produto (nome, valor, tipo, peso, osso, categoria_id)
values ("Cupim", 46.45,"Primeira", 1.0, false, 2);
insert into tb_produto (nome, valor, tipo, peso, osso, categoria_id)
values ("Frango inteiro", 22.65,"--", 2.0, true, 1);
insert into tb_produto (nome, valor, tipo, peso, osso, categoria_id)
values ("Barriga suina", 20.00,"Segunda", 1.5, false, 3);
insert into tb_produto (nome, valor, tipo, peso, osso, categoria_id)
values ("Sal do Himalaia", 25.55,"Tempero", 0.110, false, 5);
insert into tb_produto (nome, valor, tipo, peso, osso, categoria_id)
values ("Paio", 12.89,"Primeira", 0.400, false, 4);
insert into tb_produto (nome, valor, tipo, peso, osso, categoria_id) 
values ("Musculo bovino", 8.99,"Segunda", 0.5, false, 2);

select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.ave = true;