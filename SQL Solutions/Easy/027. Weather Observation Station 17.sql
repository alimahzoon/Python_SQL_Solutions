-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-17/problem
-- # Score: 15

-- # ORACLE
SELECT *
FROM (
    SELECT ROUND(Long_W, 4)
    FROM Station
    WHERE Lat_N > 38.7780
    ORDER BY Lat_N ASC)
WHERE ROWNUM = 1;


-- # MYSQL
SELECT ROUND(LONG_W, 4)
FROM STATION 
WHERE LAT_N > 38.7780 
ORDER BY LAT_N ASC 
LIMIT 1;