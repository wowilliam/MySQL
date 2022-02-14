create database db_ecommerce;

use db_ecommerce;

create table produtos(
	id bigint auto_increment,
    nome varchar(30) not null,
    categoria varchar(30) not null,
    preco decimal(10,2),
    primary key (id)
);


use db_ecommerce;

insert into produtos(nome, categoria, preco) values ("Controle", "Eletrônicos", 50.00);
insert into produtos(nome, categoria, preco) values ("TV", "Eletrônicos", 3000.00);
insert into produtos(nome, categoria, preco) values ("Celular", "Eletrônicos", 800.00);
insert into produtos(nome, categoria, preco) values ("Rádio", "Eletrônicos", 250.00);
insert into produtos(nome, categoria, preco) values ("Geladeira", "Eletrodométicos", 5000.00);
insert into produtos(nome, categoria, preco) values ("Fogão", "Eletrodométicos", 950.00);
insert into produtos(nome, categoria, preco) values ("Micro-ondas", "Eletrônicos", 2000.00);
insert into produtos(nome, categoria, preco) values ("Guarda-roupas", "Móveis", 1999.00);


 
select * from produtos where preco > 500;

select * from produtos where preco < 500;


update produtos set categoria = "Mesa " where id = 4