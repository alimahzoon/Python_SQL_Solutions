-- # Problem: https://www.hackerrank.com/challenges/the-company/problem
-- # Score: 30


select Company.Company_code, Company.founder,
Count(DISTINCT Employee.Lead_Manager_code),
Count(DISTINCT Employee.senior_manager_code),
count(DISTINCT Employee.manager_code),
count(DISTINCT Employee.employee_code)
from Company inner join Employee on Employee.Company_Code = Company.Company_Code
group by Company.Company_Code, Company.founder 
order by Company.Company_code;