-- Atividade 3

select
categoria.id AS id_categoria,
categoria.nome AS nome_categoria,
produto.id AS id_produto,
produto.nome AS nome_produto,
produto.preco AS preco_produto

FROM
categoria
inner join
produto on categoria.id = produto.categoria_id;

-- Atividade 4

select
categoria.id as id_categoria,
categoria.nome as nome_categoria,
produto.id as produto_id,
produto.nome as nome_produto,
produto.preco as preco_produto

FROM
categoria
inner join
produto on categoria.id = produto.categoria_id;


-- Atividade 5

select
categoria.nome as nome_categoria,
sum(item_pedido.preco_unitario * item_pedido.quantidade) as total_vendido
FROM
categoria
inner join
produto on categoria.id = produto.categoria_id
inner join
item_pedido on produto.id = item_pedido.produto_id
GROUP BY
categoria.id, categoria.nome;

-- Atividade 6

select
count(distinct pedido.id) AS quantidade_pedidos,
sum(item_pedido.quantidade) AS quantidade_produtos,
min(item_pedido.preco_unitario * item_pedido.quantidade) AS valor_pedido_mais_barato,
max(item_pedido.preco_unitario * item_pedido.quantidade) AS valor_pedido_mais_caro,
sum(item_pedido.preco_unitario * item_pedido.quantidade) AS montante_vendido

FROM
pedido
inner join
item_pedido on pedido.id = item_pedido.pedido_id;

-- Atividade 7

select
cliente.nome AS nome_cliente,
count(pedido.id) AS quantidade_pedido
FROM
cliente
left join
pedido on cliente.id = pedido.cliente_id
GROUP BY
cliente.id, cliente.nome;
