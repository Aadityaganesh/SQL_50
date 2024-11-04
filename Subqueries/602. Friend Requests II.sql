/*
Table: RequestAccepted

requester_id (int)
accepter_id (int)
accept_date (date)
Question:

Identify the user who has the highest number of friends based on accepted requests in the RequestAccepted table. Return the user ID and the count of their friends. There will be only one user with the most friends.
*/

-- Solution
SELECT id, COUNT(DISTINCT friend_id) AS num
FROM (SELECT requester_id AS id, accepter_id AS friend_id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id, requester_id AS friend_id
    FROM RequestAccepted) AS all_friends
GROUP BY id
ORDER BY num DESC
LIMIT 1;