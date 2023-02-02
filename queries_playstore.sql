SELECT * FROM analytics
WHERE id = '1880';
-- number 1

SELECT id , app_name FROM analytics
WHERE analytics.last_updated  = '2018-8-01';
-- number 2

SELECT category,  COUNT(*)FROM analytics                     GROUP BY analytics.category; 
-- number 3

SELECT reviews FROM analytics
ORDER BY analytics.reviews
LIMIT 5;
-- number 4

SELECT MAX(reviews), rating FROM analytics
WHERE analytics.rating >= 4.8
GROUP BY rating;
-- number 5

SELECT AVG(rating), category
FROM analytics
GROUP BY category, rating
ORDER BY rating;
-- number 6

SELECT app_name, MAX(price), rating FROM analytics
WHERE rating > 3
GROUP BY analytics.rating, analytics.app_name;
-- number 7

SELECT analytics.min_installs, rating FROM analytics
WHERE analytics.min_installs < 50
ORDER BY rating ASC;
-- number 8

SELECT app_name, rating, reviews FROM analytics
WHERE rating < 3 AND  reviews > 10000;
-- numebr 9

SELECT app_name, MAX(reviews), price FROM analytics
WHERE price BETWEEN 0.10 AND 1
GROUP BY analytics.app_name, analytics.reviews, analytics.price;
-- number 10

SELECT app_name, MAX(last_updated) AS oldest_app FROM analytics
GROUP BY analytics.app_name
ORDER BY oldest_app;
-- number 11

SELECT MAX(price) AS most_expensive_app FROM analytics
ORDER BY app_name;
-- number 12

-- Comments in SQL Start with dash-dash --
