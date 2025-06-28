-- Sunqueries

select * from company_emp 
where Dprt_ID in ( Select Dprt_ID from company_dept where Dprt_ID = 1 );

select First_name , Salary , 
(Select avg(salary) from company_emp 
join company_dept 
on company_dept.Dprt_ID = company_emp.Dprt_ID ) as avg_sal
from company_emp 
join company_dept 
on company_dept.Dprt_ID = company_emp.Dprt_ID ;

