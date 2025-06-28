-- CTEs

select gender , avg(salary), max(Salary), min(Salary), count(salary)
from company_emp as emp
join company_dept as dep
  on emp.Dprt_ID = dep.Dprt_ID
group by gender ;

-- now we have to find avg of the two row we can go with 2 approaches 
-- 1st subqueries 

select avg(avg_sal) from 
(select gender , avg(salary) as avg_sal, max(Salary) as max_sal, min(Salary) as min_sal, count(salary) as count_sal
from company_emp as emp
join company_dept as dep
  on emp.Dprt_ID = dep.Dprt_ID
group by gender) as tab ;

-- 2nd CTEs

with cte_em as 
(select gender , avg(salary) as avg_sal, max(Salary) as max_sal, min(Salary) as min_sal, count(salary) as count_sal
from company_emp as emp
join company_dept as dep
  on emp.Dprt_ID = dep.Dprt_ID
group by gender)
select avg(avg_sal) from cte_em;

with cte1 as 
(select * from company_emp),
cte2 as 
(select * from company_dept)
select * from cte1
join cte2
  on cte1.Dprt_ID = cte2.Dprt_ID ;

