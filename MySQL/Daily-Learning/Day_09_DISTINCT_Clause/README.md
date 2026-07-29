# Day 09 - DISTINCT Clause

## Introduction

In a database, multiple records can contain the same value in a column.

For example:

- Many employees may belong to the same department.
- Multiple employees may work in the same city.
- Several customers may belong to the same state.

If we retrieve data normally using the `SELECT` statement, MySQL returns **all matching rows**, including duplicate values.

The **DISTINCT** clause is used to **remove duplicate values** from the result and return only **unique records**.

The `DISTINCT` clause is commonly used in:

- Reports
- Data Analysis
- Dashboards
- Business Intelligence
- Data Cleaning

It helps reduce duplicate information and makes query results easier to understand.

---

## Learning Objectives

By the end of this lesson, you will be able to:

- Understand the purpose of the `DISTINCT` clause.
- Retrieve unique values from a column.
- Use `DISTINCT` on multiple columns.
- Combine `DISTINCT` with `WHERE`.
- Combine `DISTINCT` with `ORDER BY`.
- Understand how `DISTINCT` works internally.
- Learn the execution order involving `DISTINCT`.

---

## Table of Contents

1. What is the DISTINCT Clause?
2. Retrieving Unique Values
3. DISTINCT on Multiple Columns
4. DISTINCT with WHERE
5. DISTINCT with ORDER BY
6. How DISTINCT Works
7. Execution Order
8. DISTINCT Summary

---

# What is the DISTINCT Clause?

## What is it?

The **DISTINCT** clause is used to **remove duplicate values** from the result of a `SELECT` query.

Instead of returning every matching row, MySQL returns **only unique values**.

---

## Why do we need it?

Suppose an HR manager wants to know:

- Which departments exist in the company?
- Which cities do employees belong to?
- Which designations are available?

If the table contains multiple employees from the same department, MySQL will display the department name multiple times.

Using `DISTINCT` removes these duplicate values and returns each value only once.

---

## Characteristics

- Removes duplicate values.
- Returns only unique records.
- Works with the `SELECT` statement.
- Can be used on one or multiple columns.
- Frequently used in reporting and analytics.

---

## Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

---

## Examples

### Example 1

Display all unique departments.

```sql
SELECT DISTINCT department
FROM employees;
```

### Explanation

If multiple employees belong to the same department, the department name is displayed only once.

---

### Example 2

Display all unique cities.

```sql
SELECT DISTINCT city
FROM employees;
```

### Explanation

Each city appears only one time in the result.

---

### Example 3

Display all unique designations.

```sql
SELECT DISTINCT designation
FROM employees;
```

### Explanation

Duplicate designation names are removed, and only unique designations are displayed.

---

## Example Without DISTINCT

Suppose the table contains the following data:

| Employee | Department |
|----------|------------|
| Amit | HR |
| Priya | IT |
| Sneha | IT |
| Rohit | IT |
| Rahul | Finance |
| Anjali | HR |

Query:

```sql
SELECT department
FROM employees;
```

Result:

```
HR
IT
IT
IT
Finance
HR
```

Notice that duplicate values are displayed.

---

## Example With DISTINCT

Query:

```sql
SELECT DISTINCT department
FROM employees;
```

Result:

```
HR
IT
Finance
```

Duplicate department names are removed.

---

## Workflow

```
Employees Table

↓

SELECT Column

↓

Duplicate Values

↓

DISTINCT

↓

Unique Values
```

---

## Memory Tip

> 🧠 **DISTINCT = Remove Duplicates**

```
HR
IT
IT
Finance
HR

↓

DISTINCT

↓

HR
IT
Finance
```

Think:

```
DISTINCT

↓

Unique Values Only
```

---

# Retrieving Unique Values

## What is it?

The primary use of the `DISTINCT` clause is to retrieve **unique values** from a column.

If a column contains duplicate values, `DISTINCT` removes the duplicates and returns each value only once.

