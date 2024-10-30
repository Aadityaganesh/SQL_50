/*
Write a SQL query to calculate the average selling price for each product in the Prices and UnitsSold tables. The average selling price is computed by dividing the total revenue (price * units) for each product by the total units sold. If a product has no sold units, its average selling price should be 0. Round the average selling price to two decimal places and return the result in any order.
*/

-- Solution
SELECT p.product_id, IFNULL(ROUND(SUM(u.units * p.price) / SUM(u.units), 2), 0) AS average_price
FROM prices p
LEFT JOIN UnitsSold u ON p.product_id = u.product_id and u.purchase_date BETWEEN start_date AND end_date
GROUP BY p.product_id;