select carro.nome, carro.ano from carro order by ano;

select m.nome from motorista m 
where m.nome = '%Paulo%';

select * from motorista;

select * from motorista m
inner join carro on m.id = m.carro;

select * from motorista m
right join carro on carro.id = m.carro;

select m.nome, c.nome, c.ano  from motorista m, carro c
inner join carro on c.id = m.carro ;
where c.ano between 2000 and 2010;


