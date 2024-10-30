/*
To find each query's quality and poor query percentage, calculate the following:

1. Query Quality: This is the average of the ratio between each query’s rating and its position. Specifically, for each query_name, calculate (rating / position) for each row and then find the average of these values.
2. Poor Query Percentage: This is the percentage of all rows for a query_name where the rating is less than 3.
The result table should include query_name, quality (rounded to 2 decimal places), and poor_query_percentage (rounded to 2 decimal places), and can be returned in any order.
*/

-- Solution
SELECT query_name, ROUND(AVG(rating * 1 / position),2) AS quality, ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END)* 100/COUNT(*),2) AS poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name;