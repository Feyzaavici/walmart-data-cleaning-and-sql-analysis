--Identify the busiest day for each branch based on the number of transactions

SELECT *
FROM(
	SELECT 
		branch,
		TO_CHAR(TO_DATE(date,'DD/MM/YY'),'Day') as day_name,
		COUNT(*) as no_transactions,
		RANK()OVER(PARTITION BY branch ORDER BY COUNT(*) DESC ) as rank
	FROM walmart
	GROUP BY 1,2
)sub
WHERE rank=1