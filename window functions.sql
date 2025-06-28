-- window functions
select first_name, Last_name, gender, salary, avg(salary) over(partition by gender) as avg_sal
from company_emp as emp
join company_dept as dep
  on emp.Dprt_ID = dep.Dprt_ID;
  
select first_name, Last_name, gender, salary,
 Sum(salary) over(partition by gender order by Emp_ID)  as Rolling_total
from company_emp as emp
join company_dept as dep
  on emp.Dprt_ID = dep.Dprt_ID;

select first_name, Last_name, gender, salary,
Row_number() over(partition by gender order by salary desc)  as row_num,
Rank() over(partition by gender order by salary desc)  as rank_num,
dense_rank() over(partition by gender order by salary desc)  as dense_rank_num
from company_emp as emp
join company_dept as dep
  on emp.Dprt_ID = dep.Dprt_ID;


