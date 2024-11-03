/*
To find the prices of all products on 2019-08-16 in the Products table, assuming the initial price for all products was 10 before any recorded price change, use this approach:

Table Structure:

Products
product_id (int): Unique identifier for the product.
new_price (int): The updated price of the product on a given date.
change_date (date): The date when the price change occurred.
Goal: Determine the price of each product on 2019-08-16.
*/

-- Solution
SELECT product_id, new_price AS price 
FROM Products
WHERE (product_id, change_date) IN
    (SELECT product_id, MAX(change_date)
    FROM products
    WHERE CHANGE_DATE <= '2019-08-16'
    GROUP BY product_id)

UNION

SELECT product_id, 10 AS price 
FROM Products
WHERE product_id NOT IN
(SELECT product_id
FROM products
WHERE CHANGE_DATE <= '2019-08-16')