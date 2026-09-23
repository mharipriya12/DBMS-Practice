CREATE DATABASE normalization_bcnf;
USE normalization_bcnf;

CREATE TABLE student_course (
    student_id INT,
    course_id INT,
    instructor VARCHAR(50),
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO student_course VALUES
(101, 1, 'Ravi'),
(102, 1, 'Ravi'),
(103, 2, 'Meena'),
(104, 2, 'Meena');

SELECT * FROM student_course;


CREATE TABLE course_instructor (
    course_id INT PRIMARY KEY,
    instructor VARCHAR(50)
);

CREATE TABLE student_course_bcnf (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (course_id) REFERENCES course_instructor(course_id)
);

INSERT INTO course_instructor VALUES
(1, 'Ravi'),
(2, 'Meena');

INSERT INTO student_course_bcnf VALUES
(101, 1),
(102, 1),
(103, 2),
(104, 2);

SELECT * FROM course_instructor;
SELECT * FROM student_course_bcnf;
