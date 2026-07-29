# Day 08 - LIMIT Clause

## Introduction

When working with databases, tables can contain thousands or even millions of records. In many situations, you do **not** need to retrieve every row from the table.

For example, you may want to:

- Display only the first 5 employees.
- Show the top 10 highest-paid employees.
- Retrieve only the newest employee.
- Display records one page at a time in a web application.

The **LIMIT** clause is used to **restrict the number of rows returned** by a query.

Instead of returning the complete result set, MySQL returns only the specified number of rows.

The `LIMIT` clause is commonly used in:

- Dashboards
- Reports
- Search Results
- Pagination
- Top-N Queries

It improves both performance and readability by reducing the amount of data returned.

---

## Learning Objectives

By the end of this lesson, you will be able to:

- Understand the purpose of the `LIMIT` clause.
- Retrieve the first N rows.
- Retrieve a single row.
- Use `LIMIT` with `ORDER BY`.
- Skip rows using `OFFSET`.
- Implement pagination.
- Understand the execution order involving `LIMIT`.

---

## Table of Contents

1. What is the LIMIT Clause?
2. Retrieving the First N Rows
3. Retrieving a Single Row
4. LIMIT with ORDER BY
5. LIMIT with OFFSET
6. Pagination using LIMIT
7. Execution Order
8. LIMIT Summary

---

# What is the LIMIT Clause?

## What is it?

The **LIMIT** clause is used to **restrict the number of rows returned** by a `SELECT` query.

Instead of displaying every matching record, MySQL returns only the specified number of rows.

---

## Why do we need it?

Suppose an HR manager wants to:

- Display the first 5 employees.
- Retrieve only one employee.
- Show the top 10 highest-paid employees.
- Display a small sample of data.

Returning all rows is unnecessary in these situations.

The `LIMIT` clause makes the query faster and easier to read by returning only the required records.

---

## Characteristics

- Restricts the number of rows returned.
- Works only with the `SELECT` statement.
- Improves query performance.
- Frequently used with `ORDER BY`.
- Supports pagination using `OFFSET`.

---

## Syntax

```sql
SELECT column_name
FROM table_name
LIMIT number_of_rows;
```

---

## Examples

### Example 1

Display the first five employees.

```sql
SELECT *
FROM employees
LIMIT 5;
```

### Explanation

MySQL returns only the first five rows from the result set.

---

### Example 2

Display the first three employee names.

```sql
SELECT employee_name
FROM employees
LIMIT 3;
```

### Explanation

Only the first three employee names are returned.

---

### Example 3

Display the first seven employee IDs.

```sql
SELECT employee_id
FROM employees
LIMIT 7;
```

### Explanation

Only the first seven employee IDs are displayed.

---

## Memory Tip

> 🧠 **LIMIT = Restrict the Number of Rows**

```
100 Rows

↓

LIMIT 5

↓

5 Rows Returned
```

Think:

```
LIMIT

↓

Keep Only

↓

Required Rows
```

---

# Retrieving the First N Rows

## What is it?

The **LIMIT** clause allows you to retrieve the **first N rows** from a table.

Here, **N** represents the number of rows you want MySQL to return.

For example:

- First 5 employees
- First 10 products
- First 20 customers

Instead of displaying every record, MySQL stops after returning the specified number of rows.

---

## Why do we need it?

Suppose an HR manager wants to:

- View the first 5 employees.
- Display the first 10 newly added records.
- Check only a small sample of employee data.

Displaying every employee may be unnecessary.

Using `LIMIT` makes the result smaller and easier to analyze.

---

## Characteristics

- Returns only the specified number of rows.
- Starts from the first row of the result set.
- Does not sort the data by itself.
- Commonly combined with `ORDER BY`.
- Improves performance for large datasets.

---

## Syntax

```sql
SELECT column_name
FROM table_name
LIMIT N;
```

Where:

- **N** = Number of rows to return.

---

## Examples

### Example 1

Display the first five employees.

```sql
SELECT *
FROM employees
LIMIT 5;
```

### Explanation

MySQL returns only the first five rows from the table.

---

### Example 2

Display the first three employee names.

```sql
SELECT employee_name
FROM employees
LIMIT 3;
```

### Explanation

Only the first three employee names are displayed.

---

### Example 3

Display the first four employees from the IT department.

```sql
SELECT *
FROM employees
WHERE department = 'IT'
LIMIT 4;
```

