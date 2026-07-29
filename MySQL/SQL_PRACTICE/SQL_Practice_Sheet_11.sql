-- ==========================================================
-- SQL Practice Sheet 11 : Common Table Expressions (CTEs)
-- Topics:
-- WITH, Multiple CTEs, Recursive CTE (Concept),
-- CTE with JOINs, Aggregation, Window Functions
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_11;
USE practice_sheet_11;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
    dept_id INT PRIMARY KEY,
    department_name VARCHAR(30)
);

INSERT INTO departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance'),
(4,'Sales');

CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    dept_id INT,
    manager_id INT,
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES
(101,'Rahul',1,NULL,90000,'2020-01-15'),
(102,'Priya',2,101,60000,'2021-05-10'),
(103,'Amit',1,101,75000,'2019-08-25'),
(104,'Sneha',1,103,70000,'2022-03-18'),
(105,'Karan',4,101,50000,'2023-06-01'),
(106,'Neha',2,102,58000,'2021-11-20'),
(107,'Rohit',1,103,65000,'2024-01-10'),
(108,'Anjali',3,101,80000,'2018-09-30');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Create a CTE that displays all employees.

-- Q2. Using a CTE, display employees earning more than 70000.

-- Q3. Create a CTE that calculates the average salary of the company.

-- Q4. Using the CTE from Q3, display employees earning above the company average.

-- Q5. Create a CTE to calculate department-wise average salary.

-- Q6. Display departments whose average salary is greater than 70000.

-- Q7. Create a CTE that joins employees and departments.

-- Q8. From the joined CTE, display only IT employees.

-- Q9. Using a CTE, display the highest-paid employee.

-- Q10. Create a CTE that calculates total salary by department.

-- Q11. Display the department with the highest total salary.

-- Q12. Create two CTEs:
--      (1) department average salary
--      (2) company average salary
-- Compare both results.

-- Q13. Using a CTE, display employees hired after '2021-01-01'.

-- Q14. Create a CTE that assigns ROW_NUMBER() by salary DESC.
-- (Use ROW_NUMBER if your MySQL version supports window functions.)

-- Q15. Using the CTE from Q14, display the top 3 highest-paid employees.

-- Q16. Create a CTE that displays each employee with their manager.

-- Q17. Display employees who do not have a manager.

-- Q18. Use multiple CTEs to calculate department-wise employee count and average salary.

-- Q19. Write a recursive CTE to generate numbers from 1 to 10.
-- (MySQL 8.0+)

-- Q20. Write a recursive CTE to display numbers from 10 down to 1.
-- (MySQL 8.0+)
