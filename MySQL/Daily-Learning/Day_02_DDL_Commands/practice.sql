-- ============================================================
-- Day 02 : DDL Commands
-- Practice Questions
-- ============================================================

-- ============================================================
-- Beginner
-- ============================================================

-- Q1.
-- Create a database named school_db.

-- Q2.
-- Select the school_db database.

-- Q3.
-- Create a table named students with the following columns:
-- student_id
-- student_name
-- age
-- city

-- Q4.
-- Display all tables present in the current database.

-- Q5.
-- Display the structure of the students table.

-- Q6.
-- Create a table named courses with the following columns:
-- course_id
-- course_name
-- duration

-- Q7.
-- Display the structure of the courses table.

-- Q8.
-- Create a table named teachers with the following columns:
-- teacher_id
-- teacher_name
-- subject

-- ============================================================
-- Intermediate
-- ============================================================

-- Q9.
-- Add a new column named email to the students table.

-- Q10.
-- Add two new columns to the students table:
-- phone_number
-- address

-- Q11.
-- Modify the student_name column so it can store up to 150 characters.

-- Q12.
-- Modify the age column to SMALLINT.

-- Q13.
-- Rename the phone_number column to mobile_number.

-- Q14.
-- Rename the address column to student_address.

-- Q15.
-- Drop the student_address column.

-- Q16.
-- Rename the students table to student_details.

-- Q17.
-- Display all tables after renaming the table.

-- ============================================================
-- Advanced
-- ============================================================

-- Q18.
-- Create a table named employees with the following columns:
-- employee_id
-- employee_name
-- department
-- salary
-- joining_date

-- Q19.
-- Add the following columns to the employees table:
-- email
-- phone_number
-- city

-- Q20.
-- Rename the phone_number column to mobile_number.

-- Q21.
-- Modify the salary column to DECIMAL(12,2).

-- Q22.
-- Rename the employees table to employee_details.

-- Q23.
-- Display the structure of the employee_details table.

-- Q24.
-- Drop the city column from the employee_details table.

-- ============================================================
-- Interview Challenge
-- ============================================================

-- Q25.
-- What is the difference between CREATE and ALTER?

-- Q26.
-- What is the difference between DROP TABLE and TRUNCATE TABLE?

-- Q27.
-- What is the difference between MODIFY COLUMN and CHANGE COLUMN in MySQL?

-- Q28.
-- Why is TRUNCATE generally faster than DELETE?

-- Q29.
-- Explain the purpose of the DESC (DESCRIBE) command.

-- Q30.
-- What happens to the data when a column is dropped using ALTER TABLE DROP COLUMN?

-- ============================================================
-- Challenge Exercise
-- ============================================================

-- Create a database named company_db.

-- Inside company_db, create an employees table with the following columns:
-- employee_id
-- employee_name
-- department
-- salary
-- joining_date

-- Then perform the following operations one by one:

-- 1. Add an email column.
-- 2. Add a phone_number column.
-- 3. Modify employee_name to VARCHAR(150).
-- 4. Rename phone_number to mobile_number.
-- 5. Add a city column.
-- 6. Drop the city column.
-- 7. Rename the employees table to employee_master.
-- 8. Display the table structure.
-- 9. Rename the table back to employees.
-- 10. Drop the employees table.
-- 11. Finally, drop the company_db database.