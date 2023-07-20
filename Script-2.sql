--order by: ordena
--desc: inverte

select cid.nome, cid.uf from cidade cid
where uf = 'SC'

select cid.nome from cidade cid
where id >= 4

select nome, genero from cliente cli
where genero = 'M'

select cid.nome from cliente cli
where vli.cidade = 1;

select cli.nome, cid.nome
from cliente cli, cidade cid
where cli.nome = cid.id 
and cid.uf = 'RS'

select * from cliente where nome like 'Jo%'

select * from cidade where id in (1,2,3);

select * from cliente where id between 3 and 5;

select sum (id) from cliente where genero = 'F';

select sum (id) from cidade where nome = 'Laguna';

select max (id) from cliente where genero = 'F';

select cli.nome, cli.genero, cid.nome from cliente cli 
inner join cidade cid on cid.id = cli.cidade;

select * from cidade;

select cli.nome, cli.genero, cid.nome from cliente cli 
right join cidade cid on cid.id = cli.cidade;
