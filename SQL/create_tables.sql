
USE college;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    dept_id INT,
    marks INT
);

INSERT INTO departments VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Electronics');

INSERT INTO students VALUES
(101, 'Hari', 20, 1, 85),
(102, 'Priya', 21, 2, 90),
(103, 'Arun', 20, 1, 75),
(104, 'Divya', 22, 3, 88),
(105, 'Kavin', 21, 2, 65);
