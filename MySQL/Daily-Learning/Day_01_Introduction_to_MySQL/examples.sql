-- ============================================================
-- Day 01: Introduction to MySQL
-- Examples
-- ============================================================

-- Create a database
CREATE DATABASE IF NOT EXISTS learning_mysql;

-- Select the database
USE learning_mysql;

-- Create a simple table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    city VARCHAR(50)
);

-- Insert sample records
INSERT INTO students (student_id, student_name, age, city)
VALUES
    (1, 'Amit', 22, 'Mumbai'),
    (2, 'Priya', 23, 'Pune'),
    (3, 'Rahul', 21, 'Nashik');

-- View the table data
SELECT *
FROM students;

-- View selected columns
SELECT student_id, student_name, city
FROM students;
