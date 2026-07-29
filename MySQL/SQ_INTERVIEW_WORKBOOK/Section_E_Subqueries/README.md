-- ##########################################################################
-- SQL INTERVIEW WORKBOOK
-- Sheet 20 : Final Data Engineer SQL Mock Interview
-- ##########################################################################
--
-- Section E : Subqueries
-- Questions : 10 (Q41 - Q50)
-- Difficulty : Medium → Hard
-- Estimated Time : 50 Minutes
--
-- Skills Covered
-- --------------
-- Scalar Subquery
-- Multi-row Subquery
-- Correlated Subquery
-- EXISTS
-- NOT EXISTS
-- IN
-- ANY
-- ALL
--
-- ##########################################################################



-- ==========================================================
-- Q41
-- Topic      : Scalar Subquery
-- Difficulty : Medium
-- Estimated Time : 4 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants to identify employees earning more
than the company's average salary.

Task
----
Display

Employee ID
Employee Name
Salary

Only include employees whose salary is greater than the
overall average salary.
*/

-- Write your query below

















-- ==========================================================
-- Q42
-- Topic      : Scalar Subquery
-- Difficulty : Medium
-- Estimated Time : 4 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to identify employees earning the
highest salary.

Task
----
Display

Employee Name
Salary

Hint
----
Do NOT use ORDER BY or LIMIT.
*/

-- Write your query below

















-- ==========================================================
-- Q43
-- Topic      : Multi-row Subquery (IN)
-- Difficulty : Medium
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The HR department wants the details of employees working
in departments located in Pune.

Task
----
Display

Employee Name
Department Name
Location

Hint
----
Use a subquery with IN.
*/

-- Write your query below

















-- ==========================================================
-- Q44
-- Topic      : Correlated Subquery
-- Difficulty : Hard
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants the highest-paid employee from
every department.

Task
----
Display

Department Name
Employee Name
Salary

If two employees share the highest salary,
display both.
*/

-- Write your query below

















-- ==========================================================
-- Q45
-- Topic      : EXISTS
-- Difficulty : Hard
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The Project Management Office wants to identify employees
who are assigned to at least one project.

Task
----
Display

Employee ID
Employee Name

Solve using EXISTS.
*/

-- Write your query below

















-- ==========================================================
-- Q46
-- Topic      : NOT EXISTS
-- Difficulty : Hard
-- Estimated Time : 5 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
HR wants to identify employees who have never been assigned
to any project.

Task
----
Display

Employee ID
Employee Name

Solve using NOT EXISTS.
*/

-- Write your query below

















-- ==========================================================
-- Q47
-- Topic      : ANY
-- Difficulty : Hard
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The Finance department wants employees whose salary is
greater than at least one employee in the HR department.

Task
----
Display

Employee Name
Salary

Use the ANY operator.
*/

-- Write your query below

















-- ==========================================================
-- Q48
-- Topic      : ALL
-- Difficulty : Hard
-- Estimated Time : 6 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants employees earning more than every employee
in the Sales department.

Task
----
Display

Employee Name
Salary

Use the ALL operator.
*/

-- Write your query below

















-- ==========================================================
-- Q49
-- Topic      : Nested Subquery
-- Difficulty : Hard
-- Estimated Time : 7 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The CEO wants the names of employees working on projects
whose budget is greater than the average project budget.

Task
----
Display

Employee Name
Project Name
Project Budget

Use nested subqueries.
*/

-- Write your query below

















-- ==========================================================
-- Q50
-- Topic      : Business Challenge
-- Difficulty : Hard
-- Estimated Time : 8 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to identify departments whose total salary
expense is greater than the company's average department
salary expense.

Task
----
Display

Department Name
Total Salary

Requirements
------------
1. Calculate the total salary for each department.
2. Compare it with the average of all department totals.
3. Display only qualifying departments.
4. Sort by Total Salary in descending order.
*/

-- Write your query below

















-- ##########################################################################
-- SECTION E COMPLETE
-- ##########################################################################

/*

SELF EVALUATION

□ I understand scalar subqueries.

□ I understand correlated subqueries.

□ I can use IN with subqueries.

□ I know when to use EXISTS and NOT EXISTS.

□ I understand ANY and ALL.

□ I can solve nested subquery problems.

Score

____ / 10

Time Taken

________ Minutes

Topics to Revise

_____________________________________

_____________________________________

_____________________________________

*/