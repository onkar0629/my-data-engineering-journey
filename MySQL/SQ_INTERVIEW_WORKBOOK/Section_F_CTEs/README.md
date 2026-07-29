-- ##########################################################################
-- SQL INTERVIEW WORKBOOK
-- Sheet 20 : Final Data Engineer SQL Mock Interview
-- ##########################################################################
--
-- Section F : Common Table Expressions (CTEs)
-- Questions : 10 (Q51 - Q60)
-- Difficulty : Medium → Hard
-- Estimated Time : 50 Minutes
--
-- Skills Covered
-- --------------
-- Basic CTE
-- Multiple CTEs
-- CTE + JOIN
-- CTE + Aggregate
-- Recursive CTE
-- Multiple-step Analysis
--
-- ##########################################################################



-- ==========================================================
-- Q51
-- Topic      : Basic CTE
-- Difficulty : Medium
-- Estimated Time : 4 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants to analyze employees earning more
than ₹70,000.

Task
----
1. Create a CTE that stores employees with salary > 70000.
2. Display all columns from the CTE.
*/

-- Write your query below

















-- ==========================================================
-- Q52
-- Topic      : CTE + Aggregate
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants departments whose average salary
is greater than ₹75,000.

Task
----
1. Create a CTE to calculate average salary for each department.
2. Display only departments meeting the condition.
*/

-- Write your query below

















-- ==========================================================
-- Q53
-- Topic      : CTE + JOIN
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants employee information together with
department names using a CTE.

Task
----
1. Create a CTE joining employees and departments.
2. Display

Employee Name
Department Name
Salary
*/

-- Write your query below

















-- ==========================================================
-- Q54
-- Topic      : Multiple CTEs
-- Difficulty : Hard
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to compare each department's total salary
with the company's average department salary.

Task
----
1. First CTE → Total salary per department.
2. Second CTE → Average of department totals.
3. Display only departments above the average.
*/

-- Write your query below

















-- ==========================================================
-- Q55
-- Topic      : CTE + Ranking
-- Difficulty : Hard
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The CEO wants the top three highest-paid employees.

Task
----
1. Create a CTE.
2. Rank employees by salary.
3. Display the top three.

Hint
----
Use ROW_NUMBER(), RANK(), or DENSE_RANK().
*/

-- Write your query below

















-- ==========================================================
-- Q56
-- Topic      : Recursive CTE
-- Difficulty : Hard
-- Estimated Time : 7 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Generate numbers from 1 to 20 using a recursive CTE.

Expected Output
---------------
1
2
3
...
20
*/

-- Write your query below

















-- ==========================================================
-- Q57
-- Topic      : Recursive CTE
-- Difficulty : Hard
-- Estimated Time : 7 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
HR wants to display the complete reporting hierarchy.

Task
----
Starting from the CEO (manager_id IS NULL),
display every employee under the reporting structure.

Hint
----
Use a recursive CTE.
*/

-- Write your query below

















-- ==========================================================
-- Q58
-- Topic      : CTE + Multiple JOINs
-- Difficulty : Hard
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The Project Management Office wants a report showing every
employee together with their department and assigned project.

Task
----
1. Create a CTE joining all required tables.
2. Display

Employee Name
Department Name
Project Name
*/

-- Write your query below

















-- ==========================================================
-- Q59
-- Topic      : Nested Analysis
-- Difficulty : Hard
-- Estimated Time : 7 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants employees earning more than their own
department's average salary.

Task
----
1. Create a CTE containing department averages.
2. Compare every employee with their department average.
3. Display qualifying employees.
*/

-- Write your query below

















-- ==========================================================
-- Q60
-- Topic      : Business Challenge
-- Difficulty : Hard
-- Estimated Time : 8 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The CEO wants a department performance dashboard.

Task
----
Using one or more CTEs, generate a report containing:

Department Name

Employee Count

Average Salary

Highest Salary

Lowest Salary

Total Salary

Number of Projects

Total Project Budget

Sort the report by Total Project Budget in descending order.

Challenge
---------
Try solving this using only CTEs and JOINs.
*/

-- Write your query below

















-- ##########################################################################
-- SECTION F COMPLETE
-- ##########################################################################

/*

SELF EVALUATION

□ I understand basic CTEs.

□ I can write multiple CTEs.

□ I know how to use recursive CTEs.

□ I can combine CTEs with JOINs.

□ I can solve business problems using CTEs.

Score

____ / 10

Time Taken

________ Minutes

Topics to Revise

_____________________________________

_____________________________________

_____________________________________

*/