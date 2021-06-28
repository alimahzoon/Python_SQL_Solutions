-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
-- # Score: 40


-- # Oracle
SELECT ROUND(MEDIAN(Lat_N), 4)
FROM Station;


-- # MySQL
SELECT ROUND(AVG(LAT_N),4) as median_val
FROM (
SELECT LAT_N, @rownum:=@rownum+1 as `row_number`, @total_rows:=@rownum
  FROM STATION, (SELECT @rownum:=0) r
  -- WHERE LAT_N is NOT NULL
  -- put some where clause here if you need 
  ORDER BY LAT_N
) as dd
WHERE dd.row_number IN (FLOOR((@total_rows+1)/2), FLOOR((@total_rows+2)/2) );