select COUNT(*) as total from Student	

select COUNT(*) as total from Student where active_flag=1

select sum(fees) as total_fee,avg(fees) as Average_fee from COURSES where fees >2000

select min(age) as MINIMUM_AGE, max(age) as MAXIMUM_AGE from Student

select top 1 * from Student  order by registration_date desc

select top 1 * from Student order by registration_date asc

select active_flag,count(*) as active from Student group by active_flag
select age,count(*) as total_age_groups from Student group by age

select c.course_id,c.course_name,sum(c.fees) as Total_fees from ENROLLMENTS e
join COURSES c on 
e.course_id=c.course_id
group by c.course_id,c.course_name


select course_id,count(course_id) as no_of_enrollments from COURSES group by course_id having count(course_id)>=3

select age,avg(age) as average from Student group by age having avg(age) > 21

select course_id,count(course_id) as no_of_enrollments from COURSES group by course_id having count(course_id)>2

