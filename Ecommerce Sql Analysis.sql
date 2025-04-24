-- Average delivery time per location
SELECT Location, AVG(`Delivery Time (min)`) AS `AVERAGE DELIVERY TIME`
FROM ecommerce_reviews
GROUP BY Location;

-- Top Rated Agents
SELECT `Agent Name`, AVG(Rating) AS `Average Rating`
FROM ecommerce_reviews
GROUP BY `Agent Name`
ORDER BY `Average Rating` DESC;

-- Most Common Order Types by Location

SELECT Location, `Order Type`, COUNT(*) AS `Total Orders`
FROM ecommerce_reviews
GROUP BY Location, `Order Type`
ORDER BY Location, `Total Orders` DESC;

-- Orders with Delivery Time Greater Than 60 Minutes

SELECT *
FROM ecommerce_reviews
WHERE `Delivery Time (min)` > 60;

-- High Price Range Orders with No Discount

SELECT *
FROM ecommerce_reviews
WHERE `Price Range` = 'High' AND `Discount Applied` = 'No';

-- Order Accuracy Rate by Agent

SELECT `Agent Name`,
       SUM(CASE WHEN `Order Accuracy` = 'Correct' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS `Accuracy %`
FROM ecommerce_reviews
GROUP BY `Agent Name`
ORDER BY `Accuracy %` DESC;

-- Top 5 Fastest Delivery Agents

SELECT `Agent Name`, AVG(`Delivery Time (min)`) AS `Avg Delivery Time`
FROM ecommerce_reviews
GROUP BY `Agent Name`
ORDER BY `Avg Delivery Time` ASC
LIMIT 5;

-- Locations with Most Orders
SELECT Location, COUNT(*) AS `Total Orders`
FROM ecommerce_reviews
GROUP BY Location
ORDER BY `Total Orders` DESC;
