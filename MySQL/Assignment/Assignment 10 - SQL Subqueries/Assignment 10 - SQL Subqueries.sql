-- ============================================
-- Assignment 10 - SQL Subqueries
-- Author: Onkar Jadhav
-- ============================================

-- Show all databases
SHOW DATABASES;

-- Create Database
CREATE DATABASE IF NOT EXISTS studentdb;

-- Select Database
USE studentdb;

-- View Tables
SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM student_course;

-- ============================================
-- 1. Find the names of all students who are
-- enrolled in the 'English' course.
-- ============================================

SELECT name
FROM student
WHERE id IN (
    SELECT student_id
    FROM student_course
    WHERE course_id IN (
        SELECT id
        FROM course
        WHERE name = 'English'
    )
);

-- ============================================
-- 2. List the titles of courses that have at
-- least one student who has completed the course.
-- ============================================

SELECT name
FROM course
WHERE id IN (
    SELECT course_id
    FROM student_course
    WHERE is_completed = 't'
);

-- ============================================
-- 3. Get the names of students who were invited
-- by 'Veronica Knight'.
-- ============================================

SELECT name
FROM student
WHERE invited_by_id = (
    SELECT id
    FROM student
    WHERE name = 'Veronica Knight'
);

-- ============================================
-- 4. Find the names of students who are
-- enrolled in more than one course.
-- ============================================

SELECT name
FROM student
WHERE id IN (
    SELECT student_id
    FROM student_course
    GROUP BY student_id
    HAVING COUNT(*) > 1
);

-- ============================================
-- 5. List the courses where the average
-- minutes_spent by students is greater than 500.
-- ============================================

SELECT name
FROM course
WHERE id IN (
    SELECT course_id
    FROM student_course
    GROUP BY course_id
    HAVING AVG(minutes_spent) > 500
);

-- ============================================
-- 6. Find the names of students who have
-- enrolled in courses but have not completed
-- any of them.
-- ============================================

SELECT name
FROM student
WHERE id IN (
    SELECT student_id
    FROM student_course
)
AND id NOT IN (
    SELECT student_id
    FROM student_course
    WHERE is_completed = 't'
);

-- ============================================
-- 7. List courses that have no students enrolled.
-- ============================================

SELECT *
FROM course
WHERE id NOT IN (
    SELECT course_id
    FROM student_course
);

-- ============================================
-- 8. For each student, display their name and
-- the number of courses they are enrolled in.
-- ============================================

SELECT
    name,
    (
        SELECT COUNT(*)
        FROM student_course
        WHERE student_id = student.id
    ) AS total_courses
FROM student;

-- ============================================
-- 9. Determine which student has the highest
-- minutes_spent value across all student_course
-- entries.
-- ============================================

SELECT name
FROM student
WHERE id IN (
    SELECT student_id
    FROM student_course
    WHERE minutes_spent = (
        SELECT MAX(minutes_spent)
        FROM student_course
    )
);

-- ============================================
-- 10. Retrieve the names of students who have
-- completed 'Spanish' but have not completed
-- 'English'.
-- ============================================

SELECT name
FROM student
WHERE id IN (
    SELECT student_id
    FROM student_course
    WHERE course_id = (
        SELECT id
        FROM course
        WHERE name = 'Spanish'
    )
    AND is_completed = 't'
)
AND id NOT IN (
    SELECT student_id
    FROM student_course
    WHERE course_id = (
        SELECT id
        FROM course
        WHERE name = 'English'
    )
    AND is_completed = 't'
);

-- ============================================
-- Final Output
-- ============================================

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM student_course;
