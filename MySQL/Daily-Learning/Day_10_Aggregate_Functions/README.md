# Day 10 - Aggregate Functions

## Introduction

In real-world databases, we often need more than just retrieving records.

For example:

- How many employees work in the company?
- What is the total salary paid every month?
- What is the average salary?
- Which employee has the highest salary?
- Which employee has the lowest salary?

Instead of calculating these values manually, MySQL provides **Aggregate Functions**.

Aggregate Functions perform calculations on a group of rows and return **a single summarized value**.

These functions are widely used in:

- Business Reports
- Dashboards
- Payroll Systems
- Banking Applications
- Data Analysis
- Data Engineering Pipelines

Aggregate Functions make SQL powerful by allowing us to summarize large amounts of data quickly and efficiently.

---

## Learning Objectives

By the end of this lesson, you will be able to:

- Understand what Aggregate Functions are.
- Learn the five main Aggregate Functions.
- Use `COUNT()`.
- Use `SUM()`.
- Use `AVG()`.
- Use `MIN()`.
- Use `MAX()`.
- Combine Aggregate Functions with `WHERE`.
- Understand how Aggregate Functions handle `NULL` values.
- Learn the execution order involving Aggregate Functions.

---

## Table of Contents

1. What are Aggregate Functions?
2. COUNT()
3. SUM()
4. AVG()
5. MIN()
6. MAX()
7. Aggregate Functions with WHERE
8. NULL Handling
9. Execution Order
10. Aggregate Functions Summary

---

# What are Aggregate Functions?

## What are they?

**Aggregate Functions** are built-in SQL functions that perform calculations on **multiple rows** and return **a single value**.

Unlike normal functions that work on one value at a time, Aggregate Functions work on an entire column or a group of rows.

For example:

- Count employees.
- Calculate total salary.
- Find average salary.
- Find the highest salary.
- Find the lowest salary.

---

## Why do we need Aggregate Functions?

Suppose a company's HR manager wants to know:

- Total number of employees.
- Total monthly salary expense.
- Average employee salary.
- Highest salary.
- Lowest salary.

Without Aggregate Functions, these calculations would need to be performed manually.

Aggregate Functions make these calculations simple, fast, and accurate.

---

## Characteristics

- Perform calculations on multiple rows.
- Return a single value.
- Ignore `NULL` values (except `COUNT(*)`).
- Frequently used in reports and analytics.
- Can be combined with `WHERE`, `GROUP BY`, and `HAVING`.

---

## Types of Aggregate Functions

MySQL provides several Aggregate Functions, but the five most commonly used are:

| Function | Purpose |
|----------|---------|
| `COUNT()` | Counts rows |
| `SUM()` | Calculates the total |
| `AVG()` | Calculates the average |
| `MIN()` | Finds the smallest value |
| `MAX()` | Finds the largest value |

---

## Syntax

```sql
SELECT AGGREGATE_FUNCTION(column_name)
FROM table_name;
```

General format:

```sql
SELECT COUNT(column_name)
FROM table_name;

SELECT SUM(column_name)
FROM table_name;

SELECT AVG(column_name)
FROM table_name;

SELECT MIN(column_name)
FROM table_name;

SELECT MAX(column_name)
FROM table_name;
```

---

## Examples

### Example 1

Count the number of employees.

```sql
SELECT COUNT(*)
FROM employees;
```

### Explanation

`COUNT(*)` counts all rows in the `employees` table.

---

### Example 2

Calculate the total salary.

```sql
SELECT SUM(salary)
FROM employees;
```

### Explanation

`SUM()` adds the salary of every employee and returns the total salary.

---

### Example 3

Calculate the average salary.

```sql
SELECT AVG(salary)
FROM employees;
```

### Explanation

`AVG()` calculates the average salary of all employees.

---

### Example 4

Find the highest salary.

```sql
SELECT MAX(salary)
FROM employees;
```

### Explanation

`MAX()` returns the largest salary in the table.

---

### Example 5

Find the lowest salary.

```sql
SELECT MIN(salary)
FROM employees;
```

### Explanation

`MIN()` returns the smallest salary in the table.

---

## Real-World Example

Suppose the salaries are:

| Employee | Salary (₹) |
|-----------|-----------:|
| Amit | 45000 |
| Priya | 75000 |
| Rahul | 62000 |
| Sneha | 68000 |
| Rohit | 85000 |