For example:

- Unique departments
- Unique cities
- Unique designations

This helps in getting a clean and concise list of available values.

---

## Why do we need it?

Suppose the HR department wants to know:

- How many departments are there?
- Which cities have employees?
- Which designations exist in the company?

Without `DISTINCT`, the same department or city may appear many times.

Using `DISTINCT` provides a list of unique values, making reports easier to read.

---

## Characteristics

- Removes duplicate values.
- Returns one occurrence of each value.
- Does not modify the data stored in the table.
- Useful for reporting and analysis.
- Can be combined with other SQL clauses.

---

## Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

---

## Examples

### Example 1

Display all unique departments.

```sql
SELECT DISTINCT department
FROM employees;
```

### Explanation

Every department is displayed only once, even if multiple employees belong to the same department.

---

### Example 2

Display all unique cities.

```sql
SELECT DISTINCT city
FROM employees;
```

### Explanation

Duplicate city names are removed, and only unique city names are returned.

---

### Example 3

Display all unique designations.

```sql
SELECT DISTINCT designation
FROM employees;
```

### Explanation

Each designation appears only once in the result.

---

### Example 4

Display all unique joining dates.

```sql
SELECT DISTINCT joining_date
FROM employees;
```

### Explanation

Only distinct joining dates are displayed.

If multiple employees joined on the same date, that date appears only once.

---

### Example 5

Display all unique salaries.

```sql
SELECT DISTINCT salary
FROM employees;
```

### Explanation

Duplicate salary values are removed.

Each different salary is displayed only once.

---

## Without DISTINCT vs With DISTINCT

Suppose the `department` column contains:

```
HR
IT
IT
Finance
Sales
HR
Marketing
Finance
```

### Without DISTINCT

```sql
SELECT department
FROM employees;
```

Result:

```
HR
IT
IT
Finance
Sales
HR
Marketing
Finance
```

---

### With DISTINCT

```sql
SELECT DISTINCT department
FROM employees;
```

Result:

```
HR
IT
Finance
Sales
Marketing
```

Notice that duplicate values have been removed.

---

## Workflow

```
Table

↓

SELECT Column

↓

Duplicate Values

↓

DISTINCT

↓

Unique Values
```

---

## Memory Tip

> 🧠 **DISTINCT Returns One Copy of Each Value**

```
HR
IT
IT
IT
Finance
HR

↓

DISTINCT

↓

HR
IT
Finance
```

Think:

```
Duplicate Values

↓

DISTINCT

↓

Unique Values
```

---

# DISTINCT on Multiple Columns

## What is it?

The `DISTINCT` clause can also be applied to **multiple columns**.

In this case, MySQL considers the **combination of all selected columns**.

Only duplicate combinations are removed.

---

## Why do we need it?

Suppose you want to know:

- Which department-city combinations exist?
- Which designation-city combinations exist?
- Which department-designation combinations are available?

Using `DISTINCT` on multiple columns returns only unique combinations.

---

## Characteristics

- Removes duplicate combinations.
- Considers all selected columns together.
- Does not remove duplicates from individual columns separately.
- Useful for generating unique reports.

---

## Syntax

```sql
SELECT DISTINCT column1,
                column2
FROM table_name;
```

---

## Examples

### Example 1

Display all unique department and city combinations.

```sql
SELECT DISTINCT department,
                city
FROM employees;
```

### Explanation

Each unique combination of department and city is displayed only once.

---

### Example 2

Display all unique department and designation combinations.

```sql
SELECT DISTINCT department,
                designation
FROM employees;
```

### Explanation

Duplicate department-designation pairs are removed.

---

### Example 3

Display all unique city and designation combinations.

```sql
SELECT DISTINCT city,
                designation
FROM employees;
```

### Explanation

Only unique city-designation combinations are returned.

---

### Example 4

Display all unique department, city, and designation combinations.

