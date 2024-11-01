/*
Given the table Courses:

Table: Courses

student (varchar): Name of the student
class (varchar): Name of the class
Write a solution to find all the classes that have at least five students enrolled.
*/

-- Solution
SELECT class 
FROM Courses
GROUP BY class
HAVING COUNT(student) >=5;