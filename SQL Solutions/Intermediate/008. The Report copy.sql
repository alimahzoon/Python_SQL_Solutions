-- Problem: https://www.hackerrank.com/challenges/the-report/problem


SELECT CASE
WHEN G.Grade<8 THEN NULL 
ELSE S.Name 
END AS Name, G.Grade, S.Marks 
FROM Students as S INNER JOIN Grades as G 
ON S.Marks BETWEEN G.Min_Mark and G.Max_Mark 
ORDER BY G.Grade DESC,Name,Marks;