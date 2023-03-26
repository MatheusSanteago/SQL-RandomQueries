/*Total de descontos por produtos ordenado*/

select produto, sum(desconto) as descontos from relacional.vendas as vendas
inner join relacional.clientes as c on (vendas.idcliente = c.idcliente)
inner join relacional.itensvenda as it on (vendas.idvenda = it.idvenda)
inner join relacional.produtos as p on (it.idproduto = p.idproduto)
group by produto
order by descontos desc;
