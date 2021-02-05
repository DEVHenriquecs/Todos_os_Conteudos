										/* manipulando linhas, COMANDOS DML(data manipulation language) */
use cadastro;

insert into cursos values
('1','HTML4','curso de HTML5','40','37','2014'),
('2','algoritmo','logica de programação','20','15','2014'),
('3','photoshop','dicas de photoshop','10','8','2014'),
('4','PGP','curso de php para iniciantes','40','20','2010'),
('5','jarva','introdução a linguagem java','10','29','2000'),
('6','mySQL','banco de dados MySQL','30','15','2016'),
('7','word','curso completo word','40','30','2016'),
('8','sapateado','danças ritmicas','40','30','2018'),
('9','cozinha','aprenda a fazer kibe','40','30','2016'),
('10','youtube','gerar polemica e ganhar inscritos','5','2','2018');

/* configura/atualiza o nome, corrigindo o erro de digitação */
update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome='PHP', ano='2015'
where idcurso='4';

update cursos
set nome='java', carga='40', ano='2015'
where idcurso='5'
limit 1; /* limita quantas linhas serão afetadas */

update cursos
set ano='2050', carga='800'
where ano='2018';

update cursos
set ano='2018', carga='0'
where ano = '2050'
limit 1;

delete from cursos
where idcurso='8';

delete from cursos
where ano='2050'
limit 2;

/* removendo todas as linha/dados de uma tabela */
truncate table cursos; 

select * from cursos;