create database if not exists db_loja_online;

use db_loja_online;

create table cliente(
id int primary key auto_increment,
nome varchar(100) not null,
email varchar(100) unique,
telefone varchar(20)
);

create table produto(
id int primary key auto_increment
nome varchar(100) not null,
preco decimal(10,2) not null,
estoque int default 0 
);

create table compra(
id int primary key auto_increment
id_cliente int not null,
data_compra date not null,
foreign key(id_cliente) references cliente(id)
);

create table item_compra(
id int primary key auto_increment,
id_compra int not null,
id_produto int not null,
valor_unitario decimal(10,2) not null,
foreign key(id_cliente) references compra(id)
foreign key(id_produto) references produto(id)
);

insert into cliente(nome,email,telefone)values
('Maria','maria@email.com','(15)11111-11111'),
('Jorge o Construtor','maria@email.com','(15)222-2221'),
('Pedro Pedreiro','pedro@email.com','(15)1111-1111');

insert into produto(nome,preco,estoque)values
('Mouse Gamer',120.50,50),
('Teclado',250.49,100),
('Headset',100.50,50),
('Monitor 24 Polegadas',850.50,10);

insert into compra(id_cliente, data_compra)values
(1,'2026-09-09'),
(2,'2026-09-10'),
(3,'2026-09-11');

alter table carrinho add column quantidade int not null;
insert into carrinho(id_compra,id_produto,quantidade,valor_unitario)values
(1,1,2,120,50),
(1,3,1,100.50),
(2,4,1,850.50),
(3,2,2,250.49);