Using Aggregate Functions:

```
COUNT()

↓

5 Employees

-----------------------

SUM()

↓

₹335000

-----------------------

AVG()

↓

₹67000

-----------------------

MAX()

↓

₹85000

-----------------------

MIN()

↓

₹45000
```

---

## Workflow

```
Employees Table

↓

Aggregate Function

↓

Calculation

↓

Single Result
```

---

## Memory Tip

> 🧠 **Aggregate Functions = Many Rows → One Result**

```
Many Rows

↓

COUNT()
SUM()
AVG()
MIN()
MAX()

↓

One Value
```

Think:

```
Multiple Rows

↓

Calculate

↓

Single Answer
```

---

# COUNT()

## What is COUNT()?

`COUNT()` is an Aggregate Function that counts the number of rows in a table.

Instead of returning all records, it returns **one numeric value** representing the total count.

It is one of the most frequently used functions in SQL for reporting, analytics, dashboards, and data engineering.

---

## Why do we need COUNT()?

Imagine an HR manager asks:

- How many employees work in the company?
- How many employees belong to the IT department?
- How many employees joined this year?
- How many employees have a salary above ₹70,000?

Instead of counting records manually, we use `COUNT()`.

---

## Characteristics

- Returns a single number.
- Counts rows in a table.
- Can count all rows or only specific column values.
- Ignores `NULL` values when a column name is specified.
- Can be combined with `WHERE`, `GROUP BY`, and `HAVING`.

---

## Syntax

### Count all rows

```sql
SELECT COUNT(*)
FROM table_name;
```

### Count non-NULL values in a column

```sql
SELECT COUNT(column_name)
FROM table_name;
```

### Count unique values

```sql
SELECT COUNT(DISTINCT column_name)
FROM table_name;
```

---

## COUNT(*) vs COUNT(column_name)

Suppose we have the following table:

| employee_id | employee_name | city |
|-------------|---------------|------|
|101|Amit|Mumbai|
|102|Priya|Pune|
|103|Rahul|NULL|
|104|Sneha|Delhi|

### COUNT(*)

```sql
SELECT COUNT(*)
FROM employees;
```

Result

```
4
```

Explanation

`COUNT(*)` counts **every row**, including rows containing `NULL` values.

---

### COUNT(city)

```sql
SELECT COUNT(city)
FROM employees;
```

Result

```
3
```

Explanation

`COUNT(city)` ignores the row where `city` is `NULL`.

---

### COUNT(DISTINCT city)

```sql
SELECT COUNT(DISTINCT city)
FROM employees;
```

Result

```
3
```

Explanation

It counts only unique non-NULL city values.

---

## Examples

### Example 1

Count all employees.

```sql
SELECT COUNT(*)
FROM employees;
```

### Explanation

Returns the total number of employees in the table.

---

### Example 2

Count employees in the IT department.

```sql
SELECT COUNT(*)
FROM employees
WHERE department = 'IT';
```

### Explanation

Only employees belonging to the IT department are counted.

---

### Example 3

Count employees earning more than ₹70,000.

```sql
SELECT COUNT(*)
FROM employees
WHERE salary > 70000;
```

### Explanation

Counts employees whose salary is greater than ₹70,000.

---

### Example 4

Count employees from Mumbai.

```sql
SELECT COUNT(*)
FROM employees
WHERE city = 'Mumbai';
```

### Explanation

Returns the total number of employees living in Mumbai.

---

### Example 5

Count unique departments.

```sql
SELECT COUNT(DISTINCT department)
FROM employees;
```

### Explanation

Counts how many different departments exist in the company.

---

## Real-World Example

Suppose a company has the following departments:

| Employee | Department |
|----------|------------|
|Amit|HR|
|Priya|IT|
|Rahul|Finance|
|Sneha|IT|
|Rohit|IT|
|Anjali|HR|

Query:

```sql
SELECT COUNT(DISTINCT department)
FROM employees;
```

Result

```
3
```

Explanation

The unique departments are:

- HR
- IT
- Finance

So the result is **3**.

---

## Workflow

```
Employees Table

↓

Apply COUNT()

↓

Count Matching Rows

↓

Return One Number
```

---

## Memory Tip

