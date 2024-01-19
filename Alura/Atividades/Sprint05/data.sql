-- Inserindo dados nas tabelas

insert into cliente (
nome 
) values ("Ana"), ("Eli"), ("Dani"), ("Gabi"), ("Bia"), ("Caio");

insert into categoria (
nome 
) values ("INFO"), ("MÓVEIS"), ("LIVROS"), ("MÓVEIS"), ("CELULARES"), ("INFO"), ("LIVROS"), 
("AUTOMOTIVA"), ("LIVROS"), ("CELULARES"), ("INFO"),  ("LIVROS"), ("MÓVEIS"), ("AUTOMOTIVA"),
 ("LIVROS"), ("INFO");

insert into produto (
categoria_id, nome, preco 
) values (1, "Notebook Samsung", 3523.00), (2, "Sofá 3 lugares", 2500.00), (3, "Clean Architecture", 102.90),  
(4, "Mesa de jantar 6 lugares", 3678.98), (5, "iPhone 13 Pro", 9176.00), (6, "Monitor Dell", 1889.00), 
(7, "Implementing Domain-Driven Design", 144.07),  (8, "Jogo de pneus", 1276.79), (9, "Clean Code", 95.17), 
(10, "Galaxy S22 Ultra", 8549.10),(11, "Macbook Pro", 31752.00), (12, "Refactoring Improving the Design of 
Existing Code", 173.90), (13, "Cama queen size", 3100.00), (14, "Central multimidia", 711.18), (15, "Building 
Microservices", 300.28), (16, "Galaxy Tab S8", 5939.10);

insert into pedido (
data, cliente_id
) values ('2022-01-01', 1), ('2002-01-05', 1), ('2022-01-08', 1), ('2022-01-06', 2), ('2022-01-13', 1), 
('2022-01-04', 3), ('2022-01-10', 4), ('2022-01-15', 5), ('2022-01-09', 5), ('2022-01-14', 3), ('2022-01-03', 6), 
('2022-01-12', 3), ('2022-01-07', 3), ('2022-01-16', 6), ('2022-01-11', 6), ('2022-01-02', 5);

insert into item_pedido (
pedido_id, produto_id, preco_unitario, quantidade
) values 
(1, 1, 3523.00, 1),
(2, 2, 2500.00, 1),
(3, 3, 102.90, 2),
(4, 4, 3678.98, 1),
(5, 5, 9176.00, 6),
(6, 6, 1889.00, 3),
(7, 7, 144.07, 3),
(8, 8, 1276.79, 1),
(9, 9, 95.17, 1),
(10, 10, 8549.10, 5),
(11, 11, 31752.00, 1),
(12, 12, 173.90, 1),
(13, 13, 3100.00, 2),
(14, 14, 711.18, 1),
(15, 15, 300.28, 2),
(16, 16, 5939.10, 4);