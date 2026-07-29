# Day 11 - GROUP BY Clause

## Introduction

In the previous lesson, you learned how Aggregate Functions calculate a **single summary value** from multiple rows.

For example:

- Total employees
- Total salary
- Average salary
- Highest salary
- Lowest salary

But what if we need these calculations **for each department** instead of the entire company?

For example:

- Total employees in each department
- Average salary of each department
- Highest salary in every department
- Total salary paid by each city

This is where the **GROUP BY** clause becomes useful.

The `GROUP BY` clause divides rows into groups based on one or more columns. Aggregate Functions are then applied **to each group separately**.

It is one of the most important SQL concepts and is widely used in:

- Business Intelligence
- Sales Reports
- Payroll Systems
- HR Analytics
- Banking Applications
- Data Warehouses
- Data Engineering Pipelines

---

## Learning Objectives

By the end of this lesson, you will be able to:

- Understand what the `GROUP BY` clause is.
- Learn why `GROUP BY` is required.
- Group records using one column.
- Group records using multiple columns.
- Use Aggregate Functions with `GROUP BY`.
- Combine `GROUP BY` with `WHERE`.
- Understand the SQL execution order involving `GROUP BY`.

---

## Table of Contents

1. What is the GROUP BY Clause?
2. GROUP BY with COUNT()
3. GROUP BY with SUM()
4. GROUP BY with AVG()
5. GROUP BY with MIN()
6. GROUP BY with MAX()
7. GROUP BY with WHERE
8. GROUP BY with Multiple Columns
9. Execution Order
10. GROUP BY Summary

--------------------------------------------------

# What is the GROUP BY Clause?

## What is it?

The `GROUP BY` clause is used to **group rows that have the same values in one or more columns**.

After creating these groups, MySQL applies Aggregate Functions such as:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

to **each group individually**.

Instead of returning one summary for the entire table, `GROUP BY` returns **one summary for each group**.

---

## Why do we need it?

Suppose a company has employees from different departments.

The HR manager wants to know:

- How many employees work in each department?
- What is the average salary of each department?
- Which department has the highest salary?
- How much salary is paid by each department?

Without `GROUP BY`, you can calculate only one overall result.

With `GROUP BY`, you get separate results for every department automatically.

---

## Characteristics

- Groups rows with the same values.
- Usually used with Aggregate Functions.
- Returns one row for each group.
- Can group by one or multiple columns.
- Can be combined with `WHERE`, `HAVING`, `ORDER BY`, and `LIMIT`.

---

## Syntax

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name;
```

General syntax:

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department;
```

---

## Examples

### Example 1

Count employees in each department.

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department;
```

### Explanation

Employees are grouped by department, and `COUNT()` returns the number of employees in each department.

---

### Example 2

Calculate the total salary of each department.

```sql
SELECT department,
       SUM(salary)
FROM employees
GROUP BY department;
```

### Explanation

`SUM()` calculates the total salary separately for every department.

---

### Example 3

Calculate the average salary of each department.

```sql
SELECT department,
       AVG(salary)
FROM employees
GROUP BY department;
```

### Explanation

Returns the average salary for each department.

---

## Real-World Example

Suppose the company has the following data:

| Employee | Department | Salary (₹) |
|----------|------------|-----------:|
| Amit | HR | 45000 |
| Priya | IT | 75000 |
| Sneha | IT | 68000 |
| Rohit | IT | 85000 |
| Rahul | Finance | 62000 |
| Vikas | Finance | 67000 |

Query:

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department;
```

Result

| Department | Employees |
|------------|----------:|
| HR | 1 |
| IT | 3 |
| Finance | 2 |

Instead of one total count, MySQL returns one count for each department.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

Create Groups

↓

Apply Aggregate Function

↓

One Result Per Group
```

---

## Memory Tip

> 🧠 **GROUP BY = Divide First, Calculate Later**

```
Employees

↓

GROUP BY Department

↓

HR
IT
Finance

↓

COUNT()
SUM()
AVG()

↓

One Result for Each Department
```

Think:

```
One Table

↓

Many Groups

↓

