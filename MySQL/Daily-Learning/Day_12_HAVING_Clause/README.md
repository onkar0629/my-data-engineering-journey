# Day 12 - HAVING Clause

# Introduction

The `HAVING` clause is used to **filter grouped data** after the `GROUP BY` clause has created groups.

While the `WHERE` clause filters **individual rows before grouping**, the `HAVING` clause filters **groups after Aggregate Functions such as `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()` have been calculated**.

The `HAVING` clause is one of the most important SQL clauses for reporting, analytics, dashboards, and business intelligence because it allows you to display only those groups that satisfy a specified condition.

For example, instead of displaying all departments, you may want to display only those departments that:

- Have more than 5 employees
- Have an average salary greater than ₹70,000
- Generate total sales greater than ₹5,00,000

These types of conditions cannot be written using the `WHERE` clause because they depend on Aggregate Function results.

---

# Learning Objectives

By the end of this chapter, you will be able to:

- Understand the purpose of the `HAVING` clause.
- Learn why `HAVING` is needed.
- Differentiate between `WHERE` and `HAVING`.
- Use `HAVING` with `COUNT()`.
- Use `HAVING` with `SUM()`.
- Use `HAVING` with `AVG()`.
- Use `HAVING` with `MIN()`.
- Use `HAVING` with `MAX()`.
- Combine `WHERE`, `GROUP BY`, and `HAVING`.
- Write real-world reporting queries using `HAVING`.
- Understand the execution order of queries containing `HAVING`.

---

# Table of Contents

1. What is the HAVING Clause?
2. Why do we need HAVING?
3. Characteristics
4. Syntax
5. HAVING vs WHERE
6. HAVING with COUNT()
7. HAVING with SUM()
8. HAVING with AVG()
9. HAVING with MIN()
10. HAVING with MAX()
11. HAVING with WHERE
12. HAVING with Multiple Conditions
13. Execution Order
14. HAVING Summary
15. Summary
16. Best Practices
17. Common Mistakes
18. Interview Questions
19. Key Takeaways
20. What's Next?

--------------------------------------------------

# What is the HAVING Clause?

## What is it?

The `HAVING` clause is used to **filter groups** created by the `GROUP BY` clause.

Unlike the `WHERE` clause, which filters individual rows, the `HAVING` clause filters the **result of Aggregate Functions**.

It is generally used with:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

After MySQL groups the rows and calculates the aggregate values, `HAVING` checks each group against the specified condition and returns only the groups that satisfy it.

---

## Why do we need it?

Suppose a company wants to know:

- Departments having more than 3 employees.
- Cities whose average salary is greater than ₹60,000.
- Departments whose total salary exceeds ₹2,00,000.

The `WHERE` clause cannot solve these problems because Aggregate Function results are not available while `WHERE` is executed.

The `HAVING` clause is specifically designed to filter these aggregated results.

---

## Characteristics

- Filters grouped data.
- Used after the `GROUP BY` clause.
- Works with Aggregate Functions.
- Can be used without `GROUP BY` in certain cases, although it is most commonly used together.
- Supports comparison operators such as `>`, `<`, `>=`, `<=`, `=`, `!=`, and logical operators like `AND`, `OR`, and `NOT`.

---

## Syntax

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

Example syntax:

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

---

## Examples

### Example 1

Find departments having more than one employee.

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;
```

### Explanation

Employees are grouped by department. Only departments whose employee count is greater than one are displayed.

---

### Example 2

Find departments whose average salary is greater than ₹70,000.

```sql
SELECT department,
       AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 70000;
```

### Explanation

After calculating the average salary for each department, `HAVING` keeps only those departments whose average salary exceeds ₹70,000.

---

### Example 3

Find cities whose total salary is greater than ₹1,20,000.

```sql
SELECT city,
       SUM(salary)
FROM employees
GROUP BY city
HAVING SUM(salary) > 120000;
```

### Explanation

The total salary is calculated for every city, and only cities with a total salary greater than ₹1,20,000 are returned.

---

## Memory Tip

> 🧠 **WHERE filters Rows. HAVING filters Groups.**

```
Rows

↓

WHERE

↓

GROUP BY

↓

Aggregate Functions

↓

HAVING

↓

Final Groups
```

Think:

```
WHERE

↓

Before Grouping

HAVING

↓

After Grouping
```

--------------------------------------------------

# Why do we need HAVING?

## What is it?

The `HAVING` clause is needed when you want to **filter groups based on the result of an Aggregate Function**.

After `GROUP BY` creates groups and Aggregate Functions calculate values for those groups, `HAVING` checks whether each group satisfies a condition.

Without `HAVING`, SQL cannot filter grouped results using Aggregate Functions.

---

## Why can't we use WHERE?

The `WHERE` clause is executed **before** `GROUP BY`.

At that stage, Aggregate Functions such as `COUNT()`, `SUM()`, and `AVG()` have **not been calculated yet**.

Therefore, conditions involving Aggregate Functions cannot be written in the `WHERE` clause.

For example, the following query is **incorrect**:

```sql
SELECT department,
       COUNT(*)
