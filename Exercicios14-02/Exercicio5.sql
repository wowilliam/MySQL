
create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;
create table tb_categoria(
	id bigint auto_increment,
    ferramenta boolean not null,
    banheiro boolean not null,
    cozinha boolean not null,
    primary key (id)
);

create table tb_produto (
	id bigint auto_increment,
    nome varchar (255) not null,
    valor decimal (8,2) not null,
    quantidade int (10) not null,
    peso decimal (8,3) not null,
    material varchar (255) not null,
    categoria_id bigint not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (ferramenta, banheiro, cozinha) values (true,false,false);
insert into tb_categoria (ferramenta, banheiro, cozinha) values (false,true,false); 
insert into tb_categoria (ferramenta, banheiro, cozinha) values (false,false,true);
insert into tb_categoria (ferramenta, banheiro, cozinha) values (false,true,true);
insert into tb_categoria (ferramenta, banheiro, cozinha) values (false,false,false);

insert into tb_produto (nome, valor, quantidade, peso, material, categoria_id) 
values ("Vaso Sanitário", 326.99,1,25.610, "Porcelana", 2);
insert into tb_produto (nome, valor, quantidade, peso, material, categoria_id)
values ("Fita Isolante", 11.99,33,0.065, "PVC", 5);
insert into tb_produto (nome, valor, quantidade, peso, material, categoria_id) 
values ("Martelo", 69.99,2,0.864, "Aço", 1);
insert into tb_produto (nome, valor, quantidade, peso, material, categoria_id)
values ("Coifa", 2789.90,1,14.1, "Aço Inox", 3);
insert into tb_produto (nome, valor, quantidade, peso, material, categoria_id)
values ("Alicate", 44.99,1,0.160, "Aço", 1);

select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.ferramenta = true;