### Explanation

MySQL first filters employees belonging to the IT department.

Then it returns only the first four matching records.

---

### Example 4

Display the first two employees from Mumbai.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city = 'Mumbai'
LIMIT 2;
```

### Explanation

Only the first two employees from Mumbai are returned.

---

## Workflow

```
Table

↓

WHERE (Optional)

↓

Matching Rows

↓

LIMIT N

↓

First N Rows Returned
```

---

## Memory Tip

> 🧠 **LIMIT N = Return Only N Rows**

```
100 Rows

↓

LIMIT 10

↓

10 Rows Returned
```

Think:

```
LIMIT

↓

Stop After N Rows
```

---

# Retrieving a Single Row

## What is it?

If you want to retrieve **only one row**, you can use:

```sql
LIMIT 1;
```

This is one of the most commonly used forms of the `LIMIT` clause.

---

## Why do we need it?

Suppose you want to:

- Display only one employee.
- Retrieve the highest-paid employee.
- Find the newest employee.
- Display just one matching record.

Instead of returning multiple rows, `LIMIT 1` returns only one row.

---

## Characteristics

- Returns exactly one row.
- Commonly used with `ORDER BY`.
- Frequently used in reports and dashboards.
- Improves query performance.

---

## Syntax

```sql
SELECT column_name
FROM table_name
LIMIT 1;
```

---

## Examples

### Example 1

Display only one employee.

```sql
SELECT *
FROM employees
LIMIT 1;
```

### Explanation

Only the first row from the table is returned.

---

### Example 2

Display one employee from the HR department.

```sql
SELECT *
FROM employees
WHERE department = 'HR'
LIMIT 1;
```

### Explanation

MySQL finds employees belonging to the HR department.

It then returns only the first matching employee.

---

### Example 3

Display one employee from Pune.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city = 'Pune'
LIMIT 1;
```

### Explanation

Only one employee from Pune is displayed.

---

### Example 4

Display the employee with the highest salary.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 1;
```

### Explanation

MySQL first sorts employees from the highest salary to the lowest.

Then `LIMIT 1` returns only the first employee.

---

## Workflow

```
Table

↓

WHERE (Optional)

↓

ORDER BY (Optional)

↓

LIMIT 1

↓

One Row Returned
```

---

## Memory Tip

> 🧠 **LIMIT 1 = Return Only One Row**

```
100 Rows

↓

LIMIT 1

↓

1 Row Returned
```

Think:

```
LIMIT 1

↓

One Record Only
```

---

# LIMIT with ORDER BY

## What is it?

The `LIMIT` clause is most powerful when used together with the **ORDER BY** clause.

- `ORDER BY` arranges the data.
- `LIMIT` returns only the required number of rows.

This combination is commonly used to retrieve:

- Highest-paid employees
- Lowest-paid employees
- Newest employees
- Oldest employees
- Top N records

---

## Why do we need it?

Suppose an HR manager wants to answer questions like:

- Who is the highest-paid employee?
- Show the top 3 highest salaries.
- Display the newest 5 employees.
- Find the two employees with the lowest salaries.

Without `ORDER BY`, `LIMIT` simply returns the first few rows in the table, which may not be the required records.

Using `ORDER BY` ensures that the correct rows are returned before applying the limit.

---

## Characteristics

- `ORDER BY` sorts the result set.
- `LIMIT` restricts the number of rows returned.
- `ORDER BY` is executed before `LIMIT`.
- Frequently used in reports and dashboards.
- Commonly used for Top-N queries.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name
LIMIT number_of_rows;
```

---

## Workflow

```
Table

↓

ORDER BY

↓

Sorted Data

↓

LIMIT

↓

Required Rows
```

---

## Examples

### Example 1

Display the highest-paid employee.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 1;
```

### Explanation

MySQL first sorts employees by salary in descending order.

After sorting, only the first employee is returned.

---

### Example 2

Display the top three highest-paid employees.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
```

### Explanation

Employees are sorted from the highest salary to the lowest.

The first three employees are displayed.

---

### Example 3

Display the five employees with the lowest salaries.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary ASC
LIMIT 5;
```

### Explanation

Employees are sorted from the lowest salary to the highest.

The first five employees are returned.

---

### Example 4

Display the two newest employees.

```sql
SELECT employee_name,
       joining_date
