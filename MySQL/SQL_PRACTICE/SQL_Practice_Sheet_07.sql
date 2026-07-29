-- ==========================================================
-- SQL Practice Sheet 07 : Date & Time Functions
-- Topics:
-- CURDATE(), CURRENT_DATE(), NOW(), CURRENT_TIMESTAMP(),
-- YEAR(), MONTH(), DAY(), MONTHNAME(), DAYNAME(),
-- DATEDIFF(), DATE_ADD(), DATE_SUB(), TIMESTAMPDIFF(),
-- DATE_FORMAT()
-- ==========================================================

CREATE DATABASE IF NOT EXISTS practice_sheet_07;
USE practice_sheet_07;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_id INT,
    first_name VARCHAR(30),
    department VARCHAR(20),
    salary DECIMAL(10,2),
    hire_date DATE,
    last_login DATETIME
);

INSERT INTO employees VALUES
(101,'Rahul','IT',65000,'2022-01-15','2026-07-20 09:15:00'),
(102,'Priya','HR',55000,'2021-07-10','2026-07-25 18:45:20'),
(103,'Amit','Finance',72000,'2020-11-25','2026-07-26 08:10:15'),
(104,'Sneha','IT',81000,'2019-04-08','2026-07-27 12:30:00'),
(105,'Karan','Sales',48000,'2023-03-12','2026-07-18 16:05:30'),
(106,'Neha','HR',60000,'2022-08-19','2026-07-28 10:00:00'),
(107,'Rohit','Marketing',52000,'2024-01-05','2026-07-28 21:25:45'),
(108,'Anjali','IT',95000,'2018-10-01','2026-07-29 07:40:10');

-- ==========================================================
-- Write only the SQL query below each question.
-- ==========================================================

-- Q1. Display today's date.

-- Q2. Display the current date and time.

-- Q3. Display employee name and hire year.

-- Q4. Display employee name and hire month number.

-- Q5. Display employee name and month name of hire.

-- Q6. Display employee name and day of the month they were hired.

-- Q7. Display employee name and day name of hire.

-- Q8. Display employees hired after '2022-01-01'.

-- Q9. Display employees hired before '2021-01-01'.

-- Q10. Find the number of days each employee has worked until today.

-- Q11. Add 30 days to each employee's hire_date.

-- Q12. Subtract 1 year from each employee's hire_date.

-- Q13. Display employees hired in the year 2022.

-- Q14. Display employees hired in the month of January.

-- Q15. Find each employee's experience in complete years.

-- Q16. Format hire_date as 'DD-MM-YYYY'.

-- Q17. Display employees whose last_login was today.

-- Q18. Display employees who logged in within the last 7 days.

-- Q19. Display employee name, hire_date and last_login.

-- Q20. Find the oldest employee based on hire_date.
