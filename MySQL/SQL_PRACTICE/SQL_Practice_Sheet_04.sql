-- ==========================================================
-- SQL Practice Sheet 04 : Aggregate Functions
-- Topics:
-- COUNT, SUM, AVG, MIN, MAX, ROUND
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_04;
USE practice_sheet_04;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_id INT,
    first_name VARCHAR(30),
    department VARCHAR(20),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    experience_years INT,
    hire_date DATE
);

INSERT INTO employees VALUES
(101,'Rahul','IT',65000,5000,3,'2022-01-15'),
(102,'Priya','HR',55000,NULL,4,'2021-07-10'),
(103,'Amit','Finance',72000,7000,5,'2020-11-25'),
(104,'Sneha','IT',81000,NULL,6,'2019-04-08'),
(105,'Karan','Sales',48000,3000,2,'2023-03-12'),
(106,'Neha','HR',60000,2500,3,'2022-08-19'),
(107,'Rohit','Marketing',52000,NULL,1,'2024-01-05'),
(108,'Anjali','IT',95000,10000,8,'2018-10-01'),
(109,'Ajay','Sales',48000,1500,2,'2023-06-20'),
(110,'Ankit','Finance',72000,6000,4,'2021-09-15');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Count the total number of employees.

-- Q2. Count employees whose bonus is NOT NULL.

-- Q3. Find the total salary paid to all employees.

-- Q4. Find the total bonus paid.

-- Q5. Find the average salary (rounded to 2 decimal places).

-- Q6. Find the average experience in years.

-- Q7. Find the highest salary.

-- Q8. Find the lowest salary.

-- Q9. Find the latest hire_date.

-- Q10. Find the earliest hire_date.

-- Q11. Find the total salary of IT employees.

-- Q12. Find the average salary of HR employees.

-- Q13. Find the maximum salary in Finance.

-- Q14. Find the minimum bonus.

-- Q15. Count employees hired after '2021-01-01'.

-- Q16. Find the total salary of employees whose salary is greater than 60000.

-- Q17. Find the average bonus (ignore NULL values naturally).

-- Q18. Count the number of distinct departments.

-- Q19. Display SUM(salary), AVG(salary), MIN(salary), MAX(salary) in a single query.

-- Q20. Find the total annual salary of all employees (salary * 12).
