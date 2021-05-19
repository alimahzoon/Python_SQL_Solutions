
-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
-- # Score: 30

-- # ORACLE
SELECT *
FROM
    (SELECT CITY, LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY), CITY)
WHERE ROWNUM = 1
UNION
SELECT *
FROM
    (SELECT CITY, LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY) DESC, CITY)
WHERE ROWNUM = 1;

-- # MYSQL
select city, length(city) from station
order by length(city),city
limit 1;
select city, length(city) from station
order by length(city) desc
limit 1;
