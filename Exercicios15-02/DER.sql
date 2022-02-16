-- create database db_blogPessoal;
-- use db_blogPessoal;

create table tb_temas (
	id bigint auto_increment,
    descricao varchar(255) not null,
    
    primary key(id)
);

create table tb_usuarios (
	id bigint auto_increment,
    nome varchar(255) not null,
    usuario varchar(255) not null,
    senha varchar(255) not null,
    foto varchar(255) not null,
    
    primary key(id)
);

create table tb_postagens (
	id bigint auto_increment,
    titulo varchar(255) not null,
    texto varchar(255) not null,
    `data` date not null,
    tema_id bigint,
    usuario_id bigint,
    
    primary key(id),
    foreign key(tema_id) references tb_temas(id),
    foreign key(usuario_id) references tb_usuarios(id)
);