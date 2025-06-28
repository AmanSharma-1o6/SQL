show databases;
use xyz;
select * from employee;
select name, age from employee;
select name,age from employee where age>24;
select*from employee where age<26;

-- alter command 
-- adding column
alter table employee
add dob varchar(20) default("np");
-- droping column
alter table employee 
drop dob;
-- modify datatype of existing column
alter table employee
modify age varchar(3);
-- to check new datatype
insert into employee(id, age)
values
(10,"25");
-- change name of existing column
alter table employee
change id employee_id varchar(10);

-- rename command
-- column rename
alter table employee
rename column employee_id to id;
-- table rename
rename table employee to Company;
rename table company to employee;
-- rename database (depends on server to change database name some security permission required)
-- rename database xyz to company;

-- truncate command
use college;
truncate table students;
select * from students;
-- structure remanes only 