One Summary Per Group
```

--------------------------------------------------

# GROUP BY with COUNT()

## What is it?

`GROUP BY` with `COUNT()` is used to count the number of rows **within each group**.

Instead of returning one total count for the entire table, MySQL returns **a separate count for every group**.

This is one of the most commonly used combinations in SQL for generating reports and dashboards.

---

## Why do we need it?

Suppose an HR manager asks:

- How many employees work in each department?
- How many employees are from each city?
- How many employees have each designation?

Without `GROUP BY`, you can only find the total number of employees.

With `GROUP BY`, you can count employees separately for every category.

---

## Characteristics

- Creates groups based on a column.
- Counts rows in each group.
- Returns one row for every group.
- Can be combined with `WHERE`, `HAVING`, `ORDER BY`, and `LIMIT`.
- Frequently used in analytical reports.

---

## Syntax

```sql
SELECT column_name,
       COUNT(*)
FROM table_name
GROUP BY column_name;
```

Using `COUNT(column_name)`:

```sql
SELECT column_name,
       COUNT(column_name)
FROM table_name
GROUP BY column_name;
```

---

## Examples

### Example 1

Count employees in each department.

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department;
```

### Explanation

Employees are grouped by department, and `COUNT(*)` returns the number of employees in each department.

---

### Example 2

Count employees in each city.

```sql
SELECT city,
       COUNT(*)
FROM employees
GROUP BY city;
```

### Explanation

Employees are grouped according to their city, and the total number of employees is displayed for each city.

---

### Example 3

Count employees for each designation.

```sql
SELECT designation,
       COUNT(*)
FROM employees
GROUP BY designation;
```

### Explanation

Returns the number of employees for every designation in the company.

---

### Example 4

Count employees who joined in each city.

```sql
SELECT city,
       COUNT(*)
FROM employees
GROUP BY city;
```

### Explanation

Each city forms a separate group, and the number of employees in each city is counted.

---

### Example 5

Count the number of employees in each department using only employees earning more than ₹60,000.

```sql
SELECT department,
       COUNT(*)
FROM employees
WHERE salary > 60000
GROUP BY department;
```

### Explanation

The `WHERE` clause filters employees earning more than ₹60,000 before grouping them by department.

---

## Real-World Example

Suppose the company has the following employees:

| Employee | Department |
|----------|------------|
| Amit | HR |
| Priya | IT |
| Sneha | IT |
| Rohit | IT |
| Rahul | Finance |
| Vikas | Finance |
| Pooja | Sales |

Query:

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department;
```

Result

| Department | Employees |
|------------|----------:|
| HR | 1 |
| IT | 3 |
| Finance | 2 |
| Sales | 1 |

Each department becomes a separate group, and `COUNT()` calculates the number of employees in each group.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

HR
IT
Finance
Sales

↓

COUNT()

↓

Employee Count for Each Department
```

---

## Memory Tip

> 🧠 **GROUP BY + COUNT() = Count Each Group**

```
Employees

↓

GROUP BY

↓

Separate Groups

↓

COUNT()

↓

One Count Per Group
```

Think:

```
One Table

↓

Many Groups

↓

Count Every Group
```

--------------------------------------------------

# GROUP BY with SUM()

## What is it?

`GROUP BY` with `SUM()` is used to calculate the **total of a numeric column for each group**.

Instead of returning one overall total, MySQL creates groups first and then calculates the sum for every group separately.

This is commonly used to calculate:

- Total salary by department
- Total sales by city
- Total revenue by product
- Total expenses by category

---

## Why do we need it?

Suppose a company's Finance Manager wants answers to questions like:

- How much salary is paid to each department?
- What is the total sales amount for each city?
- How much revenue is generated by each product category?

Without `GROUP BY`, you only get one total for the entire table.

With `GROUP BY`, you get separate totals for each category.

---

## Characteristics

- Groups rows before calculating the total.
- Works only with numeric columns.
- Returns one row for each group.
- Ignores `NULL` values.
- Can be combined with `WHERE`, `HAVING`, `ORDER BY`, and `LIMIT`.

---

## Syntax

```sql
SELECT column_name,
       SUM(numeric_column)
FROM table_name
GROUP BY column_name;
```

Example syntax:

```sql
SELECT department,
       SUM(salary)
FROM employees
GROUP BY department;
```

---

## Examples

### Example 1

Find the total salary of each department.

```sql
SELECT department,
       SUM(salary)
FROM employees
GROUP BY department;
```

### Explanation

Employees are grouped by department, and the salaries within each department are added together.

---

### Example 2

Find the total salary paid in each city.

