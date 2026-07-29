-- ==========================================================
-- SQL Practice Sheet 03 : ORDER BY, DISTINCT, LIMIT & LIKE
-- Topics:
-- DISTINCT, ORDER BY, LIMIT, OFFSET, LIKE, NOT LIKE
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_03;
USE practice_sheet_03;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    department VARCHAR(20),
    city VARCHAR(30),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES
(101,'Rahul','Sharma','IT','Pune',65000,'2022-01-15'),
(102,'Priya','Verma','HR','Mumbai',55000,'2021-07-10'),
(103,'Amit','Joshi','Finance','Pune',72000,'2020-11-25'),
(104,'Sneha','Patil','IT','Nagpur',81000,'2019-04-08'),
(105,'Karan','Singh','Sales','Delhi',48000,'2023-03-12'),
(106,'Neha','Kulkarni','HR','Mumbai',60000,'2022-08-19'),
(107,'Rohit','Patel','Marketing','Ahmedabad',52000,'2024-01-05'),
(108,'Anjali','Gupta','IT','Pune',95000,'2018-10-01'),
(109,'Ajay','Kumar','Sales','Delhi',48000,'2023-06-20'),
(110,'Ankit','Shah','Finance','Surat',72000,'2021-09-15');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Display all unique departments.

-- Q2. Display all unique cities.

-- Q3. Count the number of unique departments.

-- Q4. Display all employees ordered by salary (ascending).

-- Q5. Display all employees ordered by salary (descending).

-- Q6. Display employees ordered by department ASC and salary DESC.

-- Q7. Display the top 3 highest-paid employees.

-- Q8. Display the lowest 5 salaries.

-- Q9. Skip the first 3 rows and display the next 4 rows.

-- Q10. Display employees whose first_name starts with 'A'.

-- Q11. Display employees whose first_name ends with 'a'.

-- Q12. Display employees whose first_name contains 'it'.

-- Q13. Display employees whose last_name starts with 'P'.

-- Q14. Display employees whose city starts with 'M'.

-- Q15. Display employees whose department does NOT start with 'S'.

-- Q16. Display employees whose first_name has exactly 5 characters.

-- Q17. Display employees whose second character is 'n'.

-- Q18. Display employees hired first (oldest to newest).

-- Q19. Display employees hired latest first (newest to oldest).

-- Q20. Display the top 2 highest-paid IT employees.
