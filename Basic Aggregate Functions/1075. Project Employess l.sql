/*
Write a SQL query to calculate the average experience years of employees working on each project in the Project and Employee tables. For each project, the query should compute the average experience of all employees assigned to it, rounding the result to two decimal places.
*/

-- Solution
SELECT p.project_id,ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p
LEFT JOIN Employee e on e.employee_id = p.employee_id
GROUP BY p.project_id;