FROM employees
WHERE COUNT(*) > 2
GROUP BY department;
```

**Reason**

`COUNT(*)` is calculated **after** grouping, but `WHERE` is executed **before** grouping.

This results in an error.

---

The correct query is:

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

Here, MySQL first creates the groups, calculates the employee count for each department, and then filters the groups using `HAVING`.

---

## Real-World Scenarios

You should use `HAVING` when answering questions like:

- Which departments have more than 5 employees?
- Which cities have an average salary greater than ₹70,000?
- Which departments have a total salary greater than ₹3,00,000?
- Which cities have at least 3 employees?
- Which departments have the highest salary greater than ₹90,000?

These questions depend on Aggregate Function results, so `HAVING` is required.

---

## Characteristics

- Filters grouped data.
- Used after `GROUP BY`.
- Works with Aggregate Functions.
- Cannot replace the `WHERE` clause.
- Essential for reporting and data analysis.

---

## Examples

### Example 1

Find departments having more than two employees.

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

### Explanation

Employees are grouped by department. After counting the employees in each department, only departments with more than two employees are displayed.

---

### Example 2

Find departments whose total salary is greater than ₹2,00,000.

```sql
SELECT department,
       SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 200000;
```

### Explanation

The total salary is calculated for each department. Only departments with a total salary exceeding ₹2,00,000 are returned.

---

### Example 3

Find cities whose average salary is greater than ₹65,000.

```sql
SELECT city,
       AVG(salary)
FROM employees
GROUP BY city
HAVING AVG(salary) > 65000;
```

### Explanation

The average salary is calculated for every city, and only cities with an average salary greater than ₹65,000 are displayed.

---

### Example 4

Find departments where the highest salary is greater than ₹80,000.

```sql
SELECT department,
       MAX(salary)
FROM employees
GROUP BY department
HAVING MAX(salary) > 80000;
```

### Explanation

The highest salary is calculated for every department. Only departments with a maximum salary greater than ₹80,000 satisfy the condition.

---

### Example 5

Find departments where the minimum salary is less than ₹50,000.

```sql
SELECT department,
       MIN(salary)
FROM employees
GROUP BY department
HAVING MIN(salary) < 50000;
```

### Explanation

The minimum salary is calculated for each department, and only departments whose minimum salary is below ₹50,000 are returned.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

Create Groups

↓

Calculate Aggregate Function

↓

HAVING Condition

↓

Keep Matching Groups

↓

Final Result
```

---

## Memory Tip

> 🧠 **HAVING = Filter Groups After Aggregation**

```
Rows

↓

GROUP BY

↓

Groups

↓

Aggregate Function

↓

HAVING

↓

Required Groups
```

Think:

```
WHERE

↓

Rows

HAVING

↓

Groups
```

--------------------------------------------------

# Characteristics

The `HAVING` clause has several important characteristics that make it different from the `WHERE` clause.

- Filters **groups**, not individual rows.
- Usually used with the `GROUP BY` clause.
- Works with Aggregate Functions such as `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.
- Executed after the Aggregate Functions are calculated.
- Can use comparison operators (`>`, `<`, `>=`, `<=`, `=`, `!=`).
- Supports logical operators such as `AND`, `OR`, and `NOT`.
- Can be combined with `WHERE`, `ORDER BY`, and `LIMIT`.
- Commonly used in reports, dashboards, and analytical queries.

---

# Syntax

## Basic Syntax

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

---

## Syntax with WHERE

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
WHERE condition
GROUP BY column_name
HAVING condition;
```

---

## Syntax with ORDER BY

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition
ORDER BY AGGREGATE_FUNCTION(column_name);
```

---

## Syntax with ORDER BY and LIMIT

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition
ORDER BY AGGREGATE_FUNCTION(column_name) DESC
LIMIT 5;
```

---

# HAVING vs WHERE

Both `WHERE` and `HAVING` are used to filter data, but they work at different stages of query execution.

| WHERE | HAVING |
|--------|---------|
| Filters individual rows | Filters groups |
| Executed before `GROUP BY` | Executed after `GROUP BY` |
| Cannot use Aggregate Functions | Can use Aggregate Functions |
| Reduces rows before grouping | Reduces groups after aggregation |
| Used for row-level filtering | Used for group-level filtering |

---

## Example 1

Using `WHERE`

```sql
SELECT department,
       salary
FROM employees
WHERE salary > 60000;
```

### Explanation

Only employees earning more than ₹60,000 are selected.

No grouping takes place.

---

## Example 2

Using `HAVING`

```sql
SELECT department,
       AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;
```

### Explanation

Employees are grouped by department.

The average salary is calculated for each department.

Only departments whose average salary is greater than ₹60,000 are displayed.

---

## Example 3

Using both `WHERE` and `HAVING`

```sql
SELECT department,
       COUNT(*)
FROM employees
WHERE salary > 50000
GROUP BY department
HAVING COUNT(*) > 2;
```

### Explanation

- `WHERE` removes employees earning ₹50,000 or less.
- `GROUP BY` creates department-wise groups.
- `COUNT()` counts employees in each department.
- `HAVING` keeps only departments with more than two employees.

---

## Workflow

```
Employees Table

↓

WHERE

(Filter Rows)

↓

GROUP BY

(Create Groups)

↓

Aggregate Function

↓

HAVING

(Filter Groups)

↓

Final Result
```

---

## Memory Tip

> 🧠 **WHERE filters Rows. HAVING filters Groups.**

```
WHERE

↓

Individual Rows

HAVING

↓

Grouped Data
```

Think:

```
WHERE

↓

Before GROUP BY

HAVING

↓

After GROUP BY
```

--------------------------------------------------

# HAVING with COUNT()

## What is it?

The `COUNT()` function is commonly used with the `HAVING` clause to filter groups based on the **number of rows in each group**.

