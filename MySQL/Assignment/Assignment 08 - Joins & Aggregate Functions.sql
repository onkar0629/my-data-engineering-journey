-- ============================================
-- Assignment 09 - Joins & Aggregate Functions
-- Author: Onkar Jadhav
-- ============================================

USE assignment_08;

-- ============================================
-- 1. Find the first and last names of the clients
-- who don't have a city name and were born in
-- 2000 or later.
-- ============================================

SELECT first_name, last_name
FROM client
WHERE city IS NULL
  AND birth_date >= '2000-01-01';


-- ============================================
-- 2. Show the name of each insurance and the
-- number of clients who purchased that insurance.
-- ============================================

SELECT i.name,
       COUNT(p.client_id) AS total_clients
FROM insurance i
LEFT JOIN policy p
ON i.id = p.insurance_id
GROUP BY i.id, i.name;


-- ============================================
-- 3. For clients born in or after 2000 who have
-- Home Insurance, show their first name, last
-- name and annual fee.
-- Sort by annual fee in ascending order.
-- ============================================

SELECT c.first_name,
       c.last_name,
       p.annual_fee
FROM client c
INNER JOIN policy p
ON c.id = p.client_id
INNER JOIN insurance i
ON p.insurance_id = i.id
WHERE c.birth_date >= '2000-01-01'
  AND i.name = 'Home Insurance'
ORDER BY p.annual_fee ASC;


-- ============================================
-- 4. Show agents who have sold 2 policies or less.
-- Display their name and number of policies sold.
-- ============================================

SELECT CONCAT(a.first_name, ' ', a.last_name) AS agent_name,
       COUNT(p.id) AS policies_sold
FROM agent a
LEFT JOIN policy p
ON a.id = p.agent_id
GROUP BY a.id, a.first_name, a.last_name
HAVING COUNT(p.id) <= 2;


-- ============================================
-- 5. Show the clients who bought Car Insurance.
-- Display fee category:
-- High   -> annual_fee > 1000
-- Medium -> annual_fee > 500
-- Low    -> otherwise
-- ============================================

SELECT c.first_name,
       c.last_name,
       CASE
           WHEN p.annual_fee > 1000 THEN 'High'
           WHEN p.annual_fee > 500 THEN 'Medium'
           ELSE 'Low'
       END AS fee
FROM client c
INNER JOIN policy p
ON c.id = p.client_id
INNER JOIN insurance i
ON p.insurance_id = i.id
WHERE i.name = 'Car Insurance';


-- ============================================
-- 6. Find the names of all insurance policies
-- sold by agents who live in London.
-- ============================================

SELECT DISTINCT i.name
FROM insurance i
INNER JOIN policy p
ON i.id = p.insurance_id
INNER JOIN agent a
ON p.agent_id = a.id
WHERE a.city = 'London';


-- ============================================
-- 7. List first name, last name and birth date
-- of clients who purchased more than two policies.
-- ============================================

SELECT c.first_name,
       c.last_name,
       c.birth_date
FROM client c
INNER JOIN policy p
ON c.id = p.client_id
GROUP BY c.id, c.first_name, c.last_name, c.birth_date
HAVING COUNT(p.id) > 2;


-- ============================================
-- 8. Find the first and last names of agents
-- who have not sold any insurance policies.
-- ============================================

SELECT a.first_name,
       a.last_name
FROM agent a
LEFT JOIN policy p
ON a.id = p.agent_id
WHERE p.agent_id IS NULL;
