/*
Write a solution to find the percentage of customers' first orders that are immediate (where the preferred delivery date is the same as the order date), rounded to 2 decimal places.
*/

-- Solution
WITH orders AS
(SELECT *,(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) AS is_immediate
FROM Delivery
WHERE (customer_id,order_date) IN
(SELECT customer_id, MIN(order_date) FROM Delivery Group BY customer_id))

SELECT ROUND(AVG(is_immediate)*100,2) AS immediate_percentage