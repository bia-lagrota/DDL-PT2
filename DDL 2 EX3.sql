CREATE DATABASE IF NOT EXISTS db_loja_online;
USE db_loja_online;

CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20)
);

CREATE TABLE produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0
);

CREATE TABLE compra (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    data_compra DATE NOT NULL,
    FOREIGN KEY(id_cliente) REFERENCES cliente(id)
);

CREATE TABLE item_compra (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_compra INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY(id_compra) REFERENCES compra(id),
    FOREIGN KEY(id_produto) REFERENCES produto(id)
);

insert into cliente (nome, email, telefone) values 
('Maria Silva', 'maria@email.com', '(15)11111-1111'),
('Jorge o Construtor', 'jorge@email.com', '(15)22222-2222'),
('Pedro Pedreiro', 'pedro@email.com', '(15)33333-3333'),
('Ana Costa', 'ana@email.com', '(11)44444-4444'),
('Carlos Souza', 'carlos@email.com', '(21)55555-5555'),
('Beatriz Santos', 'beatriz@email.com', '(31)66666-6666'),
('Ricardo Lima', 'ricardo@email.com', '(41)77777-7777'),
('Juliana Prado', 'juliana@email.com', '(19)88888-8888'),
('Lucas Rocha', 'lucas@email.com', '(81)99999-9999'),
('Fernanda Alves', 'fernanda@email.com', '(71)10101-1010');

insert into produto (nome, preco, estoque) values 
('Mouse Gamer', 120.50, 50),
('Teclado Mecânico', 250.49, 100),
('Headset Wireless', 100.50, 50),
('Monitor 24 Polegadas', 850.50, 10),
('Mousepad Grande', 59.90, 200),
('Cadeira Ergonômica', 1200.00, 15),
('Webcam Full HD', 349.99, 40),
('Microfone', 280.00, 30),
('Suporte de Monitor', 150.00, 60),
('Cabo', 35.00, 500);

insert into compra (id_cliente, data_compra) values 
(1, '2026-09-09'),
(2, '2026-09-10'),
(3, '2026-09-11'),
(4, '2026-09-12'),
(5, '2026-09-13'),
(6, '2026-09-14'),
(7, '2026-09-15'),
(8, '2026-09-16'),
(9, '2026-09-17'),
(10, '2026-09-17');

insert into item_compra (id_compra, id_produto, quantidade, valor_unitario) values 
(1, 1, 2, 120.50),
(1, 3, 1, 100.50),
(2, 4, 1, 850.50),
(3, 2, 2, 250.49),
(4, 5, 1, 59.90),
(5, 6, 1, 1200.00),
(6, 7, 2, 349.99),
(7, 8, 1, 280.00),
(8, 9, 1, 150.00),
(9, 10, 3, 35.00),
(10, 1, 1, 120.50),
(10, 2, 1, 250.49);
