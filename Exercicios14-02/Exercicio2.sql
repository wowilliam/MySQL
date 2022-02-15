create database db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_categoria(
	id bigint auto_increment,
    vegana boolean not null,
    borda boolean not null,
    doce boolean not null,
    primary key (id)
);

create table tb_pizza(
	id bigint auto_increment,
    nome varchar (255) not null,
    valor decimal (8,2) not null,
    entrega boolean not null,
    endereco_entrega varchar (255) not null,
    valor_entrega decimal (8,2) not null,
    categoria_id bigint not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (vegana, borda, doce) values (true,true,true);
insert into tb_categoria (vegana, borda, doce) values (true,true,false);
insert into tb_categoria (vegana, borda, doce) values (true,false,false);
insert into tb_categoria (vegana, borda, doce) values (true,false,true);
insert into tb_categoria (vegana, borda, doce) values (false,true,false);

insert into tb_pizza (nome, valor, entrega, endereco_entrega, valor_entrega, categoria_id) 
values ("Estupenda", 42.99, true, "Rua das Andora, 934", 18.53, 2);
insert into tb_pizza (nome, valor, entrega, endereco_entrega, valor_entrega, categoria_id) 
values ("ChocoCream", 51.89, false, "--", 0, 1);
insert into tb_pizza (nome, valor, entrega, endereco_entrega, valor_entrega, categoria_id)
 values ("Suprema", 42.99, true, "Rua das Salinas, 84", 16.24, 3);
insert into tb_pizza (nome, valor, entrega, endereco_entrega, valor_entrega, categoria_id) 
values ("VegLove", 51.89, true, "Rua do Estado, 658", 8.12, 4);
insert into tb_pizza (nome, valor, entrega, endereco_entrega, valor_entrega, categoria_id)
 values ("Napolitana", 42.99, true, "Rua Itali, 7896", 25.64, 3);
insert into tb_pizza (nome, valor, entrega, endereco_entrega, valor_entrega, categoria_id)
 values ("Gratinatta", 45.39, false, "--", 0, 5);


select * from tb_pizza where valor > 45;
select * from tb_pizza where valor between 29 and 60;
select * from tb_pizza where nome like "%c%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.doce = true;