FROM employees
ORDER BY joining_date DESC
LIMIT 2;
```

### Explanation

Employees are sorted from the newest joining date to the oldest.

Only the first two employees are displayed.

---

### Example 5

Display the first four employees alphabetically.

```sql
SELECT employee_name
FROM employees
ORDER BY employee_name ASC
LIMIT 4;
```

### Explanation

Employees are sorted alphabetically from A to Z.

The first four employee names are returned.

---

### Example 6

Display the three employees with the earliest joining dates.

```sql
SELECT employee_name,
       joining_date
FROM employees
ORDER BY joining_date ASC
LIMIT 3;
```

### Explanation

Employees are sorted from the oldest joining date to the newest.

The first three employees are displayed.

---

## Why is ORDER BY Important?

Consider the following query:

```sql
SELECT *
FROM employees
LIMIT 3;
```

This query simply returns the first three rows from the table.

Now compare it with:

```sql
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;
```

This query returns the **three employees with the highest salaries**.

The difference is that the data is sorted **before** the limit is applied.

---

## Execution Order

When both clauses are used together, MySQL processes them like this:

```
SELECT

↓

FROM

↓

WHERE (Optional)

↓

ORDER BY

↓

LIMIT

↓

Final Result
```

---

## Memory Tip

> 🧠 **Sort First, Limit Later**

```
ORDER BY

↓

Arrange Rows

↓

LIMIT

↓

Return Required Rows
```

Think:

```
Highest Salary

↓

ORDER BY salary DESC

↓

LIMIT 1

↓

Highest Paid Employee
```

---

# LIMIT with ORDER BY Summary

| Requirement | Query |
|-------------|-------|
| Highest salary | `ORDER BY salary DESC LIMIT 1` |
| Lowest salary | `ORDER BY salary ASC LIMIT 1` |
| Top 5 salaries | `ORDER BY salary DESC LIMIT 5` |
| Lowest 3 salaries | `ORDER BY salary ASC LIMIT 3` |
| Newest employee | `ORDER BY joining_date DESC LIMIT 1` |
| Oldest employee | `ORDER BY joining_date ASC LIMIT 1` |

---

## Memory Tip

> 🧠 **Remember This Rule**

```
ORDER BY

↓

Sort

↓

LIMIT

↓

Take Top Rows
```

Always remember:

- `ORDER BY` determines **which rows come first**.
- `LIMIT` determines **how many rows are returned**.
- Without `ORDER BY`, `LIMIT` simply returns the first rows stored in the table, which may not be the rows you actually want.

---

# LIMIT with OFFSET

## What is it?

By default, the `LIMIT` clause returns rows starting from the **first row** of the result set.

Sometimes, you may want to:

- Skip the first few rows.
- Display the next set of rows.
- Retrieve records page by page.

The **OFFSET** clause is used to **skip a specified number of rows** before returning the remaining rows.

---

## Why do we need it?

Suppose an HR manager wants to:

- Skip the first 10 employees and display the next 5.
- View the second page of employee records.
- Retrieve records in batches.

Without `OFFSET`, MySQL always starts from the first row.

Using `OFFSET` allows you to start from any position in the result set.

---

## Characteristics

- Skips a specified number of rows.
- Usually used together with `LIMIT`.
- Frequently used for pagination.
- Works with or without `ORDER BY`.
- `OFFSET` starts counting from **0**.

---

## Syntax

```sql
SELECT column_name
FROM table_name
LIMIT number_of_rows OFFSET rows_to_skip;
```

---

## Alternative MySQL Syntax

MySQL also supports another syntax.

```sql
SELECT column_name
FROM table_name
LIMIT rows_to_skip,
      number_of_rows;
```

Both queries return the same result.

---

## How OFFSET Works

Suppose we have the following employee IDs.

```
101
102
103
104
105
106
107
108
109
110
```

Now execute:

```sql
LIMIT 3 OFFSET 2;
```

MySQL performs the following steps:

```
Skip

101
102

↓

Return

103
104
105
```

---

## Examples

### Example 1

Display three employees after skipping the first two employees.

```sql
SELECT *
FROM employees
LIMIT 3 OFFSET 2;
```

### Explanation

MySQL skips the first two rows.

Then it returns the next three rows.

---

### Example 2

Display four employee names after skipping the first three employees.

```sql
SELECT employee_name
FROM employees
LIMIT 4 OFFSET 3;
```

### Explanation

The first three employee names are skipped.

The next four employee names are displayed.

---

### Example 3

Display three highest-paid employees after skipping the highest-paid employee.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 3 OFFSET 1;
```

