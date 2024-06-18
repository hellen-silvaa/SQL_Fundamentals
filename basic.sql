--1. Aprendendo cada função
--USE sakila;
--SELECT actor_id, first_name,last_name
--FROM actor
--WHERE actor_id <10
-- ORDER BY last_name

------------------------------------------------------------------------------------------


--2. Aprendendo a aplicar um desconto e vizualizar valor original e campo desconto:

--USE sakila;

--SELECT 
--customer_id,
--amount,
--amount - (amount * 0.10) AS '10% discount'
--FROM payment
--WHERE customer_id = 1

------------------------------------------------------------------------------------------

--3. aparecer só os menores ou iguais a 0.99 centavos
--USE sakila;

--SELECT * FROM payment
--WHERE amount <= 0.99

------------------------------------------------------------------------------------------

--4. aparecer só os valores diferentes de 0.99 em payment 

-- USE sakila;

-- SELECT * FROM payment
-- ORDER BY * amount desc
-- WHERE amount <> 0.99

------------------------------------------------------------------------------------------

-- 5. buscando todos endereços dentro de cada distrito

-- USE sakila;

-- SELECT * FROM address
-- WHERE district = 'California'

------------------------------------------------------------------------------------------

-- OPERADORES AND OR NOT
-- 6. buscando todos clientes da loja um que estão ativos (1) e inavitos (0)
-- USE sakila;

-- SELECT * FROM customer
-- WHERE store_id = 1 AND active = 1

------------------------------------------------------------------------------------------

-- 6.1 funcionario numº1 e vendas feitas de 0.99

-- USE sakila;

--  SELECT * FROM payment
-- WHERE staff_id = 1 AND amount = 0.99

------------------------------------------------------------------------------------------

 -- 6.2 vendas do funcionario numº1 ou  vendas feitas de 1.99


--  USE sakila;

-- SELECT * FROM payment
-- WHERE staff_id = 1 OR amount = 1.99

------------------------------------------------------------------------------------------

-- 6.3 vendas do funcionario numº1 e  vendas feitas de 1.99 e custumer menor que 10


 -- USE sakila;

 -- SELECT * FROM payment
 -- WHERE staff_id = 1 AND amount = 1.99 AND customer_id < 10

------------------------------------------------------------------------------------------

 -- 6.4 negando o primeiro e negando o valor 1.99


-- USE sakila;

-- SELECT * FROM payment
-- WHERE NOT staff_id = 1 AND NOT amount = 1.99 AND customer_id < 10

-- ----------------------------------------------------------------------------------------

-- 7. Operador IN adiciona mais de um elemento

-- USE sakila;
-- SELECT *
-- FROM address
-- WHERE district IN ('Alberta', 'Texas', 'California');

-- ----------------------------------------------------------------------------------------

-- 8. Operador BETWEEN busca uma range que esta entre o começo e o fim

-- USE sakila;

-- SELECT *
-- FROM payment
-- WHERE amount BETWEEN 1.99 AND 3.99

-- ----------------------------------------------------------------------------------------

-- 9. Operador LIKE 'parecido com', 'pesquisa um padrão em uma coluna' começa com e 'A' A% significa 'qualquer outra coisa depois do A'
-- NOT LIKE retorna falso

-- USE sakila;

-- SELECT *
-- FROM actor
-- WHERE first_name LIKE 'a%';

- ----------------------------------------------------------------------------------------

-- 10. Operador IS NULL identifica os campos nulos, sem valor, vazio

-- USE sakila;

-- SELECT *
-- FROM  address
-- WHERE address2 IS NULL

-- ----------------------------------------------------------------------------------------

-- 11. Operador LIMIT restringe o número de linhas retornadas por uma consulta

-- USE sakila;

-- SELECT *
-- FROM  actor
-- LIMIT 4, 10
-- ex. acima do numero 4 me devolva 10 valores

-- USE sakila;

-- SELECT *
-- FROM  actor
-- LIMIT 99, 10
-- acima do numero 99 me devolva 10 valores

-- ----------------------------------------------------------------------------------------

-- 12. Operador REGEXP pesquisa padrões em uma coluna usando expressões regulares

-- USE sakila;

-- SELECT *
-- FROM  actor
-- WHERE first_name REGEXP '^[gcr]a'

-- ----------------------------------------------------------------------------------------

-- 13. INNER JOIN retorna apenas as linhas que têm correspondências em ambas as tabelas.

-- USE sakila;

-- SELECT *
-- FROM  customer 
-- JOIN payment ON customer.customer_id = payment.payment_id

-- ----------------------------------------------------------------------------------------

-- 13. filtrando com JOIN e colocando as colunas na ordem que eu quero

USE sakila;

SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    payment.rental_id,
    payment.amount
FROM  customer 
JOIN payment ON customer.customer_id = payment.payment_id

-- ----------------------------------------------------------------------------------------

-- 13. Adicionando um Alias ( renomear uma tabela ou uma coluna temporariamente na consulta )
-- IMPORTANTE: no SQL a identação também é essencial, cuidado!!


-- USE sakila;

-- SELECT 
--     cus.customer_id,
--     cus.first_name,
--     cus.last_name,
--     pay.rental_id,
--     pay.amount

-- FROM  customer cus
-- JOIN payment pay ON cus.customer_id =pay.payment_id

-- ----------------------------------------------------------------------------------------

-- 13. Multiplas tabelas

USE sakila;

-- SELECT 
--      cus.customer_id,
--      cus.first_name,
--      cus.last_name,
--      adr.address,
--      pay.rental_id,
--      pay.amount

 -- FROM  customer cus
 -- JOIN payment pay 
 --    ON cus.customer_id = pay.payment_id
 -- JOIN address adr 
 --    ON cus.customer_id = adr.address_id

-- ----------------------------------------------------------------------------------------

