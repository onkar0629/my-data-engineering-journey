-- ==========================================================
-- SQL Practice Sheet 09 : JOINS (Part 2 - Advanced)
-- Topics:
-- Multi-table JOINs, SELF JOIN, INNER/LEFT JOIN,
-- GROUP BY with JOINs
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_09;
USE practice_sheet_09;

DROP TABLE IF EXISTS projects;
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
    manager_id INT,
    dept_id INT,
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(101,'Rahul',NULL,1,90000),
(102,'Priya',101,2,60000),
(103,'Amit',101,1,75000),
(104,'Sneha',103,1,70000),
(105,'Karan',101,4,50000),
(106,'Neha',102,2,58000),
(107,'Rohit',103,1,65000),
(108,'Anjali',101,3,80000);

CREATE TABLE projects(
    project_id INT PRIMARY KEY,
    project_name VARCHAR(40),
    emp_id INT
);

INSERT INTO projects VALUES
(1,'Data Warehouse',101),
(2,'HR Portal',102),
(3,'Azure Migration',103),
(4,'Sales Dashboard',105),
(5,'ETL Pipeline',101),
(6,'Finance Analytics',108);

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Display employee name with department name.

-- Q2. Display employee name with project name.

-- Q3. Display employee, department and project name.

-- Q4. Display employees who are not assigned to any project.

-- Q5. Display projects that have no assigned employee.

-- Q6. Display employee name with manager name (SELF JOIN).

-- Q7. Display all employees who report to Rahul.

-- Q8. Display employees whose manager belongs to the IT department.

-- Q9. Display department-wise employee count.

-- Q10. Display department-wise average salary.

-- Q11. Display project count handled by each employee.

-- Q12. Display employees working on more than one project.

-- Q13. Display the highest-paid employee in each department.

-- Q14. Display departments with average salary greater than 70000.

-- Q15. Display employees and their managers ordered by manager name.

-- Q16. Display all employees along with department even if department is missing.

-- Q17. Display all departments even if they have no employees.

-- Q18. Display employees who do not have a manager.

-- Q19. Display total salary paid department-wise.

-- Q20. Display the top 3 highest-paid employees along with department and manager name.
