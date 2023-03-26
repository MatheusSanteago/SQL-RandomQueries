/* Buscar os cincos piores vendedores */

select nome, count(nome) as totaldevendas from relacional.itensvenda as itens
inner join relacional.vendas as vendas on (itens.idvenda = vendas.idvenda)
inner join relacional.vendedores as vendedores on (vendas.idvendedor = vendedores.idvendedor)
group by nome
order by totaldevendas asc
limit 5;

/* Buscar os cincos melhores vendedores */

select nome, count(nome) as totaldevendas from relacional.itensvenda as itens
inner join relacional.vendas as vendas on (itens.idvenda = vendas.idvenda)
inner join relacional.vendedores as vendedores on (vendas.idvendedor = vendedores.idvendedor)
group by nome
order by totaldevendas desc
limit 5;