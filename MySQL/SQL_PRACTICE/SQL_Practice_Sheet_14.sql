-- ==========================================================
-- SQL Practice Sheet 14 : Stored Procedures, Functions & Triggers
-- Topics:
-- CREATE PROCEDURE, IN/OUT Parameters,
-- User Defined Functions, BEFORE/AFTER Triggers
-- MySQL 8.0+
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_14;
USE practice_sheet_14;

DROP TABLE IF EXISTS employee_audit;
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
(105,'Karan','Sales',50000,'2023-06-01');

CREATE TABLE employee_audit(
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    action_type VARCHAR(20),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ==========================================================
-- Write only the SQL statement(s) below each question.
-- ==========================================================

-- Q1. Create a stored procedure to display all employees.

-- Q2. Execute the stored procedure created in Q1.

-- Q3. Create a stored procedure that accepts an employee ID (IN parameter)
--     and returns that employee's details.

-- Q4. Create a stored procedure that accepts a department name
--     and displays employees from that department.

-- Q5. Create a stored procedure that inserts a new employee.

-- Q6. Create a stored procedure that updates an employee's salary.

-- Q7. Create a stored procedure that deletes an employee by emp_id.

-- Q8. Create a stored procedure using an OUT parameter
--     to return the total number of employees.

-- Q9. Create a function that returns the annual salary
--     (salary * 12).

-- Q10. Use the function from Q9 in a SELECT query.

-- Q11. Create a function that returns 'High', 'Medium'
--      or 'Low' based on salary.

-- Q12. Display every employee with the salary category function.

-- Q13. Create a BEFORE INSERT trigger that prevents
--      inserting a salary less than 30000.

-- Q14. Test the trigger from Q13.

-- Q15. Create an AFTER INSERT trigger that writes
--      inserted employee IDs into employee_audit.

-- Q16. Test the AFTER INSERT trigger.

-- Q17. Create an AFTER DELETE trigger that stores
--      deleted employee IDs in employee_audit.

-- Q18. Test the AFTER DELETE trigger.

-- Q19. Display all records from employee_audit.

-- Q20. Explain the difference between:
--      (a) Procedure vs Function
--      (b) BEFORE Trigger vs AFTER Trigger
