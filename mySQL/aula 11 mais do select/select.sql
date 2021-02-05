														/* SELECT (DQL/DML)*/
use cadastro;

select * from cursos
ORDER BY nome; /* ordena a tabela por nome */

select * from cursos
order by nome desc; 

select * from cursos
order by nome asc; /* ordem ascendente */

select nome, carga, ano from cursos 
order by nome; 

select * from cursos
where ano = '2016' 
order by nome;

select nome, carga from cursos
where ano = '2016'
order by nome;

select nome, descricao from cursos
where ano <= '2015' /* pode-se utilizar operadores relacionais */
order by nome;

select nome, descricao,ano from cursos
where ano <> 2016 
order by ano, nome;

select nome, ano from cursos
where ano between 2014 and 2016 
order by nome asc, ano desc;

select nome, descricao , ano from cursos
where ano in(2014,2016, 2020)/* so mostra os cursos dos anos especificados */
order by ano;

select * from cursos
where carga > 35 and totaulas <30; 

select ano, nome, carga from cursos
order by ano;

desc cursos;