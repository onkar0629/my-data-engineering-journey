-- ============================================================
-- Day 01 : Database Basics
-- Topic: Basic Database Operations
-- Database: MySQL
-- ============================================================

-- ============================================================
-- 1. Display All Databases
-- ============================================================
-- Shows all databases available in the MySQL server.

SHOW DATABASES;

-- ============================================================
-- 2. Create a New Database
-- ============================================================
-- Creates a database named 'company'.

CREATE DATABASE company;

-- Verify that the database has been created.
SHOW DATABASES;

-- ============================================================
-- 3. Create Database Only If It Doesn't Exist
-- ============================================================
-- Prevents an error if the database already exists.

CREATE DATABASE IF NOT EXISTS company;

-- ============================================================
-- 4. Select (Use) a Database
-- ============================================================
-- Sets 'company' as the current working database.

USE company;

-- ============================================================
-- 5. Display the Current Database
-- ============================================================
-- Returns the name of the currently selected database.

SELECT DATABASE();

-- ============================================================
-- 6. Create Another Database
-- ============================================================

CREATE DATABASE college;

SHOW DATABASES;

-- ============================================================
-- 7. Switch Between Databases
-- ============================================================

USE college;

SELECT DATABASE();

USE company;

SELECT DATABASE();

-- ============================================================
-- 8. Delete a Database
-- ============================================================
-- Permanently removes the database and everything inside it.

DROP DATABASE college;

-- Verify deletion.
SHOW DATABASES;

-- ============================================================
-- 9. Delete Database Only If It Exists
-- ============================================================
-- Prevents an error if the database does not exist.

DROP DATABASE IF EXISTS college;

-- ============================================================
-- 10. Create Multiple Databases
-- ============================================================

CREATE DATABASE hospital;
CREATE DATABASE school;
CREATE DATABASE library;

SHOW DATABASES;

-- ============================================================
-- 11. Delete Multiple Databases
-- ============================================================

DROP DATABASE hospital;
DROP DATABASE school;
DROP DATABASE library;

SHOW DATABASES;

-- ============================================================
-- 12. Create a Database with a Meaningful Name
-- ============================================================

CREATE DATABASE employee_management;

SHOW DATABASES;

USE employee_management;

SELECT DATABASE();

-- ============================================================
-- 13. Delete the Database
-- ============================================================

DROP DATABASE employee_management;

SHOW DATABASES;

-- ============================================================
-- End of Day 01 Examples
-- ============================================================