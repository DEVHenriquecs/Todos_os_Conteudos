									/**** alterando a estrutura da tabela ****/
					
use cadastro;

/* adiciona uma coluna para a tabela pessoas, esse comando permite manipular colunas*/
alter table pessoas
add column profissão varchar(10);

alter table pessoas
drop column profissão;

alter table pessoas
add column profissão varchar(10) after nome; 
alter table pessoas
add column codigo int first; 

/* modifica o numero de caracteres da profissão e faz com que não possa ser nulo */
alter table pessoas
modify column profissão varchar(20) not null default ''; 

/* muda o nome da coluna */
alter table pessoas
change column profissão prof varchar(20); 

alter table gafanhotos
rename to pessoas; 

/* cria uma nova tabela*/
create table if not exists cursos(
nome varchar(30) not null unique, 
descricao text,
carga int unsigned,
totaulas int,
ano year default '2020'
) default charset = utf8;
alter table cursos
add column idcurso int first;
alter table cursos
add primary key (idcurso);

create table if not exists teste(
id int,
nome varchar(10)
);
drop table teste; 

desc cursos;
desc pessoas;
select * from pessoas;