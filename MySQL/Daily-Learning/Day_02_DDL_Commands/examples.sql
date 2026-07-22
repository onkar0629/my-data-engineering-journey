-- ============================================================
-- Day 02 : DDL Commands
-- Examples
-- ============================================================

-- ============================================================
-- 1. Create a Database
-- ============================================================

CREATE DATABASE company_db;

-- ============================================================
-- 2. Select the Database
-- ============================================================

USE company_db;

-- ============================================================
-- 3. Create a Table
-- ============================================================

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);

-- ============================================================
-- 4. Display All Tables
-- ============================================================

SHOW TABLES;

-- ============================================================
-- 5. View Table Structure
-- ============================================================

DESC employees;

-- or

DESCRIBE employees;

-- ============================================================
-- 6. Add a New Column
-- ============================================================

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

-- Verify the updated table structure

DESC employees;

-- ============================================================
-- 7. Add Multiple Columns
-- ============================================================

ALTER TABLE employees
ADD COLUMN phone VARCHAR(15),
ADD COLUMN city VARCHAR(50);

DESC employees;

-- ============================================================
-- 8. Modify a Column Data Type (MySQL)
-- ============================================================

ALTER TABLE employees
MODIFY COLUMN employee_name VARCHAR(150);

DESC employees;

-- ============================================================
-- 9. Modify Another Column
-- ============================================================

ALTER TABLE employees
MODIFY COLUMN salary DECIMAL(12,2);

DESC employees;

-- ============================================================
-- 10. Rename and Modify a Column (MySQL)
-- ============================================================

ALTER TABLE employees
CHANGE COLUMN employee_name full_name VARCHAR(150);

DESC employees;

-- ============================================================
-- 11. Rename Another Column
-- ============================================================

ALTER TABLE employees
CHANGE COLUMN phone mobile_number VARCHAR(15);

DESC employees;

-- ============================================================
-- 12. Rename a Column (MySQL 8.0+)
-- ============================================================

ALTER TABLE employees
RENAME COLUMN city TO employee_city;

DESC employees;

-- ============================================================
-- 13. Drop a Column
-- ============================================================

ALTER TABLE employees
DROP COLUMN employee_city;

DESC employees;

-- ============================================================
-- 14. Rename the Table
-- ============================================================

RENAME TABLE employees
TO employee_details;

SHOW TABLES;

DESC employee_details;

-- ============================================================
-- 15. Alternative Method to Rename a Table (MySQL)
-- ============================================================

ALTER TABLE employee_details
RENAME TO employees;

SHOW TABLES;

-- ============================================================
-- 16. Insert Sample Data
-- ============================================================

INSERT INTO employees
VALUES
(101, 'Rahul Sharma', 'HR', 45000.00, '2024-01-10', 'rahul@email.com', '9876543210'),
(102, 'Priya Singh', 'IT', 65000.00, '2023-08-15', 'priya@email.com', '9876543211'),
(103, 'Amit Kumar', 'Finance', 58000.00, '2022-11-20', 'amit@email.com', '9876543212');

SELECT *
FROM employees;

-- ============================================================
-- 17. Remove All Records
-- ============================================================

TRUNCATE TABLE employees;

SELECT *
FROM employees;

-- ============================================================
-- 18. Insert New Records Again
-- ============================================================

INSERT INTO employees
VALUES
(201, 'Neha Patel', 'Sales', 52000.00, '2025-02-18', 'neha@email.com', '9123456780'),
(202, 'Arjun Mehta', 'Marketing', 60000.00, '2024-09-12', 'arjun@email.com', '9234567891');

SELECT *
FROM employees;

-- ============================================================
-- 19. Delete the Table
-- ============================================================

DROP TABLE employees;

SHOW TABLES;

-- ============================================================
-- 20. Delete the Database (Optional)
-- ============================================================

USE mysql;

DROP DATABASE company_db;

SHOW DATABASES;