CREATE TABLE table_name ( column_1 data_type, column_2 data_type, column_3 data_type); --cria tabela com colunas de certos tipos

SELECT * FROM table_name; --exibe uma tabela, substituir * por nome da coluna para colunas especificas

INSERT INTO table_name (column_1, column_2, column_3, etc) --insere linhas/dados na tabela
VALUES
(row1_val1, row1_val2, row1_val3),
(row2_val1, row2_val2, row2_val3),
(row3_val1, row3_val2, row3_val3);

ALTER TABLE table_name --adiciona colunas em tabela
ADD COLUMN column_bla type;

UPDATE table_name -- "Atualiza" tabela adicionando/trocando entradas em uma coluna
SET column_name = 'entrada'
WHERE id = 4;

DELETE FROM table_name -- Deleta todas as linhas em que a entrada de uma coluna é vazia ( ou um valor específico)
WHERE column_name IS NULL;

--Constraints!

CREATE TABLE table_name ( 
column_name1 INTEGER PRIMARY KEY, -- PRIMARY KEY define uma coluna de identificação, impedindo duas linhas de terem o mesmo "id"
column_name2 TEXT UNIQUE, -- UNIQUE define informações que devem ser únicas, não podem se repetir nas colunas. Pode ser nulo, diferente de PK
column_name3 TEXT NOT NULL, --  NOT NULL, não pode ser nulo
column_name4 TEXT DEFAULT 'This is a default text' -- Define uma entrada padrão para quando a entrada for nula
);

SELECT DISTINCT name FROM table_name -- Retorna valores distintos

SELECT * 
FROM movies
WHERE name LIKE 'Se_en'; -- Comando LIKE busca nomes parecidos com citado, no exemplo busca nomes que começam com Se e terminam em en

SELECT * FROM table_name WHERE name LIKE 'A%' --Seleciona todos os nomes que começam com 'A'
SELECT * FROM table_name WHERE name LIKE '%a' --Seleciona todos os nomes que terminam com 'a'
SELECT * FROM table_name WHERE name LIKE '%palavra%' --Seleciona todos os nomes que contém 'palavra'

SELECT * -- Comando BETWEEN retorna linhas que satisfazem um intervalo. Pode ser usado para TEXT também.
FROM table
WHERE column_name BETWEEN '1' AND '10';

SELECT * FROM table_name ORDER BY name; --Exibe linhas ordenadas de acordo com as entradas de uma coluna
SELECT * FROM table_name ORDER BY name DESC; --Mesma coisa, só que decrescente
SELECT * FROM table_name ORDER BY name ASC, year DESC; --Ordena por name ascendendo, depois ordena os q tem valores iguais por ano descendente

SELECT * FROM table_name LIMIT 10; --Define um limite para o número de linhas retornados (sempre vai no final da query)

SELECT name,       --Comando CASE, estilo if-then, permite usar condicionais, exemplo do codecademy
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END
FROM movies;

SELECT COUNT(*) FROM table_name; --Conta linhas
SELECT SUM(column_name) FROM table_name; --Soma entradas
SELECT MAX(column_name) FROM table_name; --Retorna valor máximo, análogo MIN
SELECT AVG(column_name) FROM table_name; --Retorna média