After `GROUP BY` creates the groups, `COUNT()` calculates the number of rows in each group, and `HAVING` filters only those groups that satisfy the specified condition.

It is one of the most frequently used combinations in SQL reporting.

---

## Why do we need it?

Suppose a company wants to answer questions like:

- Which departments have more than 2 employees?
- Which cities have at least 3 employees?
- Which designations have exactly 1 employee?

These questions depend on the number of rows in each group.

Since the count is calculated after grouping, the `HAVING` clause is required.

---

## Characteristics

- Works with `COUNT(*)` and `COUNT(column_name)`.
- Filters groups based on the number of records.
- Used after the `GROUP BY` clause.
- Cannot be replaced with the `WHERE` clause.
- Widely used in business reports and dashboards.

---

## Syntax

```sql
SELECT column_name,
       COUNT(*)
FROM table_name
GROUP BY column_name
HAVING COUNT(*) condition;
```

Example syntax:

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

---

## Examples

### Example 1

Find departments having more than two employees.

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

### Explanation

Employees are grouped by department. `COUNT(*)` calculates the number of employees in each department, and `HAVING` returns only departments with more than two employees.

---

### Example 2

Find cities having at least two employees.

```sql
SELECT city,
       COUNT(*)
FROM employees
GROUP BY city
HAVING COUNT(*) >= 2;
```

### Explanation

Employees are grouped by city. Only cities having two or more employees are displayed.

---

### Example 3

Find designations having exactly one employee.

```sql
SELECT designation,
       COUNT(*)
FROM employees
GROUP BY designation
HAVING COUNT(*) = 1;
```

### Explanation

Each designation is grouped separately. Only designations that appear exactly once are returned.

---

### Example 4

Find departments having fewer than three employees.

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) < 3;
```

### Explanation

Departments with fewer than three employees satisfy the condition and are displayed.

---

### Example 5

Find cities where more than one employee earns over ₹60,000.

```sql
SELECT city,
       COUNT(*)
FROM employees
WHERE salary > 60000
GROUP BY city
HAVING COUNT(*) > 1;
```

### Explanation

The `WHERE` clause first filters employees earning more than ₹60,000.

The remaining employees are grouped by city.

`COUNT(*)` counts employees in each city, and `HAVING` keeps only cities with more than one qualifying employee.

---

## Real-World Example

Suppose the company has the following data:

| Employee | Department |
|----------|------------|
| Amit | HR |
| Priya | IT |
| Sneha | IT |
| Rohit | IT |
| Rahul | Finance |
| Vikas | Finance |

Query:

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

Result

| Department | Employees |
|------------|----------:|
| IT | 3 |

Only the **IT** department has more than two employees.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

Create Groups

↓

COUNT(*)

↓

HAVING COUNT(*) > 2

↓

Required Departments
```

---

## Memory Tip

> 🧠 **COUNT() counts rows. HAVING filters the counted groups.**

```
Employees

↓

GROUP BY

↓

COUNT(*)

↓

HAVING

↓

Groups That Match
```

Think:

```
Group

↓

Count

↓

Filter

↓

Result
```

--------------------------------------------------

# HAVING with SUM()

## What is it?

The `SUM()` function is used with the `HAVING` clause to filter groups based on the **total value** of a numeric column.

After `GROUP BY` creates the groups, `SUM()` calculates the total for each group, and `HAVING` returns only those groups whose total satisfies the specified condition.

This combination is commonly used in financial reports, sales analysis, payroll systems, and business intelligence dashboards.

---

## Why do we need it?

Suppose a company wants to know:

- Which departments have a total salary greater than ₹2,00,000?
- Which cities pay a total salary exceeding ₹1,50,000?
- Which departments have a total salary less than ₹1,00,000?

These questions depend on the total salary of each group.

Since the total is calculated after grouping, the `HAVING` clause must be used.

---

## Characteristics

- Works only with numeric columns.
- Filters groups based on the total value.
- Used after the `GROUP BY` clause.
- Frequently combined with `WHERE`.
- Commonly used in payroll, sales, and financial reporting.

---

## Syntax

```sql
SELECT column_name,
       SUM(column_name)
FROM table_name
GROUP BY column_name
HAVING SUM(column_name) condition;
```

Example syntax:

```sql
SELECT department,
       SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 200000;
```

---

## Examples

### Example 1

Find departments whose total salary is greater than ₹2,00,000.

```sql
SELECT department,
       SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 200000;
```

### Explanation

Employees are grouped by department. `SUM(salary)` calculates the total salary for each department, and `HAVING` displays only departments whose total salary exceeds ₹2,00,000.

---

### Example 2

Find cities whose total salary is greater than ₹1,20,000.

```sql
SELECT city,
       SUM(salary)
FROM employees
GROUP BY city
HAVING SUM(salary) > 120000;
```

### Explanation

Employees are grouped by city. The total salary is calculated for each city, and only cities with a total salary greater than ₹1,20,000 are displayed.

---

### Example 3

Find departments whose total salary is less than ₹1,50,000.

```sql
SELECT department,
       SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) < 150000;
```

### Explanation

The total salary is calculated for every department. Departments having a total salary below ₹1,50,000 satisfy the condition.

---

### Example 4

Find cities whose total salary is at least ₹1,30,000.

```sql
SELECT city,
       SUM(salary)
FROM employees
GROUP BY city
HAVING SUM(salary) >= 130000;
```

### Explanation

