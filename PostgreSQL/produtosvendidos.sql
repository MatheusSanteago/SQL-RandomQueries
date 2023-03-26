/* Produtos vendidos em periodo determinado e a quantidade de vendas*/

select produto, count(*) as totaldevendas from relacional.vendas as vendas
inner join relacional.clientes as c on (vendas.idcliente = c.idcliente)
inner join relacional.itensvenda as it on (vendas.idvenda = it.idvenda)
inner join relacional.produtos as p on (it.idproduto = p.idproduto)
where data > '10-10-2015'
group by produto;