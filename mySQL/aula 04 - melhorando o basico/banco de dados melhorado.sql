/* exclui um banco de dados */
drop database cadastro;

/* cria um banco de dados que reconhece o padrão de acentuação brasileiro */
create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas(
id int not null auto_increment, 
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'), /* so vai aceitar M ou f */
peso decimal(5,2), 
altura decimal(3,2),
nacionalidade varchar(20) default 'brasil', /* se nada for digitado, será brasil */
primary key(id)
)default charset = utf8;