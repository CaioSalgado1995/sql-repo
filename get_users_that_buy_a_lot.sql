select u.nome, u.id, count(c.id) as qtd_compras, sum(p.preco) as valor_total_compra from usuario u
 inner join compra c on u.id = c.id_usuario
 inner join item_compra ic on c.id = ic.id_compra
 inner join produtos p on ic.id_produto = p.id
 where p.nome like '%Leite%'
 and c.data >= '2021-04-01'
 and c.data <= '2021-04-20'
 group by u.id
 HAVING valor_total_compra >= 30 and qtd_compras >= 3;