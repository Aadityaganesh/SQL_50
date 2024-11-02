/*
Given the table MyNumbers:

Table: MyNumbers

num (int): Contains integer values, with possible duplicates
Write a solution to find the largest number in MyNumbers that appears only once. If there are no such numbers, return NULL.
*/

-- Solution
SELECT MAX(num) as num
FROM(SELECT num
    FROM mynumbers
    GROUP BY num
    HAVING COUNT(num) = 1) AS high_num;