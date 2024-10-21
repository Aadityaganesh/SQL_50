/*
You are given a table Person that contains id and email. The id column is the primary key, and emails are stored in lowercase. Some emails may be duplicated, and your task is to delete the duplicate emails, keeping only the one with the smallest id.

Write a SQL query to delete all duplicate emails from the table, retaining only one entry for each unique email with the smallest id.

For SQL users: Use a DELETE statement to remove duplicates.

For Pandas users: Modify the Person DataFrame in place.
*/

-- Solution

DELETE p1 FROM person p1, person p2 
WHERE p1.email = p2.email AND p1.id > p2.id;