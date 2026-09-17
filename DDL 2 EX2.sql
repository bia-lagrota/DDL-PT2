CREATE DATABASE DB_PURCHASES;

USE DB_PURCHASES;

CREATE TABLE CUSTOMERS (
    ID INT NOT NULL,
    NAME VARCHAR(100) NOT NULL,
    TELEPHONE VARCHAR(20),
    ADDRESS VARCHAR(200),
    CONSTRAINT PK_CUSTOMERS PRIMARY KEY (ID)
);

CREATE TABLE PRODUCTS (
    ID INT NOT NULL,
    PRODUCT_NAME VARCHAR(100) NOT NULL,
    TYPE VARCHAR(50) NOT NULL,
    PRICE DECIMAL(10,2) NOT NULL,
    QUANTITY_IN_STOCK INT NOT NULL,
    CONSTRAINT PK_PRODUCTS PRIMARY KEY (ID)
);

CREATE TABLE PURCHASES (
    ID INT NOT NULL,
    CUSTOMER_ID INT NOT NULL,
    PURCHASE_DATE DATETIME NOT NULL,
    TOTAL_VALUE DECIMAL(10,2) NOT NULL,
    CONSTRAINT PK_PURCHASES PRIMARY KEY (ID),
    CONSTRAINT FK_PURCHASES_CUSTOMERS
        FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(ID)
);

CREATE TABLE PURCHASE_ITEMS (
    ID INT NOT NULL,
    PURCHASE_ID INT NOT NULL,
    PRODUCT_ID INT NOT NULL,
    QUANTITY INT NOT NULL,
    CONSTRAINT PK_PURCHASE_ITEMS PRIMARY KEY (ID),
    CONSTRAINT FK_PURCHASE_ITEMS_PURCHASES
        FOREIGN KEY (PURCHASE_ID) REFERENCES PURCHASES(ID),
    CONSTRAINT FK_PURCHASE_ITEMS_PRODUCTS
        FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(ID)
);

 insert into cutomers (id, nome, telefone, endereco) values 
 ('1','Livia','(11) 23462-23754', 'Rua Av.Campos'),
 ('2','Camila','(21) 99888-7766', 'Rua Pataro'),
 ('3','Isabela','(31) 98654-3210', 'Rua de Matos'),
 ('4','Giovana','(10) 99123-4565', 'Rua Menezes'),
 ('5','Julia','(56) 98456-4579', 'Rua Cardoso'),
 ('6','Ryan','(99) 99234-1222', 'Rua Bozzolla'),
 ('7','Thomas','(33) 98712-4800', 'Rua Regis'),
 ('8','Enzo','(15) 99654-2456', 'Rua Angelical'),
 ('9','Kaua','(61) 99762-8887', 'Rua Av. Henrique'),
 ('10','Yohan','(67) 927465-4565', 'Rua Florida');
 
 insert into products (id, nome produto, tipo, preço, quantidade) values 
 ('1', 'Teclado Mecânico', 'Periféricos', '249.90', '45'),
 ('2', 'Mouse Gamer', 'Periféricos', '129.50', '60'),
 ('3', 'Monitor 24 Polegadas', 'Monitores', '899.00', '15'),
 ('4', 'Headset Bluetooth Pro', 'Áudio', '350.00', '22'),
 ('5', 'Cadeira de Escritório', 'Móveis', '1199.99', '8'),
 ('6', 'Webcam 1080p', 'Vídeo', '189.90', '77'),
 ('7', 'SSD NVMe', 'Armazenamento',' 420.00', '90'),
 ('8', 'Memória RAM ', 'Hardware', '299.00', '13'),
 ('9', 'Roteador Wi-Fi', 'Redes', '450.50', '12'),
 ('10', 'Carregador Portátil', 'Acessórios', '159.90','25');
 
insert into purchases (id, customer_id, purchase_date, total_value) values
('1', '1', '2026-03-10 14:30:00', 379.40),
('2', '2', '2026-03-11 10:15:00', 899.00),
('3', '3', '2026-03-11 16:45:00', 299.00),
('4', '4', '2026-03-12 11:20:00', 1199.99),
('5', '5', '2026-03-13 09:00:00', 189.90),
('6', '6', '2026-03-14 19:10:00', 840.00),
('7', '7', '2026-03-15 15:35:00', 350.00),
('8', '8', '2026-03-15 18:25:00', 259.40),
('9', '9', '2026-03-16 13:12:00', 450.50),
('10', '10', '2026-03-17 10:00:00', 159.90);

insert into purchase_items (id, purchase_id, product_id, quantity) values
('1', '1', '1', 1), -- compra 1: 1 Teclado Mecânico (249.90)
('2', '1', '2', 1), -- compra 1: 1 Mouse Gamer (129.50) -> Total: 379.40
('3', '2', '3', 1), -- compra 2: 1 Monitor 24" (899.00)
('4', '3', '8', 1), -- compra 3: 1 Memória RAM (299.00)
('5', '4', '5', 1), -- compra 4: 1 Cadeira de Escritório (1199.99)
('6', '5', '6', 1), -- compra 5: 1 Webcam 1080p (189.90)
('7', '6', '7', 2), -- compra 6: 2 SSD NVMe (420.00 * 2 = 840.00)
('8', '7', '4', 1), -- compra 7: 1 Headset Bluetooth Pro (350.00)
('9', '8', '2', 2), -- compra 8: 2 Mouse Gamer (129.50 * 2 = 259.40)
('10', '9', '9', 1) -- compra 9: 1 Roteador Wi-Fi (450.50)
('11', '10', '10', 1); -- compra 10: 1 Carregador Portátil (159.90)
