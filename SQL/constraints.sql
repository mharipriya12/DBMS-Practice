
USE college;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    salary DECIMAL(10,2) DEFAULT 25000,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees
(emp_id, emp_name, email, age, dept_id)
VALUES
(1, 'Ravi', 'ravi@gmail.com', 25, 1),
(2, 'Meena', 'meena@gmail.com', 24, 2);

SELECT * FROM employees;
