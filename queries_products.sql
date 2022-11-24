-- Comments in SQL Start with dash-dash --
--Add product according to step 1--
INSERT INTO products (name, price, can_be_returned)
VALUES ('chair', 44.00, false);
--Add product according to step 2--
INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', 25.99, true);
--Add product according to step 3--
INSERT INTO products (name, price, can_be_returned)
VALUES ('table', 124.00, false);
--Display according to step 4--
SELECT * FROM products;
--Display all names according to step 5--
SELECT name FROM products;
--Display name/price according to step 6--
SELECT name, price FROM products;
--Add product according to step 7--
INSERT INTO products (name, price, can_be_returned)
VALUES ('tape', 0.99, true);
--Display all that can be returned (8)--
SELECT * FROM products
WHERE can_be_returned = 'true';
--Display price < $44 (9)--
SELECT * FROM products
WHERE price < 44;
--Display products between $22.50 and $99.99 (10)--
SELECT * FROM products
WHERE price >=22.50 OR price <= 99.99;
--Everything is $20 off (11)--
UPDATE products SET price = price - 20;
--Remove everything under $25 (12)--
DELETE FROM products WHERE price <25;
--Increase remaining price by $20 (13)--
UPDATE products SET price = price + 20;
--Everything is returnable (14)--
UPDATE products SET can_be_returned = true;