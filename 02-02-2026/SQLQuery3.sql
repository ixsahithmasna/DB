use College_DB

insert into Student values
(100000101,'sahithsai','sahithsai@gmail.com',22,'2026-01-05',1),
(100000111,'anudeep','anudeep@gmail.com',21,'2026-01-05',1),
(100000112,'shankar','shankar@gmail.com',20,'2026-01-05',1)


insert into COURSES values
(6,'aws',9999.99)

insert into ENROLLMENTS (enroll_id, student_id, course_id) 
values
(123456784,100000101,6)


select * from Student

select name,email from Student

select * from Student order by age desc

select TOP 5 * from Student order by join_date desc

select Distinct(age) from Student

select Distinct(Course_name) from COURSES 


update student 
set age=23 where Student_id =10000002

update student
set active_flag=0 where Student_id= 10000002 or Student_id=10000003


update COURSES
set fees = fees + fees * 0.10  


delete from Student where Student_id=10000010

delete from COURSES where fees<1000

delete from ENROLLMENTS where enroll_timestamp < '2026-01-01'


EXEC sp_rename 
    'Student.join_date',            
    'registration_date',           
    'COLUMN';                       


alter table Student
ADD phone_number VARCHAR(15);


alter table Student 
alter column name varchar(500)







select * from Student
select * from COURSES