> 🧠 **COUNT() = Count Records**

Remember:

```
COUNT(*)

↓

Counts Every Row

---------------------

COUNT(column)

↓

Ignores NULL

---------------------

COUNT(DISTINCT column)

↓

Counts Only Unique Values
```

--------------------------------------------------

# SUM()

## What is SUM()?

`SUM()` is an Aggregate Function that calculates the **total of all numeric values** in a column.

Instead of returning multiple rows, it returns **one value**, which is the sum of the selected column.

`SUM()` is commonly used for calculating:

- Total salary
- Total sales
- Total profit
- Total marks
- Total quantity sold
- Total revenue

---

## Why do we need SUM()?

Suppose a company wants to know:

- What is the total monthly salary expense?
- What is the total sales amount?
- What is the total bonus paid?
- What is the total revenue generated?

Instead of adding every value manually, we use `SUM()`.

---

## Characteristics

- Returns one value.
- Works only with numeric columns.
- Ignores `NULL` values.
- Can be combined with `WHERE`, `GROUP BY`, and `HAVING`.
- Very common in reports and business analytics.

---

## Syntax

```sql
SELECT SUM(column_name)
FROM table_name;
```

With a condition:

```sql
SELECT SUM(column_name)
FROM table_name
WHERE condition;
```

---

## Examples

### Example 1

Calculate the total salary of all employees.

```sql
SELECT SUM(salary)
FROM employees;
```

### Explanation

Adds the salary of every employee and returns the total salary paid by the company.

---

### Example 2

Calculate the total salary of IT employees.

```sql
SELECT SUM(salary)
FROM employees
WHERE department = 'IT';
```

### Explanation

Only salaries of employees in the IT department are added.

---

### Example 3

Calculate the total salary of employees living in Mumbai.

```sql
SELECT SUM(salary)
FROM employees
WHERE city = 'Mumbai';
```

### Explanation

Returns the total salary paid to employees from Mumbai.

---

### Example 4

Calculate the total salary of employees earning more than ₹70,000.

```sql
SELECT SUM(salary)
FROM employees
WHERE salary > 70000;
```

### Explanation

Only salaries greater than ₹70,000 are included in the calculation.

---

### Example 5

Calculate the total salary of employees who joined after '2021-01-01'.

```sql
SELECT SUM(salary)
FROM employees
WHERE joining_date > '2021-01-01';
```

### Explanation

Adds the salaries of employees who joined after 1 January 2021.

---

## Real-World Example

Suppose the salaries are:

| Employee | Salary (₹) |
|----------|-----------:|
| Amit | 45000 |
| Priya | 75000 |
| Rahul | 62000 |
| Sneha | 68000 |
| Rohit | 85000 |

Query:

```sql
SELECT SUM(salary)
FROM employees;
```

Calculation

```
45000
+75000
+62000
+68000
+85000

= ₹335000
```

Result

```
335000
```

The company pays a total salary of **₹335000**.

---

## Workflow

```
Salary Column

↓

SUM()

↓

Add All Values

↓

Return Total
```

---

## Memory Tip

> 🧠 **SUM() = Add Everything**

```
1000
2000
3000
4000

↓

SUM()

↓

10000
```

Think:

```
Many Numbers

↓

Addition

↓

One Total
```

--------------------------------------------------

# AVG()

## What is AVG()?

`AVG()` is an Aggregate Function that calculates the **average (mean)** of all numeric values in a column.

Instead of returning multiple rows, it returns **a single value**, which represents the average of the selected column.

`AVG()` is commonly used to calculate:

- Average salary
- Average marks
- Average sales
- Average revenue
- Average order value
- Average product price

---

## Why do we need AVG()?

Suppose a company wants to know:

- What is the average salary of employees?
- What is the average salary in the IT department?
- What is the average salary of employees living in Mumbai?
- What is the average salary of employees who joined this year?

Instead of manually adding all salaries and dividing by the number of employees, MySQL calculates it automatically using `AVG()`.

---

## Characteristics

- Returns one value.
- Works only with numeric columns.
- Ignores `NULL` values.
- Can be combined with `WHERE`, `GROUP BY`, and `HAVING`.
- Frequently used in business reports and analytics.

---

## Syntax

```sql
SELECT AVG(column_name)
FROM table_name;
```

