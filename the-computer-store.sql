
-- https://en.wikibooks.org/wiki/SQL_Exercises/The_computer_store
-- 1. Select the names of all the products in the store.

SELECT * FROM products;

-- 2. Select the names and the prices of all the products in the store.

SELECT name, price FROM products;

-- 3. Select the name of the products with a price less than or equal to $200.

SELECT name FROM products WHERE price <= 200;

-- 4. Select all the products with a price between $60 and $120.~

SELECT * FROM products WHERE price >= 60 AND price <= 120;
--  OR
SELECT * FROM products WHERE price BETWEEN 60 AND 120;

-- 5. Select the name and price in cents (i.e., the price must be multiplied by 100).~

SELECT Name, price * 100 FROM products;
-- OR
SELECT Name, price * 100 AS priceCents FROM products;