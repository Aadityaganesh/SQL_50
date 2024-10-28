/*
Write a SQL query to find the id and name of managers who have at least five direct reports in the Employee table. A direct report is an employee whose managerId is the id of the manager.
*/

-- Solution

SELECT ee.name FROM Employee e
INNER JOIN Employee ee
WHERE e.managerId = ee.id
GROUP BY e.managerId
HAVING count(*)>=5;