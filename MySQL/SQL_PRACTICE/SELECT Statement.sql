-- ============================================================
-- SQL Practice Repository
-- Topic      : SELECT Statement
-- Author     : Onkar Jadhav
-- Database   : sql_practice
-- Difficulty : Beginner
-- Description: Basic SELECT queries on the customers table.
-- ============================================================

-- ============================================================
-- Select Database
-- ============================================================

USE sql_practice;

-- ============================================================
-- Question 1
-- Display all columns and all rows from the customers table.
-- ============================================================

SELECT *
FROM customers;

-- ============================================================
-- Question 2
-- Display customer_id and customer_name.
-- ============================================================

SELECT
    customer_id,
    customer_name
FROM customers;

-- ============================================================
-- Question 3
-- Display customer_name, city, and state.
-- ============================================================

SELECT
    customer_name,
    city,
    state
FROM customers;

-- ============================================================
-- Question 4
-- Display only the segment column.
-- ============================================================

SELECT
    segment
FROM customers;

-- ============================================================
-- Question 5
-- Display customer_code, customer_name, and region.
-- ============================================================

SELECT
    customer_code,
    customer_name,
    region
FROM customers;

-- ============================================================
-- Question 6
-- Display customer_id, customer_code, customer_name,
-- city, state, and region.
-- ============================================================

SELECT
    customer_id,
    customer_code,
    customer_name,
    city,
    state,
    region
FROM customers;

-- ============================================================
-- Question 7
-- Display customer_name and segment.
-- ============================================================

SELECT
    customer_name,
    segment
FROM customers;

-- ============================================================
-- Question 8
-- Display only the state column.
-- ============================================================

SELECT
    state
FROM customers;

-- ============================================================
-- Question 9
-- Display customer_name, city, region, and segment.
-- ============================================================

SELECT
    customer_name,
    city,
    region,
    segment
FROM customers;

-- ============================================================
-- Question 10
-- Display all columns but return only the first 10 rows.
-- ============================================================

SELECT *
FROM customers
LIMIT 10;
