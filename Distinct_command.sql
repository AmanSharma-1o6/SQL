-- DISTINCT command
CREATE DATABASE IF NOT EXISTS COMPANY; 
CREATE TABLE Employee(
Employee_ID INT PRIMARY KEY, Name VARCHAR(50) NOT NULL, Age INT NOT NULL, Hometown VARCHAR(50), Sallery INT NOT NULL
);
INSERT INTO Employee(Employee_ID, Name, Age, Hometown, Sallery)
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
-- database created for a company and now under stand distinct command
-- DISTINCT keyword is used within the SELECT statement to retrieve unique values from a column or combination of columns.
SELECT DISTINCT Name 
FROM Employee;
-- to get unique combination of two or more row
SELECT DISTINCT Name,age 
FROM Employee;
