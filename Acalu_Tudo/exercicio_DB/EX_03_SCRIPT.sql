SET SQL_SAFE_UPDATES = 0;

drop database if exists DBEX03;

create database DBEX03;
use DBEX03;
create table pesquisa(
	IDPESQUISA int not null auto_increment
    , nome varchar(120) not null
    , cidade varchar(120)
    , idade int
    , nota decimal(5,2) not null
    , primary key (IDPESQUISA)
);


insert into pesquisa (nome,cidade,idade,nota)
value('PEDRO','SAO PAULO','34','83');

insert into pesquisa (nome,cidade,idade,nota)
value('MARIA','SAO PAULO','23','59')
, ('JANAINA','RIO DE JANEIR','32','86')
, ('WONG','BRASILIA','43','89')
, ('ROBERTO','SALVADOR','38','98')
, ('MARCO','CURITIBA','31','61')
, ('PAULA','BELO HORIZONTE','34','44');

SELECT * FROM PESQUISA;

SELECT * FROM PESQUISA where NOME = 'ROBERTO';

update PESQUISA SET IDADE = 28 where IDPESQUISA = 5;

update PESQUISA SET NOTA = 69.2 , cidade = 'florianopolis' where nome = 'MARIA';

delete  from pesquisa where idade > 40; 