```sql
SELECT city,
       SUM(salary)
FROM employees
GROUP BY city;
```

### Explanation

Employees are grouped according to their city, and the total salary is calculated for each city.

---

### Example 3

Find the total salary for each designation.

```sql
SELECT designation,
       SUM(salary)
FROM employees
GROUP BY designation;
```

### Explanation

Each designation forms a group, and the salaries of employees in that designation are added.

---

### Example 4

Find the total salary of each department where employees earn more than ₹60,000.

```sql
SELECT department,
       SUM(salary)
FROM employees
WHERE salary > 60000
GROUP BY department;
```

### Explanation

The `WHERE` clause filters employees earning more than ₹60,000 before calculating the total salary for each department.

---

### Example 5

Find the total salary paid in each city for employees who joined after '2021-01-01'.

```sql
SELECT city,
       SUM(salary)
FROM employees
WHERE joining_date > '2021-01-01'
GROUP BY city;
```

### Explanation

Only employees who joined after 1 January 2021 are considered, and the total salary is calculated separately for each city.

---

## Real-World Example

Suppose the company has the following data:

| Employee | Department | Salary (₹) |
|----------|------------|-----------:|
| Amit | HR | 45000 |
| Priya | IT | 75000 |
| Sneha | IT | 68000 |
| Rohit | IT | 85000 |
| Rahul | Finance | 62000 |
| Vikas | Finance | 67000 |

Query:

```sql
SELECT department,
       SUM(salary)
FROM employees
GROUP BY department;
```

Result

| Department | Total Salary (₹) |
|------------|-----------------:|
| HR | 45000 |
| IT | 228000 |
| Finance | 129000 |

Each department has its own total salary.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

HR
IT
Finance

↓

SUM(Salary)

↓

Total Salary for Each Department
```

---

## Memory Tip

> 🧠 **GROUP BY + SUM() = Total for Each Group**

```
Employees

↓

GROUP BY

↓

Separate Groups

↓

SUM()

↓

One Total Per Group
```

Think:

```
One Table

↓

Many Groups

↓

Add Values

↓

One Total for Each Group
```

--------------------------------------------------

# GROUP BY with AVG()

## What is it?

`GROUP BY` with `AVG()` is used to calculate the **average value of a numeric column for each group**.

Instead of calculating one average for the entire table, MySQL first creates groups and then calculates the average for every group separately.

It is commonly used to calculate:

- Average salary by department
- Average sales by city
- Average marks by class
- Average order value by customer

---

## Why do we need it?

Suppose the HR manager wants answers to questions like:

- What is the average salary in each department?
- Which city has the highest average salary?
- What is the average salary of employees in each designation?

Without `GROUP BY`, you only get one average for the entire company.

With `GROUP BY`, you get an average for every department, city, or designation.

---

## Characteristics

- Groups rows before calculating the average.
- Works only with numeric columns.
- Ignores `NULL` values.
- Returns one row for each group.
- Can be combined with `WHERE`, `HAVING`, `ORDER BY`, and `LIMIT`.

---

## Syntax

```sql
SELECT column_name,
       AVG(numeric_column)
FROM table_name
GROUP BY column_name;
```

Example syntax:

```sql
SELECT department,
       AVG(salary)
FROM employees
GROUP BY department;
```

---

## Examples

### Example 1

Find the average salary of each department.

```sql
SELECT department,
       AVG(salary)
FROM employees
GROUP BY department;
```

### Explanation

Employees are grouped by department, and the average salary is calculated for each department.

---

### Example 2

Find the average salary of employees in each city.

```sql
SELECT city,
       AVG(salary)
FROM employees
GROUP BY city;
```

### Explanation

Employees are grouped by city, and the average salary is calculated for every city.

---

### Example 3

Find the average salary for each designation.

```sql
SELECT designation,
       AVG(salary)
FROM employees
GROUP BY designation;
```

### Explanation

Each designation becomes a separate group, and `AVG()` calculates the average salary for that designation.

---

### Example 4

Find the average salary of each department where employees earn more than ₹60,000.

```sql
SELECT department,
       AVG(salary)
FROM employees
WHERE salary > 60000
GROUP BY department;
```

### Explanation

The `WHERE` clause filters employees earning more than ₹60,000 before calculating the average salary for each department.

---

### Example 5

Find the average salary in each city for employees who joined after '2021-01-01'.

```sql
SELECT city,
       AVG(salary)
