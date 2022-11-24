-- Comments in SQL Start with dash-dash --
--1. Find the app with an ID of 1880.--
SELECT * FROM analytics
WHERE ID = 1880;
--2. Find the ID and app name for all apps that were last updated on August 01, 2018.--
SELECT id, app_name FROM analytics
WHERE last_updated = '2018-08-01';
--3. Count # of apps in each category 
SELECT category, COUNT(category) FROM analytics
GROUP BY category;
--4. Find top 5 most-reviewed and number of reviews
SELECT app_name, reviews, rating FROM analytics
ORDER BY reviews DESC
LIMIT 5;
--5. Most Reviews with rating >= 4.8---
SELECT app_name, reviews, rating FROM analytics
WHERE rating >= 4.8 
ORDER BY reviews DESC
--6. Avg rating for each category, order by high to low--
SELECT category, AVG(rating) FROM analytics
GROUP BY category
ORDER BY AVG(rating) DESC;
--7. Find name, price, rating for most expensive app with rating less than 3--
SELECT app_name, price, rating FROM analytics
WHERE rating < 3
ORDER BY price DESC LIMIT 1;
--8. Find all apps with min install no greater than 50, have a rating, order by highest rated--
SELECT * FROM analytics
WHERE min_installs < 51 AND rating IS NOT NULL
ORDER BY rating DESC LIMIT 3;
--9. Name of all apps rated less than 3 with atleast 10000 reviews--
SELECT app_name FROM analytics
WHERE rating < 3 AND reviews >= 10000;
--10. Top 10 most reviewed apps, cost between $1 and $0.10--
SELECT app_name, reviews FROM analytics
WHERE price <= 1.00 AND price >= 0.10
ORDER BY reviews DESC
LIMIT 10;
--11. Most out of date app--
SELECT * FROM analytics
ORDER BY last_updated ASC
LIMIT 1;
--12. Most expensive app--
SELECT app_name, price FROM analytics
WHERE price = (SELECT MAX(price) FROM analytics);
--13. Count all reviews in Store--
SELECT SUM(reviews) FROM analytics;
--14. Find all categories with more than 300 apps in them--
SELECT category, COUNT(app_name) as apps FROM analytics
GROUP BY category
HAVING COUNT(app_name) > 300;
--15. Highest proportion of min_installs to reviews, min install 100k. Show name, reviews, installs, proportion--
SELECT app_name, reviews, min_installs, min_installs/reviews as "MIvsReviews" FROM analytics
WHERE min_installs >= 100000
ORDER BY "MIvsReviews" DESC LIMIT 1;

