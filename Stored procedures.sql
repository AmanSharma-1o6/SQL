-- Stored procedures
use company_info;
SELECT Emp_ID, First_name, Last_name, Age, City, Gender, emp.Dprt_ID, Dept_name, Salary FROM Company_emp AS emp
JOIN Company_dept AS dep
  ON dep.Dprt_ID = emp.Dprt_ID ;
 
 -- SINGE STORED PROCEDURE 

CREATE PROCEDURE salary_data ()
SELECT Emp_ID, First_name, Last_name, Age, City, Gender, emp.Dprt_ID, Dept_name, Salary FROM Company_emp AS emp
JOIN Company_dept AS dep
  ON dep.Dprt_ID = emp.Dprt_ID ;

call salary_data();
call company_info.salary_data() ;

-- MULTIPLE query in singe procedure 
 
DELIMITER $
CREATE PROCEDURE New_procedure()
BEGIN 
    SELECT Emp_ID, First_name, Last_name, Age, City, Gender, emp.Dprt_ID, Dept_name, Salary FROM Company_emp AS emp
    JOIN Company_dept AS dep
      ON dep.Dprt_ID = emp.Dprt_ID ;
	SELECT * FROM Company_dpet;
END $
DELIMITER ;

-- using parameter 
CALL New_procedure();
    
CREATE PROCEDURE EMPLOYEE_DETAILS (P_employee_ID INT )
    SELECT Emp_ID, First_name, Last_name, Age, City, Gender, emp.Dprt_ID, Dept_name, Salary FROM Company_emp AS emp
    JOIN Company_dept AS dep
      ON dep.Dprt_ID = emp.Dprt_ID
	WHERE Emp_ID = P_employee_ID;
    
call EMPLOYEE_DETAILS (2) ;
