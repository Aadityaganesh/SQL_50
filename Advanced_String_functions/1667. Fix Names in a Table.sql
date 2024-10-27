/*
Write a SQL query to fix the names in the Users table so that only the first character of each name is uppercase and the rest are lowercase. The result should be ordered by user_id.
*/

-- Solution

SELECT Users.user_id , CONCAT(UPPER(SUBSTR(Users.name,1,1)),LOWER(SUBSTR(Users.name,2))) AS name 
FROM Users
ORDER BY Users.user_id ASC
