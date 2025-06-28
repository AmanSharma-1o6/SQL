select Emp_ID, concat(First_name,' ', Last_name,' From ', City)as Emp_from_city, Age, Gender, emp.Dprt_ID , Dept_name, Salary,
CASE 
  WHEN emp.dprt_ID = 1 then salary*1.20
  WHEN emp.dprt_ID = 2 then salary*1.15
  WHEN emp.dprt_ID = 3 then salary*1.1
  WHEN emp.dprt_ID = 4 then salary*1.05
END AS Hike_in_salary,
CASE
  WHEN emp.dprt_ID > 0 then salary*0.10
END as Bonous
from company_emp as emp
join company_dept as dep
on dep.Dprt_ID = emp.Dprt_ID;