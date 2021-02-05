use cadastro;

/*Gerenciando copias de segurança */
/* Para fazer uma copia de segurança va para server>> database export>>> seleciona o banco de dados e as opçoes
necessaria>>>> clique em start export */

drop database cadastro;

/* para importa o banco de dados voce precisa de ir em server>> data importa>>> selecionar a copia de segurança e
as opçoes necessarias>>>> clicar em start import */

show tables;
describe pessoas;
select * from pessoas;