### Explanation

MySQL first sorts employees from the highest salary to the lowest.

It skips the first employee.

Then it displays the next three employees.

---

### Example 4

Display two employees after skipping the first three employees alphabetically.

```sql
SELECT employee_name
FROM employees
ORDER BY employee_name
LIMIT 2 OFFSET 3;
```

### Explanation

Employees are sorted alphabetically.

The first three names are skipped.

The next two names are displayed.

---

### Example 5

Using MySQL's alternative syntax.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 2, 4;
```

### Explanation

The query skips the first two rows.

Then it returns the next four rows.

It is equivalent to:

```sql
LIMIT 4 OFFSET 2;
```

---

## LIMIT vs LIMIT with OFFSET

| Query | Result |
|--------|--------|
| `LIMIT 5` | Returns the first 5 rows |
| `LIMIT 5 OFFSET 2` | Skips 2 rows and returns the next 5 rows |
| `LIMIT 2, 5` | Skips 2 rows and returns the next 5 rows |

---

## Execution Order

When `ORDER BY`, `LIMIT`, and `OFFSET` are used together, MySQL processes them as follows:

```
SELECT

↓

FROM

↓

WHERE

↓

ORDER BY

↓

OFFSET

↓

LIMIT

↓

Final Result
```

---

## Memory Tip

> 🧠 **OFFSET = Skip Rows**

```
10 Rows

↓

OFFSET 3

↓

Skip First 3 Rows

↓

LIMIT 4

↓

Return Next 4 Rows
```

Think:

```
OFFSET

↓

Skip

↓

LIMIT

↓

Return
```

---

# OFFSET Starts from Zero

Remember that `OFFSET` starts counting from **0**.

| OFFSET | Starts From |
|---------|-------------|
| `OFFSET 0` | First row |
| `OFFSET 1` | Second row |
| `OFFSET 2` | Third row |
| `OFFSET 5` | Sixth row |

Example:

```sql
LIMIT 1 OFFSET 0;
```

Returns the **first row**.

Example:

```sql
LIMIT 1 OFFSET 4;
```

Returns the **fifth row**.

---

## Memory Tip

> 🧠 **OFFSET Counts Skipped Rows**

```
OFFSET 0

↓

Skip Nothing

↓

Start at Row 1

--------------------

OFFSET 2

↓

Skip 2 Rows

↓

Start at Row 3
```

Always remember:

- `LIMIT` decides **how many** rows to return.
- `OFFSET` decides **where to start**.
- `ORDER BY` should usually be used with `LIMIT` and `OFFSET` to ensure consistent and predictable results.

---

# Pagination using LIMIT

## What is Pagination?

**Pagination** is the process of dividing a large result set into **smaller pages**.

Instead of displaying thousands of records at once, the data is displayed page by page.

For example:

- Page 1 → Employees 1–10
- Page 2 → Employees 11–20
- Page 3 → Employees 21–30

Pagination makes applications faster and improves the user experience.

---

## Why do we need Pagination?

Imagine an `employees` table containing **50,000 records**.

Displaying all 50,000 records at once would:

- Take more time to load.
- Consume more memory.
- Make the page difficult to navigate.
- Reduce application performance.

Instead, we display a small number of records per page using `LIMIT` and `OFFSET`.

---

## Characteristics

- Displays data page by page.
- Uses both `LIMIT` and `OFFSET`.
- Commonly used in websites and mobile applications.
- Improves performance.
- Makes navigation easier.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name
LIMIT rows_per_page OFFSET rows_to_skip;
```

---

## How Pagination Works

Suppose we display **5 employees per page**.

```
Employees Table

101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
```

### Page 1

```
LIMIT 5 OFFSET 0

↓

101
102
103
104
105
```

---

### Page 2

```
LIMIT 5 OFFSET 5

↓

106
107
108
109
110
```

---

### Page 3

```
LIMIT 5 OFFSET 10

↓

111
112
113
114
115
```

---

## Formula for Pagination

The number of rows to skip is calculated using:

```
OFFSET = (Page Number − 1) × Rows Per Page
```

Example:

If each page displays **10 rows**:

| Page | OFFSET |
|------|--------|
| 1 | 0 |
| 2 | 10 |
| 3 | 20 |
| 4 | 30 |
| 5 | 40 |