FROM employees
WHERE joining_date > '2021-01-01'
GROUP BY city;
```

### Explanation

Only employees who joined after 1 January 2021 are considered, and the average salary is calculated separately for each city.

---

## Real-World Example

Suppose the company has the following data:

| Employee | Department | Salary (₹) |
|----------|------------|-----------:|
| Amit | HR | 45000 |
| Priya | IT | 75000 |
| Sneha | IT | 68000 |
| Rohit | IT | 85000 |
| Rahul | Finance | 62000 |
| Vikas | Finance | 67000 |

Query:

```sql
SELECT department,
       AVG(salary)
FROM employees
GROUP BY department;
```

Result

| Department | Average Salary (₹) |
|------------|-------------------:|
| HR | 45000 |
| IT | 76000 |
| Finance | 64500 |

Each department has its own average salary.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

HR
IT
Finance

↓

AVG(Salary)

↓

Average Salary for Each Department
```

---

## Memory Tip

> 🧠 **GROUP BY + AVG() = Average for Each Group**

```
Employees

↓

GROUP BY

↓

Separate Groups

↓

AVG()

↓

One Average Per Group
```

Think:

```
One Table

↓

Many Groups

↓

Find Average

↓

One Average for Each Group
```

--------------------------------------------------

# GROUP BY with MIN()

## What is it?

`GROUP BY` with `MIN()` is used to find the **smallest value in each group**.

Instead of returning one minimum value for the entire table, MySQL first creates groups and then finds the minimum value within every group.

It is commonly used to find:

- Lowest salary in each department
- Lowest product price in each category
- Earliest joining date in each department
- Minimum marks in each class

---

## Why do we need it?

Suppose an HR manager wants to know:

- Who has the lowest salary in each department?
- Which department has the earliest joining date?
- What is the minimum salary in every city?

Without `GROUP BY`, you can find only one minimum value for the entire company.

With `GROUP BY`, you get the minimum value for each department, city, or designation.

---

## Characteristics

- Groups rows before finding the minimum value.
- Works with numeric, date, and text columns.
- Ignores `NULL` values.
- Returns one row for each group.
- Can be combined with `WHERE`, `HAVING`, `ORDER BY`, and `LIMIT`.

---

## Syntax

```sql
SELECT column_name,
       MIN(column_name)
FROM table_name
GROUP BY column_name;
```

Example syntax:

```sql
SELECT department,
       MIN(salary)
FROM employees
GROUP BY department;
```

---

## Examples

### Example 1

Find the minimum salary in each department.

```sql
SELECT department,
       MIN(salary)
FROM employees
GROUP BY department;
```

### Explanation

Employees are grouped by department, and the smallest salary is returned for each department.

---

### Example 2

Find the earliest joining date in each department.

```sql
SELECT department,
       MIN(joining_date)
FROM employees
GROUP BY department;
```

### Explanation

For every department, `MIN()` returns the earliest joining date.

---

### Example 3

Find the alphabetically first city in each department.

```sql
SELECT department,
       MIN(city)
FROM employees
GROUP BY department;
```

### Explanation

`MIN()` works with text values and returns the alphabetically first city within each department.

---

### Example 4

Find the minimum salary in each city where employees earn more than ₹60,000.

```sql
SELECT city,
       MIN(salary)
FROM employees
WHERE salary > 60000
GROUP BY city;
```

### Explanation

The `WHERE` clause filters employees earning more than ₹60,000 before calculating the minimum salary for each city.

---

### Example 5

Find the earliest joining date in each department for employees who joined after '2020-01-01'.

```sql
SELECT department,
       MIN(joining_date)
FROM employees
WHERE joining_date > '2020-01-01'
GROUP BY department;
```

### Explanation

Only employees who joined after 1 January 2020 are considered, and the earliest joining date is returned for each department.

---

## Real-World Example

Suppose the company has the following data:

| Employee | Department | Salary (₹) |
|----------|------------|-----------:|
| Amit | HR | 45000 |
| Priya | IT | 75000 |
| Sneha | IT | 68000 |
| Rohit | IT | 85000 |
| Rahul | Finance | 62000 |
| Vikas | Finance | 67000 |

Query:

```sql
SELECT department,
       MIN(salary)
FROM employees
GROUP BY department;
```

