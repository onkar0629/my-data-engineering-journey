-- ==========================================================
-- SQL Practice Sheet 02 : WHERE Clause & Operators
-- Topic:
-- WHERE, Comparison Operators, AND, OR, NOT,
-- IN, NOT IN, BETWEEN, IS NULL, IS NOT NULL
-- ==========================================================

-- ==========================================================
-- Dataset
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_02;
USE practice_sheet_02;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    department VARCHAR(20),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    manager_id INT,
    hire_date DATE
);

INSERT INTO employees VALUES
(101,'Rahul','Sharma','IT',65000,5000,201,'2022-01-15'),
(102,'Priya','Verma','HR',55000,NULL,202,'2021-07-10'),
(103,'Amit','Joshi','Finance',72000,7000,203,'2020-11-25'),
(104,'Sneha','Patil','IT',81000,NULL,201,'2019-04-08'),
(105,'Karan','Singh','Sales',48000,3000,NULL,'2023-03-12'),
(106,'Neha','Kulkarni','HR',60000,2500,202,'2022-08-19'),
(107,'Rohit','Patel','Marketing',52000,NULL,NULL,'2024-01-05'),
(108,'Anjali','Gupta','IT',95000,10000,201,'2018-10-01');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Display all employees.


-- Q2. Display employees whose department is 'IT'.


-- Q3. Display employees whose salary is greater than 70000.


-- Q4. Display employees whose salary is between 60000 and 90000.


-- Q5. Display employees working in IT or HR.


-- Q6. Display employees NOT working in IT.


-- Q7. Display employees whose department is IN ('Finance','Sales','Marketing').


-- Q8. Display employees whose department is NOT IN ('HR','IT').


-- Q9. Display employees whose bonus IS NULL.


-- Q10. Display employees whose manager_id IS NULL.


-- Q11. Display employees whose bonus IS NOT NULL.


-- Q12. Display employees hired after '2022-01-01'.


-- Q13. Display employees hired between '2021-01-01' and '2022-12-31'.


-- Q14. Display IT employees earning more than 70000.


-- Q15. Display employees from HR with salary less than 60000.


-- Q16. Display employees whose salary is NOT between 50000 and 80000.


-- Q17. Display employees whose first_name is 'Rahul' OR 'Sneha'.


-- Q18. Display employees whose department is IT AND manager_id = 201.


-- Q19. Display employees whose department is Sales OR manager_id IS NULL.


-- Q20. Display only emp_id, first_name, department and salary
-- for employees whose salary >= 60000.
