-- Criando Banco de Dados Comex
create database comex;


-- Criando Tabelas
use comex;

create table categoria (
    id bigint auto_increment PRIMARY KEY,
    nome varchar(100)
);

create table produto (
    id bigint auto_increment PRIMARY KEY,
    nome varchar(255),
    preco decimal(10,2),
    categoria_id bigint,
    FOREIGN KEY (categoria_id) references categoria(id)
);

create table cliente (
    id bigint auto increment PRIMARY KEY,
    nome varchar(255)
);

create table pedido (
    id bigint auto increment PRIMARY KEY,
    data datetime,
    cliente_id bigint,
    FOREIGN KEY (cliente_id) references cliente(id)
):

create table item_pedido (
    id bigint auto increment PRIMARY KEY,
    pedido_id bigint,
    produto_id bigint,
    FOREIGN KEY pedido_id references pedido(id),
    FOREIGN KEY produto_id references produto(id),
    preco_unitario decimal(10.2),
    quantidade integer
);
