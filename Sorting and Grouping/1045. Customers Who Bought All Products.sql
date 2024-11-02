/*
Given the tables Customer and Product:

Table: Customer

customer_id (int): ID of the customer
product_key (int): ID of the product purchased, references Product table
Table: Product

product_key (int): Primary key, representing unique products
Write a solution to identify the customer_ids from the Customer table who have purchased every product listed in the Product table.
*/

-- Solution
SELECT DISTINCT customer_id 
FROM Customer
GROUP BY Customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);