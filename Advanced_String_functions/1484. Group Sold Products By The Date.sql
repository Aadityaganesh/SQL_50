/*
You are given a table Activities that records the sales of products in a market, including the sell_date and the product sold on that date. There may be duplicate rows in the table, as some products may be sold multiple times on the same date.

Write a SQL query to find, for each sell_date, the number of distinct products sold and the names of those products. The product names for each date should be sorted lexicographically and separated by commas.

Return the results sorted by sell_date.
*/

-- Solution

SELECT  sell_date,
        COUNT(DISTINCT product) as num_sold,
        GROUP_CONCAT(DISTINCT product ORDER BY product ) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date ASC;