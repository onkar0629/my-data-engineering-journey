-- ==========================================================
-- SQL Practice Sheet 12 : Window Functions
-- Topics:
-- ROW_NUMBER(), RANK(), DENSE_RANK(), LAG(), LEAD(),
-- FIRST_VALUE(), LAST_VALUE(), NTILE(),
-- SUM() OVER(), AVG() OVER()
-- MySQL 8.0+
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_12;
USE practice_sheet_12;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    department VARCHAR(20),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES
(101,'Rahul','IT',90000,'2020-01-15'),
(102,'Priya','HR',60000,'2021-05-10'),
(103,'Amit','IT',75000,'2019-08-25'),
(104,'Sneha','IT',70000,'2022-03-18'),
(105,'Karan','Sales',50000,'2023-06-01'),
(106,'Neha','HR',58000,'2021-11-20'),
(107,'Rohit','IT',65000,'2024-01-10'),
(108,'Anjali','Finance',80000,'2018-09-30'),
(109,'Ajay','Sales',52000,'2023-02-14'),
(110,'Meera','Finance',78000,'2020-07-21');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Assign ROW_NUMBER() ordered by salary DESC.

-- Q2. Assign RANK() ordered by salary DESC.

-- Q3. Assign DENSE_RANK() ordered by salary DESC.

-- Q4. Display the top 3 highest-paid employees using ROW_NUMBER().

-- Q5. Display the top 2 highest-paid employees in each department.

-- Q6. Rank employees within each department by salary.

-- Q7. Display the previous employee's salary using LAG().

-- Q8. Display the next employee's salary using LEAD().

-- Q9. Display the salary difference from the previous employee.

-- Q10. Display the first salary in each department using FIRST_VALUE().

-- Q11. Display the last salary in each department using LAST_VALUE().

-- Q12. Calculate the running total of salaries ordered by hire_date.

-- Q13. Calculate the cumulative average salary ordered by hire_date.

-- Q14. Display the total salary of each department using SUM() OVER().

-- Q15. Display the average salary of each department using AVG() OVER().

-- Q16. Divide employees into 4 salary groups using NTILE(4).

-- Q17. Display employees whose salary is above their department average.

-- Q18. Display the second-highest salary in each department.

-- Q19. Display the latest hired employee in each department.

-- Q20. Display the highest-paid employee in each department using window functions.

-- Q21. Display employees whose salary increased compared to the previous ranked salary.

-- Q22. Display department-wise salary percentage contribution:
-- salary / SUM(salary) OVER(PARTITION BY department).

-- Q23. Display employees with both company-wide and department-wise rank.

-- Q24. Display a running count of employees based on hire_date.

-- Q25. Display the employee with ROW_NUMBER() = 1 from each department.