`HAVING` filters the grouped results and displays only cities whose total salary is ₹1,30,000 or more.

---

### Example 5

Find departments whose total salary is greater than ₹1,50,000 considering only employees earning more than ₹60,000.

```sql
SELECT department,
       SUM(salary)
FROM employees
WHERE salary > 60000
GROUP BY department
HAVING SUM(salary) > 150000;
```

### Explanation

The `WHERE` clause first filters employees earning more than ₹60,000.

The remaining employees are grouped by department.

`SUM(salary)` calculates the total salary of each department, and `HAVING` keeps only departments whose total exceeds ₹1,50,000.

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
GROUP BY department
HAVING SUM(salary) > 200000;
```

Result

| Department | Total Salary (₹) |
|------------|-----------------:|
| IT | 228000 |

Only the **IT** department has a total salary greater than ₹2,00,000.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

Create Groups

↓

SUM(Salary)

↓

HAVING SUM(Salary) > 200000

↓

Required Departments
```

---

## Memory Tip

> 🧠 **SUM() calculates totals. HAVING filters groups based on those totals.**

```
Employees

↓

GROUP BY

↓

SUM()

↓

HAVING

↓

Required Groups
```

Think:

```
Group

↓

Calculate Total

↓

Filter Total

↓

Final Result
```

--------------------------------------------------

# HAVING with AVG()

## What is it?

The `AVG()` function is used with the `HAVING` clause to filter groups based on the **average value** of a numeric column.

After `GROUP BY` creates the groups, `AVG()` calculates the average for each group, and `HAVING` returns only those groups whose average satisfies the specified condition.

This combination is commonly used in salary analysis, sales reports, academic results, and business analytics.

---

## Why do we need it?

Suppose a company wants answers to questions like:

- Which departments have an average salary greater than ₹70,000?
- Which cities have an average salary below ₹60,000?
- Which designations have an average salary between ₹50,000 and ₹80,000?

These questions depend on the average value of each group.

Since the average is calculated after grouping, the `HAVING` clause must be used.

---

## Characteristics

- Works only with numeric columns.
- Filters groups based on the average value.
- Used after the `GROUP BY` clause.
- Often combined with `WHERE` for additional filtering.
- Commonly used in salary, sales, and performance analysis.

---

## Syntax

```sql
SELECT column_name,
       AVG(column_name)
FROM table_name
GROUP BY column_name
HAVING AVG(column_name) condition;
```

Example syntax:

```sql
SELECT department,
       AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 70000;
```

---

## Examples

### Example 1

Find departments whose average salary is greater than ₹70,000.

```sql
SELECT department,
       AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 70000;
```

### Explanation

Employees are grouped by department. `AVG(salary)` calculates the average salary for each department, and `HAVING` displays only departments whose average salary exceeds ₹70,000.

---

### Example 2

Find cities whose average salary is less than ₹60,000.

```sql
SELECT city,
       AVG(salary)
FROM employees
GROUP BY city
HAVING AVG(salary) < 60000;
```

### Explanation

Employees are grouped by city. The average salary is calculated for each city, and only cities with an average salary below ₹60,000 are displayed.

---

### Example 3

Find departments whose average salary is at least ₹65,000.

```sql
SELECT department,
       AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) >= 65000;
```

### Explanation

The average salary is calculated for every department. Departments whose average salary is ₹65,000 or more satisfy the condition.

---

### Example 4

Find cities whose average salary is between ₹60,000 and ₹75,000.

```sql
SELECT city,
       AVG(salary)
FROM employees
GROUP BY city
HAVING AVG(salary) BETWEEN 60000 AND 75000;
```

### Explanation

`AVG(salary)` calculates the average salary for each city. `HAVING` returns only cities whose average salary falls between ₹60,000 and ₹75,000.

---

### Example 5

Find departments whose average salary is greater than ₹70,000 considering only employees earning more than ₹60,000.

```sql
SELECT department,
       AVG(salary)
FROM employees
WHERE salary > 60000
GROUP BY department
HAVING AVG(salary) > 70000;
```

### Explanation

The `WHERE` clause first filters employees earning more than ₹60,000.

The remaining employees are grouped by department.

`AVG(salary)` calculates the average salary for each department, and `HAVING` keeps only departments whose average salary exceeds ₹70,000.

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
GROUP BY department
HAVING AVG(salary) > 70000;
```

Result

| Department | Average Salary (₹) |
|------------|-------------------:|
| IT | 76000 |

Only the **IT** department has an average salary greater than ₹70,000.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

Create Groups

↓

AVG(Salary)

↓

HAVING AVG(Salary) > 70000

↓

Required Departments
```

---

## Memory Tip

> 🧠 **AVG() calculates the average. HAVING filters groups based on that average.**

```
Employees

↓

GROUP BY

↓

AVG()

↓

HAVING

↓

Required Groups
```

Think:

```
Group

↓

Calculate Average

↓

Filter Average

↓

Final Result
```

--------------------------------------------------

# HAVING with MIN()

## What is it?

The `MIN()` function is used with the `HAVING` clause to filter groups based on the **smallest value** in each group.

After `GROUP BY` creates the groups, `MIN()` finds the minimum value for every group, and `HAVING` returns only those groups whose minimum value satisfies the specified condition.

This combination is commonly used to identify groups where the lowest value meets a business requirement.

---

## Why do we need it?

Suppose a company wants to know:

