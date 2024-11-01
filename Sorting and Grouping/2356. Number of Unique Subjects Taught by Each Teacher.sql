/*
Given the table Teacher with the columns:

teacher_id (int): ID of the teacher
subject_id (int): ID of the subject
dept_id (int): ID of the department
Write a solution to calculate the number of unique subjects each teacher teaches in the university.
*/

-- Solution
SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt 
FROM Teacher
GROUP BY teacher_id;