With a condition:

```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;
```

---

## Examples

### Example 1

Calculate the average salary of all employees.

```sql
SELECT AVG(salary)
FROM employees;
```

### Explanation

Calculates the average salary of every employee in the table.

---

### Example 2

Calculate the average salary of IT employees.

```sql
SELECT AVG(salary)
FROM employees
WHERE department = 'IT';
```

### Explanation

Only salaries of employees in the IT department are used to calculate the average.

---

### Example 3

Calculate the average salary of employees from Mumbai.

```sql
SELECT AVG(salary)
FROM employees
WHERE city = 'Mumbai';
```

### Explanation

Returns the average salary of employees who live in Mumbai.

---

### Example 4

Calculate the average salary of employees earning more than ₹70,000.

```sql
SELECT AVG(salary)
FROM employees
WHERE salary > 70000;
```

### Explanation

Only salaries greater than ₹70,000 are included in the calculation.

---

### Example 5

Calculate the average salary of employees who joined after '2021-01-01'.

```sql
SELECT AVG(salary)
FROM employees
WHERE joining_date > '2021-01-01';
```

### Explanation

Calculates the average salary of employees who joined after 1 January 2021.

---

## Real-World Example

Suppose the salaries are:

| Employee | Salary (₹) |
|----------|-----------:|
| Amit | 45000 |
| Priya | 75000 |
| Rahul | 62000 |
| Sneha | 68000 |
| Rohit | 85000 |

Query:

```sql
SELECT AVG(salary)
FROM employees;
```

Calculation

```
(45000 + 75000 + 62000 + 68000 + 85000)

÷

5

=

₹67000
```

Result

```
67000
```

The average salary of employees is **₹67,000**.

---

## Workflow

```
Salary Column

↓

AVG()

↓

Add All Values

↓

Divide by Number of Rows

↓

Return Average
```

---

## Memory Tip

> 🧠 **AVG() = Total ÷ Count**

```
₹10,000
₹20,000
₹30,000

↓

AVG()

↓

(₹10,000 + ₹20,000 + ₹30,000)

÷

3

↓

₹20,000
```

Think:

```
Many Numbers

↓

Find Their Mean

↓

One Average Value
```

--------------------------------------------------

# MIN()

## What is MIN()?

`MIN()` is an Aggregate Function that returns the **smallest value** from a column.

Instead of displaying every value, it scans all the rows and returns **only one value**, which is the minimum value found.

`MIN()` can be used with:

- Numbers
- Dates
- Text (alphabetically)

It is commonly used to find:

- Lowest salary
- Earliest joining date
- Minimum product price
- Lowest marks
- Smallest order amount

---

## Why do we need MIN()?

Suppose a company wants to know:

- Who earns the lowest salary?
- What is the minimum product price?
- Which employee joined first?
- What is the lowest order value?

Instead of checking every record manually, `MIN()` returns the smallest value instantly.

---

## Characteristics

- Returns one value.
- Works with numeric, date, and text columns.
- Ignores `NULL` values.
- Can be combined with `WHERE`, `GROUP BY`, and `HAVING`.
- Frequently used in reports and analytics.

---

## Syntax

```sql
SELECT MIN(column_name)
FROM table_name;
```

With a condition:

```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```

---

## Examples

### Example 1

Find the lowest salary.

```sql
SELECT MIN(salary)
FROM employees;
```

### Explanation

Returns the smallest salary from the `salary` column.

---

### Example 2

Find the lowest salary in the IT department.

```sql
SELECT MIN(salary)
FROM employees
WHERE department = 'IT';
```

### Explanation

Only salaries of employees in the IT department are considered.

---

### Example 3

Find the earliest joining date.

```sql
SELECT MIN(joining_date)
FROM employees;
```

### Explanation

Returns the oldest (earliest) joining date in the table.

---

### Example 4

Find the alphabetically first city.

```sql
SELECT MIN(city)
FROM employees;
```

### Explanation

For text columns, `MIN()` returns the value that comes first in alphabetical order.

---

### Example 5

Find the lowest salary of employees from Mumbai.

```sql
SELECT MIN(salary)
FROM employees
WHERE city = 'Mumbai';
```

### Explanation

Returns the minimum salary among employees who live in Mumbai.

---

## Real-World Example

