-- Problem: https://www.hackerrank.com/challenges/the-pads/problem


-- #1 Solution
SELECT name, concat('(',SUBSTR(Occupation, 1,1),')') FROM OCCUPATIONS order by name;
SELECT 'There are a total of', count(occupation), concat(LOWER(occupation),'s.') As lower from occupations group by occupation order by count(occupation), lower;


-- #2 Solution
SELECT concat(NAME, CASE WHEN occupation = "Doctor" THEN "(D)" WHEN occupation = "Professor" THEN "(P)" WHEN occupation = "Singer" THEN "(S)" WHEN occupation = "Actor" THEN "(A)" END )
FROM OCCUPATIONS ORDER BY NAME; SELECT "There are a total of", COUNT(OCCUPATION), concat(LOWER(OCCUPATION),"s.") FROM OCCUPATIONS GROUP BY OCCUPATION ORDER BY COUNT(OCCUPATION) ASC, OCCUPATION ASC;
