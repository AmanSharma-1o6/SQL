-- Clause in SQL
use company;
-- WHERE clause 
SELECT * FROM employee 
WHERE age>24;

-- LIMIT  clause
SELECT * FROM employee
LIMIT 5;

-- ORDER BY clause
SELECT * FROM employee
ORDER BY age ASC;

-- TO GET HIGHEST SALARY
SELECT * FROM employee
ORDER BY Salary DESC 
LIMIT 1;

-- TO GET TOP 2 HIGHEST SALARY
SELECT * FROM employee
ORDER BY Salary DESC 
LIMIT 2;