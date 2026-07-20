-- ============================================
-- Assignment 01 - MySQL Basic DDL & DML Commands
-- Author: Onkar Jadhav
-- ============================================

-- Show all databases
SHOW DATABASES;

-- Create database
CREATE DATABASE IF NOT EXISTS assignment_01;

-- Select database
USE assignment_01;

-- ============================================
-- 1. Create the initial_competition table
-- ============================================

CREATE TABLE initial_competition (
    id INT PRIMARY KEY,
    Name VARCHAR(50),
    startDate VARCHAR(10),
    end_date VARCHAR(10),
    year INT
);

-- ============================================
-- 2. Insert sample records
-- ============================================

INSERT INTO initial_competition
(id, Name, startDate, end_date, year)
VALUES
(1, 'State Championship', '2025-01-10', '2025-01-15', 2025),
(2, 'Regional Cup', '2025-03-05', '2025-03-08', 2025),
(3, 'District League', '2024-11-20', '2024-11-25', 2024);

-- ============================================
-- 3. View table structure and data
-- ============================================

DESC initial_competition;

SELECT * FROM initial_competition;

-- ============================================
-- 4. Add city column
-- ============================================

ALTER TABLE initial_competition
ADD city VARCHAR(500);

-- ============================================
-- 5. Rename startDate to start_date
-- ============================================

ALTER TABLE initial_competition
RENAME COLUMN startDate TO start_date;

-- ============================================
-- 6. Modify end_date column size
-- ============================================

ALTER TABLE initial_competition
MODIFY end_date VARCHAR(20);

-- ============================================
-- 7. Drop year column
-- ============================================

ALTER TABLE initial_competition
DROP COLUMN year;

-- ============================================
-- 8. Display only Name and Start Date
-- ============================================

SELECT Name, start_date
FROM initial_competition;

-- ============================================
-- 9. Display competitions starting in 2025
-- ============================================

SELECT *
FROM initial_competition
WHERE start_date LIKE '2025%';

-- Alternative (recommended if start_date is DATE datatype)
-- WHERE YEAR(start_date) = 2025;

-- ============================================
-- 10. Update competition name
-- ============================================

UPDATE initial_competition
SET Name = 'National Championship'
WHERE id = 1;

-- ============================================
-- 11. Delete competition with ID = 3
-- ============================================

DELETE FROM initial_competition
WHERE id = 3;

-- ============================================
-- Final Output
-- ============================================

SELECT * FROM initial_competition;
