-- ==========================================================
-- Day 05 - DQL (Data Query Language) - SELECT Statement
-- practice.sql
-- ==========================================================

-- ==========================================================
-- Database
-- ==========================================================

CREATE DATABASE IF NOT EXISTS mysql_learning;

USE mysql_learning;

-- ==========================================================
-- Dataset
-- ==========================================================

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(101, 'Amit Sharma', 'HR', 'HR Executive', 45000.00, '2022-01-15', 'Mumbai'),
(102, 'Priya Patel', 'IT', 'Software Engineer', 75000.00, '2021-03-20', 'Pune'),
(103, 'Rahul Verma', 'Finance', 'Accountant', 62000.00, '2020-07-12', 'Delhi'),
(104, 'Sneha Joshi', 'IT', 'Data Analyst', 68000.00, '2023-02-01', 'Bengaluru'),
(105, 'Karan Mehta', 'Sales', 'Sales Executive', 52000.00, '2022-05-18', 'Ahmedabad'),
(106, 'Neha Singh', 'Marketing', 'Marketing Manager', 71000.00, '2019-11-25', 'Mumbai'),
(107, 'Rohit Gupta', 'IT', 'Database Admin', 85000.00, '2021-08-30', 'Hyderabad'),
(108, 'Anjali Desai', 'HR', 'Recruiter', 48000.00, '2023-04-10', 'Pune'),
(109, 'Vikas Kumar', 'Finance', 'Financial Analyst', 67000.00, '2020-09-14', 'Chennai'),
(110, 'Pooja Nair', 'Sales', 'Sales Manager', 78000.00, '2018-12-05', 'Kochi');

-- ==========================================================
-- SELECT Statement
-- ==========================================================

-- Q1. Display all columns from the employees table.

-- Q2. Display only employee_name from the employees table.

-- Q3. Display employee_name and salary.

-- Q4. Display employee_name, department, and city.

-- Q5. Display employee_id and joining_date.

-- ==========================================================
-- SELECT *
-- ==========================================================

-- Q6. Display all employee details using SELECT *.

-- Q7. Display every column and every row from the employees table.

-- Q8. Write a query using SELECT * to retrieve complete employee information.

-- ==========================================================
-- Selecting Specific Columns
-- ==========================================================

-- Q9. Display employee_name and designation.

-- Q10. Display employee_name and department.

-- Q11. Display employee_name, salary, and city.

-- Q12. Display employee_id, employee_name, and joining_date.

-- Q13. Display department and designation.

-- Q14. Display city and salary.

-- ==========================================================
-- DISTINCT
-- ==========================================================

-- Q15. Display all unique departments.

-- Q16. Display all unique cities.

-- Q17. Display all unique designations.

-- Q18. Display unique department and city combinations.

-- Q19. Display unique salary values.

-- ==========================================================
-- Column Aliases (AS)
-- ==========================================================

-- Q20. Display employee_name as "Employee Name".

-- Q21. Display salary as "Monthly Salary".

-- Q22. Display department as "Department Name".

-- Q23. Display employee_name as "Employee"
-- and designation as "Job Title".

-- Q24. Display city as "Location".

-- Q25. Display joining_date as "Joining Date".

-- ==========================================================
-- Arithmetic Expressions
-- ==========================================================

-- Q26. Display employee_name and annual salary
-- (salary × 12).

-- Q27. Display employee_name and salary after
-- adding ₹5,000.

-- Q28. Display employee_name and salary after
-- deducting ₹2,000.

-- Q29. Display employee_name and half salary.

-- Q30. Display employee_name and double salary.

-- Q31. Display employee_name and salary divided by 4.

-- Q32. Display employee_name and salary % 1000.

-- ==========================================================
-- SQL Comments
-- ==========================================================

-- Q33. Write a query with a single-line comment
-- using --.

-- Q34. Write a query with a single-line comment
-- using #.

-- Q35. Write a query with a multi-line comment.

-- Q36. Write a query containing multiple comments.

-- ==========================================================
-- Query Execution Basics
-- ==========================================================

-- Q37. Write a query to display employee_name
-- and department.

-- Q38. Write a query to display employee_name,
-- salary, and annual salary.

-- Q39. Write a query to display employee_name,
-- designation, and city.

-- ==========================================================
-- Mixed Practice
-- ==========================================================

-- Q40. Display employee_name, department,
-- designation, and salary.

-- Q41. Display employee_name and city.

-- Q42. Display all unique departments and
-- rename the column as "Departments".

-- Q43. Display employee_name as "Employee"
-- and annual salary as "Annual Salary".

-- Q44. Display employee_name,
-- salary,
-- salary + 10000 as revised salary.

-- Q45. Display employee_name,
-- department,
-- city,
-- joining_date.

-- Q46. Display all unique cities using DISTINCT.

-- Q47. Display all employee details using SELECT *.

-- ==========================================================
-- Mini Challenge
-- ==========================================================

-- Q48. Prepare an employee report showing:
-- Employee Name
-- Department
-- Monthly Salary
-- Annual Salary

-- Q49. Prepare a report showing:
-- Employee Name
-- City
-- Joining Date

-- Q50. Prepare a report showing:
-- Employee Name
-- Designation
-- Salary After Bonus
-- (Bonus = ₹8,000)

-- ==========================================================
-- Interview Practice
-- ==========================================================

-- Q51. What is DQL?

-- Q52. Which SQL statement is used to retrieve data?

-- Q53. What is the difference between
-- SELECT * and selecting specific columns?

-- Q54. What is the purpose of DISTINCT?

-- Q55. What is a column alias?

-- Q56. Is AS mandatory while creating an alias?

-- Q57. Does an alias permanently rename
-- a column?

-- Q58. Can arithmetic expressions be used
-- in a SELECT statement?

-- Q59. Name the three types of SQL comments
-- supported in MySQL.

-- Q60. Explain the logical execution order
-- of a simple SELECT query.