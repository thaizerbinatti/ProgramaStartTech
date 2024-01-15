-- Atividades MySQL - Semana 4

-- Criando o Banco de Dados

create database comex;

-- Atividade 1 - Criando tabela de pedidos

use comex;

CREATE TABLE pedidos (
    id bigint PRIMARY KEY,
    produto varchar(255),
    categoria varchar(255),
    preco decimal(10,2),
    quantidade integer,
    data date,
    cliente varchar(60)
);

-- Atividade 2 - Inserindo dados na tabela

insert into pedidos (id, produto, categoria, preco, quantidade, data, cliente) values
(1, "NOTEBOOK SAMSUNG", "INFO",  3523.00, 1, '2022-01-01', "ANA"),
(2, "SOFÁ 3 LUGARES", "MÓVEIS",  2500.00, 1, '2002-01-05', "ANA"),
(3, "CLEAN ARCHITECTURE", "LIVROS",  102.90, 2, '2022-01-08', "ANA"),
(4, "MESA DE JANTAR 6 LUGARES", "MÓVEIS",  3678.98, 1, '2022-01-06',"ELI"),
(5, "IPHONE 13 PRO", "CELULARES",  9176.00, 6, '2022-01-13',"ANA"),
(6, "MONITOR DELL 27", "INFO",  1889.00, 3, '2022-01-04', "DANI"),
(7, "IMPLEMENTING DOMAIN-DRIVER DESIGN", "LIVROS",  144.07, 3, '2022-01-10', "GABI"),
(8, "JOGO DE PNEUS", "AUTOMOTIVA",  1276.79, 1, '2022-01-15', "BIA"),
(9, "CLEAN CODE", "LIVROS",  95.17, 1, '2022-01-09', "BIA"),
(10, "GALAXY S22 ULTRA", "CELULARES",  8549.10, 5, '2022-01-14', "DANI"),
(11, "MACBOOK PRO 16", "INFO",  31752.00, 1, '2022-01-03', "CAIO"),
(12, "REFACTORING IMPROVING THE DESIGN OF EXISTING CODE", "LIVROS",  173.90, 1, '2022-01-12', "DANI"),
(13, "CAMA QUEEN SIZE", "MÓVEIS",  3100.00, 2, '2022-01-07', "DANI"),
(14, "CENTRAL MULTIMIDIA", "AUTOMOTIVA",  711.18, 1, '2022-01-16', "CAIO"),
(15, "BUILDING MICROSERVICES", "LIVROS",  300.28, 2, '2022-01-11', "CAIO"),
(16, "GALAXY TAB S8", "INFO",  5939.10, 4, '2022-01-02', "BIA");

-- Atividade 3 - Corrigindo categoria

UPDATE pedidos SET categoria = "INFORMÁTICA" WHERE categoria = "INFO";

-- Atividade 4 - Exibindo relatório dos pedidos

SELECT * FROM pedidos;

-- Atividade 5 - Exibindo relatório dos pedidos por categoria

SELECT * FROM pedidos WHERE categoria = 'CELULARES';

-- Atividade 6 - Exibindo relatório dos pedidos por preço

SELECT * FROM pedidos WHERE preco >= 3000.00 AND preco <= 10000.00;