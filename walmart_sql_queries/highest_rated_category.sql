--Identify the hignest-rated category in each branch, displaying the branch, category
-- AVG RATING

SELECT *
FROM(
	SELECT 
	 	branch,
		category,
		AVG(rating) as avg_rating,
		RANK()OVER(PARTITION BY branch ORDER BY AVG(rating) DESC) as rank
	 FROM walmart
	 GROUP BY branch, category
 )sub 
WHERE rank=1