Result

| Department | Minimum Salary (₹) |
|------------|-------------------:|
| HR | 45000 |
| IT | 68000 |
| Finance | 62000 |

Each department has its own minimum salary.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

HR
IT
Finance

↓

MIN(Salary)

↓

Minimum Salary for Each Department
```

---

## Memory Tip

> 🧠 **GROUP BY + MIN() = Smallest Value for Each Group**

```
Employees

↓

GROUP BY

↓

Separate Groups

↓

MIN()

↓

One Minimum Value Per Group
```

Think:

```
One Table

↓

Many Groups

↓

Find Smallest Value

↓

One Minimum for Each Group
```

--------------------------------------------------

# GROUP BY with MAX()

## What is it?

`GROUP BY` with `MAX()` is used to find the **largest value in each group**.

Instead of returning one maximum value for the entire table, MySQL first creates groups and then finds the maximum value within every group.

It is commonly used to find:

- Highest salary in each department
- Latest joining date in each department
- Maximum product price in each category
- Highest marks in each class

---

## Why do we need it?

Suppose an HR manager wants to know:

- Who has the highest salary in each department?
- Which employee joined most recently in each department?
- What is the highest salary in every city?

Without `GROUP BY`, you can find only one maximum value for the entire company.

With `GROUP BY`, you get the maximum value for each department, city, or designation.

---

## Characteristics

- Groups rows before finding the maximum value.
- Works with numeric, date, and text columns.
- Ignores `NULL` values.
- Returns one row for each group.
- Can be combined with `WHERE`, `HAVING`, `ORDER BY`, and `LIMIT`.

---

## Syntax

```sql
SELECT column_name,
       MAX(column_name)
FROM table_name
GROUP BY column_name;
```

Example syntax:

```sql
SELECT department,
       MAX(salary)
FROM employees
GROUP BY department;
```

---

## Examples

### Example 1

Find the maximum salary in each department.

```sql
SELECT department,
       MAX(salary)
FROM employees
GROUP BY department;
```

### Explanation

Employees are grouped by department, and the highest salary is returned for each department.

---

### Example 2

Find the latest joining date in each department.

```sql
SELECT department,
       MAX(joining_date)
FROM employees
GROUP BY department;
```

### Explanation

For every department, `MAX()` returns the most recent joining date.

---

### Example 3

Find the alphabetically last city in each department.

```sql
SELECT department,
       MAX(city)
FROM employees
GROUP BY department;
```

### Explanation

`MAX()` works with text values and returns the alphabetically last city within each department.

---

### Example 4

Find the maximum salary in each city where employees earn more than ₹60,000.

```sql
SELECT city,
       MAX(salary)
FROM employees
WHERE salary > 60000
GROUP BY city;
```

### Explanation

The `WHERE` clause filters employees earning more than ₹60,000 before calculating the maximum salary for each city.

---

### Example 5

Find the latest joining date in each department for employees who joined after '2020-01-01'.

```sql
SELECT department,
       MAX(joining_date)
FROM employees
WHERE joining_date > '2020-01-01'
GROUP BY department;
```

### Explanation

Only employees who joined after 1 January 2020 are considered, and the latest joining date is returned for each department.

---

## Real-World Example

Suppose the company has the following data:

| Employee | Department | Salary (₹) |
|----------|------------|-----------:|
| Amit | HR | 45000 |
| Priya | IT | 75000 |
| Sneha | IT | 68000 |
| Rohit | IT | 85000 |
| Rahul | Finance | 62000 |
| Vikas | Finance | 67000 |

Query:

```sql
SELECT department,
       MAX(salary)
FROM employees
GROUP BY department;
```

Result

| Department | Maximum Salary (₹) |
|------------|-------------------:|
| HR | 45000 |
| IT | 85000 |
| Finance | 67000 |

Each department has its own maximum salary.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

HR
IT
Finance

↓

MAX(Salary)

↓

Maximum Salary for Each Department
```

---

## Memory Tip

> 🧠 **GROUP BY + MAX() = Largest Value for Each Group**

```
Employees

↓

GROUP BY

↓

Separate Groups

↓

MAX()

↓

One Maximum Value Per Group
```

Think:

```
One Table

↓

Many Groups

↓

Find Largest Value

↓

One Maximum for Each Group
```

--------------------------------------------------

# GROUP BY with WHERE

