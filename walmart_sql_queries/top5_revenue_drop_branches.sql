--Identify 5 branch with highest decrese ratio in evevenue compare to last yer (current year 2023 and last year 2022)

-- rdr== last_rev - cr_rev/ls_rev*100

SELECT *,
EXTRACT(YEAR FROM TO_DATE(date, 'DD/MM/YY')) as formated_date
FROM walmary

-- 2022 sales
WITH revenue_2022
AS
(
	SELECT 
		branch,
		SUM(total) as revenue
	FROM walmart
	WHERE EXTRACT(YEAR FROM TO_DATE(date, 'DD/MM/YY'))= 2022
	GROUP BY 1
),

revenue_2023
AS
(
	SELECT 
		branch,
		SUM(total) as revenue
	FROM walmart
	WHERE EXTRACT(YEAR FROM TO_DATE(date, 'DD/MM/YY'))= 2023
	GROUP BY 1
)
SELECT 
	ls.branch,
	ls.revenue as last_year_revenue,
	cs.revenue as cr_year_revenue,
	ROUND((ls.revenue - cs.revenue):: numeric/ls.revenue :: numeric * 100,2) as rev_dec_ratio
	
FROM revenue_2022 as ls
JOIN revenue_2023 as cs
ON ls.branch= cs.branch
WHERE 
	ls.revenue > cs.revenue
ORDER BY 4 DESC
LIMIT 5
