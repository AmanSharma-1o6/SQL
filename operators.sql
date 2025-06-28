-- operators in sql
use company;
CREATE TABLE Employee(
Employee_ID INT PRIMARY KEY, Name VARCHAR(50) NOT NULL, Age INT NOT NULL, Hometown VARCHAR(50), Salary INT NOT NULL
);
INSERT INTO Employee(Employee_ID, Name, Age, Hometown, Salary)
VALUES
(101, "Ram", 27, "Agra", 12000),
(102, "Raj", 24, "Delhi", 15000),
(103, "Raju", 25, "Agra", 20000),
(104, "Raja", 27, "Mumbai", 12000),
(105, "Raman", 28, "Pune", 14000),
(106, "Ram", 30, "Surat", 18000),
(107, "Raaj", 24, "Jaipur", 20000),
(108, "Ramu", 27, "Mumbai", 10000),
(109, "Raj", 26, "NCR", 17000),
(110, "Ram", 29, "Agra", 22000),
(111, "Raman", 27, "Delhi", 18000);
SELECT*FROM Employee;

-- arthmatic operators + - % / *
SELECT * FROM employee WHERE age+1=25;
SELECT * FROM employee WHERE age-1=25;
SELECT * FROM employee WHERE age*4=100;
SELECT * FROM employee WHERE age%4=0;
SELECT * FROM employee WHERE age/5=5;

-- comparision opperators >,<, >=, <=, = ,!=(<>) 
SELECT * FROM employee WHERE age=25;
SELECT * FROM employee WHERE age<=25;
SELECT * FROM employee WHERE age>=27;
SELECT * FROM employee WHERE age!=24;
SELECT * FROM employee WHERE age>25;
SELECT * FROM employee WHERE age<25;

-- Logical opperators AND OR NOT
SELECT * FROM employee WHERE age>25 and name= "ram";
SELECT * FROM employee WHERE age=25 or name = "raj";
SELECT * FROM employee WHERE NAME NOT IN ("ram", "raj");

-- IN operator
SELECT * FROM employee WHERE Name IN ("Ram","Raj");

-- IS NULL / IS NOT NULL operator
SELECT * FROM employee WHERE age IS NOT NULL;
SELECT * FROM employee WHERE age IS NULL;

-- BITWISE operator
SELECT * FROM employee WHERE age>25 && name= "Ram"; 
SELECT * FROM employee WHERE age>25 || name= "Ram"; 

-- LIKE & WILDCARD operator
SELECT * FROM employee WHERE name LIKE "RAM%" ;
SELECT * FROM employee WHERE name LIKE "__A%" ;

-- BETWEEN operator
SELECT * FROM employee WHERE Salary BETWEEN 12000 AND 20000;

-- ALTER TABLE employee RENAME COLUMN Sallery TO Salary ; 