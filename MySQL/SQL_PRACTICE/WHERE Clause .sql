-- ============================================================
-- SQL Practice Repository
-- Topic      : WHERE Clause
-- Author     : Onkar Jadhav
-- Database   : sql_practice
-- Difficulty : Beginner
-- Description: Practice filtering data using the WHERE clause,
--              comparison operators, AND, and OR.
-- ============================================================

-- ============================================================
-- Select Database
-- ============================================================

USE sql_practice;

-- ============================================================
-- Question 11
-- Display all details of customers who belong to Pune.
-- ============================================================

SELECT *
FROM customers
WHERE city = 'Pune';

-- ============================================================
-- Question 12
-- Display customer_id, customer_name, and city
-- for customers who belong to Mumbai.
-- ============================================================

SELECT
    customer_id,
    customer_name,
    city
FROM customers
WHERE city = 'Mumbai';

-- ============================================================
-- Question 13
-- Display all customers who belong to the South region.
-- ============================================================

SELECT *
FROM customers
WHERE region = 'South';

-- ============================================================
-- Question 14
-- Display all customers whose segment is Consumer.
-- ============================================================

SELECT *
FROM customers
WHERE segment = 'Consumer';

-- ============================================================
-- Question 15
-- Display all customers whose city is Delhi
-- and whose segment is Corporate.
-- ============================================================

SELECT *
FROM customers
WHERE city = 'Delhi'
AND segment = 'Corporate';

-- ============================================================
-- Question 16
-- Display all customers who belong to the state Maharashtra.
-- ============================================================

SELECT *
FROM customers
WHERE state = 'Maharashtra';

-- ============================================================
-- Question 17
-- Display all customers who belong to Pune or Mumbai.
-- ============================================================

SELECT *
FROM customers
WHERE city = 'Pune'
OR city = 'Mumbai';

-- ============================================================
-- Question 18
-- Display all customers whose segment is not Consumer.
-- ============================================================

SELECT *
FROM customers
WHERE segment <> 'Consumer';

-- ============================================================
-- Question 19
-- Display customer_name, city, and state
-- for customers who belong to the North region.
-- ============================================================

SELECT
    customer_name,
    city,
    state
FROM customers
WHERE region = 'North';

-- ============================================================
-- Question 20
-- Display all customers who belong to Bengaluru
-- and whose segment is Home Office.
-- ============================================================

SELECT *
FROM customers
WHERE city = 'Bengaluru'
AND segment = 'Home Office';

-- ============================================================
-- Question 21
-- Display customers who belong to Pune or Bengaluru
-- and whose segment is Consumer.
-- ============================================================

SELECT *
FROM customers
WHERE (city = 'Pune' OR city = 'Bengaluru')
AND segment = 'Consumer';

-- ============================================================
-- Question 22
-- Display customers who belong to Maharashtra
-- and are in the West region.
-- ============================================================

SELECT *
FROM customers
WHERE state = 'Maharashtra'
AND region = 'West';

-- ============================================================
-- Question 23
-- Display customers who are not in the South region.
-- ============================================================

SELECT *
FROM customers
WHERE region <> 'South';

-- ============================================================
-- Question 24
-- Display customers whose city is Delhi,
-- Jaipur, or Lucknow.
-- ============================================================

SELECT *
FROM customers
WHERE city = 'Delhi'
OR city = 'Jaipur'
OR city = 'Lucknow';

-- ============================================================
-- Question 25
-- Display customers whose segment is
-- Corporate or Home Office.
-- ============================================================

SELECT *
FROM customers
WHERE segment = 'Corporate'
OR segment = 'Home Office';
