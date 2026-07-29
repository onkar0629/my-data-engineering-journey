-- ##########################################################################
-- SQL INTERVIEW WORKBOOK
-- Sheet 20 : Final Data Engineer SQL Mock Interview
-- ##########################################################################
--
-- Section C : SQL JOINS
-- Questions : 10
-- Difficulty : Medium
-- Estimated Time : 40 Minutes
--
-- Tables Used
-- -----------
-- employees
-- departments
-- employee_projects
-- projects
--
-- Objective
-- ---------
-- Learn how to combine data from multiple tables using JOINs.
--
-- ##########################################################################



-- ==========================================================
-- Q21
-- Topic      : INNER JOIN
-- Difficulty : Easy
-- Estimated Time : 3 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants to display every employee along with
their department name.

Task
----
Display

Employee ID
Employee Name
Department Name

Sort by Employee ID.
*/

-- Write your query below

















-- ==========================================================
-- Q22
-- Topic      : INNER JOIN
-- Difficulty : Easy
-- Estimated Time : 3 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to know the location of each employee's
department.

Task
----
Display

Employee Name
Department Name
Department Location
*/

-- Write your query below

















-- ==========================================================
-- Q23
-- Topic      : LEFT JOIN
-- Difficulty : Medium
-- Estimated Time : 4 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The Project Management Office wants a report of all employees,
including those who have not yet been assigned to any project.

Task
----
Display

Employee Name
Project Name

Employees without a project should also appear.
*/

-- Write your query below

















-- ==========================================================
-- Q24
-- Topic      : LEFT JOIN
-- Difficulty : Medium
-- Estimated Time : 4 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants to identify employees who are
currently not assigned to any project.

Task
----
Display

Employee ID
Employee Name
*/

-- Write your query below

















-- ==========================================================
-- Q25
-- Topic      : INNER JOIN (Three Tables)
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to know which employee is working on
which project.

Task
----
Display

Employee Name
Department Name
Project Name

Sort by Employee Name.
*/

-- Write your query below

















-- ==========================================================
-- Q26
-- Topic      : Multiple JOIN
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The PMO wants to know the budget of every project assigned
to employees.

Task
----
Display

Employee Name
Project Name
Project Budget
*/

-- Write your query below

















-- ==========================================================
-- Q27
-- Topic      : SELF JOIN
-- Difficulty : Medium
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants to know the reporting hierarchy.

Task
----
Display

Employee Name

Manager Name

(Hint: Use the employees table twice.)
*/

-- Write your query below

















-- ==========================================================
-- Q28
-- Topic      : INNER JOIN + GROUP BY
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to know how many employees are working
in each department.

Task
----
Display

Department Name

Employee Count

Sort by Employee Count in descending order.
*/

-- Write your query below

















-- ==========================================================
-- Q29
-- Topic      : INNER JOIN + Aggregate
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Finance wants to calculate the total salary paid by each
department.

Task
----
Display

Department Name

Total Salary

Sort by Total Salary from highest to lowest.
*/

-- Write your query below

















-- ==========================================================
-- Q30
-- Topic      : Multiple JOIN + GROUP BY
-- Difficulty : Medium-Hard
-- Estimated Time : 7 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The CEO wants a summary of projects handled by each department.

Task
----
Display

Department Name

Number of Employees Assigned to Projects

Number of Projects

Sort by Number of Projects in descending order.

Note
----
Count distinct projects for each department.
*/

-- Write your query below

















-- ##########################################################################
-- SECTION C COMPLETE
-- ##########################################################################

/*

SELF EVALUATION

□ I understand INNER JOIN.

□ I understand LEFT JOIN.

□ I can write a SELF JOIN.

□ I know how to join three tables.

□ I can combine JOIN with GROUP BY.

□ I reviewed every query.

Score

____ / 10

Time Taken

________ Minutes

Topics I Need to Revise

_____________________________________

_____________________________________

_____________________________________

*/