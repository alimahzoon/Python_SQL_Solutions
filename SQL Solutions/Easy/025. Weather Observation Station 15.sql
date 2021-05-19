-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-15/problem
-- # Score: 15


-- # ORACLE
SELECT ROUND(Long_W, 4)
FROM (
    SELECT Long_W
    FROM Station
    WHERE Lat_N < 137.2345
    ORDER BY Lat_N DESC
    )
WHERE ROWNUM = 1;

-- # MYSQL
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC 
LIMIT 1;