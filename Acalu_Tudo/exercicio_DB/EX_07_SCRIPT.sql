SET SQL_SAFE_UPDATES = 0;
drop database if exists BDEX07;
create database DBEX07;
use DBEX07;

create table estacionamento (
id_carro int auto_increment
,marca varchar(45) not null
,modelo varchar(45) not null
,ano_fabricacao date not null
,ano_modelo date not null
,placa varchar(45) not null
,cor varchar(45) not null
, primary key (id_carro)
);
insert into estacionamento (marca,modelo,ano_fabricacao,ano_modelo,placa,cor) value 
('Toyota', 'Corolla', '2019-01-01', '2020-01-01', 'ABC-1234', 'Prata'),
('Honda', 'Civic', '2018-01-01', '2018-01-01', 'DEF-5678', 'Preto'),
('Ford', 'Focus', '2020-01-01', '2021-01-01', 'GHI-9012', 'Branco'),
('Chevrolet', 'Onix', '2021-01-01', '2022-01-01', 'JKL-3456', 'Vermelho'),
('Volkswagen', 'Golf', '2017-01-01', '2018-01-01', 'MNO-7890', 'Azul'),
('Fiat', 'Argo', '2019-01-01', '2020-01-01', 'PQR-2345', 'Cinza'),
('Hyundai', 'HB20', '2020-01-01', '2021-01-01', 'STU-6789', 'Verde'),
('Nissan', 'Kicks', '2021-01-01', '2021-01-01', 'VWX-1234', 'Dourado'),
('Renault', 'Clio', '2016-01-01', '2017-01-01', 'YZA-5678', 'Laranja'),
('Peugeot', '208', '2018-01-01', '2019-01-01', 'BCD-9012', 'Roxo'),
('Jeep', 'Compass', '2022-01-01', '2022-01-01', 'EFG-3456', 'Amarelo'),
('BMW', 'X1', '2023-01-01', '2023-01-01', 'HIJ-7890', 'Preto'),
('Audi', 'A4', '2020-01-01', '2021-01-01', 'KLM-2345', 'Branco');
select * from estacionamento;

update estacionamento set marca = 'carro bomba'  where marca = 'Peugeot' or  marca = 'Fiat';
delete from estacionamento where placa like 'Y%';
