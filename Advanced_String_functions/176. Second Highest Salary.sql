/*
You are given a table Employee that contains information about employees' salaries. The id column is the primary key, and each row represents the salary of an employee.

Write a SQL query to find the second highest distinct salary from the table. If there is no second highest salary, return null.

Return None if there is no second highest salary.
*/

-- Solution 

SELECT (SELECT DISTINCT salary 
        FROM Employee 
        ORDER BY salary DESC 
        LIMIT 1 OFFSET 1) AS SecondHighestSalary;