
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

-- 6. Compute the average price of all the products.~

SELECT AVG(Price) FROM products;

-- 7. Compute the average price of all products with manufacturer code equal to 2.

SELECT AVG(price) FROM products WHERE manufacturer = 2;

-- 8. Compute the number of products with a price larger than or equal to $180.

SELECT COUNT(*) FROM products WHERE price >= 180;

-- 9. Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).~

SELECT name, price FROM products WHERE price >=180  ORDER BY price DESC, name;

-- 10. Select all the data from the products, including all the data for each product's manufacturer.~

--  Without INNER JOIN 
SELECT * FROM products, manufacturers
WHERE products.manufacturer = manufacturers.code;

-- With INNER JOIN 
SELECT *
FROM products INNER JOIN manufacturers
ON products.manufacturer = manufacturers.code;

-- 11. Select the product name, price, and manufacturer name of all the products.


-- 12. Select the average price of each manufacturer's products, showing only the manufacturer's code.


-- 13. Select the average price of each manufacturer's products, showing the manufacturer's name.


-- 14. Select the names of manufacturer whose products have an average price larger than or equal to $150.


-- 15. Select the name and price of the cheapest product.


-- 16. Select the name of each manufacturer along with the name and price of its most expensive product.


-- 17. Select the name of each manufacturer which have an average price above $145 and contain at least 2 different products.


-- 18. Add a new product: Loudspeakers, $70, manufacturer 2.


-- 19. Update the name of product 8 to "Laser Printer".


-- 20. Apply a 10% discount to all products.


-- 21. Apply a 10% discount to all products with a price larger than or equal to $120.