```sql
SELECT DISTINCT department,
                city,
                designation
FROM employees;
```

### Explanation

MySQL checks the complete combination of all three columns.

Only duplicate combinations are removed.

---

## Important Note

Suppose the table contains:

| Department | City |
|------------|------|
| IT | Pune |
| IT | Pune |
| IT | Mumbai |
| HR | Mumbai |
| HR | Mumbai |

Query:

```sql
SELECT DISTINCT department,
                city
FROM employees;
```

Result:

| Department | City |
|------------|------|
| IT | Pune |
| IT | Mumbai |
| HR | Mumbai |

Notice that MySQL removes duplicate **combinations**, not duplicate values from each individual column.

---

## Workflow

```
Multiple Columns

↓

Check Combination

↓

Remove Duplicate Combinations

↓

Return Unique Rows
```

---

## Memory Tip

> 🧠 **Multiple Columns = Unique Combination**

```
Department + City

↓

IT Pune

IT Pune

HR Mumbai

↓

DISTINCT

↓

IT Pune

HR Mumbai
```

Think:

```
DISTINCT

↓

Checks Entire Row Combination
```

---

# DISTINCT with WHERE

## What is it?

The `DISTINCT` clause can be combined with the **WHERE** clause to retrieve **unique values that satisfy a specific condition**.

The `WHERE` clause filters the rows first, and then `DISTINCT` removes duplicate values from the filtered result.

---

## Why do we need it?

Suppose an HR manager wants to know:

- Which cities have IT employees?
- Which departments have employees earning more than ₹70,000?
- Which designations are available in Mumbai?

Without `WHERE`, MySQL considers all rows.

By combining `WHERE` with `DISTINCT`, you can retrieve only the unique values that match your condition.

---

## Characteristics

- Filters records using `WHERE`.
- Removes duplicate values after filtering.
- Returns only unique matching values.
- Frequently used in reports and data analysis.
- Can be combined with multiple conditions.

---

## Syntax

```sql
SELECT DISTINCT column_name
FROM table_name
WHERE condition;
```

---

## Examples

### Example 1

Display all unique cities where IT employees work.

```sql
SELECT DISTINCT city
FROM employees
WHERE department = 'IT';
```

### Explanation

MySQL first selects employees from the IT department.

Then it removes duplicate city names.

---

### Example 2

Display all unique departments where employees earn more than ₹70,000.

```sql
SELECT DISTINCT department
FROM employees
WHERE salary > 70000;
```

### Explanation

Only employees with a salary greater than ₹70,000 are considered.

Duplicate department names are removed.

---

### Example 3

Display all unique designations in Mumbai.

```sql
SELECT DISTINCT designation
FROM employees
WHERE city = 'Mumbai';
```

### Explanation

MySQL filters employees from Mumbai.

Then it returns only unique designations.

---

### Example 4

Display all unique cities where employees joined after 2021-01-01.

```sql
SELECT DISTINCT city
FROM employees
WHERE joining_date > '2021-01-01';
```

### Explanation

Employees who joined after the specified date are selected.

Duplicate city names are removed.

---

### Example 5

Display all unique designations in the HR department.

```sql
SELECT DISTINCT designation
FROM employees
WHERE department = 'HR';
```

### Explanation

Only HR employees are considered.

Duplicate designation names are removed.

---

## Workflow

```
Employees Table

↓

WHERE

↓

Filtered Rows

↓

DISTINCT

↓

Unique Values
```

---

## Without WHERE vs With WHERE

### Without WHERE

```sql
SELECT DISTINCT city
FROM employees;
```

Result:

```
Mumbai
Pune
Delhi
Bengaluru
Hyderabad
Ahmedabad
Chennai
Kochi
```

All unique cities are returned.

---

### With WHERE

```sql
SELECT DISTINCT city
FROM employees
WHERE department = 'IT';
```

Result:

```
Pune
Bengaluru
Hyderabad
```

Only the unique cities where IT employees work are returned.

---

## Execution Order

When `DISTINCT` and `WHERE` are used together, MySQL processes the query as follows:

```
FROM

↓

WHERE

↓

SELECT

↓

DISTINCT

↓

Final Result
```

---

## Memory Tip

> 🧠 **Filter First, Remove Duplicates Later**

```
Employees

↓

WHERE

↓

Matching Rows

↓

DISTINCT

↓

Unique Values
```

Think:

```
WHERE

↓

Filter Data

↓

DISTINCT

↓

Remove Duplicates
```

---

# DISTINCT with ORDER BY

## What is it?

The `DISTINCT` clause can also be combined with the **ORDER BY** clause.

In this case:

- `DISTINCT` removes duplicate values.
- `ORDER BY` sorts the unique values.

This produces a clean and organized result.

---

## Why do we need it?

Suppose an HR manager wants to:

- Display all departments alphabetically.
- List all cities from A to Z.
- Show all designations in descending order.

Instead of displaying duplicate values, MySQL returns only unique values and arranges them in the specified order.

---

## Characteristics

- Removes duplicate values.
- Sorts the unique values.
- Supports ascending and descending order.
- Commonly used in reports and dashboards.
- Improves readability.

---

## Syntax

```sql
SELECT DISTINCT column_name
FROM table_name
ORDER BY column_name;
```

---

## Examples

### Example 1

Display all unique departments alphabetically.

```sql
SELECT DISTINCT department
FROM employees
ORDER BY department;
```

### Explanation

Duplicate department names are removed.

The remaining departments are sorted from A to Z.

---

### Example 2

Display all unique cities in descending order.

```sql
SELECT DISTINCT city
FROM employees
ORDER BY city DESC;
```

### Explanation

Unique city names are displayed from Z to A.

---

### Example 3

Display all unique designations alphabetically.

```sql
SELECT DISTINCT designation
FROM employees
ORDER BY designation;
```

### Explanation

Duplicate designation names are removed.

The remaining designations are sorted alphabetically.

---

### Example 4

Display all unique salaries from highest to lowest.

```sql
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC;
```

### Explanation

Duplicate salary values are removed.

The unique salaries are displayed from the highest to the lowest.

---

### Example 5

Display all unique department and city combinations sorted by department.

```sql
SELECT DISTINCT department,
                city
FROM employees
ORDER BY department;
```

### Explanation

Duplicate department-city combinations are removed.

The remaining combinations are sorted by department name.

---

## Workflow

```
Employees Table

↓

SELECT

↓

DISTINCT

↓

Unique Values

↓

ORDER BY

↓

Sorted Result
```

---

## Memory Tip

> 🧠 **Remove Duplicates First, Then Sort**

```
Duplicate Values

↓

DISTINCT

↓

Unique Values

↓

ORDER BY

↓

Sorted Output
```

Think:

```
DISTINCT

↓

Unique

↓

ORDER BY

↓

Arrange
```

---

# How DISTINCT Works

## What is it?

The `DISTINCT` clause removes **duplicate rows** from the result set.

When MySQL processes a query with `DISTINCT`, it compares the values in the selected column(s).

If two or more rows have the same value (or the same combination of values), MySQL keeps **only one** of them and removes the rest from the final output.

> **Important:** `DISTINCT` does **not** remove duplicate rows from the table. It only removes duplicates from the **query result**.

---

## Why do we need it?

Suppose the `employees` table contains many employees from the same department.

If you want to know **which departments exist**, displaying every department repeatedly is unnecessary.

Using `DISTINCT` provides a clean list containing each department only once.

---

## Characteristics

- Compares values in the selected column(s).
- Removes duplicate rows from the result set.
- Does not change the data stored in the table.
- Returns only unique values.
- Works on one or multiple columns.

---

## How MySQL Processes DISTINCT