---

## Examples

### Example 1

Display the first page containing five employees.

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 5 OFFSET 0;
```

### Explanation

No rows are skipped.

The first five employees are displayed.

---

### Example 2

Display the second page containing five employees.

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 5 OFFSET 5;
```

### Explanation

The first five rows are skipped.

The next five employees are returned.

---

### Example 3

Display the third page containing five employees.

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 5 OFFSET 10;
```

### Explanation

The first ten rows are skipped.

The next five rows are returned.

---

### Example 4

Display page 2 of employees ordered by salary.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 5 OFFSET 5;
```

### Explanation

Employees are first sorted from the highest salary to the lowest.

The first five employees are skipped.

The next five employees are displayed.

---

### Example 5

Display page 3 of employees ordered alphabetically.

```sql
SELECT employee_name
FROM employees
ORDER BY employee_name
LIMIT 4 OFFSET 8;
```

### Explanation

Employees are sorted alphabetically.

The first eight names are skipped.

The next four employee names are displayed.

---

## Real-World Examples

### Employee Management System

```
Page 1

↓

First 20 Employees

---------------------

Page 2

↓

Next 20 Employees

---------------------

Page 3

↓

Next 20 Employees
```

---

### E-Commerce Website

```
Page 1

↓

Products 1–20

---------------------

Page 2

↓

Products 21–40

---------------------

Page 3

↓

Products 41–60
```

---

### Banking Application

```
Page 1

↓

Latest 10 Transactions

---------------------

Page 2

↓

Next 10 Transactions

---------------------

Page 3

↓

Next 10 Transactions
```

---

## Workflow

```
Table

↓

ORDER BY

↓

OFFSET

↓

LIMIT

↓

Page of Results
```

---

## Best Practice

> 💡 Always use **`ORDER BY`** with pagination.

Without `ORDER BY`, the order of rows is **not guaranteed**, so the same record may appear on multiple pages or be skipped entirely.

**Recommended:**

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 10 OFFSET 20;
```

**Not Recommended:**

```sql
SELECT *
FROM employees
LIMIT 10 OFFSET 20;
```

---

## Memory Tip

> 🧠 **Pagination = LIMIT + OFFSET**

```
LIMIT

↓

Rows Per Page

+

OFFSET

↓

Rows to Skip

=

One Page of Results
```

Think:

```
Page Number

↓

Calculate OFFSET

↓

LIMIT

↓

Display That Page
```

---

# Execution Order

When a query contains multiple clauses, MySQL does **not** execute them in the same order in which they are written.

Instead, MySQL follows a specific execution sequence.

Understanding this sequence helps you predict how a query works and avoid logical mistakes.

---

## Why do we need to know the Execution Order?

Suppose you write the following query:

```sql
SELECT employee_name,
       salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 3;
```

You might think MySQL executes the query from top to bottom.

However, MySQL actually processes the query in a different order.

Knowing the execution order helps you understand why the query returns a particular result.

---

## Execution Order of a SELECT Query

MySQL processes the query in the following order:

```
FROM

↓

WHERE

↓

SELECT

↓

ORDER BY

↓

LIMIT

↓

Final Result
```

Let's understand each step.

---

## Step 1 — FROM

MySQL first identifies the table from which the data should be retrieved.

Example:

```sql
SELECT *
FROM employees;
```

### Explanation

MySQL first locates the `employees` table.

---

## Step 2 — WHERE

After reading the table, MySQL filters the rows that satisfy the given condition.

Example:

```sql
SELECT *
FROM employees
WHERE department = 'IT';
```

### Explanation

Only employees from the IT department are kept.

All other rows are discarded.

---

## Step 3 — SELECT

After filtering, MySQL selects the required columns.

Example:

```sql
SELECT employee_name,
       salary
FROM employees
WHERE department = 'IT';
```

### Explanation

Only the `employee_name` and `salary` columns are returned for the filtered rows.

---

## Step 4 — ORDER BY

Next, MySQL sorts the remaining rows.

Example:

```sql
SELECT employee_name,
       salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;
```

### Explanation

The filtered employees are arranged from the highest salary to the lowest salary.

---

## Step 5 — LIMIT

Finally, MySQL returns only the required number of rows.

Example:

```sql
SELECT employee_name,
       salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 3;
