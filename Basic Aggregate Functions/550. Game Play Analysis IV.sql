/*
To find the fraction of players who logged in again on the day after their first login, first identify each player's first login date, then check if they logged in the next day. Divide the number of players with consecutive-day logins by the total number of players, rounded to 2 decimal places.
*/

-- Solution
SELECT ROUND(SUM(player_login)/ COUNT(DISTINCT player_id),2) AS fraction  
FROM (SELECT player_id ,DATEDIFF(event_date, MIN(event_date) OVER(PARTITION BY player_id ))=1 AS player_login FROM activity) AS new;