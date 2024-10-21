/* 
You are given a table named Products, which contains information about various products. Each product has a unique product_id, a flag indicating whether it is low fat (low_fats), and a flag indicating whether it is recyclable (recyclable).
Write a SQL query to find the IDs of products that are both low fat and recyclable.
*/

-- Solution
select product_id 
from Products 
where low_fats= "Y" and recyclable = "Y";