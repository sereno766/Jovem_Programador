SET SQL_SAFE_UPDATES = 0;

drop database if exists BDEX06;
create database BDEX06;
use BDEX06;
create table alunos (
	id_alunos int auto_increment 
    , nome varchar(120)
    , primary key (id_alunos)
);
insert into alunos (nome) value (
'Pedro Felipe')
,('Algusto Ferrari')
,('du')
,('Felipe Hugo')
,('Alberto Semnome')
,('Fernando Ramires')
,('Maria Antonia')
,('Felipina de Alcantara de Guardalupes')
;
select * from alunos;
update alunos set nome = 'error' where LENGTH(nome) > 23 || LENGTH(nome) < 3 ;
delete from alunos where nome like 'F%';