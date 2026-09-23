CREATE DATABASE normalization_2nf;
USE normalization_2nf;

CREATE TABLE student_course (
    student_id INT,
    course_id INT,
    student_name VARCHAR(50),
    course_name VARCHAR(50),
    marks INT,
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO student_course VALUES
(101, 1, 'Hari', 'DBMS', 85),
(101, 2, 'Hari', 'OS', 80),
(102, 1, 'Priya', 'DBMS', 90),
(102, 2, 'Priya', 'OS', 88);

SELECT * FROM student_course;
