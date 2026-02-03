select * from Student where age>21;

select * from Student where active_flag=1

select * from COURSES where fees>1000 and fees<5000

select * from Student where age in (20,22,25)

select * from Student where age >20 and active_flag=1

select * from Student where age<20 and active_flag=0

select * from COURSES where fees>2000 and course_name like '%Data%'

select * from Student where email like '%gmail.com'

select * from COURSES where course_name like 'Data%'


INSERT INTO Student (Student_id, name, email, age, registration_date, active_flag)
VALUES (10000120, 'ravi', 'ravikumar@gmail.com', NULL, '2026-01-05', 0);

select * from Student where age is NUll

select * from Student where age is not null

