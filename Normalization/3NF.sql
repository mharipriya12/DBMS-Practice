CREATE DATABASE normalization_3nf;
USE normalization_3nf;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO students VALUES
(101, 'Hari', 1, 'Computer Science'),
(102, 'Priya', 2, 'Information Technology'),
(103, 'Arun', 1, 'Computer Science');

SELECT * FROM students;




CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE students_3nf (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES
(1, 'Computer Science'),
(2, 'Information Technology');

INSERT INTO students_3nf VALUES
(101, 'Hari', 1),
(102, 'Priya', 2),
(103, 'Arun', 1);

SELECT * FROM students_3nf;
