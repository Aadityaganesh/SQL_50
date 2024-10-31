/*
To find the required data for each month and country:

- Extract the month and year from trans_date as month_year.
- Group the data by month_year and country.
- Count the total number of transactions and sum up their amount.
- Filter transactions where state = 'approved', counting and summing the amount of approved transactions.

The result should have the columns month_year, country, transaction_count, total_amount, approved_count, and approved_amount. Return the result in any order.
*/

-- Solution
Select DATE_FORMAT(trans_date,"%Y-%m") AS month, country, COUNT(state)AS trans_count, SUM(IF(state = "approved", 1, 0)) AS approved_count, SUM(amount) as trans_total_amount, SUM(IF(state="approved", amount,0)) AS approved_total_amount
FROM  transactions
GROUP BY month,country;