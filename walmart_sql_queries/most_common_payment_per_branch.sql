--Determine the most common payment method for each branch.Display branch and the preferred_payment_method.
WITH cte
AS
(
	SELECT 
		branch,
		payment_method,
		COUNT(*) as total_trans,
		RANK()OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) as rank
	FROM walmart
	GROUP BY 1,2
)
SELECT * 
FROM cte
WHERE rank =1
