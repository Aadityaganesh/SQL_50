/*
Write a SQL query to retrieve the name and bonus of each employee from the Employee and Bonus tables where the employee’s bonus is less than 1000. Return the result in any order.
*/

-- Solution

SELECT e.name,b.bonus from Employee e
LEFT JOIN Bonus b on e.empId = b.empId
WHERE b.bonus<1000 or b.bonus is null;






