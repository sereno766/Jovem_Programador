SET SQL_SAFE_UPDATES = 0;
drop database if exists DBEX08;
create database DBEX08;
use DBEX08;


create table livros (
idlivro int auto_increment
,titulo varchar(120) not null
,autor varchar(45) not null
,editora varchar(45) not null
,ano_publicacao date 
, primary key (idlivro)
);
insert into livros (titulo,autor,editora,ano_publicacao) value 
('Dom Casmurro', 'Machado de Assis', 'Nova Fronteira', '1899-01-01'),
('Grande Sertão: Veredas', 'João Guimarães Rosa', 'Companhia das Letras', '1956-01-01'),
('O Alquimista', 'Paulo Coelho', 'HarperCollins', '1988-01-01'),
('A Hora da Estrela', 'Clarice Lispector', 'Rocco', '1977-01-01'),
('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Editora Record', '1881-01-01'),
('Cem Anos de Solidão', 'Gabriel García Márquez', 'Penguin Books', '1967-01-01'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', '1997-01-01'),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Agir', '1943-01-01'),
('1984', 'George Orwell', 'Companhia das Letras', '1949-01-01'),
('A Revolução dos Bichos', 'George Orwell', 'Globo Livros', '1945-01-01');
select * from livros;
update livros set titulo = 'bla bla bla' where autor like 'J%';
delete from livros where ano_publicacao ='1899-01-01';