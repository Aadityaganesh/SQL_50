/*
Write a SQL query to retrieve the movie and description from the Cinema table for movies that have an odd-numbered id and a description that is not "boring". Order the result by rating in descending order.
*/

-- Solution
SELECT * FROM Cinema
WHERE id%2!=0 AND description <> "boring"
ORDER BY rating DESC;