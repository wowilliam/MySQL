create database db_escola;


use db_escola;

create table alunos(
	id bigint auto_increment,
    nome varchar(30) not null,
    matricula bigint(11),
    nota bigint not null,
    endereco varchar(200) ,
    telefone bigint (20) ,
    primary key (id)
);



insert into alunos(nome, matricula, nota, endereco, telefone) values ("Patricia", 2001, 10, "Rua A, nº1", 911999111);
insert into alunos(nome, matricula, nota, endereco, telefone) values ("Elena", 2002, 9, "Rua B, nº2", 92226772222);
insert into alunos(nome, matricula, nota, endereco, telefone) values ("Pedro", 2003, 6, "Rua B, nº6", 955444555);
insert into alunos(nome, matricula, nota, endereco, telefone) values ("Kelen", 2004, 10, "Rua A, nº3", 933123333);
insert into alunos(nome, matricula, nota, endereco, telefone) values ("Bernardo", 2005, 10, "Rua D, nº1", 919872222);
insert into alunos(nome, matricula, nota, endereco, telefone) values ("Caique", 2006, 7, "Rua V, nº1", 912865222);
insert into alunos(nome, matricula, nota, endereco, telefone) values ("Gustavo", 2007, 3, "Rua L, nº1", 95033858);
insert into alunos(nome, matricula, nota, endereco, telefone) values ("Igor", 2008, 2, "Rua O, nº1", 94567545);

select * from alunos where nota > 7;

select * from alunos where nota < 7;


update alunos set nome= "Pedro A" where id=3