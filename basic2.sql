-- adicionando multiplas linhas
-- USE sakila;

-- INSERT INTO language
-- VALUES
--  (DEFAULT, 'Portuguese' , '2008-02-10 05:08:19'),
--  (DEFAULT, 'Spanish' , '2009-02-10 05:08:19'),
 -- (DEFAULT, 'Polish' , '2010-02-10 05:08:19')
   
-- adicionando multiplas tabelas
-- last_insert_id() procura qual foi a última inserida
-- USE sakila;

-- INSERT INTO country
-- VALUES
-- (DEFAULT, 'Brasil2', '2035-02-15 04:45:25');

-- INSERT INTO city
-- VALUES
-- 	(DEFAULT, 'Sao Paulo2', 'last_insert_id()','2030-02-15 04:45:25' )

-- FAZENDO BACKUP

-- USE sakila;
-- CREATE TABLE payment_backup AS
-- SELECT * FROM payment

-- REMOVER TABELA
-- -> Drop Table remove a tabela e os dados dentro 
-- -> Truncade Table remove somente os dados dentro da tabela


-- ATUALIZAR REGISTRO DENTRO DA TAABELA
-- USE sakila;

-- UPDATE payment
-- SET
-- 	amount = 15.99
-- WHERE payment_id = 1payment_id

-- DELETANDO UM REGISTRO
-- USE sakila;

-- DELETE FROM payment
-- WHERE payment_id = 1001 


-- FUNÇÕES

-- USE sakila;

-- SELECT 
-- 	MAX (amount) AS Maior,
-- 	MIN (amount) AS Menor,
-- 	AVG (amount) AS 'Media de Valores',
--  COUNNT(amount) AS 'Numero de Vendas'
-- FROM payment
-- WHERE staff_id = 2



-- USE sakila;
-- SELECT
-- 	customer_id,
-- 	SUM(amount) AS total
    
-- FROM payment
-- GROUP BY customer_id
-- ORDER BY total DESC

-- USE sakila;

-- SELECT 
-- 	cus.customer_id AS ID,
--   cus.first_name AS Nome,
-- cus.last_name AS Sobrenome,
--    SUM(amount) AS Total,
--     COUNT(amount) AS Compras
    
-- JOIN customer cus USING(customer_id)

-- GROUP BY customer_id
-- HAVING Total >= 150 AND Compras >= 35
-- ORDER BY Total DESC
    


