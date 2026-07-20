-- ============================================
-- Assignment 03 - MySQL Data Types
-- Author: Onkar Jadhav
-- ============================================

-- Show all databases
SHOW DATABASES;

-- Create database
CREATE DATABASE IF NOT EXISTS assignment_03;

-- Select database
USE assignment_03;

-- ============================================
-- 1. An HR application stores employee IDs using TINYINT. After a few months, the company grows beyond 127 employees, and new employee creation starts failing.
-- What caused the failure? 
-- Which data type should have been used? 
-- How would you fix it in production?
-- ============================================

-- Problem:
-- TINYINT supports values upto 127.
-- After employee ID exceeded 127, insertion will failed.

-- Fix:
ALTER TABLE employees
MODIFY employee_id INT UNSIGNED;

-- ============================================
-- 2. An employee's salary is stored using FLOAT. Finance reports show small differences (for example, ₹99.99 becomes ₹99.98999) after monthly calculations.
-- Why did this happen? 
-- Which data type is appropriate? 
-- Why shouldn't FLOAT be used for financial data?
-- ============================================

-- FLOAT stores approximate values and may introduce
-- precision errors in financial calculations.

CREATE TABLE employee_salary (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2)
);

-- Sample Data
INSERT INTO employee_salary
(employee_id, employee_name, salary)
VALUES
(101, 'Rahul', 50000.50),
(102, 'Priya', 65000.75);

SELECT * FROM employee_salary;

-- ============================================
-- 3. Customers can write product reviews of any length. Some reviews contain over 5,000 characters.
-- Should you use CHAR, VARCHAR, or TEXT? 
-- Why?
-- ============================================

CREATE TABLE product_reviews (
    review_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    review TEXT
);

-- TEXT is suitable for storing reviews
-- longer than 5000 characters.

-- ============================================
-- 4. Every product code is exactly six characters.
-- Which data type is best? 
-- Why is CHAR a better choice than VARCHAR?
-- ============================================
	
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_code CHAR(6),
    product_name VARCHAR(100)
);

-- CHAR(6) is ideal because every
-- product code has exactly six characters.

-- ============================================
-- 5. Employee names vary in length.
-- Should you use CHAR or VARCHAR? 
-- Why?
-- ============================================

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100)
);

-- VARCHAR is preferred because
-- employee names have variable lengths.

-- ============================================
-- 6. Every time an employee record is inserted, you want to record when it happened automatically.
-- Which data type would you use? 
-- Which default value would you configure?
-- ============================================

CREATE TABLE employee_details (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Automatically stores the insertion time.

-- ============================================
-- 7. An employee can have multiple skills.
/* Sample Data:
{
  "skills": [
    "SQL",
    "Python",
    "Spark"
  ]
} */
-- Which MySQL data type is most suitable? 
-- Why not store it in a comma-separated VARCHAR?
-- ============================================

CREATE TABLE employee_skills (
    employee_id INT PRIMARY KEY,
    skills JSON
);

-- Sample Data
INSERT INTO employee_skills
(employee_id, skills)
VALUES
(
    101,
    '["SQL","Python","Spark"]'
);

SELECT * FROM employee_skills;

-- JSON is preferred over comma-separated VARCHAR
-- because it stores structured data and supports
-- JSON functions for querying.

-- ============================================
-- 8. A hospital application stores X-ray images in the database.
-- Which data type should be used?
-- ============================================

CREATE TABLE hospital_records (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    xray_image LONGBLOB
);

-- LONGBLOB is suitable for storing large images.

-- ============================================
-- 9. A manufacturing plant receives temperature readings every second.
-- Example: 35.67, 36.21, 34.89
-- Small precision differences are acceptable.
-- Which data type should be used? 
-- Would you choose FLOAT, DOUBLE, or DECIMAL? 
-- Why?
-- ============================================

CREATE TABLE temperature_readings (
    reading_id INT PRIMARY KEY,
    temperature FLOAT,
    recorded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample Data
INSERT INTO temperature_readings
(reading_id, temperature)
VALUES
(1, 35.67),
(2, 36.21),
(3, 34.89);

SELECT * FROM temperature_readings;

-- FLOAT is appropriate because
-- small precision differences are acceptable.

-- ============================================
-- 10. An HR CSV file contains:
-- 15-06-2026
-- 20-12-2025
-- Which data type should the target column use? 
-- ============================================

CREATE TABLE employee_joining (
    employee_id INT PRIMARY KEY,
    joining_date DATE
);

-- Insert dates from CSV using STR_TO_DATE()

INSERT INTO employee_joining
(employee_id, joining_date)
VALUES
(101, STR_TO_DATE('15-06-2026', '%d-%m-%Y')),
(102, STR_TO_DATE('20-12-2025', '%d-%m-%Y'));

SELECT * FROM employee_joining;

-- ============================================
-- Final Output
-- ============================================

SHOW TABLES;

SELECT * FROM employee_salary;
SELECT * FROM product_reviews;
SELECT * FROM products;
SELECT * FROM employees;
SELECT * FROM employee_details;
SELECT * FROM employee_skills;
SELECT * FROM hospital_records;
SELECT * FROM temperature_readings;
SELECT * FROM employee_joining;
