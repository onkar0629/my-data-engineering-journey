-- ===========================================================================
-- Assignment 05 - MySQL Aggregate Functions (Distinct, Limit, Like, Group By)
-- Author: Onkar Jadhav
-- ===========================================================================

-- Show all databases
SHOW DATABASES;

-- Create database
CREATE DATABASE IF NOT EXISTS assignment_05;

-- Select database
USE assignment_05;

-- View available tables
SHOW TABLES;

-- ============================================
-- 1. How many clients are registered with the insurance agency?
-- ============================================

SELECT COUNT(*) AS RegisteredClients
FROM client;

-- ============================================
-- 2. What is the total number of insurance policies recorded in the system?
-- ============================================

SELECT COUNT(*) AS TotalPolicies
FROM insurance;

-- ============================================
-- 3. How many insurance policies are currently active? (Current date is earlier than end_date)
-- ============================================

SELECT COUNT(*) AS ActivePolicies
FROM policy
WHERE CURDATE() < end_date;

-- ============================================
-- 4. What is the total annual revenue generated from all insurance policies?
-- ============================================

SELECT SUM(annual_fee) AS TotalAnnualRevenue
FROM policy;

-- ============================================
-- 5. What is the average annual fee charged across all insurance policies?
-- ============================================

SELECT AVG(annual_fee) AS AverageAnnualFee
FROM policy;

-- ============================================
-- 6. What is the highest basic price among all insurance types offered by the agency?
-- ============================================

SELECT MAX(basic_price) AS HighestBasicPrice
FROM insurance;

-- ============================================
-- 7. What is the lowest basic price among all insurance types offered by the agency?
-- ============================================

SELECT MIN(basic_price) AS LowestBasicPrice
FROM insurance;

-- ============================================
-- 8. List all unique cities where clients reside. Display city names in ascending order.
-- ============================================

SELECT DISTINCT city
FROM client
ORDER BY city ASC;

-- ============================================
-- 9. List all unique cities where insurance agents work.
-- Display city names in ascending order.
-- ============================================

SELECT DISTINCT city
FROM agent
ORDER BY city ASC;

-- ============================================
-- 10. Retrieve the full names of all clients born after the year 2000.
-- Display results from oldest to youngest.
-- ============================================

SELECT
    CONCAT(first_name, ' ', last_name) AS FullName,
    birth_date
FROM client
WHERE birth_date > '2000-12-31'
ORDER BY birth_date ASC;

-- ============================================
-- 11. How many clients live in each city?
-- ============================================

SELECT
    city,
    COUNT(city) AS TotalClients
FROM client
GROUP BY city
ORDER BY TotalClients DESC;

-- ============================================
-- 12. How many policies has each agent sold?
-- ============================================

SELECT
    agent_id,
    COUNT(agent_id) AS PoliciesSold
FROM policy
GROUP BY agent_id
ORDER BY PoliciesSold DESC;

-- ============================================
-- 13. What is the average annual fee for each type of insurance?
-- ============================================

SELECT
    insurance_id,
    AVG(annual_fee) AS AverageAnnualFee
FROM policy
GROUP BY insurance_id
ORDER BY AverageAnnualFee DESC;

-- ============================================
-- 14. How many unique clients has each agent worked with?
-- ============================================

SELECT
    agent_id,
    COUNT(DISTINCT client_id) AS UniqueClients
FROM policy
GROUP BY agent_id
ORDER BY UniqueClients DESC;

-- ============================================
-- 15. Which agents have sold more than 10 policies?
-- ============================================

SELECT
    agent_id,
    COUNT(agent_id) AS PoliciesSold
FROM policy
GROUP BY agent_id
HAVING COUNT(agent_id) > 10
ORDER BY PoliciesSold DESC;

-- ============================================
-- Final Output
-- ============================================

SELECT * FROM client;
SELECT * FROM agent;
SELECT * FROM insurance;
SELECT * FROM policy;
