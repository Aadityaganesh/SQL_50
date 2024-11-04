/*
Table: Customer

customer_id (int)
name (varchar)
visited_on (date)
amount (int)
Question:

Calculate the 7-day moving average of the amount paid by customers at the restaurant. The moving average should include the current day and the six days prior. Round the average to two decimal places and return the results ordered by visited_on in ascending order.
*/

-- Solution
SELECT visited_on, amount, average_amount 
FROM(SELECT visited_on, ROW_NUMBER() OVER() AS row_num,
    SUM(amount2) OVER(ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
    ROUND(AVG(amount2) OVER(ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) as average_amount
    FROM 
    (SELECT visited_on, SUM(amount) AS amount2 
        FROM Customer 
        GROUP BY visited_on ORDER BY visited_on) t
    ) t2 WHERE row_num >= 7;