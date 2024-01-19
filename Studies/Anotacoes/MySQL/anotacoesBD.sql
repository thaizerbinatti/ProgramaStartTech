-- ANOTAÇOES MYSQL

-- LIMIT

-- Queremos obter as 10 primeiras vendas do dia 01/01/2017. Qual seria o comando SQL para obter este resultado?
SELECT * FROM notas_fiscais  WHERE DATA_VENDA = '2017-01-01' limit 10

-- ORDER BY

SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA;
SELECT * FROM tabela_de_produtos ORDER BY NOME_DO_PRODUTO DESC;
SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO ASC;

-- GROUP BY

-- Faremos, agora, uma consulta relativa às embalagens e aos preços de lista presentes na tabela de produtos:
SELECT EMBALAGEM, PRECO_DE_LISTA FROM tabela_de_produtos;
-- Vamos supor que precisamos descobrir qual é o preço mais caro de cada tipo de embalagem (PET, garrafa e lata):
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) as MAIOR_PRECO FROM tabela_de_produtos GROUP BY EMBALAGEM;

