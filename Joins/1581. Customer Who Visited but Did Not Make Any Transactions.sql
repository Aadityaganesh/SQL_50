/*
Write a SQL query to find the customer_id from the Visits table for customers who visited the mall without making any transactions, along with the count of these transaction-free visits for each customer. Use the Transactions table to identify visits without transactions. Return the result sorted in any order.
*/

-- Solution

SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits
LEFT JOIN Transactions using(visit_id)
WHERE transaction_id IS NULL
GROUP BY customer_id;