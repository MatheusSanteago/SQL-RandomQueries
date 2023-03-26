select cliente, sum(valortotal) as totalemcompras from relacional.vendas as vendas
inner join relacional.clientes as c on (vendas.idcliente = c.idcliente)
inner join relacional.itensvenda as it on (vendas.idvenda = it.idvenda)
inner join relacional.produtos as p on (it.idproduto = p.idproduto)
group by cliente
order by totalemcompras ASC;

select cliente, sum(valortotal) as totalemcompras from relacional.vendas as vendas
inner join relacional.clientes as c on (vendas.idcliente = c.idcliente)
inner join relacional.itensvenda as it on (vendas.idvenda = it.idvenda)
inner join relacional.produtos as p on (it.idproduto = p.idproduto)
group by cliente
order by totalemcompras DES;