## What is it?

The `WHERE` clause can be combined with `GROUP BY` to **filter rows before they are grouped**.

MySQL first selects only the rows that satisfy the `WHERE` condition. It then creates groups from the filtered rows and finally applies the Aggregate Function to each group.

This allows you to generate summaries only for the required records.

---

## Why do we need it?

Suppose a company wants answers to questions like:

- How many IT employees are there in each city?
- What is the total salary of employees earning more than ₹60,000 in each department?
- What is the average salary of employees who joined after 2021 in each city?

Without the `WHERE` clause, every row in the table is included.

With `WHERE`, only the required rows are grouped and summarized.

---

## Characteristics

- Filters rows before grouping.
- Reduces the amount of data being grouped.
- Can be used with all Aggregate Functions.
- Improves readability and efficiency.
- Works together with `GROUP BY`, `HAVING`, `ORDER BY`, and `LIMIT`.

---

## Syntax

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
WHERE condition
GROUP BY column_name;
```

Example syntax:

```sql
SELECT department,
       COUNT(*)
FROM employees
WHERE salary > 60000
GROUP BY department;
```

---

## Examples

### Example 1

Count employees in each department whose salary is greater than ₹60,000.

```sql
SELECT department,
       COUNT(*)
FROM employees
WHERE salary > 60000
GROUP BY department;
```

### Explanation

Only employees earning more than ₹60,000 are selected. These employees are then grouped by department, and the number of employees in each department is counted.

---

### Example 2

Find the total salary of employees from each city who joined after '2021-01-01'.

```sql
SELECT city,
       SUM(salary)
FROM employees
WHERE joining_date > '2021-01-01'
GROUP BY city;
```

### Explanation

The `WHERE` clause filters employees who joined after 1 January 2021, and `SUM()` calculates the total salary for each city.

---

### Example 3

Find the average salary of employees in each department who live in Mumbai.

```sql
SELECT department,
       AVG(salary)
FROM employees
WHERE city = 'Mumbai'
GROUP BY department;
```

### Explanation

Only employees from Mumbai are considered before calculating the average salary for each department.

---

### Example 4

Find the minimum salary in each city for employees earning at least ₹50,000.

```sql
SELECT city,
       MIN(salary)
FROM employees
WHERE salary >= 50000
GROUP BY city;
```

### Explanation

Employees with salaries below ₹50,000 are excluded, and the minimum salary is calculated separately for each city.

---

### Example 5

Find the highest salary in each department for employees who joined before '2022-01-01'.

```sql
SELECT department,
       MAX(salary)
FROM employees
WHERE joining_date < '2022-01-01'
GROUP BY department;
```

### Explanation

Only employees who joined before 1 January 2022 are grouped by department, and the highest salary is returned for each department.

---

## Real-World Example

Suppose the company has the following employees:

| Employee | Department | Salary (₹) |
|----------|------------|-----------:|
| Amit | HR | 45000 |
| Priya | IT | 75000 |
| Sneha | IT | 68000 |
| Rohit | IT | 85000 |
| Rahul | Finance | 62000 |
| Pooja | Sales | 78000 |

Query:

```sql
SELECT department,
       COUNT(*)
FROM employees
WHERE salary > 60000
GROUP BY department;
```

Result

| Department | Employees |
|------------|----------:|
| Finance | 1 |
| IT | 3 |
| Sales | 1 |

The HR department is not included because none of its employees satisfy the `WHERE` condition.

---

## Workflow

```
Employees Table

↓

WHERE

(Filter Required Rows)

↓

GROUP BY Department

↓

Create Groups

↓

Apply Aggregate Function

↓

One Result Per Group
```

---

## Memory Tip

> 🧠 **WHERE Filters Rows Before GROUP BY Creates Groups**

```
Employees

↓

WHERE

↓

Filtered Employees

↓

GROUP BY

↓

Separate Groups

↓

Aggregate Function

↓

One Summary Per Group
```

Think:

```
Filter First

↓

Group Next

↓

