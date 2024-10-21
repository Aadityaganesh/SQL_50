/*
You are given a table Users that contains information about users who signed up on a website. Some of the emails provided by the users are invalid. An email is considered valid if it meets the following criteria:

The email prefix can contain letters (both uppercase and lowercase), digits, underscores (_), periods (.), and dashes (-). However, the prefix must start with a letter.

The domain of the email must be exactly @leetcode.com.
Write a SQL query to find the user_id, name, and mail of users who have valid emails, as per the above conditions.
*/

-- Solution
SELECT user_id, name, mail 
FROM Users
WHERE mail REGEXP "^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode(\\?com)?\\.com$";