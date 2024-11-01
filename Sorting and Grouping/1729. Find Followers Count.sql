/*
Given the table Followers:

Table: Followers

user_id (int): ID of the user
follower_id (int): ID of the follower
Write a solution that returns each user along with the number of their followers, ordered by user_id in ascending order.
*/

-- Solution
SELECT user_id, COUNT(*) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;