-- Criando uma Subquery
-- USE sakila;

-- SELECT *
-- FROM payment
-- WHERE amount > (
-- 	SELECT AVG(amount)
--     FROM payment)
    
-- Trabalhando com o MAX em SubQueries
-- USE sakila;

-- SELECT *
-- FROM payment
-- WHERE amount = (
-- 	SELECT MAX(amount)
--     FROM payment
--     WHERE customer_id = 1
-- )

-- Utilizando o IN

-- USE sakila;
-- SELECT *
-- FROM customer
-- WHERE customer_id IN (
-- 	SELECT customer_id
--     FROM payment 
--     GROUP BY customer_id
--    HAVING COUNT(*) > 35
-- )

-- Utilizando o ANY

-- USE sakila;
-- SELECT *
-- FROM customer
-- WHERE customer_id = ANY (
-- 	SELECT customer_id
-- 	FROM payment 
-- 	GROUP BY customer_id
-- 	HAVING COUNT(*) > 35
-- )

-- Criando a primeira View

-- USE sakila;

-- CREATE VIEW vendas_por_clientes AS
-- SELECT 
-- 	cus.customer_id,
-- 	cus.first_name,
-- 	cus.last_name,
-- 	pay.amount
-- FROM customer cus
-- JOIN payment pay
-- 	ON cus.customer_id = pay.payment_id
    
    
-- Realizando o DROP ou REPLACE
-- USE sakila;

-- CREATE OR REPLACE VIEW vendas_por_clientes AS
-- SELECT 
-- 	cus.customer_id,
-- 	cus.first_name,
-- 	cus.last_name,
-- 	pay.amount
-- FROM customer cus
-- JOIN payment pay
-- 	ON cus.customer_id = pay.payment_id
-- ORDER BY pay.amount ASC
    
-- Funções com Strings
-- TRIM -> remove espaços

-- LTRIM -> left remove os da esquerda
-- SELECT TRIM('          Carros    ')

-- LTRIM -> left remove os da esquerda
-- SELECT LTRIM('          Carros    ')

-- RTRIM -> right remove os da esquerda
-- SELECT RTRIM('          Carros    ')

-- BOTH ->  remove os caracteres que você definir 
-- SELECT TRIM(BOTH 'a' FROM   'aaaCarrosaaaa    ')

-- LOCATE -> localiza uma letra na string
-- SELECT LOCATE('o', 'Carros')

-- lcase -> letras minusculas
-- SELECT lcase('Carros')

-- ucase -> lletras maiusculas
-- SELECT ucase('Carros')

-- repeat ->  vai repetir a palavra 4x
-- SELECT repeat( 'Carros', 4)

-- right ->  vai mostras as ultimas 4 letras
-- SELECT right( 'Carros', 4)

-- left ->  vai mostras as primeiras 2 primeiras letras
-- SELECT left( 'Carros', 2)