Calculate Last
```

--------------------------------------------------

# GROUP BY with Multiple Columns

## What is it?

The `GROUP BY` clause can group records using **more than one column**.

Instead of creating groups based on a single column, MySQL creates groups based on the **unique combination of multiple columns**.

This provides more detailed summaries.

For example, instead of grouping only by department, you can group by:

- Department and City
- Department and Designation
- City and Designation

Each unique combination becomes a separate group.

---

## Why do we need it?

Suppose a company wants to know:

- How many employees work in each department in every city?
- What is the total salary for each department in each city?
- What is the average salary for each designation in every department?

Grouping by a single column cannot answer these questions accurately.

Grouping by multiple columns provides a more detailed breakdown of the data.

---

## Characteristics

- Groups rows using two or more columns.
- Every unique column combination forms a separate group.
- Usually used with Aggregate Functions.
- Can be combined with `WHERE`, `HAVING`, `ORDER BY`, and `LIMIT`.
- Frequently used in business reports and analytics.

---

## Syntax

```sql
SELECT column1,
       column2,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column1, column2;
```

Example syntax:

```sql
SELECT department,
       city,
       COUNT(*)
FROM employees
GROUP BY department, city;
```

---

## Examples

### Example 1

Count employees in each department and city.

```sql
SELECT department,
       city,
       COUNT(*)
FROM employees
GROUP BY department, city;
```

### Explanation

Employees are grouped by both department and city. Each department-city combination has its own employee count.

---

### Example 2

Find the total salary of each department in every city.

```sql
SELECT department,
       city,
       SUM(salary)
FROM employees
GROUP BY department, city;
```

### Explanation

The total salary is calculated separately for each department within each city.

---

### Example 3

Find the average salary for each designation in every department.

```sql
SELECT department,
       designation,
       AVG(salary)
FROM employees
GROUP BY department, designation;
```

### Explanation

Employees are grouped by department and designation, and the average salary is calculated for every combination.

---

### Example 4

Find the minimum salary of each department in every city where salary is greater than ₹60,000.

```sql
SELECT department,
       city,
       MIN(salary)
FROM employees
WHERE salary > 60000
GROUP BY department, city;
```

### Explanation

The `WHERE` clause filters employees earning more than ₹60,000. The remaining employees are grouped by department and city, and the minimum salary is returned for each group.

---

### Example 5

Find the highest salary of each designation in every city.

```sql
SELECT designation,
       city,
       MAX(salary)
FROM employees
GROUP BY designation, city;
```

### Explanation

Each designation-city combination forms a separate group, and the highest salary is returned for each group.

---

## Real-World Example

Suppose the company has the following data:

| Employee | Department | City | Salary (₹) |
|----------|------------|------|-----------:|
| Amit | HR | Mumbai | 45000 |
| Priya | IT | Pune | 75000 |
| Sneha | IT | Bengaluru | 68000 |
| Rohit | IT | Hyderabad | 85000 |
| Rahul | Finance | Delhi | 62000 |
| Vikas | Finance | Chennai | 67000 |

Query:

```sql
SELECT department,
       city,
       COUNT(*)
FROM employees
GROUP BY department, city;
```

Result

| Department | City | Employees |
|------------|------|----------:|
| Finance | Chennai | 1 |
| Finance | Delhi | 1 |
| HR | Mumbai | 1 |
| IT | Bengaluru | 1 |
| IT | Hyderabad | 1 |
| IT | Pune | 1 |

Each **Department + City** combination becomes its own group.

---

## Workflow

```
Employees Table

↓

GROUP BY Department, City

↓

HR + Mumbai

IT + Pune

IT + Bengaluru

Finance + Delhi

Finance + Chennai

↓

Apply Aggregate Function

↓

One Result Per Combination
```

---

## Memory Tip

> 🧠 **Multiple Columns = Multiple-Level Grouping**

```
GROUP BY Department, City

↓

Department

+

City

↓

Unique Combination

↓

Aggregate Function

↓

One Summary Per Combination
```

Think:

```
One Table

↓

Group by Multiple Columns

↓

Many Unique Combinations

↓

One Summary for Each Combination
```

--------------------------------------------------

# Execution Order

## What is it?

When a query contains the `GROUP BY` clause, MySQL does **not** execute the SQL statement from top to bottom.

Instead, it follows a predefined execution order.

Understanding this order helps you:

- Write correct SQL queries.
- Avoid common SQL errors.
- Understand how grouping and filtering work.
- Improve query performance and readability.

---

## Why do we need to understand the Execution Order?

Consider the following query:

```sql
SELECT department,
       AVG(salary)
