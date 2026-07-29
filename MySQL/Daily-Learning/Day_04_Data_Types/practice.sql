-- ==========================================================
-- Day 04 - MySQL Data Types
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
-- TINYINT
-- ==========================================================

-- Q1. Create a table named student_age with:
-- student_id INT
-- age TINYINT

-- Q2. Insert five student records into the student_age table.

-- Q3. Create a table to store ratings (1–5) using TINYINT.

-- Q4. Create a table to store attendance status using TINYINT.

-- ==========================================================
-- SMALLINT
-- ==========================================================

-- Q5. Create a table named inventory with:
-- product_id INT
-- quantity SMALLINT

-- Q6. Insert five records into the inventory table.

-- Q7. Create a table named exams with:
-- student_id INT
-- total_marks SMALLINT

-- ==========================================================
-- MEDIUMINT
-- ==========================================================

-- Q8. Create a table named product_sales using MEDIUMINT for total_sales.

-- Q9. Insert five records into the product_sales table.

-- ==========================================================
-- INT
-- ==========================================================

-- Q10. Create a table named customers with:
-- customer_id INT
-- customer_name VARCHAR(100)

-- Q11. Insert five customer records.

-- Q12. Create a table named orders with:
-- order_id INT
-- order_amount DECIMAL(10,2)

-- ==========================================================
-- BIGINT
-- ==========================================================

-- Q13. Create a table named transactions with:
-- transaction_id BIGINT
-- amount DECIMAL(12,2)

-- Q14. Insert three transaction records.

-- ==========================================================
-- DECIMAL
-- ==========================================================

-- Q15. Create a table named products with:
-- product_id INT
-- product_name VARCHAR(100)
-- price DECIMAL(10,2)

-- Q16. Insert five products with decimal prices.

-- Q17. Create a table named bank_accounts using DECIMAL for balance.

-- ==========================================================
-- FLOAT
-- ==========================================================

-- Q18. Create a table named weather with:
-- city VARCHAR(50)
-- temperature FLOAT

-- Q19. Insert five temperature records.

-- ==========================================================
-- DOUBLE
-- ==========================================================

-- Q20. Create a table named locations with:
-- latitude DOUBLE
-- longitude DOUBLE

-- Q21. Insert five location records.

-- ==========================================================
-- CHAR
-- ==========================================================

-- Q22. Create a table named countries using CHAR(2) for country_code.

-- Q23. Insert five country codes.

-- Q24. Create a table named students using CHAR(2) for grade.

-- ==========================================================
-- VARCHAR
-- ==========================================================

-- Q25. Create a table named customers_info with:
-- customer_name VARCHAR(100)
-- email VARCHAR(150)

-- Q26. Insert five customer records.

-- ==========================================================
-- TEXT
-- ==========================================================

-- Q27. Create a table named blogs with:
-- blog_id INT
-- article TEXT

-- Q28. Insert three blog records.

-- ==========================================================
-- ENUM
-- ==========================================================

-- Q29. Create a table named tasks with:
-- task_name VARCHAR(100)
-- priority ENUM('Low','Medium','High')

-- Q30. Insert five task records.

-- ==========================================================
-- DATE
-- ==========================================================

-- Q31. Create a table named holidays with:
-- holiday_name VARCHAR(100)
-- holiday_date DATE

-- Q32. Insert five holiday records.

-- ==========================================================
-- TIME
-- ==========================================================

-- Q33. Create a table named meetings with:
-- meeting_time TIME

-- Q34. Insert five meeting times.

-- ==========================================================
-- DATETIME
-- ==========================================================

-- Q35. Create a table named appointments with:
-- appointment_datetime DATETIME

-- Q36. Insert five appointment records.

-- ==========================================================
-- TIMESTAMP
-- ==========================================================

-- Q37. Create a table named login_history with:
-- login_id INT
-- login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP

-- Q38. Insert five login records.

-- ==========================================================
-- YEAR
-- ==========================================================

-- Q39. Create a table named vehicles with:
-- vehicle_name VARCHAR(100)
-- model_year YEAR

-- Q40. Insert five vehicle records.

-- ==========================================================
-- BOOLEAN
-- ==========================================================

-- Q41. Create a table named users with:
-- username VARCHAR(100)
-- is_active BOOLEAN

-- Q42. Insert five user records.

-- ==========================================================
-- BINARY
-- ==========================================================

-- Q43. Create a table using BINARY(8).

-- Q44. Insert three records into the table.

-- ==========================================================
-- VARBINARY
-- ==========================================================

-- Q45. Create a table using VARBINARY(20).

-- Q46. Insert three records.

-- ==========================================================
-- BLOB
-- ==========================================================

-- Q47. Create a table named documents with:
-- document_id INT
-- file_data BLOB

-- ==========================================================
-- Choosing the Right Data Type
-- ==========================================================

-- Q48. Create an employees table using appropriate data types for:
-- employee_id
-- employee_name
-- age
-- salary
-- joining_date
-- is_active

-- Q49. Create a products table using suitable data types for:
-- product_id
-- product_name
-- description
-- price
-- quantity

-- Q50. Create a students table using suitable data types for:
-- student_id
-- student_name
-- grade
-- date_of_birth
-- percentage

-- ==========================================================
-- Mixed Practice
-- ==========================================================

-- Q51. Create a hospital table with suitable data types.

-- Q52. Create a library table with suitable data types.

-- Q53. Create a movies table with suitable data types.

-- Q54. Create a hotels table with suitable data types.

-- Q55. Create a banking table with suitable data types.

-- ==========================================================
-- Mini Challenge
-- ==========================================================

-- Q56. Design a college database table using appropriate data types.

-- Q57. Design an online shopping products table using appropriate data types.

-- Q58. Design an employee attendance table using appropriate data types.

-- Q59. Design an airline booking table using appropriate data types.

-- Q60. Design a customer feedback table using appropriate data types.

-- ==========================================================
-- Interview Practice
-- ==========================================================

-- Q61. Which data type would you use for storing employee salary?

-- Q62. Which data type is best for storing a person's age?

-- Q63. Which data type would you choose for product descriptions?

-- Q64. Which data type should be used for dates?

-- Q65. Which data type is suitable for storing TRUE/FALSE values?

-- Q66. Which data type would you use for storing profile photos?

-- Q67. Explain the difference between CHAR and VARCHAR.

-- Q68. Explain the difference between FLOAT and DECIMAL.

-- Q69. Explain the difference between DATETIME and TIMESTAMP.

-- Q70. Design a table for an e-commerce website by choosing suitable data types for each column.