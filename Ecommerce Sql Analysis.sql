SELECT Location, COUNT(*) AS `Total Orders`
FROM ecommerce_reviews
GROUP BY Location
ORDER BY `Total Orders` DESC;
