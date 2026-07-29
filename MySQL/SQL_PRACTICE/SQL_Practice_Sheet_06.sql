-- ==========================================================
-- SQL Practice Sheet 06 : String Functions
-- Topics:
-- CONCAT, CONCAT_WS, LENGTH, CHAR_LENGTH, UPPER, LOWER,
-- TRIM, LTRIM, RTRIM, LEFT, RIGHT, SUBSTRING,
-- REPLACE, REVERSE
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_06;
USE practice_sheet_06;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email VARCHAR(100),
    department VARCHAR(20),
    city VARCHAR(30)
);

INSERT INTO employees VALUES
(101,'Rahul','Sharma','rahul.sharma@gmail.com','IT','Pune'),
(102,'Priya','Verma','priya.verma@yahoo.com','HR','Mumbai'),
(103,'Amit','Joshi','amit.joshi@gmail.com','Finance','Pune'),
(104,'Sneha','Patil','sneha.patil@outlook.com','IT','Nagpur'),
(105,'Karan','Singh','karan.singh@gmail.com','Sales','Delhi'),
(106,'Neha','Kulkarni','neha.kulkarni@gmail.com','HR','Mumbai'),
(107,'Rohit','Patel','rohit.patel@yahoo.com','Marketing','Ahmedabad'),
(108,'Anjali','Gupta','anjali.gupta@gmail.com','IT','Pune');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Display first_name in UPPERCASE.

-- Q2. Display last_name in lowercase.

-- Q3. Display full name using CONCAT().

-- Q4. Display full name using CONCAT_WS(' ', ...).

-- Q5. Display the length of each first_name using LENGTH().

-- Q6. Display the number of characters in each email using CHAR_LENGTH().

-- Q7. Display the first 3 characters of first_name.

-- Q8. Display the last 4 characters of email.

-- Q9. Display characters from position 2 to 5 of first_name.

-- Q10. Replace 'gmail.com' with 'company.com' in email.

-- Q11. Reverse every first_name.

-- Q12. Display the first initial and last_name (Example: R. Sharma).

-- Q13. Display employees whose first_name starts with 'A'.

-- Q14. Display employees whose email ends with '.com'.

-- Q15. Display employees whose email contains 'gmail'.

-- Q16. Trim leading and trailing spaces from '   Data Engineer   '.

-- Q17. Display the first_name and its character count.

-- Q18. Display full name in uppercase.

-- Q19. Display first_name, city as a single string separated by ' - '.

-- Q20. Display the domain name from each email (everything after '@').
