-- ============================================
-- Assignment 02 - Deep Dive into DDL, DML, DRL & Data Types
-- Author: Onkar Jadhav
-- ============================================

-- Show all databases
SHOW DATABASES;

-- Create database
CREATE DATABASE IF NOT EXISTS assignment_02;

-- Select database
USE assignment_02;

-- ============================================
-- 1. Create the dish table
-- ============================================

CREATE TABLE dish (
    id INT PRIMARY KEY,
    type VARCHAR(30),
    name VARCHAR(100),
    price INT
);

-- ============================================
-- 2. Insert initial records
-- ============================================

INSERT INTO dish (id, type, name, price)
VALUES
(1, 'starter', 'Prawn Salad', 13),
(2, 'starter', 'Spring Rolls', 11),
(3, 'main course', 'Asian Noodles', 25),
(4, 'main course', 'Pork Roast', 32),
(5, 'main course', 'Chicken Nuggets', 24),
(6, 'main course', 'Pizza Italiana', 30),
(7, 'dessert', 'Peach Cobbler', 10),
(8, 'dessert', 'Cherry Brownies', 12);

-- ============================================
-- 3. View table structure and data
-- ============================================

DESC dish;

SELECT * FROM dish;

-- ============================================
-- 4. Insert a new main course
-- ============================================

INSERT INTO dish (id, type, name, price)
VALUES
(9, 'main course', 'Cevapcici', 27);

-- ============================================
-- 5. Insert a starter with NULL price
-- ============================================

INSERT INTO dish (id, type, name, price)
VALUES
(10, 'starter', 'Kosovo Bread', NULL);

-- ============================================
-- 6. Insert another main course
-- ============================================

INSERT INTO dish (id, type, name, price)
VALUES
(11, 'main course', 'Gulas s knedlikem', 29);

-- ============================================
-- 7. Insert a dessert
-- ============================================

INSERT INTO dish (id, type, name, price)
VALUES
(12, 'dessert', 'Vosi Hnizda', 14);

-- ============================================
-- 8. Correct the name of dish with ID = 2
-- ============================================

UPDATE dish
SET name = 'Spring Rolls'
WHERE id = 2;

-- ============================================
-- 9. Rename Prawn Salad and update its price
-- ============================================

UPDATE dish
SET
    name = 'Green Sea Dragon',
    price = 10
WHERE id = 1;

-- ============================================
-- 10. Set all Main Course prices to 20
-- ============================================

UPDATE dish
SET price = 20
WHERE type = 'main course';

-- ============================================
-- 11. Double the price of all Starters
-- ============================================

UPDATE dish
SET price = price * 2
WHERE type = 'starter';

-- ============================================
-- 12. Delete all Desserts
-- ============================================

DELETE FROM dish
WHERE type = 'dessert';

-- ============================================
-- Final Output
-- ============================================

SELECT * FROM dish;
