/*
You are given a table named Views, which records information about articles viewed by different viewers. Each row in the table indicates that a specific viewer has viewed a specific article written by an author on a given date.
Write a SQL query to find all authors who have viewed at least one of their own articles.
*/

-- Solution
SELECT DISTINCT author_id as id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;