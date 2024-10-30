/*
Write a SQL query to determine the percentage of users registered in each contest in the Users and Register tables. The result should show the contest ID along with the registration percentage, rounded to two decimal places. Sort the result in descending order by percentage, and in cases of a tie, by contest_id in ascending order.
*/

-- Solution
SELECT r.contest_id,ROUND((COUNT(r.user_id) * 100/ (SELECT COUNT(user_id) FROM Users)),2) AS percentage 
FROM Register r
RIGHT JOIN Users u on u.user_id = r.user_id
WHERE r.contest_id IS NOT NULL
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;