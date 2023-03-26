select cliente,produto,quantidade,valortotal, data from relacional.vendas as vendas
inner join relacional.clientes as c on (vendas.idcliente = c.idcliente)
inner join relacional.itensvenda as it on (vendas.idvenda = it.idvenda)
inner join relacional.produtos as p on (it.idproduto = p.idproduto)
where vendas.idcliente = 1;