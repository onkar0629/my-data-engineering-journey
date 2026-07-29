-- ==========================================================
-- Day 01 - Database Basics Practice
-- ==========================================================

-- Q1. Display all databases.
SHOW DATABASES;

-- Q2. Create a database named company_db.
CREATE DATABASE company_db;

-- Q3. Create a database named student_db.
CREATE DATABASE student_db;

-- Q4. Create a database only if it does not already exist.
CREATE DATABASE IF NOT EXISTS employee_db;

-- Q5. Select the company_db database.
USE company_db;

-- Q6. Display the currently selected database.
SELECT DATABASE();

-- Q7. Delete the student_db database.
DROP DATABASE student_db;

-- Q8. Delete a database only if it exists.
DROP DATABASE IF EXISTS employee_db;