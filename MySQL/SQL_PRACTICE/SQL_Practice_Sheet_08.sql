-- ==========================================================
-- SQL Practice Sheet 08 : JOINS (Part 1)
-- Topics:
-- INNER JOIN, LEFT JOIN, RIGHT JOIN, CROSS JOIN
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_08;
USE practice_sheet_08;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
    dept_id INT PRIMARY KEY,
    department_name VARCHAR(30),
    location VARCHAR(30)
);

INSERT INTO departments VALUES
(1,'IT','Pune'),
(2,'HR','Mumbai'),
(3,'Finance','Delhi'),
(4,'Sales','Bengaluru'),
(5,'Marketing','Hyderabad');

CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    dept_id INT,
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES
(101,'Rahul',1,65000,'2022-01-15'),
(102,'Priya',2,55000,'2021-07-10'),
(103,'Amit',3,72000,'2020-11-25'),
(104,'Sneha',1,81000,'2019-04-08'),
(105,'Karan',4,48000,'2023-03-12'),
(106,'Neha',2,60000,'2022-08-19'),
(107,'Rohit',NULL,52000,'2024-01-05'),
(108,'Anjali',1,95000,'2018-10-01'),
(109,'Ajay',4,50000,'2023-06-20');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Display all employees with their department names.

-- Q2. Display employee name, department name and location.

-- Q3. Display only employees working in the IT department.

-- Q4. Display employees whose department location is Mumbai.

-- Q5. Display all employees using LEFT JOIN.

-- Q6. Display employees who are not assigned to any department.

-- Q7. Display all departments even if no employees belong to them.

-- Q8. Display department names and the employees working in them.

-- Q9. Display employees with salary greater than 60000 along with department names.

-- Q10. Display employees hired after '2022-01-01' with department names.

-- Q11. Count the number of employees in each department.

-- Q12. Display department names having more than 2 employees.

-- Q13. Display the average salary of each department.

-- Q14. Display the highest salary in each department.

-- Q15. Display employees sorted by department name and salary DESC.

-- Q16. Display all possible employee-department combinations using CROSS JOIN.

-- Q17. Display departments that currently have no employees.

-- Q18. Display employee name and department name ordered alphabetically by employee name.

-- Q19. Display department name and total salary paid in each department.

-- Q20. Display the top 2 departments by average salary.
