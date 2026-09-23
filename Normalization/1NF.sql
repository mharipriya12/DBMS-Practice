CREATE DATABASE normalization_1nf;
USE normalization_1nf;

CREATE TABLE student_courses (
    student_id INT,
    student_name VARCHAR(50),
    course1 VARCHAR(50),
    course2 VARCHAR(50)
);

INSERT INTO student_courses VALUES
(101, 'Hari', 'DBMS', 'OS'),
(102, 'Priya', 'DBMS', 'CN'),
(103, 'Arun', 'OS', 'CN');

SELECT * FROM student_courses;
