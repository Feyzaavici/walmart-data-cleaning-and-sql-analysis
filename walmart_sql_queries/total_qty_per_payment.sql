-- Calculate the total quantity of items sold per payment method
--List payment_method and total_quantity.

SELECT
	payment_method,
	--COUNT(*) as no_payments ,
	SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method;