- Which departments have a minimum salary less than ₹50,000?
- Which cities have an earliest joining date before 2021?
- Which departments have a minimum salary greater than ₹60,000?

These questions depend on the minimum value within each group.

Since the minimum value is calculated after grouping, the `HAVING` clause is required.

---

## Characteristics

- Works with numeric, date, and text columns.
- Filters groups based on the smallest value.
- Used after the `GROUP BY` clause.
- Frequently combined with `WHERE` for row-level filtering.
- Useful for salary analysis, inventory management, and reporting.

---

## Syntax

```sql
SELECT column_name,
       MIN(column_name)
FROM table_name
GROUP BY column_name
HAVING MIN(column_name) condition;
```

Example syntax:

```sql
SELECT department,
       MIN(salary)
FROM employees
GROUP BY department
HAVING MIN(salary) < 50000;
```

---

## Examples

### Example 1

Find departments whose minimum salary is less than ₹50,000.

```sql
SELECT department,
       MIN(salary)
FROM employees
GROUP BY department
HAVING MIN(salary) < 50000;
```

### Explanation

Employees are grouped by department. `MIN(salary)` finds the lowest salary in each department, and `HAVING` displays only departments where the minimum salary is below ₹50,000.

---

### Example 2

Find cities whose minimum salary is greater than ₹60,000.

```sql
SELECT city,
       MIN(salary)
FROM employees
GROUP BY city
HAVING MIN(salary) > 60000;
```

### Explanation

Employees are grouped by city. The minimum salary is calculated for each city, and only cities whose lowest salary is greater than ₹60,000 are displayed.

---

### Example 3

Find departments whose earliest joining date is before '2021-01-01'.

```sql
SELECT department,
       MIN(joining_date)
FROM employees
GROUP BY department
HAVING MIN(joining_date) < '2021-01-01';
```

### Explanation

`MIN(joining_date)` returns the earliest joining date in each department. `HAVING` keeps only departments where the earliest employee joined before 1 January 2021.

---

### Example 4

Find cities whose alphabetically first employee name starts before 'M'.

```sql
SELECT city,
       MIN(employee_name)
FROM employees
GROUP BY city
HAVING MIN(employee_name) < 'M';
```

### Explanation

`MIN(employee_name)` returns the alphabetically first employee name in each city. `HAVING` filters the cities based on that value.

---

### Example 5

Find departments whose minimum salary is greater than ₹60,000 considering only employees who joined after '2021-01-01'.

```sql
SELECT department,
       MIN(salary)
FROM employees
WHERE joining_date > '2021-01-01'
GROUP BY department
HAVING MIN(salary) > 60000;
```

### Explanation

The `WHERE` clause first filters employees who joined after 1 January 2021.

The remaining employees are grouped by department.

`MIN(salary)` finds the lowest salary in each department, and `HAVING` keeps only departments where the minimum salary is greater than ₹60,000.

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
GROUP BY department
HAVING MIN(salary) > 60000;
```

Result

| Department | Minimum Salary (₹) |
|------------|-------------------:|
| Finance | 62000 |
| IT | 68000 |

The **HR** department is not displayed because its minimum salary is ₹45,000, which does not satisfy the condition.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

Create Groups

↓

MIN(Salary)

↓

HAVING MIN(Salary) > 60000

↓

Required Departments
```

---

## Memory Tip

> 🧠 **MIN() finds the smallest value. HAVING filters groups based on that smallest value.**

```
Employees

↓

GROUP BY

↓

MIN()

↓

HAVING

↓

Required Groups
```

Think:

```
Group

↓

Find Minimum

↓

Filter Minimum

↓

Final Result
```

--------------------------------------------------

# HAVING with MAX()

## What is it?

The `MAX()` function is used with the `HAVING` clause to filter groups based on the **largest value** in each group.

After `GROUP BY` creates the groups, `MAX()` finds the highest value for every group, and `HAVING` returns only those groups whose maximum value satisfies the specified condition.

This combination is commonly used in salary analysis, sales reports, performance tracking, and business intelligence.

---

## Why do we need it?

Suppose a company wants to know:

- Which departments have a maximum salary greater than ₹80,000?
- Which cities have the latest joining date after 2022?
- Which departments have a highest salary less than ₹70,000?

These questions depend on the maximum value within each group.

Since the maximum value is calculated after grouping, the `HAVING` clause is required.

---

## Characteristics

- Works with numeric, date, and text columns.
- Filters groups based on the largest value.
- Used after the `GROUP BY` clause.
- Frequently combined with `WHERE`.
- Useful for identifying top-performing groups and maximum values.

---

## Syntax

```sql
SELECT column_name,
       MAX(column_name)
FROM table_name
GROUP BY column_name
HAVING MAX(column_name) condition;
```

Example syntax:

```sql
SELECT department,
       MAX(salary)
FROM employees
GROUP BY department
HAVING MAX(salary) > 80000;
```

---

## Examples

### Example 1

Find departments whose maximum salary is greater than ₹80,000.

```sql
SELECT department,
       MAX(salary)
FROM employees
GROUP BY department
HAVING MAX(salary) > 80000;
```

### Explanation

Employees are grouped by department. `MAX(salary)` finds the highest salary in each department, and `HAVING` displays only departments whose maximum salary is greater than ₹80,000.

---

### Example 2

Find cities whose maximum salary is less than ₹70,000.

```sql
SELECT city,
       MAX(salary)
FROM employees
GROUP BY city
HAVING MAX(salary) < 70000;
```

### Explanation

