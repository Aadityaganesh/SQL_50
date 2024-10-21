/*
You are given a table Patients that contains information about patients in a hospital, including their unique patient_id, patient_name, and their medical conditions. The conditions column can contain multiple condition codes separated by spaces, or it can be empty.

You need to find all patients who have Type I Diabetes, which is indicated by any condition code that starts with the prefix DIAB1.

Write a SQL query to retrieve the patient_id, patient_name, and conditions of those patients who have Type I Diabetes. The results can be returned in any order.
*/

-- Solution

SELECT * FROM Patients
WHERE LOCATE('DIAB1', conditions) = 1 OR LOCATE(' DIAB1', conditions) != 0;