Suppose the salaries are:

| Employee | Salary (₹) |
|----------|-----------:|
| Amit | 45000 |
| Priya | 75000 |
| Rahul | 62000 |
| Sneha | 68000 |
| Rohit | 85000 |

Query:

```sql
SELECT MIN(salary)
FROM employees;
```

Result

```
45000
```

The employee with the lowest salary earns **₹45,000**.

---

## Workflow

```
Salary Column

↓

MIN()

↓

Find Smallest Value

↓

Return One Result
```

---

## Memory Tip

> 🧠 **MIN() = Smallest Value**

```
₹45,000
₹75,000
₹62,000
₹68,000
₹85,000

↓

MIN()

↓

₹45,000
```

Think:

```
Many Values

↓

Find the Smallest

↓

One Result
```

--------------------------------------------------

# MAX()

## What is MAX()?

`MAX()` is an Aggregate Function that returns the **largest value** from a column.

Instead of displaying every value, it examines all the rows and returns **only one value**, which is the maximum value found.

`MAX()` can be used with:

- Numbers
- Dates
- Text (alphabetically)

It is commonly used to find:

- Highest salary
- Latest joining date
- Maximum product price
- Highest marks
- Largest order amount

---

## Why do we need MAX()?

Suppose a company wants to know:

- Who earns the highest salary?
- What is the maximum product price?
- Which employee joined most recently?
- What is the highest order value?

Instead of checking every record manually, `MAX()` returns the largest value instantly.

---

## Characteristics

- Returns one value.
- Works with numeric, date, and text columns.
- Ignores `NULL` values.
- Can be combined with `WHERE`, `GROUP BY`, and `HAVING`.
- Frequently used in reports and analytics.

---

## Syntax

```sql
SELECT MAX(column_name)
FROM table_name;
```

With a condition:

```sql
SELECT MAX(column_name)
FROM table_name
WHERE condition;
```

---

## Examples

### Example 1

Find the highest salary.

```sql
SELECT MAX(salary)
FROM employees;
```

### Explanation

Returns the largest salary from the `salary` column.

---

### Example 2

Find the highest salary in the IT department.

```sql
SELECT MAX(salary)
FROM employees
WHERE department = 'IT';
```

### Explanation

Only salaries of employees in the IT department are considered.

---

### Example 3

Find the latest joining date.

```sql
SELECT MAX(joining_date)
FROM employees;
```

### Explanation

Returns the most recent joining date in the table.

---

### Example 4

Find the alphabetically last city.

```sql
SELECT MAX(city)
FROM employees;
```

### Explanation

For text columns, `MAX()` returns the value that comes last in alphabetical order.

---

### Example 5

Find the highest salary of employees from Mumbai.

```sql
SELECT MAX(salary)
FROM employees
WHERE city = 'Mumbai';
```

### Explanation

Returns the highest salary among employees who live in Mumbai.

---

## Real-World Example

Suppose the salaries are:

| Employee | Salary (₹) |
|----------|-----------:|
| Amit | 45000 |
| Priya | 75000 |
| Rahul | 62000 |
| Sneha | 68000 |
| Rohit | 85000 |

Query:

```sql
SELECT MAX(salary)
FROM employees;
```

Result

```
85000
```

The employee with the highest salary earns **₹85,000**.

---

## Workflow

```
Salary Column

↓

MAX()

↓

Find Largest Value

↓

Return One Result
```

---

## Memory Tip

> 🧠 **MAX() = Largest Value**

```
₹45,000
₹75,000
₹62,000
₹68,000
₹85,000

↓

MAX()

↓

₹85,000
```

Think:

```
Many Values

↓

Find the Largest

↓

One Result
```

--------------------------------------------------

# Aggregate Functions with WHERE

## What is it?

Aggregate Functions can be combined with the `WHERE` clause to perform calculations **only on rows that satisfy a specific condition**.

Instead of calculating values for the entire table, MySQL first filters the required rows using `WHERE` and then applies the Aggregate Function.

This allows you to generate meaningful summaries based on specific criteria.

---

## Why do we need it?

In real-world scenarios, businesses rarely need summaries for the entire table.

For example:

- Total salary of IT employees.
- Average salary of employees in Mumbai.
- Highest salary in the Finance department.
- Number of employees earning more than ₹70,000.
- Lowest salary among HR employees.

