-- ##########################################################################
-- SQL INTERVIEW WORKBOOK
-- Sheet 20 : Final Data Engineer SQL Mock Interview
-- ##########################################################################
--
-- Section I : Business Case Studies
-- Questions : 10 (Q81 - Q90)
-- Difficulty : Hard
-- Estimated Time : 75 Minutes
--
-- Skills Covered
-- --------------
-- Business Reporting
-- KPI Calculation
-- Customer Analytics
-- Sales Analytics
-- Employee Analytics
-- Department Performance
-- Multi-table JOIN
-- CTE
-- Window Functions
-- Aggregate Functions
--
-- ##########################################################################



-- ==========================================================
-- Q81
-- Topic      : Sales Dashboard
-- Difficulty : Hard
-- Estimated Time : 7 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The CEO wants a sales dashboard showing how each employee
performed.

Task
----
Display

Employee Name

Number of Orders

Total Sales

Average Order Value

Highest Order

Lowest Order

Sort by Total Sales in descending order.
*/

-- Write your query below

















-- ==========================================================
-- Q82
-- Topic      : Customer Analytics
-- Difficulty : Hard
-- Estimated Time : 7 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The Sales team wants to identify valuable customers.

Task
----
Display

Customer Name

City

Number of Orders

Total Amount Spent

Average Order Value

Sort by Total Amount Spent descending.
*/

-- Write your query below

















-- ==========================================================
-- Q83
-- Topic      : Department KPI Report
-- Difficulty : Hard
-- Estimated Time : 8 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants department-level KPIs.

Task
----
Display

Department Name

Employee Count

Average Salary

Highest Salary

Lowest Salary

Total Salary

Sort by Average Salary descending.
*/

-- Write your query below

















-- ==========================================================
-- Q84
-- Topic      : Project Utilization
-- Difficulty : Hard
-- Estimated Time : 8 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The Project Management Office wants to understand how
employees are distributed across projects.

Task
----
Display

Project Name

Budget

Number of Employees

Average Employee Salary

Sort by Budget descending.
*/

-- Write your query below

















-- ==========================================================
-- Q85
-- Topic      : Customer Retention
-- Difficulty : Hard
-- Estimated Time : 8 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants to identify repeat customers.

Task
----
Display

Customer Name

Total Orders

Total Revenue

Only include customers who placed more than one order.

Sort by Total Revenue descending.
*/

-- Write your query below

















-- ==========================================================
-- Q86
-- Topic      : Employee Performance
-- Difficulty : Hard
-- Estimated Time : 8 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The Sales Director wants to evaluate employee performance.

Task
----
Display

Employee Name

Department

Orders Handled

Total Revenue Generated

Average Revenue Per Order

Sort by Total Revenue Generated descending.
*/

-- Write your query below

















-- ==========================================================
-- Q87
-- Topic      : Top Performer Analysis
-- Difficulty : Hard
-- Estimated Time : 8 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
Management wants the best-performing employee
from each department based on total sales.

Task
----
Display

Department Name

Employee Name

Total Revenue

If multiple employees tie for first place,
display all of them.

Hint
----
Consider using a window function.
*/

-- Write your query below

















-- ==========================================================
-- Q88
-- Topic      : Business Dashboard
-- Difficulty : Hard
-- Estimated Time : 9 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The CEO wants a complete business dashboard.

Task
----
Display

Department Name

Employee Count

Project Count

Total Sales

Average Salary

Total Salary

Sort by Total Sales descending.

Challenge
---------
Use JOINs, GROUP BY, and aggregate functions.
*/

-- Write your query below

















-- ==========================================================
-- Q89
-- Topic      : Revenue Trend
-- Difficulty : Hard
-- Estimated Time : 8 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The Finance team wants to analyze monthly sales trends.

Task
----
Display

Year

Month

Number of Orders

Monthly Revenue

Average Order Value

Sort by Year and Month.

Hint
----
Use YEAR(order_date) and MONTH(order_date).
*/

-- Write your query below

















-- ==========================================================
-- Q90
-- Topic      : Executive Business Report
-- Difficulty : Expert
-- Estimated Time : 12 Minutes
-- ==========================================================

/*
Business Scenario
-----------------
The CEO needs a single report that summarizes
the entire organization's performance.

Task
----
Display

Department Name

Employee Count

Project Count

Total Project Budget

Total Salary

Average Salary

Orders Handled

Revenue Generated

Highest Paid Employee

Highest Salary

Requirements
------------
1. Join all relevant tables.
2. Use aggregate functions.
3. Handle duplicate counting correctly.
4. Sort by Revenue Generated descending.
5. Write the query using clean formatting.

Think carefully before writing the query.
*/

-- Write your query below





















































-- ##########################################################################
-- SECTION I COMPLETE
-- ##########################################################################

/*

SELF EVALUATION

□ I solved business problems without searching online.

□ I selected the correct JOIN types.

□ I avoided duplicate counting.

□ I used aggregate functions correctly.

□ I understood the business requirements before writing SQL.

□ I wrote clean and readable queries.

Score

____ / 10

Time Taken

________ Minutes

Business Concepts to Revise

_____________________________________

_____________________________________

_____________________________________

*/