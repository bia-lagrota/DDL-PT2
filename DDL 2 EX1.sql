CREATE DATABASE DB_HOSPITAL_01;

USE DB_HOSPITAL_01;

CREATE TABLE MOTHERS (
MOTHER_ID INT NOT NULL,
NOME VARCHAR (100) NOT NULL,
ENDERECO VARCHAR(100) NOT NULL,
TELEFONE INT NOT NULL,
DATA_NASC DATE NOT NULL,
CONSTAINT PK_MOTHERS PRIMARY KEY (MOTHER_ID),
CONSTANT PK_MOTHERS FOREIGN KEY (MOTHER_ID_)
);

CREATE TABLE BABIES (
    ID INT NOT NULL,
    NOME VARCHAR(100) NOT NULL,
    DATE_NASCIMENTO DATE NOT NULL,
    PESO INT NOT NULL,
    ALTURA INT NOT NULL,
    MAEID INT NOT NULL,
    CONSTRAINT PK_BABIES PRIMARY KEY (ID)
);

CREATE TABLE DOCTORS (
    ID INT NOT NULL,
    CRM VARCHAR(20) NOT NULL,
    NAME VARCHAR(100) NOT NULL,
    CELL_PHONE VARCHAR(20) NOT NULL,
    SPECIALITY VARCHAR(100) NOT NULL,
    CONSTRAINT PK_DOCTORS PRIMARY KEY (ID)
);


CREATE TABLE MEDICAL (
    BABY_ID INT NOT NULL,
    DOCTOR_ID INT NOT NULL,
    SERVICE_DATE DATE NOT NULL,
    SERVICE_TIME TIME NOT NULL,
    CONSTRAINT PK_MEDICAL PRIMARY KEY (BABY_ID, DOCTOR_ID)
);

insert into mothers(id,nome,endereco,telefone,data_nasc)values
(1,'Julia','Rua José Carneiro 144','(15)11111-11111','22/03/2000'),
(2,'Giovana','Rua Brasil Campos 777','(15)9475-0384','11/07/2000'),
(3,'Isabela','Rua Lisboa Andrade 555','(15)6205-8375','04/04/2000'),
(4,'Livia','Rua Bersi Pedroso 912','(15)1038-9374','08/05/2000'),
(5,'Camila','Rua Mangal Teixeira 837','(15)7348-9894','13/01/2000'),
(6,'Rafaela','Rua Luís Yildiz 999','(15)9468-9992','23/02/2000'),
(7,'Mariah Eduarda','Rua Molleta Horaria 88','(15)8872-0929','28/09/2000'),
(8,'Ana','Rua Balinha 354','(15)5549-9383','20/12/2000'),
(9,'Sarah','Rua Pimposo 05','(15)9976-3832','14/11/2000'),
(10,'Gabriela','Rua Feliciano 32','(15)1928-2938','18/10/2000');

insert into babies(id,nome,data_nasc,peso,altura,mae_id)values
(1,'Fernando','12/06/2025','9kg','71cm','id_01'),
(2,'Pedro','16/10/2025','9kg','71cm','id_02'),
(3,'Maria','11/03/2025','9kg','71cm','id_03'),
(4,'Felicia','19/07/2025','9kg','71cm','id_04'),
(5,'Paula','20/02/2025','9kg','71cm','id_05'),
(6,'José','27/01/2025','9kg','71cm','id_06'),
(7,'Laura','23/08/2025','9kg','71cm','id_07'),
(8,'Lucas','20/11/2025','9kg','71cm','id_08'),
(9,'Felipe','15/05/2025','9kg','71cm','id_09'),
(10,'Vitoria','11/04/2025','9kg','71cm','id_10');

insert into doctors(id,crm,nome,telefone,especialidade,mae_id)values
(1, 'CRM-SP 123456', 'Dr. Carlos', '(11) 98765-4321', 'Cardiologia'),
(2, 'CRM-RJ 654321', 'Dra. Mariana', '(21) 2354-7766', 'Pediatria'),
(3, 'CRM-MG 987123', 'Dr. Osvaldo', '(31) 99123-4567', 'Ortopedia'),
(4, 'CRM-RS 456789', 'Dra. Juliana', '(51) 98111-2233', 'Dermatologia'),
(5, 'CRM-PR 321654', 'Dr. Fernando', '(41) 99654-2334', 'Neurologia'),
(6, 'CRM-BA 789123', 'Dra. Camila', '(71) 98877-2222', 'Ginecologia'),
(7, 'CRM-PE 147258', 'Dr. Tiago', '(81) 99234-4573', 'Psiquiatria'),
(8, 'CRM-CE 258369', 'Dra. Beatriz', '(85) 3464-4433', 'Oftalmologia'),
(9, 'CRM-DF 369147', 'Dr. Ian', '(61) 2334-3546', 'Endocrinologia'),
(10, 'CRM-SC 951753', 'Dra. Larissa', '(48) 98222-3344', 'Otorrinolaringologia');

insert into medical(baby_id,doctor_id,data,tempo)values
(1, 101, '2026-09-01', '09:00:00'),
(2, 101, '2026-09-01', '10:00:00'),
(3, 102, '2026-09-01', '11:15:00'),
(1, 103, '2026-09-02', '14:00:00'),
(4, 104, '2026-09-02', '15:30:00'),
(5, 102, '2026-09-03', '08:45:00'),
(2, 105, '2026-09-03', '13:00:00'),
(6, 101, '2026-09-04', '10:30:00'),
(7, 106, '2026-09-04', '16:00:00'),
(3, 104, '2026-09-05', '09:15:00');
