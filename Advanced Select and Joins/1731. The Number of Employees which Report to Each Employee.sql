/*
Given the table Employees:

Table: Employees

employee_id (int): Unique ID of each employee
name (varchar): Name of the employee
reports_to (int): ID of the manager to whom the employee reports (nullable if they report to no one)
age (int): Age of the employee
Write a solution to return the employee_id, name of all managers, the number of employees who report directly to them, and the average age of those direct reports (rounded to the nearest integer). The result should be ordered by employee_id.
*/


-- Solution
SELECT e1.employee_id, e1.name, count(*) reports_count, round(avg(e2.age)) as average_age
FROM employees e1
INNER JOIN employees e2 
ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id, e1.name
ORDER BY e1.employee_id;