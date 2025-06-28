-- temporary tables
 CREATE temporary table Table_1 (
 Name varchar(50),
 Age int,
 city varchar(50));
 insert into Table_1 
 values (
 'Aman', 22, 'agra' )
 ;
 select * from Table_1;
 
 use company3;
 select * from company_employee ;
 
 CREATE TEMPORARY TABLE Empolyee_Age_more_than_25
 select * from company_employee
 where age>25;
 
 select * from Empolyee_Age_more_than_25;