/*
You are given a table named World, which contains information about various countries, including their names, continents, areas, populations, and GDP values.
Write a SQL query to find the names, populations, and areas of countries that qualify as big countries. A country is considered "big" if it meets either of the following criteria:
	- It has an area of at least three million square kilometers (3,000,000 km²).
	- It has a population of at least twenty-five million people (25,000,000).
*/

-- Solution
SELECT name, population, area
FROM World
WHERE population >= 25000000 OR area >= 3000000;