Suppose the table contains:

| Employee | Department |
|----------|------------|
| Amit | HR |
| Priya | IT |
| Sneha | IT |
| Rohit | IT |
| Rahul | Finance |
| Anjali | HR |

Query:

```sql
SELECT DISTINCT department
FROM employees;
```

### Step 1

MySQL reads all department values.

```
HR
IT
IT
IT
Finance
HR
```

---

### Step 2

MySQL compares every value.

```
HR ✔

IT ✔

IT ✖ Duplicate

IT ✖ Duplicate

Finance ✔

HR ✖ Duplicate
```

---

### Step 3

Duplicate values are removed.

```
HR

IT

Finance
```

---

## Example 1

Display unique departments.

```sql
SELECT DISTINCT department
FROM employees;
```

### Explanation

MySQL compares all department names.

Only one occurrence of each department is returned.

---

## Example 2

Display unique cities.

```sql
SELECT DISTINCT city
FROM employees;
```

### Explanation

Duplicate city names are removed.

Only unique cities are displayed.

---

## Example 3

Display unique department and city combinations.

```sql
SELECT DISTINCT department,
                city
FROM employees;
```

### Explanation

MySQL compares the combination of both columns.

Rows are considered duplicates only if **both department and city are identical**.

---

## DISTINCT Does NOT Remove Individual Column Duplicates

Consider the following table:

| Department | City |
|------------|------|
| IT | Pune |
| IT | Mumbai |
| IT | Pune |
| HR | Mumbai |

Query:

```sql
SELECT DISTINCT department,
                city
FROM employees;
```

Result:

| Department | City |
|------------|------|
| IT | Pune |
| IT | Mumbai |
| HR | Mumbai |

Notice:

- `IT` appears twice.
- `Mumbai` appears twice.

This is correct because the **combination** is different.

`DISTINCT` checks the **entire selected row**, not each column separately.

---

## Workflow

```
Employees Table

↓

Read Selected Columns

↓

Compare Values

↓

Remove Duplicate Rows

↓

Return Unique Result
```

---

## Execution Process

```
Table

↓

SELECT Columns

↓

Compare Values

↓

Remove Duplicates

↓

Display Unique Rows
```

---

## Memory Tip

> 🧠 **DISTINCT Compares the Entire Selected Row**

```
IT   Pune

IT   Pune

HR   Mumbai

↓

DISTINCT

↓

IT   Pune

HR   Mumbai
```

Think:

```
Read

↓

Compare

↓

Remove Duplicates

↓

Return Unique Rows
```

---

# Execution Order

When a query contains the `DISTINCT` clause along with other SQL clauses, MySQL follows a specific execution order.

It does **not** execute the query from top to bottom as it is written.

Understanding this order helps you write accurate SQL queries.

---

## Execution Order of DISTINCT

```
FROM

↓

WHERE

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

## Step 1 — FROM

MySQL identifies the table from which the data should be retrieved.

Example:

```sql
SELECT DISTINCT department
FROM employees;
```

### Explanation

MySQL first reads the `employees` table.

---

## Step 2 — WHERE

If a `WHERE` clause is present, MySQL filters the rows.

Example:

```sql
SELECT DISTINCT department
FROM employees
WHERE salary > 70000;
```

### Explanation

Only employees with a salary greater than ₹70,000 are considered.

---

## Step 3 — SELECT

MySQL selects the required column(s).

Example:

```sql
SELECT DISTINCT department
FROM employees;
```

### Explanation

Only the `department` column is selected.

---

## Step 4 — DISTINCT

MySQL compares the selected values and removes duplicates.

Example:

```sql
SELECT DISTINCT department
FROM employees;
```

### Explanation

Duplicate department names are eliminated.

---

## Step 5 — ORDER BY

If `ORDER BY` is present, MySQL sorts the unique values.

Example:

```sql
SELECT DISTINCT department
FROM employees
ORDER BY department;
```

### Explanation

Unique departments are sorted alphabetically.

---

## Step 6 — LIMIT

Finally, if `LIMIT` is used, MySQL returns only the specified number of rows.

Example:

```sql
SELECT DISTINCT department
FROM employees
ORDER BY department
LIMIT 3;
```

### Explanation

After removing duplicates and sorting the result, MySQL returns the first three departments.

---

## Complete Workflow

```
Employees Table

