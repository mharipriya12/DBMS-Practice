
USE college;

-- Students who scored above average
SELECT student_name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);

-- Student with the highest marks
SELECT student_name, marks
FROM students
WHERE marks = (
    SELECT MAX(marks)
    FROM students
);

-- Students from the Computer Science department
SELECT student_name
FROM students
WHERE dept_id = (
    SELECT dept_id
    FROM departments
    WHERE dept_name = 'Computer Science'
);
