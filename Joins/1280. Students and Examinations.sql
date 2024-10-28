/*
Write a SQL query to find the count of exams attended by each student for each subject from the Examinations table. The output should include each student's student_id, student_name, subject_name, and the count of exams they attended for each subject as attended_exams.

Return the result ordered by student_id and subject_name.
*/

-- Solution

SELECT s.student_id, s.student_name, s1.subject_name, count(e.student_id) as attended_exams 
FROM students s
CROSS JOIN subjects s1
LEFT JOIN Examinations e
    ON s.student_id = e.student_id 
    AND s1.subject_name = e.subject_name
GROUP BY s.student_id, s1.subject_name,s.student_name
ORDER BY s.student_id, s1.subject_name;