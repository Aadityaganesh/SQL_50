/*
You are given a table named Tweets, which contains all the tweets in a social media app. Each row in the table represents a tweet with a unique tweet_id and its corresponding content.
Write a SQL query to find the IDs of the invalid tweets. A tweet is considered invalid if the number of characters in the content is strictly greater than 15.
*/

-- Solution
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;