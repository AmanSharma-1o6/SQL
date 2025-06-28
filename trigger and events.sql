-- TRIGGERS
-- by putiing values in one table using triggers same columns can be filled in other tables 

use comapny_2;
select * from company_emp ;
select * from company_sal ;


delimiter $
CREATE TRIGGER Emp_insert
   after insert ON company_sal
   for each row 
begin 
  insert into company_emp (emp_ID , first_name, last_name, age, gender, city, dprt_id)
  values (new.emp_ID , new.first_name, new.last_name, new.age, new,gender, new.city, new.dprt_id);
end $
delimiter ;

insert into company_sal
values
(22, 'aman', ' sharma', 65, 'agra' , 'M', 4, 'Tech', 45000) ;


-- i inserted values in company_sal but values in company_emp is filled using triggers 

-- EVENTS 
-- WE CAN SCHEDULE AN EVENTS TO HAPPEN AFTER A CRTAIN TIME 
-- lets take example of deleteing old people 

delimiter $
create event detele_old_pesps2
 on schedule every 30 second 
 do
begin 
  delete from company_sal
  where age>60 ;
end $
delimiter ;