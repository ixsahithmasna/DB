use College_DB
insert into STUDENT values
(10000001,'sahith','sahith@gmail.com',21,'2026-01-05',1),
(10000002,'rishi','rishi@gmail.com',21,'2026-01-05',1),
(10000003,'amogh','amogh@gmail.com',21,'2026-01-05',1),
(10000004,'preetam','preetam@gmail.com',21,'2026-01-05',1),
(10000005,'sujith','sujith@gmail.com',20,'2026-01-05',1),
(10000006,'jaideep','jaideep@gmail.com',21,'2026-01-05',1),
(10000007,'sai','sai@gmail.com',21,'2026-01-05',1),
(10000008,'prudhvi','prudhvi@gmail.com',21,'2026-01-05',1),
(10000009,'masna','masna@gmail.com',21,'2026-01-05',1),
(10000010,'dinesh','dinesh@gmail.com',22,'2026-01-05',1)

select * from Student

insert into Courses values
(1,'java-springboot',4999.9),
(2,'sql',3999.9),
(3,'reactjs',3999.9),
(4,'django',1999.9),
(5,'java',1999.9)

select * from Courses


INSERT INTO ENROLLMENTS (enroll_id, student_id, course_id)
VALUES
(123456789,10000001,1),
(123456788,10000001,2),
(123456787,10000002,3),
(123456786,10000003,5),
(123456785,10000004,4);



select * from ENROLLMENTS

