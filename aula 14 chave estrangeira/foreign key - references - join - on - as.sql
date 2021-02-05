/* criando chaves estrangeiras, foreign key, references, join, on, as... */
/* relacionamento um para um e um para muitos */

use cadastro;
describe gafanhotos;

alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos 
add foreign key (cursopreferido) /* indica qual é a chave estrangeira*/
references cursos(idcurso); 

select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = '6' 
where id = '1';

/* integridade referencial */
delete from cursos
where idcurso = '6'; /* perceba que ao executrar não é possivel apagar o curso, pois eles ja tem 
relação com a outra tabela, isto é, afeta a transação */

delete from cursos
where idcurso = '28'; 

/* junções do SQL*/
select nome, cursopreferido from gafanhotos;
select nome,ano from cursos;

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
from gafanhotos join cursos; /* join junta*/

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido;/* clausula, gafanhotos se liga a curso atraves de suas chaves estrangeira e primaria */

select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c 
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c 
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c /* filtra pela coluna a esqueda do join(normal), ou seja, cursos */
on c.idcurso = g.cursopreferido
order by g.nome;
