-- ============================================================
-- SQL Practice Repository
-- Topic      : IN, NOT IN, BETWEEN, NOT BETWEEN
-- Author     : Onkar Jadhav
-- Database   : sql_practice
-- Difficulty : Beginner
-- Description: Practice filtering data using IN, NOT IN,
--              BETWEEN, and NOT BETWEEN operators.
-- ============================================================

USE sql_practice;

-- ============================================================
-- Question 26
-- Display all customers whose city is Pune, Mumbai, or Delhi.
-- ============================================================

SELECT *
FROM customers
WHERE city IN ('Pune', 'Mumbai', 'Delhi');

-- ============================================================
-- Question 27
-- Display all customers whose segment is Consumer or Corporate.
-- ============================================================

SELECT *
FROM customers
WHERE segment IN ('Consumer', 'Corporate');

-- ============================================================
-- Question 28
-- Display all customers who do not belong to the Home Office segment.
-- ============================================================

SELECT *
FROM customers
WHERE segment NOT IN ('Home Office');

-- ============================================================
-- Question 29
-- Display all customers whose state is Maharashtra, Delhi,
-- or Karnataka.
-- ============================================================

SELECT *
FROM customers
WHERE state IN ('Maharashtra', 'Delhi', 'Karnataka');

-- ============================================================
-- Question 30
-- Display all customers who are not from the South region.
-- ============================================================

SELECT *
FROM customers
WHERE region NOT IN ('South');

-- ============================================================
-- Question 31
-- Display all orders where quantity is between 3 and 7.
-- ============================================================

SELECT *
FROM orders
WHERE quantity BETWEEN 3 AND 7;

-- ============================================================
-- Question 32
-- Display all orders where sales are between 5000 and 15000.
-- ============================================================

SELECT *
FROM orders
WHERE sales BETWEEN 5000 AND 15000;

-- ============================================================
-- Question 33
-- Display all orders where discount is NOT between
-- 0.05 and 0.15.
-- ============================================================

SELECT *
FROM orders
WHERE discount NOT BETWEEN 0.05 AND 0.15;

-- ============================================================
-- Question 34
-- Display all employees whose salary is between
-- 50000 and 80000.
-- ============================================================

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 80000;

-- ============================================================
-- Question 35
-- Display all employees whose department_id is not
-- in (1,2,3).
-- ============================================================

SELECT *
FROM employees
WHERE department_id NOT IN (1,2,3);
