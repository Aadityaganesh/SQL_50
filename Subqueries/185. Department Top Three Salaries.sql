/*
Table: Employee

id (int)
name (varchar)
salary (int)
departmentId (int)
Table: Department

id (int)
name (varchar)
Question:

Identify employees who are considered high earners in each department. A high earner is defined as an employee whose salary is among the top three unique salaries within their respective department.

Return the employee's ID, name, salary, and the department name.
*/

-- Solution
SELECT d.Name as Department, e.name as Employee, e.Salary
FROM Department d
CROSS JOIN Employee e ON e.departmentid = d.id
WHERE (SELECT COUNT(DISTINCT salary) 
        FROM employee e1 
        WHERE e1.departmentid =  e.departmentId and e1.salary >= e.salary) <= 3
ORDER BY d.name, e.salary DESC;