/*
Write a SQL query to find the id of all dates in the Weather table where the temperature was higher compared to the previous day (recordDate - 1). Return the result in any order.
*/

-- Solution
SELECT w1.id 
FROM Weather w1
INNER JOIN Weather w2 ON DATE_SUB(w1.recordDate, INTERVAL 1 DAY) = w2.recordDate
WHERE w1.temperature  > w2.temperature;