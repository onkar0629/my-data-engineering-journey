-- ============================================================
-- SQL Practice Repository
-- Topic      : DISTINCT, ORDER BY, LIMIT
-- Author     : Onkar Jadhav
-- Database   : sql_practice
-- Difficulty : Beginner
-- Description: Practice removing duplicate records, sorting
--              result sets, and limiting the number of rows.
-- ============================================================

-- ============================================================
-- Select Database
-- ============================================================

USE sql_practice;

-- ============================================================
-- DISTINCT
-- ============================================================

-- ============================================================
-- Question 51
-- Display all unique cities.
-- ============================================================

SELECT DISTINCT city
FROM customers;

-- ============================================================
-- Question 52
-- Display all unique states.
-- ============================================================

SELECT DISTINCT state
FROM customers;

-- ============================================================
-- Question 53
-- Display all unique regions.
-- ============================================================

SELECT DISTINCT region
FROM customers;

-- ============================================================
-- Question 54
-- Display all unique customer segments.
-- ============================================================

SELECT DISTINCT segment
FROM customers;

-- ============================================================
-- Question 55
-- Count the number of unique cities.
-- ============================================================

SELECT COUNT(DISTINCT city) AS total_unique_cities
FROM customers;

-- ============================================================
-- ORDER BY
-- ============================================================

-- ============================================================
-- Question 56
-- Display all customers ordered by customer_name
-- in ascending order.
-- ============================================================

SELECT *
FROM customers
ORDER BY customer_name ASC;

-- ============================================================
-- Question 57
-- Display all customers ordered by customer_name
-- in descending order.
-- ============================================================

SELECT *
FROM customers
ORDER BY customer_name DESC;

-- ============================================================
-- Question 58
-- Display all employees ordered by salary
-- from highest to lowest.
-- ============================================================

SELECT *
FROM employees
ORDER BY salary DESC;

-- ============================================================
-- Question 59
-- Display all products ordered by unit_price
-- from lowest to highest.
-- ============================================================

SELECT *
FROM products
ORDER BY unit_price ASC;

-- ============================================================
-- Question 60
-- Display customers ordered by
-- State (Ascending)
-- City (Ascending)
-- ============================================================

SELECT *
FROM customers
ORDER BY state ASC,
         city ASC;

-- ============================================================
-- LIMIT
-- ============================================================

-- ============================================================
-- Question 61
-- Display the first 5 customers.
-- ============================================================

SELECT *
FROM customers
LIMIT 5;

-- ============================================================
-- Question 62
-- Display the first 10 products.
-- ============================================================

SELECT *
FROM products
LIMIT 10;

-- ============================================================
-- Question 63
-- Display the top 5 highest-paid employees.
-- ============================================================

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- ============================================================
-- Question 64
-- Display the top 10 most expensive products.
-- ============================================================

SELECT *
FROM products
ORDER BY unit_price DESC
LIMIT 10;

-- ============================================================
-- Question 65
-- Display the top 5 orders with the highest sales.
-- ============================================================

SELECT *
FROM orders
ORDER BY sales DESC
LIMIT 5;

-- ============================================================
-- Question 66
-- Display the second highest-paid employee.
-- ============================================================

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- ============================================================
-- Question 67
-- Display the third most expensive product.
-- ============================================================

SELECT *
FROM products
ORDER BY unit_price DESC
LIMIT 1 OFFSET 2;

-- ============================================================
-- Question 68
-- Display the first 3 customers in alphabetical order.
-- ============================================================

SELECT *
FROM customers
ORDER BY customer_name ASC
LIMIT 3;

-- ============================================================
-- Question 69
-- Display the last 5 employees based on employee_id.
-- ============================================================

SELECT *
FROM employees
ORDER BY employee_id DESC
LIMIT 5;

-- ============================================================
-- Question 70
-- Display the top 10 orders with the highest profit.
-- ============================================================

SELECT *
FROM orders
ORDER BY profit DESC
LIMIT 10;
