/*
Table: Insurance

pid (int)
tiv_2015 (float)
tiv_2016 (float)
lat (float)
lon (float)
Question:

Calculate the total investment value in 2016 (tiv_2016) for policyholders who meet the following criteria:

Their tiv_2015 value is shared with at least one other policyholder.
They are located in a unique city, meaning no other policyholder shares their (latitude, longitude) pair.
Return the sum of tiv_2016 values, rounded to two decimal places.
*/

-- Solution
SELECT ROUND(SUM(tiv_2016),2) as tiv_2016
FROM Insurance
WHERE tiv_2015 IN (SELECT tiv_2015 FROM Insurance GROUP BY tiv_2015 HAVING COUNT(*) > 1)
        AND (lat, lon) IN (SELECT lat, lon FROM Insurance GROUP BY lat, lon HAVING COUNT(*) = 1);