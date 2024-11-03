/*
To find all numbers that appear at least three times consecutively in the Logs table:

Table Structure:

Logs
id (int): Unique, primary key, auto-incremented starting from 1.
num (varchar): The number that appears in each log entry.
Goal: Identify numbers that appear consecutively for at least three rows.
*/

-- Solution
SELECT DISTINCT num AS ConsecutiveNums 
FROM (SELECT num, LEAD(num) OVER (ORDER BY id) AS num1, LAG(num) OVER (ORDER BY id) AS num2
    from logs) AS checking
WHERE num = num1 and num = num2;