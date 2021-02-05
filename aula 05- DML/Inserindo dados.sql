												/**** comandos de manipulação de dados(DML) ****/
use cadastro;
                                    
insert into pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values 
(default, 'cleuza','1945-05-010','F','50.5','1.60',default); 

insert into pessoas values
(default,'jerson','1999-01-02','M','78.5','1.82',default);

insert into pessoas values
(default, 'marcin', '1950-12-22','M','52.3','1.85','frança'),
(default, 'marcia', '1975-12-22','F','80.4','1.65','eua');

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'ana', '1975-12-22','F','52.3','1.45','eua'),
(default, 'jefin', '2005-12-22','M','52.3','1.45','paises baixos'),
(default, 'mark', '2050-12-22','M','52.3','1.45','groelandia');

select * from pessoas;