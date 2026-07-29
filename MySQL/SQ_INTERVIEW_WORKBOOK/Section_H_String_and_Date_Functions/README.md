-- ##########################################################################
-- SQL INTERVIEW WORKBOOK
-- Sheet 20 : Final Data Engineer SQL Mock Interview
-- ##########################################################################
--
-- Section H : String Functions & Date Functions
-- Questions : 10 (Q71 - Q80)
-- Difficulty : Medium
-- Estimated Time : 45 Minutes
--
-- Skills Covered
-- --------------
-- CONCAT()
-- UPPER()
-- LOWER()
-- LENGTH()
-- SUBSTRING()
-- REPLACE()
-- TRIM()
-- CURDATE()
-- DATEDIFF()
-- DATE_FORMAT()
--
-- ##########################################################################



-- ==========================================================
-- Q71
-- Topic      : CONCAT()
-- Difficulty : Easy
-- Estimated Time : 3 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
HR wants to generate employee labels.

Task
----
Display

Employee ID
Employee Name

Create a new column named Employee_Label using the format:

EMP-101 : Rahul

Expected Columns
----------------
Employee_Label
*/

-- Write your query below

















-- ==========================================================
-- Q72
-- Topic      : UPPER() & LOWER()
-- Difficulty : Easy
-- Estimated Time : 3 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants employee names displayed
in both uppercase and lowercase.

Task
----
Display

Employee Name

Uppercase Name

Lowercase Name
*/

-- Write your query below

















-- ==========================================================
-- Q73
-- Topic      : LENGTH()
-- Difficulty : Easy
-- Estimated Time : 4 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The recruitment team wants to know the length
of every employee's name.

Task
----
Display

Employee Name

Name Length

Sort by Name Length descending.
*/

-- Write your query below

















-- ==========================================================
-- Q74
-- Topic      : SUBSTRING()
-- Difficulty : Medium
-- Estimated Time : 4 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
HR wants employee initials for ID card generation.

Task
----
Display

Employee Name

First Three Characters

Use SUBSTRING().
*/

-- Write your query below

















-- ==========================================================
-- Q75
-- Topic      : REPLACE()
-- Difficulty : Medium
-- Estimated Time : 4 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants department names displayed using
the word "Technology" instead of "IT".

Task
----
Display

Original Department Name

Modified Department Name

Do not update the table.
*/

-- Write your query below

















-- ==========================================================
-- Q76
-- Topic      : TRIM()
-- Difficulty : Medium
-- Estimated Time : 4 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Some imported employee names contain leading
and trailing spaces.

Task
----
Demonstrate how to remove extra spaces using TRIM().

Example
-------
'   Rahul   '

should become

'Rahul'
*/

-- Write your query below

















-- ==========================================================
-- Q77
-- Topic      : CURDATE() & DATEDIFF()
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
HR wants to know how many days each employee
has worked in the company.

Task
----
Display

Employee Name

Hire Date

Days Worked

Use CURDATE() and DATEDIFF().
*/

-- Write your query below

















-- ==========================================================
-- Q78
-- Topic      : YEAR(), MONTH(), DAY()
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to analyze employee hiring dates.

Task
----
Display

Employee Name

Hire Year

Hire Month

Hire Day
*/

-- Write your query below

















-- ==========================================================
-- Q79
-- Topic      : DATE_FORMAT()
-- Difficulty : Medium
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants hire dates displayed
in a user-friendly format.

Task
----
Display

Employee Name

Hire Date

Formatted Date

Format Example

15-Jan-2024
*/

-- Write your query below

















-- ==========================================================
-- Q80
-- Topic      : Business Challenge
-- Difficulty : Medium-Hard
-- Estimated Time : 8 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The CEO wants a formatted employee report.

Task
----
Display

Employee Name (Uppercase)

Department Name

Salary

Formatted Hire Date

Years Worked

Requirements
------------
1. Employee name in uppercase.
2. Department name using JOIN.
3. Hire date formatted as DD-Mon-YYYY.
4. Calculate years worked from hire_date to today.
5. Sort by years worked in descending order.
*/

-- Write your query below

















-- ##########################################################################
-- SECTION H COMPLETE
-- ##########################################################################

/*

SELF EVALUATION

□ I understand CONCAT().

□ I understand UPPER() and LOWER().

□ I can use LENGTH().

□ I can extract text using SUBSTRING().

□ I know how to use REPLACE().

□ I know how to remove spaces using TRIM().

□ I understand CURDATE().

□ I understand DATEDIFF().

□ I can format dates using DATE_FORMAT().

□ I can combine string and date functions in one query.

Score

____ / 10

Time Taken

________ Minutes

Topics to Revise

_____________________________________

_____________________________________

_____________________________________

*/