FROM employees
WHERE salary > 50000
GROUP BY department;
```

Although `SELECT` appears first, MySQL actually performs several operations before displaying the result.

It first filters the rows, then groups them, calculates the average salary for each group, and finally displays the result.

---

## Execution Order with GROUP BY

When using `GROUP BY`, MySQL processes the query in the following order:

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
WHERE salary > 50000
```

Only employees earning more than ₹50,000 remain.

---

### 3. GROUP BY

The remaining rows are divided into groups.

Example:

```sql
GROUP BY department
```

Employees are grouped according to their department.

---

### 4. Aggregate Functions

Aggregate Functions such as:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

perform calculations for each group.

Example:

```sql
AVG(salary)
```

Calculates the average salary for every department.

---

### 5. HAVING

After the groups are created, `HAVING` filters the groups.

Unlike `WHERE`, `HAVING` works with Aggregate Functions.

Example:

```sql
HAVING AVG(salary) > 70000
```

Only departments whose average salary exceeds ₹70,000 are returned.

---

### 6. SELECT

Displays the required columns and calculated values.

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

Departments are displayed from the highest average salary to the lowest.

---

### 9. LIMIT

Returns only the required number of rows.

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

SELECT department,
AVG(salary)

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
Employees Table

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

Final Result
```

---

## Memory Tip

> 🧠 **Remember this execution order:**

```
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
```

Think:

```
Read Data

↓

Filter Rows

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

Sort Results

↓

Return Required Rows
```

--------------------------------------------------

# GROUP BY Summary

The `GROUP BY` clause divides rows into groups based on one or more columns.

After the groups are created, Aggregate Functions calculate values separately for each group.

Common Aggregate Functions used with `GROUP BY` include:

| Function | Purpose |
|----------|---------|
| `COUNT()` | Counts rows in each group |
| `SUM()` | Calculates the total for each group |
| `AVG()` | Calculates the average for each group |
| `MIN()` | Finds the smallest value in each group |
| `MAX()` | Finds the largest value in each group |

`GROUP BY` is one of the most important SQL clauses for reporting, dashboards, business intelligence, and data analysis.

--------------------------------------------------

# Summary

- `GROUP BY` divides rows into groups.
- Each group contains rows with the same value in one or more columns.
- Aggregate Functions calculate results for each group separately.
- `WHERE` filters rows before grouping.
- `HAVING` filters groups after aggregation.
- Multiple columns can be used in `GROUP BY`.
- Understanding the execution order makes SQL easier to write and debug.

---

# Best Practices

- Use `GROUP BY` whenever category-wise summaries are required.
- Filter unnecessary rows using `WHERE` before grouping.
- Use meaningful aliases for Aggregate Functions.
- Use `HAVING` only for conditions involving Aggregate Functions.
- Keep grouped queries simple and readable.
- Sort grouped results using `ORDER BY` when presenting reports.

---

# Common Mistakes

- Forgetting to include non-aggregated columns in the `GROUP BY` clause.
- Using Aggregate Functions directly in the `WHERE` clause.
- Confusing `WHERE` with `HAVING`.
- Assuming SQL executes clauses from top to bottom.
- Grouping by unnecessary columns, resulting in too many groups.

---

# Interview Questions

1. What is the purpose of the `GROUP BY` clause?
2. When should you use `GROUP BY`?
3. Can `GROUP BY` be used without Aggregate Functions?
4. What is the difference between `WHERE` and `HAVING`?
5. Can `GROUP BY` use multiple columns?
6. Why must non-aggregated columns appear in the `GROUP BY` clause?
7. Explain the execution order of a query containing `GROUP BY`.
8. Can `ORDER BY` be used with `GROUP BY`?
9. What happens if you omit the `GROUP BY` clause while selecting non-aggregated columns?
10. In which real-world scenarios is `GROUP BY` commonly used?

---

# Key Takeaways

- `GROUP BY` creates groups of similar rows.
- Aggregate Functions produce one result for each group.
- `WHERE` filters rows before grouping.
- `HAVING` filters groups after aggregation.
- Multiple-column grouping provides more detailed analysis.
- `GROUP BY` is essential for analytical SQL queries and business reporting.

---

# What's Next?

In **Day 12**, you'll learn about the **HAVING Clause**, which is used to filter grouped data based on Aggregate Function results. You'll understand how `HAVING` differs from `WHERE` and how both clauses work together in real-world SQL queries.
