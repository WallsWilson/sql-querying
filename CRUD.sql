INSERT INTO products(name, price, can_be_returned)
VALUES ('chair', '44.00', 'false');

INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', '25.99', 'true');

INSERT INTO products (name, price, can_be_returned)
VALUES ('table', '124.00', 'false');

SELECT * FROM products;

SELECT name FROM products;

SELECT name, price FROM products;

INSERT INTO products(name, price, can_be_returned)
VALUES ('Xbox', '239.00', 'true');

SELECT * FROM products WHERE can_be_returned;

SELECT * FROM products WHERE price < 44.00;

SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

UPDATE products SET price = price - (price * .2);

DELETE FROM products WHERE price < 25;

UPDATE products SET price = price + 20;

UPDATE products SET can_be_returned = true;

SELECT * FROM analytics
WHERE id = '1880';

SELECT id , app_name FROM analytics
WHERE analytics.last_updated  = '2018-8-01';

SELECT category,  COUNT(*)FROM analytics                     GROUP BY analytics.category; 

SELECT reviews FROM analytics
ORDER BY analytics.reviews
LIMIT 5;

SELECT MAX(reviews), rating FROM analytics
WHERE analytics.rating >= 4.8
GROUP BY rating;


SELECT AVG(rating), category
FROM analytics
GROUP BY category, rating
ORDER BY rating;

SELECT app_name, MAX(price), rating FROM analytics
WHERE rating > 3
GROUP BY analytics.rating, analytics.app_name;


SELECT analytics.min_installs, rating FROM analytics
WHERE analytics.min_installs < 50
ORDER BY rating ASC;

SELECT app_name, rating, reviews FROM analytics
WHERE rating < 3 AND  reviews > 10000;

SELECT app_name, MAX(reviews), price FROM analytics
WHERE price BETWEEN 0.10 AND 1
GROUP BY analytics.app_name, analytics.reviews, analytics.price;

SELECT app_name, MAX(last_updated) AS oldest_app FROM analytics
GROUP BY analytics.app_name
ORDER BY oldest_app;

SELECT MAX(price) AS most_expensive_app FROM analytics
ORDER BY app_name;

SELECT reviews, COUNT(*) FROM analytics
GROUP BY analytics.reviews;