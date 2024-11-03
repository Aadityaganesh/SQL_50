/*
To categorize bank accounts based on their income into "Low Salary," "Average Salary," and "High Salary" and count the number of accounts in each category, we can use conditional aggregation with CASE statements.

Table Structure:

Accounts
account_id (int): Unique identifier for each account.
income (int): Monthly income for the account.
Goal: Calculate the number of accounts in each salary category.
*/

-- Solution
SELECT 'Low Salary' AS category, 
       COUNT(if(income<20000,1,null)) AS accounts_count
FROM Accounts
UNION ALL
SELECT 'Average Salary', 
       COUNT(if(income>=20000 and income<=50000,1,null))
FROM Accounts
UNION ALL
SELECT 'High Salary', 
       COUNT(if(income>50000,1,null))
FROM Accounts;