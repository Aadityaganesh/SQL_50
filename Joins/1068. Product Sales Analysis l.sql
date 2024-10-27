/*
Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

Return the resulting table in any order.
*/

-- Solution

SELECT Product.product_name, Sales.year, Sales.price FROM Sales
LEFT JOIN Product ON Sales.product_id = Product.product_id
ORDER BY Sales.year ASC;