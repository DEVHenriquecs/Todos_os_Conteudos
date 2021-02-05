	/* select part 3 - group by, having, distinct ...*/
    
use cadastro;
    
select distinct totaulas from cursos
order by totaulas;

select totaulas, count(*) from cursos
group by totaulas /* agrupa por total de aulas */
order by totaulas;

select carga, count(nome) from cursos where totaulas = 30
group by carga;

select ano, count(*) from cursos
group by ano
having count(ano) >= 5 
order by count(*) desc; 

select avg(carga) from cursos;

select carga, count(*) from cursos 
where ano > 2015
group by carga 
having carga > (select avg(carga) from cursos); 

/* exercitando*/

select * from gafanhotos;
select profissao, count(*) from gafanhotos
group by profissao;

select sexo, nascimento, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo; 

select nacionalidade, count(*) from gafanhotos
where nacionalidade <> 'Brasil' /* poderia usar o NOT LIKE tambem */
group by nacionalidade
having count(nacionalidade) > '3';

select avg(altura) from gafanhotos;
select altura,peso,count(*) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura)from gafanhotos);


