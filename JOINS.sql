use college2;
create table Student2
(ID int primary key, Name varchar(50));
insert into Student2 
values
(101, "Aman"),
(102, "Harshil"),
(103, "Nirant"),
(104, "Dhyana"),
(105, "Ronit"),
(106, "Pratik"),
(107, "Yogita"),
(108, "Aniket"),
(109, "Kinjal"),
(110, "Ram");

create table Course2
(ID int primary key, Course varchar(50));
insert into Course2 
values
(100, "MS102"),
(102, "MS202"),
(103, "MS435"),
(105, "MS324"),
(108, "MS102"),
(109, "Ms202"),
(110, "MS321"),
(118, "MS231"),
(119, "MS456"),
(120, "MS345");

Select * from Student2;
Select * from Course2;

-- joining these two tables 
-- INNER JOIN
Select * from Student2
INNER JOIN Course2
ON Student2.ID=Course2.ID;

-- LEFT JOIN
select*from student2
LEFT JOIN course2
ON student2.ID=course2.ID;

-- RIGHT JOIN
Select * from Student2
RIGHT JOIN Course2
ON Student2.ID=Course2.ID;

-- FULL JOIN
Select * from Student2
LEFT JOIN Course2
ON Student2.ID=Course2.ID
UNION
Select * from Student2
RIGHT JOIN Course2
ON Student2.ID=Course2.ID;

-- CROSS JOIN
select*from student2
cross join course2;

-- SELF JOIN lets make a table with student and their mentor table, mentor is also studenr
create database mentor;
use mentor;
create table Student_Mentor 
(St_ID int primary key, Name varchar(50) not null, Mentor_ID int );
insert into Student_Mentor
values
(101,"Aman",000),
(102,"Ram",101),
(103,"Mohan",104),
(104,"Riti",102),
(105,"Rajat",102),
(106,"Anikey",105),
(107,"Yogita",103);
select*from Student_Mentor;


-- self join
select s1.name as Mentor_Name , s2.name as Student_Name from Student_Mentor as s1
join Student_Mentor as s2
where s1.St_ID=s2.Mentor_ID;

-- Exclusive joins 
-- LEFT exclusive joins
select*from Student2
LEFT JOIN course2
ON student2.ID=Course2.ID
where Course2.course is NULL;

-- RIGHT exclusive join
select*from student2
right join course2
on student2.ID=course2.ID
where Student2.ID is Null;

-- FULL exclusive join
select*from Student2
LEFT JOIN course2
ON student2.ID=Course2.ID
where Course2.course is NULL
UNION
select*from student2
right join course2
on student2.ID=course2.ID
where Student2.ID is Null;

-- UNION and UNION ALL
-- UNION join all values but common values only 1 time
select ID from student2
union
select ID from course2;

-- UNION ALL join all values common values comes 2 times

select ID from student2
union all
select ID from course2;

