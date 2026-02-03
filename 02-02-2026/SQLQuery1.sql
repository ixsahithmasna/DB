USE College_DB;

CREATE TABLE Student(
    Student_id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    age INT,
    join_date DATE,
    active_flag BIT
);

CREATE TABLE COURSES (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    fees DECIMAL(10,2)
);


CREATE TABLE ENROLLMENTS(
    enroll_id BIGINT PRIMARY KEY,
    student_id BIGINT,
    course_id INT,
    enroll_timestamp DATETIME2
);