```

### Explanation

After sorting the IT employees by salary, MySQL returns only the first three employees.

---

## Complete Workflow

Suppose the table contains:

| Employee | Department | Salary |
|-----------|------------|--------|
| Amit | HR | 45000 |
| Priya | IT | 75000 |
| Rahul | Finance | 62000 |
| Sneha | IT | 68000 |
| Rohit | IT | 85000 |

Query:

```sql
SELECT employee_name,
       salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 2;
```

### Step 1

```
FROM

↓

employees Table
```

---

### Step 2

```
WHERE department = 'IT'

↓

Priya
Sneha
Rohit
```

---

### Step 3

```
SELECT

↓

employee_name
salary
```

---

### Step 4

```
ORDER BY salary DESC

↓

Rohit 85000

↓

Priya 75000

↓

Sneha 68000
```

---

### Step 5

```
LIMIT 2

↓

Rohit

Priya
```

---

## Visual Representation

```
Employees Table

↓

FROM

↓

WHERE

↓

Matching Rows

↓

SELECT

↓

Required Columns

↓

ORDER BY

↓

Sorted Rows

↓

LIMIT

↓

Final Result
```

---

## Common Mistake

Many beginners think this query:

```sql
SELECT *
FROM employees
LIMIT 5
ORDER BY salary DESC;
```

is valid.

It is **incorrect** because `ORDER BY` must come **before** `LIMIT`.

The correct query is:

```sql
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;
```

---

## Memory Tip

> 🧠 **Remember the Order**

```
FROM

↓

WHERE

↓

SELECT

↓

ORDER BY

↓

LIMIT
```

Think of it as:

```
Find the Table

↓

Filter Rows

↓

Choose Columns

↓

Sort Data

↓

Return Required Rows
```

---

# LIMIT Summary

The `LIMIT` clause is used to restrict the number of rows returned by a query.

It is commonly used with `ORDER BY` to retrieve the highest, lowest, newest, or oldest records.

When combined with `OFFSET`, it enables pagination by skipping a specified number of rows before returning the remaining records.

---

## Key Points

- `LIMIT` restricts the number of rows returned.
- `LIMIT 1` returns a single row.
- `ORDER BY` should usually be used with `LIMIT`.
- `OFFSET` skips rows before returning data.
- Pagination is implemented using `LIMIT` and `OFFSET`.
- MySQL executes `ORDER BY` before `LIMIT`.

---

## Summary

In this chapter, you learned how to use the `LIMIT` clause to control the number of rows returned by a query.

You also learned:

- Retrieving the first N rows
- Returning a single row
- Using `LIMIT` with `ORDER BY`
- Skipping rows using `OFFSET`
- Implementing pagination
- Understanding the execution order of a query

The `LIMIT` clause is one of the most frequently used clauses in SQL and is essential for writing efficient queries in real-world applications.

---

## Best Practices

- Always use `ORDER BY` with `LIMIT` when the order of records matters.
- Use `LIMIT 1` to retrieve a single record efficiently.
- Use `OFFSET` for pagination.
- Sort the data before applying `LIMIT`.
- Keep pagination sizes consistent across applications.

---

## Common Mistakes

- Using `LIMIT` without `ORDER BY` when expecting specific records.
- Writing `LIMIT` before `ORDER BY`.
- Confusing `LIMIT` with `OFFSET`.
- Forgetting that `OFFSET` starts from 0.
- Assuming `LIMIT` changes the data stored in the table.

---

## Interview Questions

1. What is the purpose of the `LIMIT` clause?
2. What is the difference between `LIMIT` and `OFFSET`?
3. Why is `ORDER BY` commonly used with `LIMIT`?
4. How does pagination work in MySQL?
5. What is the execution order of `SELECT`, `WHERE`, `ORDER BY`, and `LIMIT`?
6. What is the difference between `LIMIT 5` and `LIMIT 5 OFFSET 10`?
7. Which clause should come first: `ORDER BY` or `LIMIT`?

---

## Key Takeaways

- `LIMIT` controls **how many** rows are returned.
- `OFFSET` controls **where** the returned rows begin.
- `ORDER BY` determines the order before `LIMIT` is applied.
- Pagination is achieved using `LIMIT` and `OFFSET`.
- Understanding the execution order helps you write accurate and efficient SQL queries.

---

## What's Next?

In the next lesson, you will learn about the **DISTINCT** clause, which is used to retrieve **unique values** from a table and eliminate duplicate records from query results.