↓

FROM

↓

WHERE

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

> 🧠 **Remember the Execution Order**

```
FROM

↓

WHERE

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
Read Table

↓

Filter Rows

↓

Select Columns

↓

Remove Duplicates

↓

Sort

↓

Limit Results
```

---

# DISTINCT Summary

The `DISTINCT` clause is used to retrieve **unique values** from one or more columns.

It removes duplicate rows from the query result, making the output cleaner and easier to analyze.

`DISTINCT` is commonly used in reports, dashboards, and data analysis to identify unique departments, cities, designations, and other values.

---

## Key Points

- `DISTINCT` removes duplicate values from the query result.
- It does **not** modify the data stored in the table.
- It can be used with one or multiple columns.
- When multiple columns are selected, `DISTINCT` checks the entire combination of values.
- `DISTINCT` can be combined with `WHERE`, `ORDER BY`, and `LIMIT`.
- MySQL removes duplicates before sorting the result.

---

## Summary

In this chapter, you learned how to use the `DISTINCT` clause to retrieve unique values from a table.

You also learned:

- Retrieving unique values
- Using `DISTINCT` on multiple columns
- Combining `DISTINCT` with `WHERE`
- Combining `DISTINCT` with `ORDER BY`
- Understanding how `DISTINCT` works internally
- Learning the execution order involving `DISTINCT`

The `DISTINCT` clause is one of the most commonly used SQL clauses for eliminating duplicate values and generating meaningful reports.

---

## Best Practices

- Use `DISTINCT` only when duplicate values need to be removed.
- Combine `DISTINCT` with `WHERE` to retrieve unique filtered data.
- Use `ORDER BY` to display unique values in a meaningful order.
- Apply `DISTINCT` to only the required columns.
- Remember that `DISTINCT` checks the entire selected row when multiple columns are used.

---

## Common Mistakes

- Assuming `DISTINCT` removes duplicate rows from the table.
- Thinking `DISTINCT` removes duplicates from each selected column individually.
- Using `DISTINCT` unnecessarily when the data is already unique.
- Forgetting that column combinations determine uniqueness when multiple columns are selected.
- Confusing `DISTINCT` with the `GROUP BY` clause.

---

## Interview Questions

1. What is the purpose of the `DISTINCT` clause?
2. How does `DISTINCT` remove duplicate values?
3. What is the difference between `SELECT` and `SELECT DISTINCT`?
4. Can `DISTINCT` be used with multiple columns?
5. What happens when `DISTINCT` is combined with `WHERE`?
6. Can `DISTINCT` be used with `ORDER BY`?
7. What is the execution order when using `DISTINCT`, `WHERE`, and `ORDER BY`?
8. Does `DISTINCT` modify the original table?
9. What is the difference between `DISTINCT` and `GROUP BY`?
10. When should you use the `DISTINCT` clause?

---

## Key Takeaways

- `DISTINCT` returns only unique values.
- Duplicate rows are removed from the query result, not from the table.
- When multiple columns are selected, uniqueness is based on the complete combination of those columns.
- `DISTINCT` works seamlessly with `WHERE`, `ORDER BY`, and `LIMIT`.
- Understanding how `DISTINCT` works helps you write cleaner and more efficient SQL queries.

---

## What's Next?

In the next lesson, you will learn about the **Aggregate Functions** in MySQL, including:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

These functions are used to perform calculations on groups of rows and are essential for data analysis and reporting.

