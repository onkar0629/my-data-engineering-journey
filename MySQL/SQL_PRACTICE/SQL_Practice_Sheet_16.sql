-- ==========================================================
-- SQL Practice Sheet 16 : SQL Interview Questions (Part 1)
-- Topics:
-- Mixed Interview Questions
-- Covers SELECT, WHERE, GROUP BY, HAVING, JOIN,
-- Subqueries, CTEs, Window Functions
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_16;
USE practice_sheet_16;

DROP TABLE IF EXISTS orders;
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
    hire_date DATE,
    manager_id INT
);

INSERT INTO employees VALUES
(101,'Rahul',1,90000,'2020-01-15',NULL),
(102,'Priya',2,60000,'2021-05-10',101),
(103,'Amit',1,75000,'2019-08-25',101),
(104,'Sneha',1,70000,'2022-03-18',103),
(105,'Karan',4,50000,'2023-06-01',101),
(106,'Neha',2,58000,'2021-11-20',102),
(107,'Rohit',1,65000,'2024-01-10',103),
(108,'Anjali',3,80000,'2018-09-30',101);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    emp_id INT,
    amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO orders VALUES
(1,101,120000,'2026-01-10'),
(2,101,45000,'2026-02-12'),
(3,103,90000,'2026-02-20'),
(4,105,35000,'2026-03-15'),
(5,108,78000,'2026-04-08'),
(6,103,150000,'2026-04-18'),
(7,107,25000,'2026-05-02'),
(8,105,42000,'2026-05-21');

-- ==========================================================
-- Solve the following interview questions.
-- ==========================================================

-- Q1. Find the second-highest salary.
-- Q2. Find the third-highest salary.
-- Q3. Find duplicate salaries.
-- Q4. Find employees who earn above their department average.
-- Q5. Find the highest-paid employee in each department.
-- Q6. Find departments with no employees.
-- Q7. Find employees without orders.
-- Q8. Find employees with more than one order.
-- Q9. Find the department with the highest average salary.
-- Q10. Find the employee who generated the highest sales amount.
-- Q11. Find the top 3 employees by total sales.
-- Q12. Find monthly sales totals.
-- Q13. Find the running total of sales.
-- Q14. Rank employees by salary within each department.
-- Q15. Display each employee with their manager name.
-- Q16. Find employees hired before their manager.
-- Q17. Find employees whose salary equals the department maximum.
-- Q18. Find departments where average salary > company average.
-- Q19. Find the latest hired employee in each department.
-- Q20. Find employees with no manager.
-- Q21. Find the percentage contribution of each employee's sales.
-- Q22. Find the median salary (challenge).
-- Q23. Find consecutive hiring years.
-- Q24. Write a CTE to calculate department payroll.
-- Q25. Display payroll sorted from highest to lowest.
-- Q26. Find employees with salary between department average and maximum.
-- Q27. Find employees whose total sales exceed ₹100000.
-- Q28. Find departments with at least 2 employees.
-- Q29. Display the top salesperson each month.
-- Q30. Write one dashboard query showing:
--      Employee, Department, Salary,
--      Total Sales, Number of Orders.
