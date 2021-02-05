										/* part dois select - caracteres coringa, count, max, min etc... */

use cadastro;

select * from cursos
where nome like '%A'; /*A % significa nenhum ou varios caracteres(a posição do % importa) */

select * from cursos
where nome /*not*/ like '%p%'; /* seleciona os dados que tem a letra 'P' em qualquer lugar */

select * from cursos
where nome like 'PH%P_'; /* _ faz com que tenha alguma coisa no final */

select *from cursos
where nome like 'p__%';

select distinct nacionalidade from gafanhotos /* distinct impede repetiçoes*/
order by nacionalidade;

select count(*) from cursos;

select count(*) from cursos
where carga > 40;

select max(carga) from cursos; /* procura a o maior dado que voce especificou */
select nome, min(totaulas) from cursos; /* procurar o menor dado especificado */
select sum(totaulas) from cursos where ano = '2016'; /* soma o total de aulas seguindo os parametros */
select avg(totaulas) from cursos where ano = '2016'; /* tira a media do total de aulas dentro de cursos*/

								/* exercitando */

select * from gafanhotos
where sexo = 'F';

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

select * from gafanhotos
where sexo = 'M' and profissao='programador';

select * from gafanhotos
where nacionalidade = 'Brasil' and nome like 'j%';

select nome, nacionalidade, peso from gafanhotos
where nome like '%silva%' and nacionalidade not like 'Brasil' and peso < '100'; 

select max(altura) from gafanhotos
where nacionalidade = 'Brasil' and sexo = 'M';

select avg(peso) from gafanhotos;

select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade not like 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

select count(*) from gafanhotos
where sexo ='F' and altura >'1.90';
