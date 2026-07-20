-- ============================================
-- Assignment 07 - Foreign Key, Default Value & Database Anomalies
-- Author: Onkar Jadhav
-- ============================================

-- Create Database
CREATE DATABASE assignment_07;

-- Select Database
USE assignment_07;

-- ============================================
-- 1. Create Insurance, Agent, Client and Policy Tables
-- ============================================

CREATE TABLE insurance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    basic_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE agent (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    city VARCHAR(100)
);

CREATE TABLE client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    city VARCHAR(100)
);

CREATE TABLE policy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    insurance_id INT NOT NULL,
    client_id INT NOT NULL,
    policy_number VARCHAR(50) UNIQUE NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    annual_fee DECIMAL(10,2) NOT NULL,
    agent_id INT NOT NULL,

    CONSTRAINT fk_policy_insurance
        FOREIGN KEY (insurance_id)
        REFERENCES insurance(id),

    CONSTRAINT fk_policy_client
        FOREIGN KEY (client_id)
        REFERENCES client(id),

    CONSTRAINT fk_policy_agent
        FOREIGN KEY (agent_id)
        REFERENCES agent(id)
);

DESC insurance;
DESC agent;
DESC client;
DESC policy;

-- ============================================
-- 2. Differentiate between Insert Anomaly,
--    Update Anomaly and Deletion Anomaly
-- ============================================

/*
Insert Anomaly
--------------
Occurs when new data cannot be inserted without adding
unnecessary or unrelated data.

Example:
Cannot add a new insurance plan until at least one client
purchases it.

------------------------------------------------------------

Update Anomaly
--------------
Occurs when the same information is stored in multiple rows,
requiring multiple updates.

Example:
If an agent's city changes, every policy record containing
that city must be updated.

------------------------------------------------------------

Deletion Anomaly
----------------
Occurs when deleting one record unintentionally deletes
other valuable information.

Example:
Deleting the last policy of a client also removes the
client's information.
*/

-- ============================================
-- 3. Purpose of ON DELETE CASCADE
-- ============================================

/*
ON DELETE CASCADE automatically deletes all related child
records whenever the parent record is deleted.

Example:
If Client ID = 5 is deleted, all policies belonging to
Client ID = 5 are also deleted automatically.

Syntax:

FOREIGN KEY (client_id)
REFERENCES client(id)
ON DELETE CASCADE;
*/

-- ============================================
-- 4. Composite Primary Key
-- ============================================

/*
A Composite Primary Key consists of two or more columns
that together uniquely identify a record.

It is used when a single column cannot uniquely identify
each row.

Example:
*/

CREATE TABLE student_course (
    student_id INT,
    course_id INT,

    PRIMARY KEY (student_id, course_id)
);

-- ============================================
-- 5. One-to-One vs One-to-Many Relationship
-- ============================================

/*
One-to-One Relationship
-----------------------
One record in one table is related to only one record
in another table.

Example:
Person --> Passport

------------------------------------------------------------

One-to-Many Relationship
------------------------
One record in the parent table is related to many records
in the child table.

Example:
Client --> Policies

One client can purchase multiple insurance policies.
*/

-- ============================================
-- 6. Why is a Bridge (Junction) Table Required?
-- ============================================

/*
A bridge (junction) table is required to implement a
Many-to-Many relationship.

It stores the primary keys of both related tables
as foreign keys.

Example:

Student
--------
student_id

Course
-------
course_id

Bridge Table
------------
student_course

student_id
course_id

One student can enroll in many courses,
and one course can have many students.
*/

-- ============================================
-- 7. What happens if a Parent Record is deleted
--    without ON DELETE logic?
-- ============================================

/*
The database rejects the DELETE operation because
child records still reference the parent record.

MySQL Error:

Cannot delete or update a parent row:
a foreign key constraint fails.
*/

-- ============================================
-- 8. Drop a Foreign Key Constraint
-- ============================================

-- Syntax

ALTER TABLE policy
DROP FOREIGN KEY fk_policy_client;

-- ============================================
-- 9. Retrieve Foreign Key Constraints from
--    information_schema
-- ============================================

SELECT
    CONSTRAINT_NAME,
    TABLE_NAME,
    COLUMN_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = DATABASE()
    AND TABLE_NAME = 'policy'
    AND REFERENCED_TABLE_NAME IS NOT NULL;

-- ============================================
-- 10. Create Student Table with Default Address
-- ============================================

CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    address VARCHAR(100) DEFAULT 'CNS'
);

DESC student;
