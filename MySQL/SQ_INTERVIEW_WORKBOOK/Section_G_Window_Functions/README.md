-- ##########################################################################
-- SQL INTERVIEW WORKBOOK
-- Sheet 20 : Final Data Engineer SQL Mock Interview
-- ##########################################################################
--
-- Section G : Window Functions
-- Questions : 10 (Q61 - Q70)
-- Difficulty : Medium → Hard
-- Estimated Time : 60 Minutes
--
-- Skills Covered
-- --------------
-- ROW_NUMBER()
-- RANK()
-- DENSE_RANK()
-- LAG()
-- LEAD()
-- FIRST_VALUE()
-- LAST_VALUE()
-- NTILE()
-- Running Total
-- Moving Average
--
-- ##########################################################################



-- ==========================================================
-- Q61
-- Topic      : ROW_NUMBER()
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants every employee to have a unique
serial number based on salary.

Task
----
Display

Employee Name
Department Name
Salary
Row Number

Order employees from highest salary to lowest salary.
*/

-- Write your query below

















-- ==========================================================
-- Q62
-- Topic      : RANK()
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to rank employees according to salary.

Task
----
Display

Employee Name
Salary
Salary Rank

Employees having the same salary should receive
the same rank.

Skip the next rank after a tie.
*/

-- Write your query below

















-- ==========================================================
-- Q63
-- Topic      : DENSE_RANK()
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR team wants to rank employees by salary.

Task
----
Display

Employee Name
Salary
Dense Rank

Unlike RANK(), there should be no gaps in ranking.
*/

-- Write your query below

















-- ==========================================================
-- Q64
-- Topic      : ROW_NUMBER() + PARTITION BY
-- Difficulty : Medium
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants the highest-paid employee from
each department.

Task
----
Display

Department Name
Employee Name
Salary

Use ROW_NUMBER() with PARTITION BY.
*/

-- Write your query below

















-- ==========================================================
-- Q65
-- Topic      : RANK() + PARTITION BY
-- Difficulty : Hard
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The CEO wants to rank employees within their own department.

Task
----
Display

Department Name
Employee Name
Salary
Department Rank

Employees should only be compared with others
in the same department.
*/

-- Write your query below

















-- ==========================================================
-- Q66
-- Topic      : LAG()
-- Difficulty : Hard
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
HR wants to compare each employee's salary
with the previous employee when salaries are
sorted in ascending order.

Task
----
Display

Employee Name
Salary
Previous Salary

Use LAG().
*/

-- Write your query below

















-- ==========================================================
-- Q67
-- Topic      : LEAD()
-- Difficulty : Hard
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Finance wants to compare each employee's salary
with the next employee in salary order.

Task
----
Display

Employee Name
Salary
Next Salary

Use LEAD().
*/

-- Write your query below

















-- ==========================================================
-- Q68
-- Topic      : Running Total
-- Difficulty : Hard
-- Estimated Time : 7 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The Finance department wants to calculate a cumulative
salary expense.

Task
----
Display

Employee Name
Salary
Running Total Salary

Sort employees by salary in ascending order.
*/

-- Write your query below

















-- ==========================================================
-- Q69
-- Topic      : FIRST_VALUE() & LAST_VALUE()
-- Difficulty : Hard
-- Estimated Time : 7 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to compare every employee's salary
with the highest-paid and lowest-paid employee.

Task
----
Display

Employee Name
Salary
Highest Salary
Lowest Salary

Use FIRST_VALUE() and LAST_VALUE().

Hint
----
Pay attention to the window frame while using LAST_VALUE().
*/

-- Write your query below

















-- ==========================================================
-- Q70
-- Topic      : NTILE()
-- Difficulty : Hard
-- Estimated Time : 8 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants to divide employees into
four salary bands for compensation analysis.

Task
----
Display

Employee Name
Salary
Salary Band

Use NTILE(4).

Sort employees by salary in descending order.
*/

-- Write your query below

















-- ##########################################################################
-- SECTION G COMPLETE
-- ##########################################################################

/*

SELF EVALUATION

□ I understand ROW_NUMBER().

□ I understand RANK().

□ I understand DENSE_RANK().

□ I can use PARTITION BY.

□ I understand LAG().

□ I understand LEAD().

□ I can calculate Running Totals.

□ I understand FIRST_VALUE().

□ I understand LAST_VALUE().

□ I understand NTILE().

Score

____ / 10

Time Taken

________ Minutes

Topics to Revise

_____________________________________

_____________________________________

_____________________________________

*/