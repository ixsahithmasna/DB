select * from Student where age >21 order by age desc

select count(*) as student_with_A from Student where name like '%a%'

select * from COURSES where fees >2000 and fees<5000 order by fees desc

select * from Student where active_flag=0 and age is not null

select course_id,count(course_id) as no_of_enrollments from COURSES group by course_id having count(course_id)>1

select max(registration_date) from Student


