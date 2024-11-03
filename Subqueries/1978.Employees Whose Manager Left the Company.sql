/*
To find the IDs of employees whose salary is strictly less than $30,000 and whose manager has left the company (i.e., the manager's information is no longer in the Employees table), we can perform a self-join on the Employees table.
*/

-- Solution
SELECT employee_id 
FROM Employees
WHERE salary <30000
        AND manager_id IS NOT NULL
        AND manager_id NOT IN (SELECT employee_id from Employees)
GROUP BY employee_id
ORDER BY employee_id;