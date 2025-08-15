--Calculate the total profit for each category by considering total_profit as
--(unite_price* profit_margin).
--List category and total_profit, ordered from highnest to lowest profit

SELECT 
	category,
	SUM(total) as total_revenue,
	SUM(total* profit_margin) as profit
FROM walmart
GROUP BY 1
