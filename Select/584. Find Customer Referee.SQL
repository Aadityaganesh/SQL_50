/*
You are given a table named Customer, which contains information about customers, including their unique IDs, names, and the IDs of the customers who referred them.

Write a SQL query to find the names of customers who are not referred by the customer with an ID of 2.

Return the result table containing only the customer names, and the order of the results does not matter.
*/

-- Solution
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;