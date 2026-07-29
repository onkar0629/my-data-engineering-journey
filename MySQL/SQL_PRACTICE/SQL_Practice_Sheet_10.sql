-- ==========================================================
-- SQL Practice Sheet 10 : Subqueries
-- Topics:
-- Single-row, Multi-row, Correlated Subqueries,
-- EXISTS, NOT EXISTS, IN, ANY, ALL
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_10;
USE practice_sheet_10;

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
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES
(101,'Rahul',1,90000,'2020-01-15'),
(102,'Priya',2,60000,'2021-05-10'),
(103,'Amit',1,75000,'2019-08-25'),
(104,'Sneha',1,70000,'2022-03-18'),
(105,'Karan',4,50000,'2023-06-01'),
(106,'Neha',2,58000,'2021-11-20'),
(107,'Rohit',1,65000,'2024-01-10'),
(108,'Anjali',3,80000,'2018-09-30');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Display employees earning more than the average salary.

-- Q2. Display employees earning the highest salary.

-- Q3. Display employees earning the second-highest salary.

-- Q4. Display employees whose salary is less than Rahul's salary.

-- Q5. Display employees working in the same department as Rahul.

-- Q6. Display employees hired before the earliest HR employee.

-- Q7. Display departments having at least one employee. (EXISTS)

-- Q8. Display departments having no employees. (NOT EXISTS)

-- Q9. Display employees earning more than all Sales employees. (ALL)

-- Q10. Display employees earning more than any HR employee. (ANY)

-- Q11. Display employees working in departments returned by a subquery.

-- Q12. Display employees whose department has the highest average salary.

-- Q13. Display employees with salaries greater than their department's average salary. (Correlated)

-- Q14. Display the highest-paid employee in each department. (Correlated)

-- Q15. Display employees who are not the highest-paid in their department.

-- Q16. Display employees hired after the latest Finance employee.

-- Q17. Display departments where the average salary exceeds the company average.

-- Q18. Display employees whose salary matches any employee in HR.

-- Q19. Display employees whose salary is greater than the overall average but less than the maximum salary.

-- Q20. Display the top 3 highest-paid employees using a subquery.

-- Q21. Display employees who belong to departments with more than 2 employees.

-- Q22. Display the department(s) with the maximum number of employees.

-- Q23. Display employees whose salary is equal to the minimum salary in their department.

-- Q24. Display employees hired on the earliest hire date in the company.

-- Q25. Display employees who earn more than the average salary of the IT department.
