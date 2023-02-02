INSERT INTO products(name, price, can_be_returned)
VALUES ('chair', '44.00', 'false');
-- number 1 

INSERT INTO products (name, price, can_be_returned) 
VALUES ('stool', '25.99', 'true');
-- number 2

INSERT INTO products (name, price, can_be_returned)
VALUES ('table', '124.00', 'false');
-- numbr 3

SELECT * FROM products;
-- number 4

SELECT name FROM products;
-- number 5

SELECT name, price FROM products;
-- number 6

INSERT INTO products(name, price, can_be_returned)
VALUES ('Xbox', '239.00', 'true');
-- number 7

SELECT * FROM products WHERE can_be_returned;
-- number 8

SELECT * FROM products WHERE price < 44.00;
-- number 9

SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;
-- number 10

UPDATE products SET price = price - (price * .2);
-- number 11

DELETE FROM products WHERE price < 25;
-- number 12

UPDATE products SET price = price + 20;
-- number 13

UPDATE products SET can_be_returned = true;
-- number 14