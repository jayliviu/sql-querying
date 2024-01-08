-- Comments in SQL Start with dash-dash --
SELECT app_name FROM analytics WHERE id = 1880;
SELECT id, app_name FROM analytics WHERE last_updated >= '08-01-2018';
SELECT category, COUNT(category) FROM analytics GROUP BY category;
SELECT app_name, SUM(reviews) AS sum FROM analytics GROUP BY app_name ORDER BY sum desc LIMIT 5;
SELECT app_name, SUM(reviews) AS sum FROM analytics WHERE rating >= 4.8  GROUP BY app_name ORDER BY sum desc LIMIT 1 ;
SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating desc;
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;
SELECT app_name FROM analytics where min_installs < 50 AND rating <> 0 ORDER BY rating desc;
SELECT app_name,price, SUM(reviews) AS sum_revs FROM analytics WHERE price BETWEEN .10 AND 1 GROUP BY app_name, price ORDER BY sum_revs desc LIMIT 10;
SELECT app_name, MIN(last_updated) AS min FROM analytics GROUP BY app_name ORDER BY min LIMIT 1;
SELECT app_name, price FROM analytics GROUP BY app_name, price ORDER BY price desc LIMIT 1;
SELECT SUM(reviews) FROM analytics;
SELECT category, COUNT(category) FROM analytics GROUP BY category HAVING COUNT(category) > 300;
SELECT app_name, reviews, min_installs, AVG(min_installs + reviews) AS avg FROM analytics GROUP BY app_name, reviews, min_installs ORDER BY avg desc LIMIT 1;
