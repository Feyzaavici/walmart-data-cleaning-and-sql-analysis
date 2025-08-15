--Categorize sales into 3 group MORNING, AFTERNOON, EVENING
-- Find out which of the shift and number of invoices

SELECT 
	branch,
	CASE 
		WHEN EXTRACT (HOUR FROM(time::time))<12 THEN 'Morning'
		WHEN EXTRACT (HOUR FROM(time::time)) BETWEEN 12 AND 17 THEN 'Afternoon'
		ELSE 'Evening'
	END shift,
	COUNT (*)
FROM walmart
GROUP BY 1,2
ORDER BY 1,3 DESC
