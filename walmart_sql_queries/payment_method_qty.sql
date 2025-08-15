--Find diffrenet payment method and number of transaction, number of qty sold

SELECT
	payment_method,
	COUNT(*) as no_payments ,
	SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method;