The `WHERE` clause helps us calculate results only for the required records.

---

## Characteristics

- Filters rows before the Aggregate Function is applied.
- Can be used with `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.
- Makes reports more accurate and meaningful.
- Commonly used in dashboards and business analytics.
- Cannot contain Aggregate Functions directly inside the `WHERE` clause.

---

## Syntax

```sql
SELECT AGGREGATE_FUNCTION(column_name)
FROM table_name
WHERE condition;
```

General syntax:

```sql
SELECT COUNT(*)
FROM employees
WHERE department = 'IT';
```

---

## Examples

### Example 1

Count employees in the IT department.

```sql
SELECT COUNT(*)
FROM employees
WHERE department = 'IT';
```

### Explanation

The `WHERE` clause selects only IT employees, and `COUNT()` returns the number of matching employees.

---

### Example 2

Calculate the total salary of employees from Mumbai.

```sql
SELECT SUM(salary)
FROM employees
WHERE city = 'Mumbai';
```

### Explanation

Only employees whose city is Mumbai are included in the salary calculation.

---

### Example 3

Find the average salary of employees earning more than ₹60,000.

```sql
SELECT AVG(salary)
FROM employees
WHERE salary > 60000;
```

### Explanation

Only salaries greater than ₹60,000 are considered while calculating the average.

---

### Example 4

Find the lowest salary in the HR department.

```sql
SELECT MIN(salary)
FROM employees
WHERE department = 'HR';
```

### Explanation

Returns the smallest salary among employees working in the HR department.

---

### Example 5

Find the highest salary of employees who joined after '2021-01-01'.

```sql
SELECT MAX(salary)
FROM employees
WHERE joining_date > '2021-01-01';
```

### Explanation

The table is first filtered to include employees who joined after 1 January 2021, then `MAX()` returns the highest salary from those records.

---

## Workflow

```
Employees Table

↓

WHERE

(Filter Rows)

↓

Aggregate Function

↓

Single Result
```

---

## Memory Tip

> 🧠 **WHERE Filters First, Aggregate Calculates Next**

```
All Employees

↓

WHERE

↓

Matching Employees

↓

COUNT()
SUM()
AVG()
MIN()
MAX()

↓

One Result
```

Remember:

```
Filter First

↓

Calculate Later
```

--------------------------------------------------

# NULL Handling in Aggregate Functions

## What is it?

`NULL` represents **missing or unknown data** in a database.

When Aggregate Functions perform calculations, MySQL treats `NULL` values differently from normal values.

Understanding how Aggregate Functions handle `NULL` values is important because it affects the accuracy of reports and calculations.

---

## Why do we need to understand NULL Handling?

In real-world databases, some values may be missing.

For example:

- An employee's salary is not yet updated.
- A customer's phone number is unavailable.
- A student's marks have not been entered.

If SQL included these missing values in calculations, the results would be incorrect.

Therefore, Aggregate Functions automatically ignore `NULL` values (with one exception).

---

## Characteristics

- Most Aggregate Functions ignore `NULL` values.
- `COUNT(column_name)` ignores `NULL` values.
- `COUNT(*)` counts every row, including rows containing `NULL`.
- `SUM()`, `AVG()`, `MIN()`, and `MAX()` ignore `NULL` values.
- If all values are `NULL`, most Aggregate Functions return `NULL`.

---

## How Each Aggregate Function Handles NULL

| Function | NULL Handling |
|----------|---------------|
| `COUNT(*)` | Counts all rows, including rows containing `NULL` values |
| `COUNT(column_name)` | Counts only non-`NULL` values |
| `SUM()` | Ignores `NULL` values |
| `AVG()` | Ignores `NULL` values |
| `MIN()` | Ignores `NULL` values |
| `MAX()` | Ignores `NULL` values |

---

## Syntax

```sql
SELECT COUNT(column_name)
FROM table_name;
```

```sql
SELECT SUM(column_name)
FROM table_name;
```

```sql
SELECT AVG(column_name)
FROM table_name;
```

---

## Example Table

| employee_id | employee_name | salary |
|-------------|---------------|--------|
|101|Amit|45000|
|102|Priya|75000|
|103|Rahul|NULL|
|104|Sneha|68000|
|105|Rohit|NULL|

---

## Examples

### Example 1

Count all rows.

```sql
SELECT COUNT(*)
FROM employees;
```

### Explanation

Result

```
5
```

`COUNT(*)` counts every row, even if some columns contain `NULL` values.

---

### Example 2

Count salaries.

```sql
SELECT COUNT(salary)
FROM employees;
```

### Explanation

Result

```
3
```

Only non-`NULL` salary values are counted.

---

### Example 3

Calculate the total salary.

```sql
SELECT SUM(salary)
FROM employees;
```

### Explanation

Calculation

```
45000
+75000
+68000

