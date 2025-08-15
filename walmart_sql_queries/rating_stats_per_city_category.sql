--Determine the average,minimum and maximum rating of category for each city
--List the city, average_rating, min_rating and max_rating

SELECT 
	city,
	category,
	MIN(rating) as min_rating,
	MAX(rating) as max_rating,
	AVG(rating) as avg_rating
FROM walmart
GROUP BY city,category