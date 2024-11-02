/*
Given the Triangle table:

Table: Triangle

x (int): Length of the first line segment.
y (int): Length of the second line segment.
z (int): Length of the third line segment.
Write a solution to determine if each row of line segment lengths (x, y, and z) can form a triangle by checking if they satisfy the triangle inequality theorem: x + y > z, x + z > y, and y + z > x.
*/

-- Solution
SELECT x, y, z, CASE WHEN x + y > z AND y + z > x AND x + z > y THEN 'Yes' ELSE 'No' END AS triangle
FROM Triangle;