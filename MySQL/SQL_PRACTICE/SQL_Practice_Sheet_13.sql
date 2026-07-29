-- ==========================================================
-- SQL Practice Sheet 13 : Views, Indexes & Constraints
-- Topics:
-- CREATE VIEW, ALTER VIEW, DROP VIEW,
-- PRIMARY KEY, FOREIGN KEY, UNIQUE,
-- NOT NULL, CHECK, DEFAULT,
-- CREATE INDEX, DROP INDEX
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_13;
USE practice_sheet_13;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
    dept_id INT PRIMARY KEY,
    department_name VARCHAR(30) UNIQUE,
    location VARCHAR(30) DEFAULT 'Pune'
);

CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30) NOT NULL,
    dept_id INT,
    salary DECIMAL(10,2) CHECK (salary > 0),
    email VARCHAR(100) UNIQUE,
    hire_date DATE NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES
(1,'IT','Pune'),
(2,'HR','Mumbai'),
(3,'Finance','Delhi'),
(4,'Sales','Bengaluru');

INSERT INTO employees VALUES
(101,'Rahul',1,90000,'rahul@gmail.com','2020-01-15'),
(102,'Priya',2,60000,'priya@gmail.com','2021-05-10'),
(103,'Amit',1,75000,'amit@gmail.com','2019-08-25'),
(104,'Sneha',1,70000,'sneha@gmail.com','2022-03-18'),
(105,'Karan',4,50000,'karan@gmail.com','2023-06-01'),
(106,'Neha',2,58000,'neha@gmail.com','2021-11-20'),
(107,'Rohit',1,65000,'rohit@gmail.com','2024-01-10'),
(108,'Anjali',3,80000,'anjali@gmail.com','2018-09-30');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Create a view named employee_details showing employee name, department name and salary.

-- Q2. Display all records from employee_details.

-- Q3. Create a view showing only IT employees.

-- Q4. Display employees earning more than 70000 using a view.

-- Q5. Replace (or recreate) a view to include hire_date.

-- Q6. Drop the employee_details view.

-- Q7. Create an index on emp_name.

-- Q8. Create a composite index on (dept_id, salary).

-- Q9. Show all indexes on the employees table.

-- Q10. Drop the index created on emp_name.

-- Q11. Add a DEFAULT value 'Remote' for location in departments.

-- Q12. Add a NOT NULL constraint to department_name (conceptual if already satisfied).

-- Q13. Insert a new employee using the DEFAULT location from departments.

-- Q14. Attempt to insert a duplicate email. What happens?

-- Q15. Attempt to insert NULL into emp_name. What happens?

-- Q16. Attempt to insert a negative salary. What happens?

-- Q17. Attempt to insert an employee with a non-existent dept_id. What happens?

-- Q18. Display employees with their department names using the created view or a JOIN.

-- Q19. Explain when an index improves query performance.

-- Q20. List all constraints currently applied to the employees table.
