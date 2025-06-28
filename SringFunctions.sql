select * from employee;
use company;
-- String functions 
select *, 
length(name),
upper(name),
lower(name),
trim(name),
Ltrim(name),
Rtrim(name),
Left(name,2),
Right(name,2),
Substring(name,2,2),
Replace(name,'a','O'),
Locate('a',name),
concat(name,' from ',hometown)
 from employee;

 -- case statement
 Select * , 
 CASE
   when age >= 25 then 'Man'
   when age <25 then 'College Student'
end as Age_Bracket ,
case
   when Salary >=15000 then 'Higher intern'
   when Salary <15000 then 'Lower inter'
end as Salary_bracket
from employee ;