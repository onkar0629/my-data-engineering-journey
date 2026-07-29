-- ==========================================================
-- SQL Practice Sheet 05 : GROUP BY & HAVING
-- Topics:
-- GROUP BY, HAVING, Multiple Aggregates, Multi-column GROUP BY
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_05;
USE practice_sheet_05;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_id INT,
    first_name VARCHAR(30),
    department VARCHAR(20),
    designation VARCHAR(30),
    salary DECIMAL(10,2),
    city VARCHAR(30)
);

INSERT INTO employees VALUES
(101,'Rahul','IT','Developer',65000,'Pune'),
(102,'Priya','HR','Manager',55000,'Mumbai'),
(103,'Amit','Finance','Analyst',72000,'Pune'),
(104,'Sneha','IT','Developer',81000,'Nagpur'),
(105,'Karan','Sales','Executive',48000,'Delhi'),
(106,'Neha','HR','Recruiter',60000,'Mumbai'),
(107,'Rohit','Marketing','Executive',52000,'Ahmedabad'),
(108,'Anjali','IT','Manager',95000,'Pune'),
(109,'Ajay','Sales','Executive',48000,'Delhi'),
(110,'Ankit','Finance','Manager',72000,'Surat'),
(111,'Meera','IT','Tester',68000,'Pune'),
(112,'Vikas','Finance','Analyst',70000,'Mumbai');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Count the number of employees in each department.

-- Q2. Find the total salary paid by each department.

-- Q3. Find the average salary of each department.

-- Q4. Find the highest salary in each department.

-- Q5. Find the lowest salary in each department.

-- Q6. Display department, COUNT(*), SUM(salary), AVG(salary).

-- Q7. Count employees in each designation.

-- Q8. Find the total salary for each designation.

-- Q9. Find the average salary for each designation.

-- Q10. Count employees in each city.

-- Q11. Find the total salary for each city.

-- Q12. Find the maximum salary for each city.

-- Q13. Count employees for each department and designation.

-- Q14. Find the total salary for each department and designation.

-- Q15. Display departments having more than 2 employees.

-- Q16. Display departments whose average salary is greater than 70000.

-- Q17. Display cities where the total salary exceeds 150000.

-- Q18. Display designations having at least 2 employees.

-- Q19. Display department and total salary in descending order of total salary.

-- Q20. Display the top 3 departments with the highest total salary.

-- Q21. Display departments where the minimum salary is greater than 50000.

-- Q22. Display cities having exactly 2 employees.

-- Q23. Find the average salary of each department, excluding salaries below 60000.

-- Q24. Display department-wise employee count only for IT and Finance.

-- Q25. Display department, designation, employee count, and average salary,
-- ordered by department ASC and average salary DESC.
