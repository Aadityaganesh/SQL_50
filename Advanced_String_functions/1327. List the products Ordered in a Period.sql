/*
You are given two tables: Products and Orders. The Products table contains information about the company's products, while the Orders table records the orders placed for these products, including the order date and the number of units ordered.

Write a SQL query to retrieve the names of products that have had at least 100 units ordered in February 2020. The query should return the product names along with the total number of units ordered in February 2020.

Return the results in any order.
*/

-- Solution

SELECT P.product_name, sum(O.unit) as unit FROM Products P
LEFT JOIN Orders O on P.product_id = O.product_id
WHERE year(O.Order_date) = '2020' and month(O.Order_date) = '02'
GROUP BY P.product_id
HAVING SUM(O.unit) >= 100