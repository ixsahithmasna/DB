use College_DB
create table Customers(
id int primary key,
name varchar(255) Not null,
email varchar(255) unique,
phone_number BigInt,
);

create table Orders(
id int primary key,
order_number int not null,
customer_id int foreign key references Customers(id)
);
alter TABLE Orders
add CONSTRAINT order_number UNIQUE (order_number);


insert into Customers values
(1,'sahith','sahith@gmail.com',999999999),
(2,'sai','sai@gmail.com',999999998),
(3,'preetam','preetam@gmail.com',999999997),
(4,'rishi','rishi@gmail.com',999999996),
(5,'jaideep','jaideep@gmail.com',999999995),
(6,'sathwik','sathwik@gmail.com',999999994),
(7,'prudhvi','prudhvi@gmail.com',999999993),
(8,'amogh','amogh@gmail.com',999999992),
(9,'shankar','shankar@gmail.com',999999991)


insert into Orders values
(1,101,1),
(2,102,2),
(3,103,1),
(4,104,1),
(5,105,3),
(6,106,1),
(7,107,4),
(8,108,5),
(9,109,7)

select * from Customers
select * from Orders

select * from Customers as c
left join Orders as o
on c.id = o.customer_id

insert into Orders values
(10,110,11)


Truncate table Student

use College_DB
insert into STUDENT values
(1,'sahith','sahith@gmail.com',21,'2026-01-05',1,99999999),
(2,'rishi','rishi@gmail.com',21,'2026-01-05',1,99999998),
(3,'amogh','amogh@gmail.com',21,'2026-01-05',1,987654321),
(4,'preetam','preetam@gmail.com',21,'2026-01-05',1,987654123),
(5,'sujith','sujith@gmail.com',20,'2026-01-05',1,987456123),
(6,'jaideep','jaideep@gmail.com',21,'2026-01-05',1,987412563),
(7,'sai','sai@gmail.com',21,'2026-01-05',1,789415263),
(8,'prudhvi','prudhvi@gmail.com',21,'2026-01-05',1,741258369),
(9,'masna','masna@gmail.com',21,'2026-01-05',1,852741369),
(10,'dinesh','dinesh@gmail.com',22,'2026-01-05',1,879564231)

create table student_course(
student_id bigint not null,
course_id int not null,
primary key (student_id,course_id),
foreign key (student_id) references Student(student_id) on delete cascade,
foreign key (course_id) references Courses(course_id) on delete cascade
)

select * from Student 
select * from COURSES
insert into student_course values
(1,1),
(1,2),
(1,3),
(1,4),
(2,1),
(2,2),
(2,6),
(4,5)

select * from student_course

