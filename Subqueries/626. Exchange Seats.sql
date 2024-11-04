/*

Sure! Here are the table and column names followed by the question.

Table: Seat

Columns:
id (int)
student (varchar)
Question:

Write a solution to swap the seat ID of every two consecutive students. If the number of students is odd, the ID of the last student is not swapped. Return the result table ordered by id in ascending order.
*/

-- Solution
SELECT IF(id < (SELECT MAX(id) FROM Seat), 
        IF(id % 2 = 0, id - 1, id + 1), 
        IF(id % 2 = 0, id - 1, id)) AS id, student
FROM Seat
ORDER BY id;