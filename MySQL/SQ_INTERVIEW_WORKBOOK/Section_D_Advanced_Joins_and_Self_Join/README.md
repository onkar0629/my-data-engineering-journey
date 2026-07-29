-- ##########################################################################
-- SQL INTERVIEW WORKBOOK
-- Sheet 20 : Final Data Engineer SQL Mock Interview
-- ##########################################################################
--
-- Section D : Advanced JOINs
-- Questions : 10 (Q31 - Q40)
-- Difficulty : Medium → Hard
-- Estimated Time : 45 Minutes
--
-- Tables Used
-- -----------
-- employees
-- departments
-- employee_projects
-- projects
--
-- Skills Covered
-- --------------
-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN
-- CROSS JOIN
-- SELF JOIN
-- Anti Join
-- Multi-table JOIN
--
-- ##########################################################################



-- ==========================================================
-- Q31
-- Topic      : RIGHT JOIN
-- Difficulty : Medium
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants to view every department,
including departments where no employees are currently assigned.

Task
----
Display

Department Name
Employee Name

Departments without employees should also appear.
*/

-- Write your query below

















-- ==========================================================
-- Q32
-- Topic      : LEFT JOIN + NULL
-- Difficulty : Medium
-- ==========================================================

/*
Business Scenario
-----------------
The Project Management Office wants to identify projects
that currently have no employees assigned.

Task
----
Display

Project ID
Project Name
*/

-- Write your query below

















-- ==========================================================
-- Q33
-- Topic      : CROSS JOIN
-- Difficulty : Medium
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to generate every possible combination
of employees and departments for planning purposes.

Task
----
Display

Employee Name
Department Name

Use CROSS JOIN.
*/

-- Write your query below

















-- ==========================================================
-- Q34
-- Topic      : SELF JOIN
-- Difficulty : Medium
-- ==========================================================

/*
Business Scenario
-----------------
HR wants to know how many employees report
to each manager.

Task
----
Display

Manager Name

Number of Direct Reports

Sort by Number of Direct Reports descending.
*/

-- Write your query below

















-- ==========================================================
-- Q35
-- Topic      : SELF JOIN
-- Difficulty : Medium
-- ==========================================================

/*
Business Scenario
-----------------
Management wants a complete reporting hierarchy.

Task
----
Display

Employee Name

Manager Name

Manager Salary

Employee Salary
*/

-- Write your query below

















-- ==========================================================
-- Q36
-- Topic      : Multiple JOIN
-- Difficulty : Hard
-- ==========================================================

/*
Business Scenario
-----------------
The CEO wants to know which department
is managing the highest-budget projects.

Task
----
Display

Department Name

Project Name

Project Budget

Sort by Project Budget descending.
*/

-- Write your query below

















-- ==========================================================
-- Q37
-- Topic      : LEFT JOIN + Aggregate
-- Difficulty : Hard
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to know how many projects
each employee is working on.

Employees without projects should also appear.

Task
----
Display

Employee Name

Project Count

Sort by Project Count descending.
*/

-- Write your query below

















-- ==========================================================
-- Q38
-- Topic      : Anti JOIN
-- Difficulty : Hard
-- ==========================================================

/*
Business Scenario
-----------------
HR wants to identify employees
who have not been assigned to any project.

Task
----
Display

Employee ID

Employee Name

Note
----
Solve this using

LEFT JOIN

or

NOT EXISTS.
*/

-- Write your query below

















-- ==========================================================
-- Q39
-- Topic      : Multiple JOIN
-- Difficulty : Hard
-- ==========================================================

/*
Business Scenario
-----------------
The PMO wants a project summary.

Task
----
Display

Project Name

Number of Employees

Average Salary of Assigned Employees

Sort by Number of Employees descending.
*/

-- Write your query below

















-- ==========================================================
-- Q40
-- Topic      : Business Report
-- Difficulty : Hard
-- ==========================================================

/*
Business Scenario
-----------------
The CEO wants a department performance report.

Task
----
Display

Department Name

Employee Count

Average Salary

Number of Projects

Total Project Budget

Sort by Total Project Budget descending.

Note
----
This report requires joining multiple tables and using
aggregate functions together.
*/

-- Write your query below

















-- ##########################################################################
-- SECTION D COMPLETE
-- ##########################################################################

/*

SELF EVALUATION

□ I understand RIGHT JOIN.

□ I understand CROSS JOIN.

□ I can solve Anti JOIN problems.

□ I can write SELF JOIN queries confidently.

□ I can join 4 tables.

□ I can solve business reporting questions.

Score

____ / 10

Time Taken

________ Minutes

Topics to Revise

_____________________________________

_____________________________________

_____________________________________

*/