=

₹188000
```

The `NULL` salary values are ignored.

---

### Example 4

Calculate the average salary.

```sql
SELECT AVG(salary)
FROM employees;
```

### Explanation

Calculation

```
(45000 + 75000 + 68000)

÷

3

=

₹62666.67
```

Only non-`NULL` salaries are used.

---

### Example 5

Find the highest salary.

```sql
SELECT MAX(salary)
FROM employees;
```

### Explanation

Result

```
75000
```

`NULL` values are ignored while determining the maximum salary.

---

## Workflow

```
Employees Table

↓

NULL Values Present

↓

Aggregate Function

↓

Ignore NULL Values
(except COUNT(*))

↓

Return Result
```

---

## Memory Tip

> 🧠 **Aggregate Functions Ignore NULL Values**

```
COUNT(*)

↓

Counts Every Row

------------------------

COUNT(column)

↓

Ignores NULL

------------------------

SUM()
AVG()
MIN()
MAX()

↓

Ignore NULL Values
```

Remember:

```
NULL

≠

0

NULL means

"Unknown or Missing Value"
```

--------------------------------------------------

# Execution Order

## What is it?

When we write an SQL query with Aggregate Functions, MySQL does **not** execute the clauses from top to bottom.

Instead, it follows a predefined execution order.

Understanding this order helps you:

- Write correct SQL queries.
- Avoid syntax errors.
- Understand why queries produce certain results.
- Debug queries more easily.

---

## Why do we need to understand the Execution Order?

Consider the following query:

```sql
SELECT AVG(salary)
FROM employees
WHERE department = 'IT';
```

Although `SELECT` appears before `WHERE`, MySQL first filters the rows using `WHERE` and then calculates the average salary.

Knowing the execution order makes SQL much easier to understand.

---

## Execution Order with Aggregate Functions

When using Aggregate Functions, MySQL processes the query in the following order:

```
FROM

↓

WHERE

↓

GROUP BY

↓

Aggregate Functions

↓

HAVING

↓

SELECT

↓

DISTINCT

↓

ORDER BY

↓

LIMIT
```

---

## Explanation of Each Step

### 1. FROM

MySQL identifies the table from which the data will be retrieved.

Example:

```sql
FROM employees
```

---

### 2. WHERE

Rows that do not satisfy the condition are removed.

Example:

```sql
WHERE department = 'IT'
```

Only IT employees remain.

---

### 3. GROUP BY

If present, the remaining rows are divided into groups.

Example:

```sql
GROUP BY department
```

Each department becomes a separate group.

---

### 4. Aggregate Functions

Functions such as `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()` perform calculations on each group (or on the entire filtered dataset if there is no `GROUP BY`).

Example:

```sql
AVG(salary)
```

Calculates the average salary.

---

### 5. HAVING

Filters the groups created by `GROUP BY`.

Unlike `WHERE`, `HAVING` can use Aggregate Functions.

Example:

```sql
HAVING AVG(salary) > 70000
```

Only groups with an average salary greater than ₹70,000 are returned.

---

### 6. SELECT

The required columns and calculated values are displayed.

Example:

```sql
SELECT department,
       AVG(salary)
```

---

### 7. DISTINCT

If `DISTINCT` is used, duplicate rows are removed from the selected result.

---

### 8. ORDER BY

Sorts the final result.

Example:

```sql
ORDER BY AVG(salary) DESC
```

---

### 9. LIMIT

Returns only the specified number of rows.

Example:

```sql
LIMIT 5
```

---

## Example

```sql
SELECT department,
       AVG(salary)
FROM employees
WHERE salary > 50000
GROUP BY department
HAVING AVG(salary) > 70000
ORDER BY AVG(salary) DESC
LIMIT 3;
```

---

## How MySQL Executes This Query

```
employees

