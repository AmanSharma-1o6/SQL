--  Aggregate Function
create database if not exists Company3;
use Company3;
create table employee3
(ID int primary key, Name varchar(50), Age int, Department varchar(50), Salary int );
insert into employee3 (ID, Name, Age, Department, Salary)
values 
(101, "Aman", 22, "HR", 20000),
(102, "Ram", 23, "IT", 12000),
(103, "Manoj", 26, "MARKETING", 18000),
(104, "Deepak", 24, "IT", 17000),
(105, "Rahul", 22, "HR", 15000),
(106, "Ayush", 25, "FINANCE", 15000),
(107, "Aniket", 21, "INTERN", 10000),
(108, "Ankit", 26, "HR", 19000);
--  COUNT() give no of rows and ignore null values
select count(id) from employee3;

-- SUM() it adds all values in a numeric column 
select sum(salary) from employee3;

-- AVG() it averages values in a numeric column 
select avg(salary) from employee3;

-- MIN and MAX gives min and max value in a numeric column
select min(salary) from employee3;
select max(salary) from employee3;

-- GROUP BY clause it group rows on the basis of a column
select department, avg(salary) as avgsal from employee3
group by department;

-- HAVING clause same as where clause but it works on Aggregate Function 
select department , avg(salary) as avgsal from employee3
group by department having avgsal>15000; -- condition 
