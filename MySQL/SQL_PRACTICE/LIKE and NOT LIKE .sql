-- ============================================================
-- SQL Practice Repository
-- Topic      : LIKE and NOT LIKE
-- Author     : Onkar Jadhav
-- Database   : sql_practice
-- Difficulty : Beginner
-- Description: Practice pattern matching using LIKE and
--              NOT LIKE operators.
-- ============================================================

-- ============================================================
-- Select Database
-- ============================================================

USE sql_practice;

-- ============================================================
-- Question 36
-- Display customers whose customer_name starts with 'Customer_1'.
-- ============================================================

SELECT *
FROM customers
WHERE customer_name LIKE 'Customer_1%';

-- ============================================================
-- Question 37
-- Display customers whose customer_name ends with '5'.
-- ============================================================

SELECT *
FROM customers
WHERE customer_name LIKE '%5';

-- ============================================================
-- Question 38
-- Display customers whose customer_name contains '25'.
-- ============================================================

SELECT *
FROM customers
WHERE customer_name LIKE '%25%';

-- ============================================================
-- Question 39
-- Display customers whose city starts with 'P'.
-- ============================================================

SELECT *
FROM customers
WHERE city LIKE 'P%';

-- ============================================================
-- Question 40
-- Display customers whose state ends with 'a'.
-- ============================================================

SELECT *
FROM customers
WHERE state LIKE '%a';

-- ============================================================
-- Question 41
-- Display customers whose customer_name contains '10'.
-- ============================================================

SELECT *
FROM customers
WHERE customer_name LIKE '%10%';

-- ============================================================
-- Question 42
-- Display customers whose city does NOT start with 'M'.
-- ============================================================

SELECT *
FROM customers
WHERE city NOT LIKE 'M%';

-- ============================================================
-- Question 43
-- Display customers whose state contains 'Pradesh'.
-- ============================================================

SELECT *
FROM customers
WHERE state LIKE '%Pradesh%';

-- ============================================================
-- Question 44
-- Display customers whose region starts with 'S'.
-- ============================================================

SELECT *
FROM customers
WHERE region LIKE 'S%';

-- ============================================================
-- Question 45
-- Display customers whose city starts with 'P'
-- and whose segment is Consumer.
-- ============================================================

SELECT *
FROM customers
WHERE city LIKE 'P%'
  AND segment = 'Consumer';

-- ============================================================
-- Question 46
-- Display customers whose customer_name starts with
-- 'Customer_2' but does not contain '25'.
-- ============================================================

SELECT *
FROM customers
WHERE customer_name LIKE 'Customer_2%'
  AND customer_name NOT LIKE '%25%';

-- ============================================================
-- Question 47
-- Display customers whose city starts with 'B' or 'H'.
-- ============================================================

SELECT *
FROM customers
WHERE city LIKE 'B%'
   OR city LIKE 'H%';

-- ============================================================
-- Question 48
-- Display customers whose state ends with 'shtra'.
-- ============================================================

SELECT *
FROM customers
WHERE state LIKE '%shtra';

-- ============================================================
-- Question 49
-- Display customers whose region is not 'North'
-- using NOT LIKE.
-- ============================================================

SELECT *
FROM customers
WHERE region NOT LIKE 'North';

-- ============================================================
-- Question 50
-- Display customers whose customer_name contains
-- the digit '7'.
-- ============================================================

SELECT *
FROM customers
WHERE customer_name LIKE '%7%';
