create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;
create table tb_categoria(
	id bigint auto_increment,
    java boolean not null,
    git_github boolean not null,
    scrum boolean not null,
    primary key (id)
);

create table tb_curso (
	id bigint  auto_increment,
    nome varchar (255) not null,
    valor decimal (8,2) not null,
    quantidade_aulas int (10) not null,
    tempo varchar (255) not null,
    nivel varchar (255) not null,
    categoria_id bigint not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (java, git_github, scrum) values (true,true,true);
insert into tb_categoria (java, git_github, scrum) values (true,false,false);
insert into tb_categoria (java, git_github, scrum) values (true,true,false);
insert into tb_categoria (java, git_github, scrum) values (false,false,true);
insert into tb_categoria (java, git_github, scrum) values (false,true,false);

insert into tb_curso (nome, valor, quantidade_aulas, tempo, nivel, categoria_id)
 values ("Basic Java, Git e Scrum", 289.99,20,"40h","Básico", 1);
insert into tb_curso (nome, valor, quantidade_aulas, tempo, nivel, categoria_id)
 values ("Basic Java", 179.18,18,"30h","Básico", 2);
insert into tb_curso (nome, valor, quantidade_aulas, tempo, nivel, categoria_id)
 values ("Introdução Java e Git", 259.99,22,"45h","Básico", 3);
insert into tb_curso (nome, valor, quantidade_aulas, tempo, nivel, categoria_id)
 values ("Introdução a Scrum", 489.99,48,"80h","Básico", 4);
insert into tb_curso (nome, valor, quantidade_aulas, tempo, nivel, categoria_id)
 values ("Tudo Que Um Scrum Master Deve Saber", 1399.99,20,"40h","Avançado", 4);
insert into tb_curso (nome, valor, quantidade_aulas, tempo, nivel, categoria_id) 
values ("Introdução Git e GitHub ", 89.99,9,"8h","Básico", 5);
insert into tb_curso (nome, valor, quantidade_aulas, tempo, nivel, categoria_id)
 values ("Comandos Avançados de Git e GitHub", 389.99,16,"58h","Intermediário", 5);
insert into tb_curso (nome, valor, quantidade_aulas, tempo, nivel, categoria_id)
 values ("Full Stack Java", 589.99,80,"160h","Avançado", 2);

select * from tb_curso where valor > 50;
select * from tb_curso where valor between 3 and 60;
select * from tb_curso where nome like "%j%";
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_curso.nivel like "Avançado";