Employees are grouped by city. The maximum salary is calculated for each city, and only cities whose highest salary is below ₹70,000 are displayed.

---

### Example 3

Find departments whose latest joining date is after '2022-01-01'.

```sql
SELECT department,
       MAX(joining_date)
FROM employees
GROUP BY department
HAVING MAX(joining_date) > '2022-01-01';
```

### Explanation

`MAX(joining_date)` returns the most recent joining date in each department. `HAVING` keeps only departments where the latest employee joined after 1 January 2022.

---

### Example 4

Find cities whose alphabetically last employee name comes after 'R'.

```sql
SELECT city,
       MAX(employee_name)
FROM employees
GROUP BY city
HAVING MAX(employee_name) > 'R';
```

### Explanation

`MAX(employee_name)` returns the alphabetically last employee name in each city. `HAVING` filters the cities based on that value.

---

### Example 5

Find departments whose maximum salary is greater than ₹75,000 considering only employees who joined after '2021-01-01'.

```sql
SELECT department,
       MAX(salary)
FROM employees
WHERE joining_date > '2021-01-01'
GROUP BY department
HAVING MAX(salary) > 75000;
```

### Explanation

The `WHERE` clause first filters employees who joined after 1 January 2021.

The remaining employees are grouped by department.

`MAX(salary)` finds the highest salary in each department, and `HAVING` keeps only departments whose maximum salary exceeds ₹75,000.

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
GROUP BY department
HAVING MAX(salary) > 80000;
```

Result

| Department | Maximum Salary (₹) |
|------------|-------------------:|
| IT | 85000 |

Only the **IT** department is displayed because its maximum salary is greater than ₹80,000.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

Create Groups

↓

MAX(Salary)

↓

HAVING MAX(Salary) > 80000

↓

Required Departments
```

---

## Memory Tip

> 🧠 **MAX() finds the largest value. HAVING filters groups based on that largest value.**

```
Employees

↓

GROUP BY

↓

MAX()

↓

HAVING

↓

Required Groups
```

Think:

```
Group

↓

Find Maximum

↓

Filter Maximum

↓

Final Result
```

--------------------------------------------------

# HAVING with WHERE

## What is it?

The `WHERE` clause and the `HAVING` clause are often used together in a query, but they perform **different tasks**.

- `WHERE` filters **individual rows** before grouping.
- `HAVING` filters **groups** after Aggregate Functions have been calculated.

Using both clauses together allows you to first reduce the dataset and then filter the grouped results.

---

## Why do we need it?

Suppose a company wants to know:

- Which departments have more than two employees earning over ₹60,000?
- Which cities have an average salary greater than ₹70,000 considering only employees who joined after 2021?
- Which departments have a total salary greater than ₹2,00,000 after excluding employees earning less than ₹50,000?

These requirements involve:

1. Filtering individual rows.
2. Creating groups.
3. Applying Aggregate Functions.
4. Filtering the grouped results.

This is exactly where `WHERE` and `HAVING` are used together.

---

## Characteristics

- `WHERE` filters rows before grouping.
- `HAVING` filters groups after aggregation.
- `WHERE` cannot use Aggregate Functions.
- `HAVING` is mainly used with Aggregate Functions.
- Both clauses can be used in the same query.
- Improves performance by reducing unnecessary rows before grouping.

---

## Syntax

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
WHERE condition
GROUP BY column_name
HAVING AGGREGATE_FUNCTION(column_name) condition;
```

Example syntax:

```sql
SELECT department,
       COUNT(*)
FROM employees
WHERE salary > 60000
GROUP BY department
HAVING COUNT(*) > 2;
```

---

## Examples

### Example 1

Find departments having more than two employees earning above ₹60,000.

```sql
SELECT department,
       COUNT(*)
FROM employees
WHERE salary > 60000
GROUP BY department
HAVING COUNT(*) > 2;
```

### Explanation

The `WHERE` clause first removes employees earning ₹60,000 or less.

The remaining employees are grouped by department.

`COUNT(*)` counts the employees in each department, and `HAVING` displays only departments with more than two employees.

---

### Example 2

Find cities whose total salary is greater than ₹1,50,000 considering only employees who joined after '2021-01-01'.

```sql
SELECT city,
       SUM(salary)
FROM employees
WHERE joining_date > '2021-01-01'
GROUP BY city
HAVING SUM(salary) > 150000;
```

### Explanation

Employees who joined after 1 January 2021 are selected.

The remaining employees are grouped by city.

`SUM(salary)` calculates the total salary for each city, and `HAVING` returns only cities whose total salary exceeds ₹1,50,000.

---

### Example 3

Find departments whose average salary is greater than ₹70,000 considering only employees from Mumbai.

```sql
SELECT department,
       AVG(salary)
FROM employees
WHERE city = 'Mumbai'
GROUP BY department
HAVING AVG(salary) > 70000;
```

### Explanation

Only employees from Mumbai are considered.

They are grouped by department.

The average salary is calculated, and only departments with an average salary greater than ₹70,000 are displayed.

---

### Example 4

Find departments whose minimum salary is greater than ₹60,000 considering only employees who joined after '2020-01-01'.

```sql
SELECT department,
       MIN(salary)
FROM employees
WHERE joining_date > '2020-01-01'
GROUP BY department
HAVING MIN(salary) > 60000;
```

### Explanation

The `WHERE` clause filters employees based on their joining date.

After grouping by department, `MIN(salary)` finds the lowest salary in each department.

`HAVING` displays only departments where the minimum salary is greater than ₹60,000.

---

### Example 5

Find cities whose maximum salary is greater than ₹80,000 considering only employees earning above ₹50,000.

```sql
SELECT city,
       MAX(salary)
