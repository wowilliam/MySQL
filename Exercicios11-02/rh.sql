create database db_rh;

use db_rh;
create table Funcionarios(
id bigint auto_increment,
nome varchar(200),
cargo varchar(20),
telefone bigint(11),
salario decimal(8,2),
primary key (id)
);

insert into Funcionarios(nome, telefone, cargo, salario) values ("Marco", "Gerente", 944435445, 5500.00);
insert into Funcionarios(nome, cargo, telefone, salario) values ("william", "Desenvolvedor Java", 912983121, 4500.00);
insert into Funcionarios(nome, cargo, telefone, salario) values ("Bruno", "Estagiário TI", 989894312, 1500.00);
insert into Funcionarios(nome, cargo, telefone, salario) values ("Dárcio", "Gerente de Projetos", 914203514, 8500.00);
insert into Funcionarios(nome, cargo, telefone, salario) values ("Rogério", "Estagiário Marketing", 956546756, 1500.00);

select * from Funcionarios where salario > 2000;

select * from Funcionarios where salario < 2000;

update funcionarios set nome = "will" where id = 3;
