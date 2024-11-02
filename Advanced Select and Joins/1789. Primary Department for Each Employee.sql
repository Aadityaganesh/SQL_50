/*
Given the Employee table:

Table: Employee

employee_id (int): Unique ID of the employee.
department_id (int): Unique ID of the department to which the employee belongs.
primary_flag (varchar): Indicates whether the department is the primary department for the employee, with values 'Y' (Yes) or 'N' (No).
Write a solution to list all employees with their primary department. For employees who belong to only one department, display that department as their primary.
*/

-- Solution
SELECT employee_id, Department_id
FROM EMPLOYEE
WHERE primary_flag = "Y" OR employee_id IN (SELECT employee_id FROM employee GROUP BY employee_id HAVING COUNT(employee_id) = 1);