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

***Constraints***
CREATE TABLE table_name ( 
column_name1 INTEGER PRIMARY KEY, -- PRIMARY KEY define uma coluna de identificação, impedindo duas linhas de terem o mesmo "id"
column_name2 TEXT UNIQUE, -- UNIQUE define informações que devem ser únicas, não podem se repetir nas colunas. Pode ser nulo, diferente de PK
column_name3 TEXT NOT NULL, --  NOT NULL, não pode ser nulo
column_name4 TEXT DEFAULT 'This is a default text' -- Define uma entrada padrão para quando a entrada for nula
);

