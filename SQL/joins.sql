
USE college;

-- INNER JOIN
SELECT students.student_name, departments.dept_name
FROM students
INNER JOIN departments
ON students.dept_id = departments.dept_id;

-- LEFT JOIN
SELECT students.student_name, departments.dept_name
FROM students
LEFT JOIN departments
ON students.dept_id = departments.dept_id;

-- RIGHT JOIN
SELECT students.student_name, departments.dept_name
FROM students
RIGHT JOIN departments
ON students.dept_id = departments.dept_id;
