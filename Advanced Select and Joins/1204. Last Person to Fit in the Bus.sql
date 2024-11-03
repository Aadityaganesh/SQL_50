/*
To determine the name of the last person who can board the bus without exceeding the weight limit of 1000 kg, we can progressively add each person's weight in the order defined by the turn column until the total weight exceeds 1000 kg. The query stops just before this weight limit is surpassed.

Table Structure:

Queue
person_id (int): Unique identifier for each person.
person_name (varchar): Name of the person.
weight (int): Weight of the person in kilograms.
turn (int): Order in which people will board the bus.
Goal: Find the name of the last person who can board the bus without exceeding the 1000 kg weight limit.
*/

-- Solution
with Cummulatice_weight as (SElECT *,sum(weight) OVER(ORDER BY turn ASC) AS cummulative_sum FROM Queue)
SELECT person_name FROM Cummulatice_weight
WHERE cummulative_sum <= 1000
ORDER BY cummulative_sum DESC
LIMIT 1;