↓

WHERE salary > 50000

↓

GROUP BY department

↓

AVG(salary)

↓

HAVING AVG(salary) > 70000

↓

SELECT department, AVG(salary)

↓

ORDER BY AVG(salary) DESC

↓

LIMIT 3

↓

Final Result
```

---

## Workflow

```
Table

↓

FROM

↓

WHERE

↓

GROUP BY

↓

Aggregate Function

↓

HAVING

↓

SELECT

↓

DISTINCT

↓

ORDER BY

↓

LIMIT

↓

Result
```

---

## Memory Tip

> 🧠 **Remember the execution order with the mnemonic:**

```
FROM

↓

WHERE

↓

GROUP BY

↓

Aggregate

↓

HAVING

↓

SELECT

↓

DISTINCT

↓

ORDER BY

↓

LIMIT
```

Think of it as:

```
Get the Data

↓

Filter the Rows

↓

Create Groups

↓

Calculate Values

↓

Filter Groups

↓

Display Columns

↓

Remove Duplicates

↓

Sort the Result

↓

Return Required Rows
```

--------------------------------------------------

# Aggregate Functions Summary

Aggregate Functions help summarize data by performing calculations on multiple rows and returning a single value.

The five most commonly used Aggregate Functions are:

| Function | Purpose |
|----------|---------|
| `COUNT()` | Counts rows or values |
| `SUM()` | Calculates the total |
| `AVG()` | Calculates the average |
| `MIN()` | Finds the smallest value |
| `MAX()` | Finds the largest value |

Aggregate Functions:

- Return a single value.
- Work mainly with numeric data (`MIN()` and `MAX()` also work with dates and text).
- Ignore `NULL` values, except `COUNT(*)`.
- Can be combined with `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, and `LIMIT`.
- Are essential for reports, dashboards, business intelligence, and data engineering.

--------------------------------------------------

# Summary

- Aggregate Functions summarize multiple rows into a single result.
- `COUNT()` counts rows or values.
- `SUM()` calculates the total.
- `AVG()` calculates the average.
- `MIN()` finds the smallest value.
- `MAX()` finds the largest value.
- Aggregate Functions ignore `NULL` values except `COUNT(*)`.
- `WHERE` filters rows before aggregation.
- Understanding the SQL execution order helps in writing correct queries.

---

# Best Practices

- Use `COUNT(*)` when counting rows.
- Use `COUNT(column_name)` when you want to ignore `NULL` values.
- Apply `WHERE` to filter unnecessary rows before aggregation.
- Use meaningful column aliases for aggregate results.
- Use `GROUP BY` when you need aggregate values for each category.
- Keep aggregate queries simple and readable.

---

# Common Mistakes

- Confusing `COUNT(*)` with `COUNT(column_name)`.
- Expecting `SUM()` or `AVG()` to include `NULL` values.
- Using Aggregate Functions directly in the `WHERE` clause.
- Forgetting to use `GROUP BY` when selecting non-aggregated columns.
- Assuming SQL executes clauses from top to bottom.

---

# Interview Questions

1. What are Aggregate Functions in SQL?
2. What is the difference between `COUNT(*)` and `COUNT(column_name)`?
3. How does `AVG()` handle `NULL` values?
4. Can `SUM()` be used on text columns?
5. What is the difference between `MIN()` and `MAX()`?
6. Why can't Aggregate Functions be used directly in the `WHERE` clause?
7. What is the purpose of the `HAVING` clause?
8. Explain the execution order of an SQL query containing Aggregate Functions.
9. What happens if all values in a column are `NULL`?
10. When should you use Aggregate Functions in real-world applications?

---

# Key Takeaways

- Aggregate Functions return one summarized value.
- `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()` are the most commonly used Aggregate Functions.
- `NULL` values are ignored by most Aggregate Functions.
- `WHERE` filters rows before aggregation.
- `HAVING` filters groups after aggregation.
- Understanding the SQL execution order is essential for writing efficient queries.

---

# What's Next?

In **Day 11**, you'll learn about the **GROUP BY Clause**, which allows you to divide rows into groups and apply Aggregate Functions to each group separately. This is a fundamental concept for generating category-wise summaries, reports, and analytical queries.
