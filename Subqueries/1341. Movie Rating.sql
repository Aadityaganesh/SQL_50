/*
Tables:

Movies

Columns:
movie_id (int)
title (varchar)
Users

Columns:
user_id (int)
name (varchar)
MovieRating

Columns:
movie_id (int)
user_id (int)
rating (int)
created_at (date)
Question:

Write a solution to achieve the following:

Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.
*/

-- Solution
WITH UserRatingCount AS (
    SELECT u.name, COUNT(mr.movie_id) AS rating_count
    FROM Users u
    JOIN MovieRating mr ON u.user_id = mr.user_id
    GROUP BY u.name),

MovieFeb2020Rating AS (
    SELECT m.title, AVG(mr.rating) AS avg_rating
    FROM Movies m
    JOIN MovieRating mr ON m.movie_id = mr.movie_id
    WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY m.title)

SELECT (SELECT name FROM UserRatingCount
        ORDER BY rating_count DESC, name ASC
        LIMIT 1) AS results

UNION ALL

SELECT (SELECT title FROM MovieFeb2020Rating
        ORDER BY avg_rating DESC, title ASC
        LIMIT 1) AS results;