FROM employees
WHERE salary > 50000
GROUP BY city
HAVING MAX(salary) > 80000;
```

### Explanation

Employees earning ₹50,000 or less are removed.

The remaining employees are grouped by city.

`MAX(salary)` calculates the highest salary in each city, and `HAVING` returns only cities where the maximum salary exceeds ₹80,000.

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
WHERE salary > 60000
GROUP BY department
HAVING COUNT(*) > 2;
```

Result

| Department | Employees |
|------------|----------:|
| IT | 3 |

Only the **IT** department satisfies both conditions:

- Employees earn more than ₹60,000 (`WHERE`)
- The department has more than two such employees (`HAVING`)

---

## Workflow

```
Employees Table

↓

WHERE

(Filter Rows)

↓

GROUP BY Department

↓

Create Groups

↓

Aggregate Function

↓

HAVING

(Filter Groups)

↓

Final Result
```

---

## Memory Tip

> 🧠 **WHERE filters Rows. HAVING filters Groups.**

```
Employees

↓

WHERE

↓

Filtered Rows

↓

GROUP BY

↓

Groups

↓

Aggregate Function

↓

HAVING

↓

Required Groups
```

Think:

```
WHERE

↓

Before GROUP BY

↓

HAVING

↓

After GROUP BY
```

--------------------------------------------------

# HAVING with Multiple Conditions

## What is it?

The `HAVING` clause can contain **multiple conditions** using logical operators such as:

- `AND`
- `OR`
- `NOT`

These operators allow you to apply more than one condition to grouped data.

After `GROUP BY` creates the groups and Aggregate Functions calculate the required values, MySQL evaluates all the conditions in the `HAVING` clause and returns only the groups that satisfy them.

---

## Why do we need it?

Suppose a company wants to answer questions like:

- Which departments have more than 2 employees **and** an average salary greater than ₹70,000?
- Which cities have a total salary greater than ₹2,00,000 **or** more than 3 employees?
- Which departments do **not** have a minimum salary below ₹50,000?

These types of questions require multiple conditions.

The `HAVING` clause allows us to combine these conditions using logical operators.

---

## Characteristics

- Supports `AND`, `OR`, and `NOT`.
- Can use multiple Aggregate Functions in the same query.
- Filters groups after aggregation.
- Can be combined with `WHERE`, `ORDER BY`, and `LIMIT`.
- Makes reporting queries more flexible and powerful.

---

## Syntax

### Using AND

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition1
AND condition2;
```

---

### Using OR

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition1
OR condition2;
```

---

### Using NOT

```sql
SELECT column_name,
       AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING NOT condition;
```

---

## Examples

### Example 1

Find departments having more than two employees **and** an average salary greater than ₹70,000.

```sql
SELECT department,
       COUNT(*) AS total_employees,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 2
AND AVG(salary) > 70000;
```

### Explanation

Employees are grouped by department.

`COUNT(*)` calculates the number of employees, and `AVG(salary)` calculates the average salary.

Only departments satisfying **both** conditions are displayed.

---

### Example 2

Find cities having a total salary greater than ₹1,50,000 **or** more than two employees.

```sql
SELECT city,
       SUM(salary) AS total_salary,
       COUNT(*) AS total_employees
FROM employees
GROUP BY city
HAVING SUM(salary) > 150000
OR COUNT(*) > 2;
```

### Explanation

Each city is grouped separately.

If either the total salary exceeds ₹1,50,000 **or** the city has more than two employees, that city is returned.

---

### Example 3

Find departments whose minimum salary is at least ₹50,000 **and** maximum salary is greater than ₹80,000.

```sql
SELECT department,
       MIN(salary),
       MAX(salary)
FROM employees
GROUP BY department
HAVING MIN(salary) >= 50000
AND MAX(salary) > 80000;
```

### Explanation

`MIN(salary)` and `MAX(salary)` are calculated for each department.

Only departments satisfying both salary conditions are displayed.

---

### Example 4

Find cities that do **not** have an average salary below ₹60,000.

```sql
SELECT city,
       AVG(salary)
FROM employees
GROUP BY city
HAVING NOT AVG(salary) < 60000;
```

### Explanation

The average salary is calculated for each city.

`NOT` reverses the condition, so only cities with an average salary of ₹60,000 or more are displayed.

---

### Example 5

Find departments having more than one employee earning above ₹60,000 **and** a total salary greater than ₹1,50,000.

```sql
SELECT department,
       COUNT(*),
       SUM(salary)
FROM employees
WHERE salary > 60000
GROUP BY department
HAVING COUNT(*) > 1
AND SUM(salary) > 150000;
```

### Explanation

The `WHERE` clause first filters employees earning more than ₹60,000.

The remaining employees are grouped by department.

`COUNT(*)` and `SUM(salary)` are calculated, and `HAVING` returns only departments satisfying both conditions.

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
       COUNT(*) AS total_employees,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 2
AND AVG(salary) > 70000;
```

Result

| Department | Employees | Average Salary (₹) |
|------------|----------:|-------------------:|
| IT | 3 | 76000 |

The **IT** department satisfies both conditions:

- More than two employees.
- Average salary greater than ₹70,000.

---

## Workflow

```
Employees Table

