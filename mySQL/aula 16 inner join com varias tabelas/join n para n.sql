/* relacionamento muito para muitos */
use cadastro;

create table gafanhoto_assiste_curso(
	id int not null auto_increment,
	data date,
	idgafanhoto int,
	idcurso int,
	primary key (id),
	foreign key (idgafanhoto) references gafanhotos(id),
	foreign key (idcurso) references cursos(idcurso)
) default charset = utf8;

insert into gafanhoto_assiste_curso values
(default,'2020-01-01','1','2');

select * from gafanhoto_assiste_curso;

select g.nome, idcurso from gafanhotos g 
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
order by g.nome;

/* junte as três tabelas, pode-se ver pois todos os dados estão sem filtro*/
select * from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c /* segundo join serve para puxar os dados de outra tabela*/
on a.idcurso = c.idcurso
order by g.nome;

/* puxa os dados das tres tabelas, filtrando o que vai aparecer */
select g.nome, c.nome, a.idcurso from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;