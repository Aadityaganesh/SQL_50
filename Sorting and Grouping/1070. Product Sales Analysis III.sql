/*
Given the tables Sales and Product:

Table: Sales

sale_id (int): ID of the sale
product_id (int): ID of the product
year (int): Year of the sale
quantity (int): Quantity sold
price (int): Price per unit
Table: Product

product_id (int): ID of the product
product_name (varchar): Name of the product
Write a solution to retrieve the product_id, year, quantity, and price for the first year each product was sold. Return the result in any order.
*/

-- Solution
SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE(product_id, year) IN (SELECT  product_id, MIN(year) FROM Sales GROUP BY product_id)