↓

GROUP BY Department

↓

Create Groups

↓

Calculate Aggregate Functions

↓

Evaluate Multiple Conditions

↓

HAVING

↓

Required Groups
```

---

## Memory Tip

> 🧠 **HAVING can combine multiple conditions using `AND`, `OR`, and `NOT`.**

```
GROUP BY

↓

Aggregate Functions

↓

AND / OR / NOT

↓

HAVING

↓

Required Groups
```

Think:

```
Create Groups

↓

Calculate Values

↓

Check Multiple Conditions

↓

Return Matching Groups
```

--------------------------------------------------

# Execution Order

## What is it?

When a query contains the `HAVING` clause, MySQL does **not** execute the SQL statement from top to bottom.

Instead, it follows a fixed execution order.

Understanding this order helps you:

- Write correct SQL queries.
- Understand the difference between `WHERE` and `HAVING`.
- Avoid common SQL errors.
- Debug queries more easily.
- Improve query performance.

---

## Why do we need to understand the Execution Order?

Consider the following query:

```sql
SELECT department,
       COUNT(*) AS total_employees
FROM employees
WHERE salary > 50000
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY total_employees DESC;
```

Although `SELECT` appears first, MySQL actually performs several operations before displaying the result.

It first reads the table, filters rows, creates groups, calculates the aggregate values, filters the groups, selects the required columns, sorts the result, and finally returns the output.

---

## Execution Order with HAVING

When using the `HAVING` clause, MySQL executes the query in the following order:

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

Aggregate Functions perform calculations for every group.

Examples include:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

Example:

```sql
COUNT(*)
```

Counts the employees in each department.

---

### 5. HAVING

The `HAVING` clause filters the groups created by `GROUP BY`.

Example:

```sql
HAVING COUNT(*) > 2
```

Only departments having more than two employees are kept.

---

### 6. SELECT

The required columns and calculated values are displayed.

Example:

```sql
SELECT department,
       COUNT(*)
```

---

### 7. DISTINCT

If `DISTINCT` is used, duplicate rows are removed from the result.

---

### 8. ORDER BY

Sorts the final result.

Example:

```sql
ORDER BY COUNT(*) DESC
```

Departments are displayed from the highest employee count to the lowest.

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
       COUNT(*) AS total_employees
FROM employees
WHERE salary > 50000
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY total_employees DESC
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

COUNT(*)

↓

HAVING COUNT(*) > 2

↓

SELECT department,
COUNT(*)

↓

ORDER BY total_employees DESC

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

# HAVING Summary

The `HAVING` clause filters **groups** created by the `GROUP BY` clause.

Unlike the `WHERE` clause, which filters individual rows before grouping, `HAVING` filters groups after Aggregate Functions have been calculated.

It is commonly used with:

| Function | Purpose |
|----------|---------|
| `COUNT()` | Filters groups based on the number of rows |
| `SUM()` | Filters groups based on total values |
| `AVG()` | Filters groups based on average values |
| `MIN()` | Filters groups based on the smallest value |
| `MAX()` | Filters groups based on the largest value |

`HAVING` is widely used in reporting, business intelligence, dashboards, payroll analysis, sales reports, and data analytics.

--------------------------------------------------

# Summary

- `HAVING` filters grouped data.
- It is usually used with the `GROUP BY` clause.
- `HAVING` works with Aggregate Functions.
- `WHERE` filters rows before grouping.
- `HAVING` filters groups after aggregation.
- Multiple conditions can be written using `AND`, `OR`, and `NOT`.
- Understanding the execution order helps in writing accurate SQL queries.

---

# Best Practices

- Use `WHERE` to reduce unnecessary rows before grouping.
- Use `HAVING` only for conditions involving Aggregate Functions.
- Give meaningful aliases to aggregate columns.
- Keep grouped queries simple and easy to understand.
- Use `ORDER BY` to present grouped results in a meaningful order.
- Use `LIMIT` when only the top results are required.

---

# Common Mistakes

- Using Aggregate Functions in the `WHERE` clause.
- Confusing `WHERE` with `HAVING`.
- Forgetting to include `GROUP BY` when required.
- Assuming SQL executes clauses from top to bottom.
- Writing unnecessary conditions in the `HAVING` clause instead of the `WHERE` clause.

---

# Interview Questions

1. What is the purpose of the `HAVING` clause?
2. What is the difference between `WHERE` and `HAVING`?
3. Can `HAVING` be used without `GROUP BY`?
4. Why can't Aggregate Functions be used in the `WHERE` clause?
5. Which Aggregate Functions are commonly used with `HAVING`?
6. Can `WHERE` and `HAVING` be used together?
7. Explain the execution order of a query containing `HAVING`.
8. Can multiple conditions be written in the `HAVING` clause?
9. What is the difference between filtering rows and filtering groups?
10. Give a real-world example where the `HAVING` clause is useful.

---

# Key Takeaways

- `HAVING` filters groups, not rows.
- `HAVING` is evaluated after Aggregate Functions.
- `WHERE` and `HAVING` serve different purposes and often work together.
- Aggregate Functions such as `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()` are commonly used with `HAVING`.
- Understanding the execution order is essential for writing correct analytical SQL queries.

---

# What's Next?

In **Day 13**, you'll learn about **Operators and Expressions** in MySQL. You'll explore arithmetic, comparison, logical, and special operators, understand operator precedence, and learn how expressions are evaluated to build powerful SQL queries.
