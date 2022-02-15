create database db_farmacia_do_bem;

use db_farmacia_do_bem;
create table tb_categoria(
	id bigint auto_increment,
    receita boolean not null,
    higiene boolean not null,
    cosmetico boolean not null,
    primary key (id)
);

create table tb_produto (
	id bigint  auto_increment,
    nome varchar (255) not null,
    valor decimal (8,2) not null,
    tipo varchar (255) not null,
    quantidade varchar (255) not null,
    interno_externo varchar (255) not null,
    categoria_id bigint not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (receita, higiene, cosmetico) values (false,false,false);
insert into tb_categoria (receita, higiene, cosmetico) values (true,false,false);
insert into tb_categoria (receita, higiene, cosmetico) values (false,false,true);
insert into tb_categoria (receita, higiene, cosmetico) values (false,true,true);
insert into tb_categoria (receita, higiene, cosmetico) values (false,true,false);

insert into tb_produto (nome, valor, tipo, quantidade, interno_externo, categoria_id)
values ("Fumarato de Quetiapina", 32.37,"Comprimido", "25mg, 30 comprimidos", "Interno", 2);
insert into tb_produto (nome, valor, tipo, quantidade, interno_externo, categoria_id)
values ("Inalador", 279.89,"Aparelho doméstico", "6 peças", "Externo", 1);
insert into tb_produto (nome, valor, tipo, quantidade, interno_externo, categoria_id) 
values ("Yamasterol Less Poo", 32.30,"Shampoo", "900ml", "Externo", 4);
insert into tb_produto (nome, valor, tipo, quantidade, interno_externo, categoria_id)
values ("Vitacid", 27.09,"Ácido - Gel", "0,25mg/g, 25g", "Externo", 3);
insert into tb_produto (nome, valor, tipo, quantidade, interno_externo, categoria_id)
values ("Sun Fresh", 60.27,"Protetor solar", "40g", "Externo", 3);
insert into tb_produto (nome, valor, tipo, quantidade, interno_externo, categoria_id) 
values ("Monitor de pressão ", 119.00,"Aparelho doméstico", "1 peça", "Externo", 1);

select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "%b%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.cosmetico = true;