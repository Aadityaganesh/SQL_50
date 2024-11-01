/*
Given the table Activity with the columns:

user_id (int): ID of the user
session_id (int): ID of the session
activity_date (date): Date of the activity
activity_type (enum): Type of activity ('open_session', 'end_session', 'scroll_down', 'send_message')
Write a solution to find the daily active user count for each day in the period of 30 days ending on 2019-07-27 (inclusive). A user is considered active on a given day if they made at least one activity on that day.
*/

-- Solution
SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN DATE("2019-07-27") - INTERVAL 29 DAY AND DATE("2019-07-27")
GROUP BY activity_date
HAVING COUNT(user_id) > 0
ORDER BY activity_date;